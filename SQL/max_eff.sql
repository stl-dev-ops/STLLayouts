DECLARE @d0 date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d1 date = DATEADD(MONTH, 1, @d0);

WITH Base AS (           -- this month's history on target WPs
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (                 -- pull off__ref for optional mapping
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (                -- choose v4edg___ row via ord__ref or off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Hours AS (               -- parse hh:mm and convert to hours
    SELECT
        p.wp___ref,
        DATEDIFF(SECOND, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) / 3600.0 AS druk_hours,
        DATEDIFF(SECOND, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) / 3600.0 AS stel_hours,
        DATEDIFF(SECOND, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) / 3600.0 AS was_hours
    FROM Pick p
)
SELECT
    m.wp_naam_,
    -- time-weighted ratio over the month
    SUM(COALESCE(hs.druk_hours,0))
      / NULLIF(SUM(COALESCE(hs.druk_hours,0) + COALESCE(hs.stel_hours,0) + COALESCE(hs.was_hours,0)), 0)
      AS druk_ratio_weighted,
    -- (optional) unweighted avg of per-order ratios
    AVG(NULLIF(
        COALESCE(hs.druk_hours,0)
        / NULLIF(COALESCE(hs.druk_hours,0) + COALESCE(hs.stel_hours,0) + COALESCE(hs.was_hours,0), 0)
    ,0)) AS druk_ratio_avg,
    -- diagnostics
    SUM(hs.druk_hours)                                         AS sum_druk_hours,
    SUM(hs.druk_hours + hs.stel_hours + hs.was_hours)          AS sum_total_hours,
    COUNT(*)                                                   AS rows_count
FROM Hours hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref   -- << your requested join
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;





-- Last-month bounds: [@d0, @d1)
DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (           -- last month's history on target WPs
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (                 -- pull off__ref if needed
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (                -- choose v4edg___ row via ord__ref or off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Hours AS (               -- parse hh:mm and convert to hours
    SELECT
        p.wp___ref,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) / 3600.0 AS druk_hours,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) / 3600.0 AS stel_hours,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) / 3600.0 AS was_hours
    FROM Pick p
)
SELECT
    m.wp_naam_,
    -- time-weighted monthly ratio for last month
    SUM(COALESCE(hs.druk_hours,0))
      / NULLIF(SUM(COALESCE(hs.druk_hours,0) + COALESCE(hs.stel_hours,0) + COALESCE(hs.was_hours,0)), 0)
      AS druk_ratio_weighted,
    -- optional: unweighted average of per-order ratios
    AVG(NULLIF(
        COALESCE(hs.druk_hours,0)
        / NULLIF(COALESCE(hs.druk_hours,0) + COALESCE(hs.stel_hours,0) + COALESCE(hs.was_hours,0), 0)
    ,0)) AS druk_ratio_avg,
    -- diagnostics
    SUM(hs.druk_hours)                                        AS sum_druk_hours,
    SUM(hs.druk_hours + hs.stel_hours + hs.was_hours)         AS sum_total_hours,
    COUNT(*)                                                  AS rows_count
FROM Hours hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;




DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (           -- last month's history on target machines
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (                 -- pull off__ref if needed
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (                -- choose v4edg___ row via ord__ref or off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Hours AS (               -- parse hh:mm and convert to hours
    SELECT
        p.wp___ref,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) / 3600.0 AS PrintingHours,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) / 3600.0 AS MakeReadyHours,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) / 3600.0 AS WashHours
    FROM Pick p
)
SELECT
    m.wp_naam_                                 AS MachineName,
    SUM(hs.PrintingHours) /
        NULLIF(SUM(hs.PrintingHours + hs.MakeReadyHours + hs.WashHours), 0)
                                              AS PrintingRatioWeighted,
    AVG(NULLIF(
        hs.PrintingHours /
          NULLIF(hs.PrintingHours + hs.MakeReadyHours + hs.WashHours, 0), 0)
    )                                         AS PrintingRatioAvgPerJob,
    SUM(hs.PrintingHours)                     AS TotalPrintingHours,
    SUM(hs.MakeReadyHours)                    AS TotalMakeReadyHours,
    SUM(hs.WashHours)                         AS TotalWashHours,
    SUM(hs.PrintingHours + hs.MakeReadyHours + hs.WashHours)
                                              AS TotalAllHours,
    COUNT(*)                                  AS TotalJobs
FROM Hours hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;




DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Hours AS (
    SELECT
        p.wp___ref,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) / 60.0 AS PrintingMinutes,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) / 60.0 AS MakeReadyMinutes,
        DATEDIFF(SECOND,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) / 60.0 AS WashMinutes
    FROM Pick p
)
SELECT
    m.wp_naam_ AS MachineName,

    -- Ratios as %
    FORMAT(
        SUM(hs.PrintingMinutes) * 1.0 /
        NULLIF(SUM(hs.PrintingMinutes + hs.MakeReadyMinutes + hs.WashMinutes), 0),
        'P1'
    ) AS PrintingRatioWeighted,

    FORMAT(
        AVG(NULLIF(
            hs.PrintingMinutes /
              NULLIF(hs.PrintingMinutes + hs.MakeReadyMinutes + hs.WashMinutes, 0), 0)
        ),
        'P1'
    ) AS PrintingRatioAvgPerJob,

    -- Totals as HH:mm
    FORMAT(DATEADD(MINUTE, SUM(hs.PrintingMinutes), 0), 'HH:mm')  AS TotalPrintingTime,
    FORMAT(DATEADD(MINUTE, SUM(hs.MakeReadyMinutes), 0), 'HH:mm') AS TotalMakeReadyTime,
    FORMAT(DATEADD(MINUTE, SUM(hs.WashMinutes), 0),  'HH:mm')     AS TotalWashTime,
    FORMAT(DATEADD(MINUTE, SUM(hs.PrintingMinutes + hs.MakeReadyMinutes + hs.WashMinutes), 0), 'HH:mm')
                                                                 AS TotalAllTime,

    COUNT(*) AS TotalJobs
FROM Hours hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;



DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (  -- map to v4edg___ via ord__ref, falling back to off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Minutes AS (  -- parse 'hh:mm' and convert to integer minutes
    SELECT
        p.wp___ref,
        DATEDIFF(MINUTE, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) AS PrintingMin,
        DATEDIFF(MINUTE, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) AS MakeReadyMin,
        DATEDIFF(MINUTE, '00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) AS WashMin
    FROM Pick p
)
SELECT
    m.wp_naam_ AS MachineName,

    -- Ratios as percentage strings with 1 decimal (e.g., 83.3%)
    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(PrintingMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ),
        '%'
    ) AS PrintingRatioWeighted,

    CONCAT(
        CAST(
            100.0 * AVG(
                NULLIF(
                    COALESCE(PrintingMin,0) * 1.0 /
                    NULLIF(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0), 0),
                    0
                )
            )
            AS decimal(5,1)
        ),
        '%'
    ) AS PrintingRatioAvgPerJob,

    -- Totals as HHH:MM (no 24h wrap)
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0)) % 60), 2))
        AS TotalPrintingTime,
    CONCAT(FLOOR(SUM(COALESCE(MakeReadyMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(MakeReadyMin,0)) % 60), 2))
        AS TotalMakeReadyTime,
    CONCAT(FLOOR(SUM(COALESCE(WashMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(WashMin,0)) % 60), 2))
        AS TotalWashTime,
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) / 60), ':',
           RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) % 60), 2))
        AS TotalAllTime,

    COUNT(*) AS TotalJobs
FROM Minutes hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;





DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (  -- map to v4edg___ via ord__ref, falling back to off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Minutes AS (  -- parse 'hh:mm' -> integer minutes
    SELECT
        p.wp___ref,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) AS PrintingMin,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) AS MakeReadyMin,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) AS WashMin
    FROM Pick p
)
SELECT
    m.wp_naam_ AS MachineName,

    -- Weighted % of total time by category (month-level)
    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(PrintingMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS PrintingRatioWeighted,

    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(MakeReadyMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS MakeReadyRatioWeighted,

    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(WashMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS WashRatioWeighted,

    -- Optional: average job’s printing %
    CONCAT(
        CAST(
            100.0 * AVG(
                NULLIF(
                    COALESCE(PrintingMin,0) * 1.0 /
                    NULLIF(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0), 0),
                    0
                )
            )
            AS decimal(5,1)
        ), '%'
    ) AS PrintingRatioAvgPerJob,

    -- Totals as HHH:MM (no 24h wrap)
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0)) % 60), 2))
        AS TotalPrintingTime,
    CONCAT(FLOOR(SUM(COALESCE(MakeReadyMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(MakeReadyMin,0)) % 60), 2))
        AS TotalMakeReadyTime,
    CONCAT(FLOOR(SUM(COALESCE(WashMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(WashMin,0)) % 60), 2))
        AS TotalWashTime,
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) / 60), ':',
           RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) % 60), 2))
        AS TotalAllTime,

    COUNT(*) AS TotalJobs
FROM Minutes hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;




DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

WITH Base AS (
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= @d0
      AND h.datum___ <  @d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
Ord AS (
    SELECT b.ord__ref, b.wp___ref, o.off__ref
    FROM Base b
    LEFT JOIN order___ o ON o.ord__ref = b.ord__ref
),
Pick AS (  -- map to v4edg___ via ord__ref, falling back to off__ref
    SELECT
        o.wp___ref,
        COALESCE(v_ord.druk_tyd, v_off.druk_tyd) AS druk_tyd,
        COALESCE(v_ord.stel_tyd, v_off.stel_tyd) AS stel_tyd,
        COALESCE(v_ord.was__tyd, v_off.was__tyd) AS was__tyd
    FROM Ord o
    LEFT JOIN v4edg___ v_ord ON v_ord.off__ref = o.ord__ref
    LEFT JOIN v4edg___ v_off ON v_off.off__ref = o.off__ref
),
Minutes AS (  -- parse 'hh:mm' -> integer minutes
    SELECT
        p.wp___ref,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.druk_tyd)), ''))) AS PrintingMin,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.stel_tyd)), ''))) AS MakeReadyMin,
        DATEDIFF(MINUTE,'00:00:00', TRY_CONVERT(time(0), NULLIF(LTRIM(RTRIM(p.was__tyd)),  ''))) AS WashMin
    FROM Pick p
)
SELECT
    m.wp_naam_ AS MachineName,

    -- Weighted % of total time
    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(PrintingMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS PrintingPercent,

    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(MakeReadyMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS MakeReadyPercent,

    CONCAT(
        CAST(
            100.0 * SUM(COALESCE(WashMin,0)) /
            NULLIF(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)), 0)
            AS decimal(5,1)
        ), '%'
    ) AS WashPercent,

    -- Totals as HHH:MM
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0)) % 60), 2))
        AS TotalPrintingTime,
    CONCAT(FLOOR(SUM(COALESCE(MakeReadyMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(MakeReadyMin,0)) % 60), 2))
        AS TotalMakeReadyTime,
    CONCAT(FLOOR(SUM(COALESCE(WashMin,0)) / 60), ':', RIGHT(CONCAT('00', SUM(COALESCE(WashMin,0)) % 60), 2))
        AS TotalWashTime,
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) / 60), ':',
           RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0) + COALESCE(MakeReadyMin,0) + COALESCE(WashMin,0)) % 60), 2))
        AS TotalAllTime,

    COUNT(*) AS TotalJobs
FROM Minutes hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;
