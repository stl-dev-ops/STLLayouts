--DECLARE @thisMonthStart date = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
--DECLARE @d0 date = DATEADD(MONTH, -1, @thisMonthStart); -- first day of last month
--DECLARE @d1 date = @thisMonthStart;                     -- first day of this month

-- Distinct jobs last month on target machines (drive by hispnt__)
WITH Base AS (
    SELECT DISTINCT h.ord__ref, h.wp___ref
    FROM hispnt__ h
    WHERE h.datum___ >= '2025-08-01'  --@d0
      AND h.datum___ <  '2025-09-01'  --@d1
      AND h.wp___ref IN ('4003','5001','5003','5004','5021','9801')
),
-- Join v4edg___ using ord__ref == off__ref (just different names)
Picked AS (
    SELECT
        b.wp___ref,
        b.ord__ref,
        v.druk_tyd,
        v.stel_tyd,
        v.was__tyd
    FROM Base b
    OUTER APPLY (
        SELECT TOP (1) v.*
        FROM v4edg___ v
        WHERE v.off__ref = b.ord__ref
        -- ORDER BY ...  -- add tie-breaker if multiple rows per job
    ) v
),
-- Parse HH:MM -> total minutes (supports hours >= 24)
Minutes AS (
    SELECT
        p.wp___ref,
        p.ord__ref,

        CASE 
          WHEN p.druk_tyd IS NULL OR LTRIM(RTRIM(p.druk_tyd)) = '' THEN NULL
          ELSE TRY_CONVERT(int, LEFT(p.druk_tyd, CHARINDEX(':', p.druk_tyd)-1)) * 60
             + TRY_CONVERT(int, RIGHT(p.druk_tyd, LEN(p.druk_tyd) - CHARINDEX(':', p.druk_tyd)))
        END AS PrintingMin,

        CASE 
          WHEN p.stel_tyd IS NULL OR LTRIM(RTRIM(p.stel_tyd)) = '' THEN NULL
          ELSE TRY_CONVERT(int, LEFT(p.stel_tyd, CHARINDEX(':', p.stel_tyd)-1)) * 60
             + TRY_CONVERT(int, RIGHT(p.stel_tyd, LEN(p.stel_tyd) - CHARINDEX(':', p.stel_tyd)))
        END AS MakeReadyMin,

        CASE 
          WHEN p.was__tyd IS NULL OR LTRIM(RTRIM(p.was__tyd)) = '' THEN NULL
          ELSE TRY_CONVERT(int, LEFT(p.was__tyd, CHARINDEX(':', p.was__tyd)-1)) * 60
             + TRY_CONVERT(int, RIGHT(p.was__tyd, LEN(p.was__tyd) - CHARINDEX(':', p.was__tyd)))
        END AS WashMin
    FROM Picked p
)
SELECT
    m.wp_naam_ AS MachineName,

    -- Weighted % of total minutes
    CONCAT(
        CAST(100.0 * SUM(COALESCE(PrintingMin,0)) /
             NULLIF(SUM(COALESCE(PrintingMin,0)+COALESCE(MakeReadyMin,0)+COALESCE(WashMin,0)),0)
             AS decimal(5,1)
        ), '%'
    ) AS PrintingPercent,
    CONCAT(
        CAST(100.0 * SUM(COALESCE(MakeReadyMin,0)) /
             NULLIF(SUM(COALESCE(PrintingMin,0)+COALESCE(MakeReadyMin,0)+COALESCE(WashMin,0)),0)
             AS decimal(5,1)
        ), '%'
    ) AS MakeReadyPercent,
    CONCAT(
        CAST(100.0 * SUM(COALESCE(WashMin,0)) /
             NULLIF(SUM(COALESCE(PrintingMin,0)+COALESCE(MakeReadyMin,0)+COALESCE(WashMin,0)),0)
             AS decimal(5,1)
        ), '%'
    ) AS WashPercent,

    -- Totals as HHH:MM (no 24h wrap)
    CONCAT(FLOOR(SUM(COALESCE(PrintingMin,0))/60), ':', RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0))%60),2)) AS TotalPrintingTime,
    CONCAT(FLOOR(SUM(COALESCE(MakeReadyMin,0))/60), ':', RIGHT(CONCAT('00', SUM(COALESCE(MakeReadyMin,0))%60),2)) AS TotalMakeReadyTime,
    CONCAT(FLOOR(SUM(COALESCE(WashMin,0))/60), ':', RIGHT(CONCAT('00', SUM(COALESCE(WashMin,0))%60),2))         AS TotalWashTime,
    CONCAT(
        FLOOR(SUM(COALESCE(PrintingMin,0)+COALESCE(MakeReadyMin,0)+COALESCE(WashMin,0))/60), ':',
        RIGHT(CONCAT('00', SUM(COALESCE(PrintingMin,0)+COALESCE(MakeReadyMin,0)+COALESCE(WashMin,0))%60),2)
    ) AS TotalAllTime,

    COUNT(*) AS TotalJobs  -- one per distinct order from Base
FROM Minutes hs
JOIN werkpo__ m ON m.wp___ref = hs.wp___ref
GROUP BY m.wp_naam_
ORDER BY m.wp_naam_;