-- This query shows production during Friday 5PM - Monday 5AM time windows over the last 5 years
-- Calculates ONLY the minutes that fall within the weekend window, handling clockings that overlap boundaries
-- Window: Friday 5:00 PM through Monday 4:59 AM (includes all of Saturday and Sunday)

WITH ClockingTimes AS (
    SELECT 
        h.datum___,
        h.wp___ref,
        h.wn___ref,
        h.ord__ref,
        h.akt__ref,
        h.starten_,
        h.stoppen_,
        h.duur____,
        wp.wp_naam_,
        wn.wn___rpn,
        o.omschr__,
        wpakt.akt_oms_,
        wpakt.klasse__,
        -- Convert start time to datetime (handle times >= 24:00 by adding days)
        DATEADD(MINUTE, 
            dbo.GetMinutesFromCERMTimeString(h.starten_), 
            CAST(h.datum___ AS DATETIME)
        ) AS StartDateTime,
        -- Convert stop time to datetime (handle times >= 24:00 by adding days)
        DATEADD(MINUTE, 
            dbo.GetMinutesFromCERMTimeString(h.stoppen_), 
            CAST(h.datum___ AS DATETIME)
        ) AS StopDateTime,
        -- Calculate the Friday 5PM boundary for this clocking's week
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN -- Friday
                DATEADD(HOUR, 17, CAST(h.datum___ AS DATETIME))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN -- Saturday
                DATEADD(HOUR, 17, DATEADD(DAY, -1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN -- Sunday
                DATEADD(HOUR, 17, DATEADD(DAY, -2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN -- Monday
                DATEADD(HOUR, 17, DATEADD(DAY, -3, CAST(h.datum___ AS DATETIME)))
        END AS WindowStart,
        -- Calculate the Monday 5AM boundary for this clocking's week
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN -- Friday
                DATEADD(HOUR, 5, DATEADD(DAY, 3, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN -- Saturday
                DATEADD(HOUR, 5, DATEADD(DAY, 2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN -- Sunday
                DATEADD(HOUR, 5, DATEADD(DAY, 1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN -- Monday
                DATEADD(HOUR, 5, CAST(h.datum___ AS DATETIME))
        END AS WindowEnd
    FROM hispnt__ h
    LEFT JOIN werkpo__ wp ON h.wp___ref = wp.wp___ref
    LEFT JOIN werknm__ wn ON h.wn___ref = wn.wn___ref
    LEFT JOIN order___ o ON h.ord__ref = o.ord__ref
    LEFT JOIN wpakt___ wpakt ON h.wp___ref = wpakt.wp___ref AND h.akt__ref = wpakt.akt__ref
    WHERE 
        h.datum___ >= DATEADD(YEAR, -5, GETDATE())
        AND h.stoppen_ NOT LIKE '%XX%'
        AND wpakt.klasse__ = '2' -- Activity class 2 (Printing)
        AND (
            -- Clockings that might overlap with weekend window
            (DATEPART(WEEKDAY, h.datum___) IN (5, 6, 7, 1, 2)) -- Thu, Fri, Sat, Sun, Mon
        )
)
SELECT 
    YEAR(datum___) AS Year,
    DATENAME(MONTH, datum___) AS Month,
    datum___ AS ClockingDate,
    CASE 
        WHEN DATEPART(WEEKDAY, datum___) = 6 THEN 'Friday'
        WHEN DATEPART(WEEKDAY, datum___) = 7 THEN 'Saturday'
        WHEN DATEPART(WEEKDAY, datum___) = 1 THEN 'Sunday'
        WHEN DATEPART(WEEKDAY, datum___) = 2 THEN 'Monday'
        WHEN DATEPART(WEEKDAY, datum___) = 5 THEN 'Thursday'
    END AS DayOfWeek,
    wp___ref AS WorkplaceID,
    wp_naam_ AS WorkplaceName,
    wn___ref AS EmployeeID,
    wn___rpn AS EmployeeKeyword,
    ord__ref AS JobID,
    omschr__ AS JobDescription,
    starten_ AS StartTime,
    stoppen_ AS StopTime,
    duur____ AS Duration,
    dbo.GetMinutesFromCERMTimeString(duur____) AS TotalDurationMinutes,
    -- Calculate only the minutes within the window
    DATEDIFF(MINUTE,
        -- Actual start or window start, whichever is later
        CASE WHEN StartDateTime > WindowStart THEN StartDateTime ELSE WindowStart END,
        -- Actual stop or window end, whichever is earlier
        CASE WHEN StopDateTime < WindowEnd THEN StopDateTime ELSE WindowEnd END
    ) AS MinutesInWindow,
    akt__ref AS ActivityID,
    akt_oms_ AS ActivityDescription,
    klasse__ AS ActivityClass
FROM ClockingTimes
WHERE 
    -- Only include clockings that actually overlap the window
    StartDateTime < WindowEnd
    AND StopDateTime > WindowStart
ORDER BY datum___ DESC, starten_;

GO

-- Summary Statistics by Year
-- Shows only the time that actually occurred within the Friday 5PM - Monday 5AM windows
WITH ClockingTimes AS (
    SELECT 
        h.datum___,
        h.wp___ref,
        h.wn___ref,
        h.ord__ref,
        h.starten_,
        h.stoppen_,
        DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(h.starten_), CAST(h.datum___ AS DATETIME)) AS StartDateTime,
        DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(h.stoppen_), CAST(h.datum___ AS DATETIME)) AS StopDateTime,
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN DATEADD(HOUR, 17, CAST(h.datum___ AS DATETIME))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN DATEADD(HOUR, 17, DATEADD(DAY, -1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN DATEADD(HOUR, 17, DATEADD(DAY, -2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN DATEADD(HOUR, 17, DATEADD(DAY, -3, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 5 THEN DATEADD(HOUR, 17, DATEADD(DAY, 1, CAST(h.datum___ AS DATETIME)))
        END AS WindowStart,
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN DATEADD(HOUR, 5, DATEADD(DAY, 3, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN DATEADD(HOUR, 5, DATEADD(DAY, 2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN DATEADD(HOUR, 5, DATEADD(DAY, 1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN DATEADD(HOUR, 5, CAST(h.datum___ AS DATETIME))
            WHEN DATEPART(WEEKDAY, h.datum___) = 5 THEN DATEADD(HOUR, 5, DATEADD(DAY, 4, CAST(h.datum___ AS DATETIME)))
        END AS WindowEnd
    FROM hispnt__ h
    LEFT JOIN wpakt___ wpakt ON h.wp___ref = wpakt.wp___ref AND h.akt__ref = wpakt.akt__ref
    WHERE 
        h.datum___ >= DATEADD(YEAR, -5, GETDATE())
        AND h.stoppen_ NOT LIKE '%XX%'
        AND wpakt.klasse__ = '2'
        AND DATEPART(WEEKDAY, h.datum___) IN (5, 6, 7, 1, 2)
),
WindowMinutes AS (
    SELECT 
        datum___,
        wp___ref,
        wn___ref,
        ord__ref,
        DATEDIFF(MINUTE,
            CASE WHEN StartDateTime > WindowStart THEN StartDateTime ELSE WindowStart END,
            CASE WHEN StopDateTime < WindowEnd THEN StopDateTime ELSE WindowEnd END
        ) AS MinutesInWindow,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 6 AND StartDateTime >= WindowStart THEN 
                DATEDIFF(MINUTE, StartDateTime, CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END)
            ELSE 0 
        END AS FridayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 7 THEN 
                DATEDIFF(MINUTE,
                    CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END,
                    CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END
                )
            ELSE 0 
        END AS SaturdayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 1 THEN 
                DATEDIFF(MINUTE,
                    CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END,
                    CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END
                )
            ELSE 0 
        END AS SundayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 2 AND StopDateTime <= WindowEnd THEN 
                DATEDIFF(MINUTE, CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END, StopDateTime)
            ELSE 0 
        END AS MondayMinutes
    FROM ClockingTimes
    WHERE StartDateTime < WindowEnd AND StopDateTime > WindowStart
)
SELECT 
    YEAR(datum___) AS Year,
    COUNT(*) AS TotalClockings,
    COUNT(DISTINCT datum___) AS DaysWithProduction,
    COUNT(DISTINCT wn___ref) AS UniqueEmployees,
    COUNT(DISTINCT ord__ref) AS UniqueJobs,
    SUM(MinutesInWindow) AS TotalMinutes,
    CAST(SUM(MinutesInWindow) / 60.0 AS DECIMAL(10,2)) AS TotalHours,
    SUM(FridayMinutes) AS FridayMinutes,
    SUM(SaturdayMinutes) AS SaturdayMinutes,
    SUM(SundayMinutes) AS SundayMinutes,
    SUM(MondayMinutes) AS MondayMinutes
FROM WindowMinutes
GROUP BY YEAR(datum___)
ORDER BY YEAR(datum___) DESC;

GO

-- Summary Statistics by Month
-- Shows only the time that actually occurred within the Friday 5PM - Monday 5AM windows
WITH ClockingTimes AS (
    SELECT 
        h.datum___,
        h.wp___ref,
        h.wn___ref,
        h.ord__ref,
        h.starten_,
        h.stoppen_,
        DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(h.starten_), CAST(h.datum___ AS DATETIME)) AS StartDateTime,
        DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(h.stoppen_), CAST(h.datum___ AS DATETIME)) AS StopDateTime,
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN DATEADD(HOUR, 17, CAST(h.datum___ AS DATETIME))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN DATEADD(HOUR, 17, DATEADD(DAY, -1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN DATEADD(HOUR, 17, DATEADD(DAY, -2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN DATEADD(HOUR, 17, DATEADD(DAY, -3, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 5 THEN DATEADD(HOUR, 17, DATEADD(DAY, 1, CAST(h.datum___ AS DATETIME)))
        END AS WindowStart,
        CASE 
            WHEN DATEPART(WEEKDAY, h.datum___) = 6 THEN DATEADD(HOUR, 5, DATEADD(DAY, 3, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 7 THEN DATEADD(HOUR, 5, DATEADD(DAY, 2, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 1 THEN DATEADD(HOUR, 5, DATEADD(DAY, 1, CAST(h.datum___ AS DATETIME)))
            WHEN DATEPART(WEEKDAY, h.datum___) = 2 THEN DATEADD(HOUR, 5, CAST(h.datum___ AS DATETIME))
            WHEN DATEPART(WEEKDAY, h.datum___) = 5 THEN DATEADD(HOUR, 5, DATEADD(DAY, 4, CAST(h.datum___ AS DATETIME)))
        END AS WindowEnd
    FROM hispnt__ h
    LEFT JOIN wpakt___ wpakt ON h.wp___ref = wpakt.wp___ref AND h.akt__ref = wpakt.akt__ref
    WHERE 
        h.datum___ >= DATEADD(YEAR, -5, GETDATE())
        AND h.stoppen_ NOT LIKE '%XX%'
        AND wpakt.klasse__ = '2'
        AND DATEPART(WEEKDAY, h.datum___) IN (5, 6, 7, 1, 2)
),
WindowMinutes AS (
    SELECT 
        datum___,
        wp___ref,
        wn___ref,
        ord__ref,
        DATEDIFF(MINUTE,
            CASE WHEN StartDateTime > WindowStart THEN StartDateTime ELSE WindowStart END,
            CASE WHEN StopDateTime < WindowEnd THEN StopDateTime ELSE WindowEnd END
        ) AS MinutesInWindow,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 6 AND StartDateTime >= WindowStart THEN 
                DATEDIFF(MINUTE, StartDateTime, CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END)
            ELSE 0 
        END AS FridayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 7 THEN 
                DATEDIFF(MINUTE,
                    CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END,
                    CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END
                )
            ELSE 0 
        END AS SaturdayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 1 THEN 
                DATEDIFF(MINUTE,
                    CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END,
                    CASE WHEN StopDateTime < DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) THEN StopDateTime ELSE DATEADD(DAY, 1, CAST(datum___ AS DATETIME)) END
                )
            ELSE 0 
        END AS SundayMinutes,
        CASE 
            WHEN DATEPART(WEEKDAY, datum___) = 2 AND StopDateTime <= WindowEnd THEN 
                DATEDIFF(MINUTE, CASE WHEN StartDateTime > CAST(datum___ AS DATETIME) THEN StartDateTime ELSE CAST(datum___ AS DATETIME) END, StopDateTime)
            ELSE 0 
        END AS MondayMinutes
    FROM ClockingTimes
    WHERE StartDateTime < WindowEnd AND StopDateTime > WindowStart
)
SELECT 
    YEAR(datum___) AS Year,
    MONTH(datum___) AS Month,
    DATENAME(MONTH, datum___) AS MonthName,
    COUNT(*) AS TotalClockings,
    COUNT(DISTINCT datum___) AS DaysWithProduction,
    COUNT(DISTINCT wn___ref) AS UniqueEmployees,
    COUNT(DISTINCT ord__ref) AS UniqueJobs,
    SUM(MinutesInWindow) AS TotalMinutes,
    CAST(SUM(MinutesInWindow) / 60.0 AS DECIMAL(10,2)) AS TotalHours,
    SUM(FridayMinutes) AS FridayMinutes,
    SUM(SaturdayMinutes) AS SaturdayMinutes,
    SUM(SundayMinutes) AS SundayMinutes,
    SUM(MondayMinutes) AS MondayMinutes
FROM WindowMinutes
GROUP BY YEAR(datum___), MONTH(datum___), DATENAME(MONTH, datum___)
ORDER BY YEAR(datum___) DESC, MONTH(datum___) DESC;