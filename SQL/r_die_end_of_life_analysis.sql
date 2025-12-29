-- R Die Revolution Analysis - After R-473
-- End-Of-Life DIES and their usage statistics

/* End-Of-Life DIES */
SELECT 
    arth_ref AS DieID, 
    dies.stns_rpn AS DieKeyword, 
    arthdref AS DieSKU, 
    crea_dat AS Created, 
    vak__ref AS StockLocation, 
    teller__ AS Revolutions,
    tellermx AS LifeExpectancy,
    CASE 
        WHEN tellermx > 0 THEN 
            CAST((CAST(teller__ AS FLOAT) / CAST(tellermx AS FLOAT)) * 100 AS DECIMAL(10,2))
        ELSE 0 
    END AS PercentUsed
FROM arthld__ tools 
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
WHERE uitgeput = 'Y' /* End-Of-Life DIES */
    AND dies.stns_rpn LIKE 'R-%'
    AND crea_dat >= DATEADD(YEAR, -1, GETDATE()) -- Created in the last year
ORDER BY crea_dat DESC; -- Most Revolutions, Most Reserved

GO

/* DIES used in a Job */
SELECT 
    h.arth_ref AS DieID, 
    t.arth_rpn AS DieKeyword, 
    h.arthdref AS DieSKU, 
    h.dat__beg AS DateBegin, 
    h.uur__beg AS TimeBegin, 
    h.dat__end AS DateEnd, 
    h.uur__end AS TimeEnd, 
    h.aantal__ AS Quantity, 
    h.wp___ref AS WorkplaceID, 
    m.wp_naam_ AS WorkplaceName, 
    h.wn___ref AS EmployeeID, 
    e.wn___rpn AS EmployeeKeyword, 
    h.ord__ref AS JobID, 
    o.omschr__ AS JobDescription
FROM hlpreg__ h 
LEFT JOIN arthlp__ t ON h.arth_ref = t.arth_ref 
LEFT JOIN werkpo__ m ON m.wp___ref = h.wp___ref 
LEFT JOIN werknm__ e ON e.wn___ref = h.wn___ref 
LEFT JOIN order___ o ON o.ord__ref = h.ord__ref
WHERE t.arth_rpn LIKE 'R-%'
    AND h.dat__beg >= DATEADD(YEAR, -1, GETDATE()) -- Last year only
ORDER BY h.dat__beg DESC;

GO

/* Summary Statistics - End-Of-Life R Dies After R-473 */

/* Summary Statistics - End-Of-Life R Dies After R-473 */
SELECT 
    COUNT(*) AS TotalEndOfLifeDies,
    AVG(CAST(teller__ AS FLOAT)) AS AvgRevolutions,
    MAX(teller__) AS MaxRevolutions,
    MIN(teller__) AS MinRevolutions,
    AVG(CAST(tellermx AS FLOAT)) AS AvgLifeExpectancy,
    AVG(CASE 
        WHEN tellermx > 0 THEN 
            (CAST(teller__ AS FLOAT) / CAST(tellermx AS FLOAT)) * 100
        ELSE 0 
    END) AS AvgPercentUsed
FROM arthld__ tools 
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
WHERE uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.stns_rpn > 'R-473'
    AND crea_dat >= DATEADD(YEAR, -1, GETDATE()); -- Created in the last year
