DECLARE @StartDate  DATETIME = '2025-09-01';
DECLARE @EndDate    DATETIME = '2025-10-01';
DECLARE @OnlyActive BIT      = 0;  -- 1 = only active/capacity; 0 = all machines

/* ====================== Core helpers (clock parsing) ====================== */
WITH ClockBase AS (
    SELECT
        h.wp___ref,
        h.datum___,
        h.starten_,
        h.stoppen_,
        -- Compute candidate start/stop strings with 24:xx handling
        -- Then TRY_CONVERT to DATETIME; if invalid -> NULL (we'll filter later)
        StartDT = TRY_CONVERT(DATETIME,
                    CASE
                        WHEN TRY_CONVERT(INT, LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1)) >= 24
                             THEN CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                                  RIGHT('0' + CAST(TRY_CONVERT(INT, LEFT(h.starten_, CHARINDEX(':', h.starten_) - 1)) - 24 AS VARCHAR), 2) + ':' +
                                  RIGHT('0' + SUBSTRING(h.starten_, CHARINDEX(':', h.starten_) + 1, 2), 2)
                        ELSE CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.starten_
                    END, 120),
        StopDT  = TRY_CONVERT(DATETIME,
                    CASE
                        WHEN TRY_CONVERT(INT, LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1)) >= 24
                             THEN CONVERT(VARCHAR(10), DATEADD(DAY, 1, h.datum___), 120) + ' ' +
                                  RIGHT('0' + CAST(TRY_CONVERT(INT, LEFT(h.stoppen_, CHARINDEX(':', h.stoppen_) - 1)) - 24 AS VARCHAR), 2) + ':' +
                                  RIGHT('0' + SUBSTRING(h.stoppen_, CHARINDEX(':', h.stoppen_) + 1, 2), 2)
                        ELSE CONVERT(VARCHAR(10), h.datum___, 120) + ' ' + h.stoppen_
                    END, 120)
    FROM dbo.hispnt__ AS h
    WHERE h.datum___ >= @StartDate AND h.datum___ < @EndDate
      AND h.starten_ IS NOT NULL AND h.starten_ <> ''
      AND h.stoppen_ IS NOT NULL AND h.stoppen_ <> ''
),
/* ====================== Aggregates (null-safe) ====================== */
MaintenanceClockings AS (
    SELECT
        cb.wp___ref AS MachineID,
        SUM(ISNULL(DATEDIFF(MINUTE, cb.StartDT, cb.StopDT), 0)) AS MaintenanceMinutesInt
    FROM ClockBase cb
    JOIN dbo.wpakt___ AS wpakt
      ON cb.wp___ref = wpakt.wp___ref
     AND wpakt.akt_oms_ = 'Maintenance called, machine down'
     AND cb.datum___ >= @StartDate AND cb.datum___ < @EndDate
    WHERE cb.StartDT IS NOT NULL AND cb.StopDT IS NOT NULL
    GROUP BY cb.wp___ref
),
TotalClockings AS (
    SELECT
        cb.wp___ref AS MachineID,
        SUM(ISNULL(DATEDIFF(MINUTE, cb.StartDT, cb.StopDT), 0)) AS TotalMinutesInt
    FROM ClockBase cb
    WHERE cb.StartDT IS NOT NULL AND cb.StopDT IS NOT NULL
    GROUP BY cb.wp___ref
),
/* Capacity rollups:
   - LEFT JOIN timeslots so missing rows => 0
   - ISNULL on every summed term
*/
TimeSlotPerPlanDay AS (
    SELECT
        cap.plpl_ref,
        cap.[day],
        -- Decimal minutes for precise hour ratios
        SUM(ISNULL(CAST(captsl.duration AS FLOAT) / 60000.0, 0.0)) AS DurationMinutesDecimal,
        -- Integer minutes for HH:MM formatting (round to nearest minute)
        SUM(ISNULL(CONVERT(INT, ROUND(CAST(captsl.duration AS FLOAT) / 60000.0, 0)), 0)) AS DurationMinutesInt
    FROM dbo.planpl_capacity__ AS cap
    LEFT JOIN dbo.planpl_capacity_timeslot__ AS captsl
           ON captsl.plpl_ref = cap.plpl_ref
          AND captsl.[day]    = cap.[day]
    WHERE cap.[day] >= @StartDate AND cap.[day] < @EndDate
    GROUP BY cap.plpl_ref, cap.[day]
),
PlanMachineMap AS (
    SELECT DISTINCT
        cap.plpl_ref,
        wpakt.wp___ref AS MachineID
    FROM dbo.planpl_capacity__ AS cap
    LEFT JOIN dbo.plandv__ AS plandv
           ON cap.plpl_ref = plandv.plpl_ref
    LEFT JOIN dbo.wpakt___ AS wpakt
           ON cap.plpl_ref = wpakt.plpl_ref
          AND wpakt.akt__ref = plandv.akt__ref
    WHERE wpakt.wp___ref IS NOT NULL
),
TimeSlotDurations AS (
    SELECT
        pmm.MachineID,
        SUM(ISNULL(ts.DurationMinutesInt,     0)) AS DurationMinutesInt,
        SUM(ISNULL(ts.DurationMinutesDecimal, 0)) AS DurationMinutesDecimal
    FROM PlanMachineMap pmm
    LEFT JOIN TimeSlotPerPlanDay ts
           ON ts.plpl_ref = pmm.plpl_ref
    GROUP BY pmm.MachineID
),
Capacity AS (
    SELECT
        MachineID,
        SUM(ISNULL(DurationMinutesInt, 0))     AS ScheduledMinutesInt,
        SUM(ISNULL(DurationMinutesDecimal, 0)) AS ScheduledMinutesDecimal
    FROM TimeSlotDurations
    GROUP BY MachineID
)

/* ====================== Final (werkpo__ drives) ====================== */
SELECT
    TRUTH.wp___ref AS MachineID,
    TRUTH.wp_naam_ AS MachineName,

    ISNULL(m.MaintenanceMinutesInt, 0) AS MaintenanceMinutes,
    ISNULL(t.TotalMinutesInt, 0)       AS TotalMinutes,
    ISNULL(c.ScheduledMinutesInt, 0)   AS ScheduledMinutesInt,

    -- HH:MM using INT minutes (null-safe)
    CAST(ISNULL(m.MaintenanceMinutesInt,0) / 60 AS VARCHAR(10)) + ':' +
        RIGHT('0' + CAST(CONVERT(INT, ISNULL(m.MaintenanceMinutesInt,0)) % 60 AS VARCHAR(2)), 2) AS MaintenanceHours,
    CAST(ISNULL(t.TotalMinutesInt,0) / 60 AS VARCHAR(10)) + ':' +
        RIGHT('0' + CAST(CONVERT(INT, ISNULL(t.TotalMinutesInt,0)) % 60 AS VARCHAR(2)), 2)       AS TotalHours,
    CAST(ISNULL(c.ScheduledMinutesInt,0) / 60 AS VARCHAR(10)) + ':' +
        RIGHT('0' + CAST(CONVERT(INT, ISNULL(c.ScheduledMinutesInt,0)) % 60 AS VARCHAR(2)), 2)   AS ScheduledCapacityHours,

    -- Decimal hours (precise; null-safe)
    CONVERT(FLOAT, ISNULL(m.MaintenanceMinutesInt,0)) / 60.0 AS MaintenanceHoursDecimal,
    CONVERT(FLOAT, ISNULL(t.TotalMinutesInt,0))       / 60.0 AS TotalHoursDecimal,
    ISNULL(c.ScheduledMinutesDecimal,0)                / 60.0 AS ScheduledHoursDecimal,

    -- Ratios (safe divide, null-safe)
    CASE WHEN ISNULL(t.TotalMinutesInt,0) = 0
         THEN 0.0
         ELSE CONVERT(FLOAT, ISNULL(m.MaintenanceMinutesInt,0)) / NULLIF(t.TotalMinutesInt,0)
    END AS MaintenancePercentOfActual,
    CASE WHEN ISNULL(c.ScheduledMinutesDecimal,0) = 0.0
         THEN 0.0
         ELSE CONVERT(FLOAT, ISNULL(m.MaintenanceMinutesInt,0)) / NULLIF(c.ScheduledMinutesDecimal,0.0)
    END AS MaintenancePercentOfScheduled

FROM dbo.werkpo__ AS TRUTH
LEFT JOIN MaintenanceClockings m ON TRUTH.wp___ref = m.MachineID
LEFT JOIN TotalClockings      t ON TRUTH.wp___ref = t.MachineID
LEFT JOIN Capacity            c ON TRUTH.wp___ref = c.MachineID

WHERE (@OnlyActive = 0)
   OR (ISNULL(c.ScheduledMinutesInt,0)    > 0
    OR  ISNULL(t.TotalMinutesInt,0)       > 0
    OR  ISNULL(m.MaintenanceMinutesInt,0) > 0)

ORDER BY TRUTH.wp_naam_;
