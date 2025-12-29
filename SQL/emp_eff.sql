SELECT
    vbha.lev__ref AS Employee_ID,
    COUNT(*) AS Task_Count,
    SUM(TRY_CAST(vbha.prod_tyd AS FLOAT)) AS Total_Prod_Time,
    SUM(TRY_CAST(vbha.tyd_norm AS FLOAT)) AS Total_Std_Time,
    CASE 
        WHEN SUM(TRY_CAST(vbha.tyd_norm AS FLOAT)) = 0 THEN NULL
        ELSE ROUND(
            SUM(TRY_CAST(vbha.tyd_norm AS FLOAT)) / NULLIF(SUM(TRY_CAST(vbha.prod_tyd AS FLOAT)), 0), 2
        )
    END AS Efficiency_Ratio
FROM v2vbha__ vbha
WHERE TRY_CAST(vbha.prod_tyd AS FLOAT) IS NOT NULL
  AND TRY_CAST(vbha.tyd_norm AS FLOAT) IS NOT NULL
GROUP BY vbha.lev__ref
ORDER BY Efficiency_Ratio DESC;
