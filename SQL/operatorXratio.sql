WITH BadMetrics AS (
    SELECT DISTINCT
        pR.lastModified,
        (pNAME.wn_vnaam + ' ' + pNAME.wn_naam_) AS Press_Operator,
        pR.etiket_h AS Label_Height,
        pR.tssnaf_h AS Gap,
        pR.flatrolls AS Lanes,
        CAST(rBR.labelsPerRow AS FLOAT) AS Labels
    FROM 
        stlST_pressRollBadRow pBR
    JOIN stlST_RewindBrick rBR ON pBR.stlST_RewindBrickID = rBR.stlST_RewindBrickID
    JOIN stlST_PressRollxstlST_RewindBrick x ON rBR.stlST_RewindBrickID = x.stlST_RewindBrickID
    JOIN stlST_PressRoll pR ON x.stlST_PressRollID = pR.stlST_PressRollID
    JOIN hlfvrd__ pSFG ON pR.hlf__ref = pSFG.hlf__ref
    JOIN werknm__ pNAME ON pSFG.wn___ref = pNAME.wn___ref
    WHERE pBR.reason <> 'material defect'
), BadFeet AS (
    SELECT 
        Press_Operator,
        DATEPART(YEAR, lastModified) AS [Year],
        DATEPART(QUARTER, lastModified) AS [Quarter],
        DATEPART(MONTH, lastModified) AS [Month],
        SUM(
            (Labels * (Label_Height + Gap)) / 12 / NULLIF(Lanes, 0)
        ) AS Bad_Feet
    FROM BadMetrics
    GROUP BY Press_Operator, DATEPART(YEAR, lastModified), DATEPART(QUARTER, lastModified), DATEPART(MONTH, lastModified)
), GoodFeet AS (
    SELECT 
        (w.wn_vnaam + ' ' + w.wn_naam_) AS Press_Operator,
        DATEPART(YEAR, pR.lastModified) AS [Year],
        DATEPART(QUARTER, pR.lastModified) AS [Quarter],
        DATEPART(MONTH, pR.lastModified) AS [Month],
        SUM(pR.aantm_in) AS Good_Feet
    FROM stlST_PressRoll pR
    JOIN hlfvrd__ h ON pR.hlf__ref = h.hlf__ref
    JOIN werknm__ w ON h.wn___ref = w.wn___ref
    GROUP BY 
        (w.wn_vnaam + ' ' + w.wn_naam_),
        DATEPART(YEAR, pR.lastModified),
        DATEPART(QUARTER, pR.lastModified),
        DATEPART(MONTH, pR.lastModified)
), Combined AS (
    SELECT 
        g.Press_Operator,
        g.[Year],
        g.[Quarter],
        g.[Month],
        ISNULL(SUM(b.Bad_Feet), 0) AS Total_Bad_Feet,
        SUM(g.Good_Feet) AS Total_Good_Feet
    FROM GoodFeet g
    LEFT JOIN BadFeet b 
        ON g.Press_Operator = b.Press_Operator 
        AND g.[Year] = b.[Year]
        AND g.[Quarter] = b.[Quarter]
        AND g.[Month] = b.[Month]
    GROUP BY g.Press_Operator, g.[Year], g.[Quarter], g.[Month]
), Summary AS (
    SELECT 
        Press_Operator,

        -- Aggregate by time period
        SUM(CASE WHEN [Year] = YEAR(GETDATE()) THEN Total_Bad_Feet END) AS Bad_YTD,
        SUM(CASE WHEN [Year] = YEAR(GETDATE()) THEN Total_Good_Feet END) AS Good_YTD,

        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(QUARTER, -1, GETDATE())) 
             AND [Quarter] = DATEPART(QUARTER, DATEADD(QUARTER, -1, GETDATE()))
            THEN Total_Bad_Feet END) AS Bad_Prev_Qtr,

        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(QUARTER, -1, GETDATE())) 
             AND [Quarter] = DATEPART(QUARTER, -1 + DATEPART(QUARTER, GETDATE()))
            THEN Total_Good_Feet END) AS Good_Prev_Qtr,

        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(MONTH, -1, GETDATE())) 
             AND [Month] = MONTH(DATEADD(MONTH, -1, GETDATE()))
            THEN Total_Bad_Feet END) AS Bad_Prev_Month,

        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(MONTH, -1, GETDATE())) 
             AND [Month] = MONTH(DATEADD(MONTH, -1, GETDATE()))
            THEN Total_Good_Feet END) AS Good_Prev_Month
    FROM Combined
    GROUP BY Press_Operator
    HAVING 
        SUM(CASE WHEN [Year] = YEAR(GETDATE()) THEN Total_Good_Feet END) > 0 AND
        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(QUARTER, -1, GETDATE())) 
             AND [Quarter] = DATEPART(QUARTER, -1 + DATEPART(QUARTER, GETDATE()))
        THEN Total_Good_Feet END) > 0 AND
        SUM(CASE 
            WHEN [Year] = YEAR(DATEADD(MONTH, -1, GETDATE())) 
             AND [Month] = MONTH(DATEADD(MONTH, -1, GETDATE()))
        THEN Total_Good_Feet END) > 0
)
SELECT 
    Press_Operator,
    CAST(Bad_YTD AS FLOAT) / NULLIF(Good_YTD, 0) AS Ratio_YTD,
    CAST(Bad_Prev_Qtr AS FLOAT) / NULLIF(Good_Prev_Qtr, 0) AS Ratio_Prev_Qtr,
    CAST(Bad_Prev_Month AS FLOAT) / NULLIF(Good_Prev_Month, 0) AS Ratio_Prev_Month
FROM Summary
ORDER BY Ratio_Prev_Month;
