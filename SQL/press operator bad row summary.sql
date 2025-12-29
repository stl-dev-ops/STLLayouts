USE [sqlb00]
GO

SELECT 
    (pNAME.wn_vnaam + ' ' + pNAME.wn_naam_) AS [Press_Operator],
    pBR.reason                              AS [Reason],
    COUNT(*)                                AS [Bad_Row_Count],
    SUM(
        CAST(
            CAST(CAST(x.goodCount AS FLOAT) / CAST(rBR.goodCount AS FLOAT) AS FLOAT) 
            * CAST(rBR.labelsPerRow AS FLOAT) AS INT
        )
    ) AS [Total_Labels],
    SUM(
        CAST(
            CAST(
                CAST(x.goodCount AS FLOAT) / CAST(rBR.goodCount AS FLOAT) AS FLOAT
            ) * CAST(rBR.labelsPerRow AS FLOAT) 
        / 1000 * sO.pr_excl_ AS MONEY)
    ) AS [Total_Price_USD]
FROM 
    [stlST_pressRollBadRow] pBR
JOIN 
    [stlST_RewindBrick] rBR
    ON pBR.stlST_RewindBrickID = rBR.stlST_RewindBrickID
JOIN 
    [stlST_PressRollxstlST_RewindBrick] x
    ON rBR.stlST_RewindBrickID = x.stlST_RewindBrickID
JOIN 
    [stlST_PressRoll] pR
    ON x.stlST_PressRollID = pR.stlST_PressRollID
JOIN 
    [hlfvrd__] pSFG
    ON pR.hlf__ref = pSFG.hlf__ref
JOIN 
    [werknm__] pNAME
    ON pSFG.wn___ref = pNAME.wn___ref
JOIN 
    [bstlyn__] sO
    ON rBR.ord__ref = sO.ord__ref
WHERE 
    pR.lastModified >= DATEADD(DAY, -7, GETDATE())
    AND pR.lastModified < GETDATE()
GROUP BY 
    (pNAME.wn_vnaam + ' ' + pNAME.wn_naam_),
    pBR.reason
ORDER BY 
    [Press_Operator], 
    [Total_Price_USD] DESC;
