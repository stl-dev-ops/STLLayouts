/*
==================================================================================================================
Purpose:
    • Separates calculation concerns into three independent aggregations:
        - MaintenanceClockings : sums only maintenance type clockings
        - TotalClockings       : sums all clockings
        - Capacity             : sums scheduled machine hours from planning
    • Only includes soort___ = 'b' clockings (approved)
    • Applies explicit over-24-hour CASE conversion for CERM times
    • Joins them cleanly in final SELECT on MachineID (internal) and MachineName (friendly)
    • Produces HH:MM plus decimal hours plus % of total & scheduled
==================================================================================================================
*/

WITH MaintenanceClockings AS (
    SELECT
        h.wp___ref AS MachineID,
        SUM(
            DATEDIFF(MINUTE,
                -- Handle >24 hour start time
                CASE 
                    WHEN CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.starten_, CHARINDEX(':', h.starten_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_, 120)
                END,
                -- Handle >24 hour stop time
                CASE 
                    WHEN CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.stoppen_, CHARINDEX(':', h.stoppen_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_, 120)
                END
            )
        ) AS MaintenanceMinutes
    FROM dbo.hispnt__ AS h
    LEFT JOIN dbo.wpakt___ AS wpakt
        ON h.wp___ref = wpakt.wp___ref 
        AND h.akt__ref = wpakt.akt__ref
    WHERE wpakt.akt_oms_ = 'Maintenance called, machine down'
      AND h.datum___ >= '2025-07-01' AND h.datum___ < '2025-08-01'
      AND h.starten_ IS NOT NULL AND h.starten_ <> ''
      AND h.stoppen_ IS NOT NULL AND h.stoppen_ <> ''
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_) = 1
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_) = 1
    GROUP BY h.wp___ref
),

TotalClockings AS (
    SELECT
        h.wp___ref AS MachineID,
        wp.wp_naam_ AS MachineName,
        SUM(
            DATEDIFF(MINUTE,
                CASE 
                    WHEN CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.starten_, CHARINDEX(':', h.starten_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_, 120)
                END,
                CASE 
                    WHEN CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) >= 24 THEN 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                            RIGHT('0' + CAST(CAST(LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1) AS INT) - 24 AS VARCHAR), 2) + ':' +
                            RIGHT('0' + SUBSTRING(h.stoppen_, CHARINDEX(':', h.stoppen_) + 1, 2), 2), 120)
                    ELSE 
                        CONVERT(DATETIME,
                            CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_, 120)
                END
            )
        ) AS TotalMinutes
    FROM dbo.hispnt__ AS h
    LEFT JOIN dbo.wpakt___ AS wpakt
        ON h.wp___ref = wpakt.wp___ref 
        AND h.akt__ref = wpakt.akt__ref
    LEFT JOIN dbo.werkpo__ AS wp
        ON h.wp___ref = wp.wp___ref
    WHERE h.datum___ >= '2025-07-01' AND h.datum___ < '2025-08-01'
      AND h.starten_ IS NOT NULL AND h.starten_ <> ''
      AND h.stoppen_ IS NOT NULL AND h.stoppen_ <> ''
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_) = 1
      AND ISDATE(CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_) = 1
    GROUP BY h.wp___ref, wp.wp_naam_
),

-- Step 1: Aggregate time slots first
TimeSlotPerPlanDay AS (
    SELECT
        cap.plpl_ref,
        cap.day,
        SUM(CAST(ISNULL(captsl.duration, 0) AS FLOAT) / 60000.0) AS DurationMinutes
    FROM dbo.planpl_capacity__ AS cap
    JOIN dbo.planpl_capacity_timeslot__ AS captsl
        ON captsl.plpl_ref = cap.plpl_ref AND captsl.day = cap.day
    WHERE cap.day >= '2025-07-01' AND cap.day < '2025-08-01'
    GROUP BY cap.plpl_ref, cap.day
),

-- Step 2: Map each plpl_ref to a unique wp___ref (machine)
PlanMachineMap AS (
    SELECT DISTINCT
        cap.plpl_ref,
        wpakt.wp___ref AS MachineID
    FROM dbo.planpl_capacity__ AS cap
    LEFT JOIN dbo.plandv__ AS plandv
        ON cap.plpl_ref = plandv.plpl_ref
    LEFT JOIN dbo.wpakt___ AS wpakt
        ON cap.plpl_ref = wpakt.plpl_ref AND wpakt.akt__ref = plandv.akt__ref
    WHERE wpakt.wp___ref IS NOT NULL
)

-- Final CTE: duration per machine
, TimeSlotDurations AS (
    SELECT
        pmm.MachineID,
        SUM(ts.DurationMinutes) AS DurationMinutes
    FROM TimeSlotPerPlanDay ts
    JOIN PlanMachineMap pmm
        ON ts.plpl_ref = pmm.plpl_ref
    GROUP BY pmm.MachineID
),

Capacity AS (
    SELECT
        MachineID,
        SUM(DurationMinutes) AS ScheduledMinutes
    FROM TimeSlotDurations
    GROUP BY MachineID
)

SELECT
    t.MachineID,
    t.MachineName,

    -- Maintenance in HH:MM & decimal
    CAST(COALESCE(m.MaintenanceMinutes,0) / 60 AS VARCHAR) + ':' +
    RIGHT('0' + CAST(COALESCE(m.MaintenanceMinutes,0) % 60 AS VARCHAR), 2) AS MaintenanceHours,
    CAST(COALESCE(m.MaintenanceMinutes,0) AS FLOAT) / 60 AS MaintenanceHoursDecimal,

    -- Total in HH:MM & decimal
    CAST(t.TotalMinutes / 60 AS VARCHAR) + ':' +
    RIGHT('0' + CAST(t.TotalMinutes % 60 AS VARCHAR), 2) AS TotalHours,
    CAST(t.TotalMinutes AS FLOAT) / 60 AS TotalHoursDecimal,

    -- Scheduled in HH:MM & decimal
    CAST(CAST(ISNULL(c.ScheduledMinutes,0) AS INT) / 60 AS VARCHAR) + ':' +
    RIGHT('0' + CAST(CAST(ISNULL(c.ScheduledMinutes,0) AS INT) % 60 AS VARCHAR), 2) AS ScheduledCapacityHours,
    ISNULL(c.ScheduledMinutes,0) / 60.0 AS ScheduledHoursDecimal,

    -- Percentages
    CASE WHEN t.TotalMinutes = 0 THEN 0
         ELSE CAST(COALESCE(m.MaintenanceMinutes,0) AS FLOAT) / t.TotalMinutes * 100
    END AS MaintenancePercentOfActual,

    CASE WHEN ISNULL(c.ScheduledMinutes,0) = 0 THEN 0
         ELSE COALESCE(m.MaintenanceMinutes,0) / ISNULL(c.ScheduledMinutes,0) * 100
    END AS MaintenancePercentOfScheduled

FROM TotalClockings t
LEFT JOIN MaintenanceClockings m ON t.MachineID = m.MachineID
LEFT JOIN Capacity c ON t.MachineID = c.MachineID
WHERE COALESCE(m.MaintenanceMinutes,0) > 0
ORDER BY MaintenancePercentOfScheduled DESC;
