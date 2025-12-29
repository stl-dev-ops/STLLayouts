-- R Dies that were USED in a job in the last year and are now End-Of-Life
-- Shows revolutions achieved, life expectancy, and percentage used

SELECT 
    tools.arth_ref AS DieID,
    dies.stns_rpn AS DieKeyword,
    tools.arthdref AS DieSKU,
    tools.crea_dat AS Created,
    tools.teller__ AS RevolutionsAchieved,
    tools.tellermx AS LifeExpectancy,
    CASE 
        WHEN tools.tellermx > 0 THEN 
            CAST((CAST(tools.teller__ AS FLOAT) / CAST(tools.tellermx AS FLOAT)) * 100 AS DECIMAL(10,2))
        ELSE 0 
    END AS PercentOfLifeUsed,
    LastUsed.LastUsedDate,
    LastUsed.LastJobID,
    LastUsed.LastJobDescription
FROM arthld__ tools 
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN (
    -- Get last usage date for each die SKU in the last year
    SELECT 
        h.arthdref,
        MAX(h.dat__beg) AS LastUsedDate,
        MAX(h.ord__ref) AS LastJobID,
        MAX(o.omschr__) AS LastJobDescription
    FROM hlpreg__ h
    LEFT JOIN order___ o ON o.ord__ref = h.ord__ref
    WHERE h.dat__beg >= DATEADD(YEAR, -3, GETDATE())
    GROUP BY h.arthdref
) LastUsed ON tools.arthdref = LastUsed.arthdref
WHERE tools.uitgeput = 'Y' /* End-Of-Life */
    AND dies.stns_rpn LIKE 'R-%'
ORDER BY tools.teller__ DESC; -- Most revolutions first

GO

-- Summary Statistics
SELECT 
    COUNT(*) AS TotalDies,
    AVG(CAST(tools.teller__ AS FLOAT)) AS AvgRevolutionsAchieved,
    MAX(tools.teller__) AS MaxRevolutionsAchieved,
    MIN(tools.teller__) AS MinRevolutionsAchieved,
    AVG(CAST(tools.tellermx AS FLOAT)) AS AvgLifeExpectancy,
    AVG(CASE 
        WHEN tools.tellermx > 0 THEN 
            (CAST(tools.teller__ AS FLOAT) / CAST(tools.tellermx AS FLOAT)) * 100
        ELSE 0 
    END) AS AvgPercentOfLifeUsed
FROM arthld__ tools 
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN (
    SELECT arthdref
    FROM hlpreg__
    WHERE dat__beg >= DATEADD(YEAR, -3, GETDATE())
    GROUP BY arthdref
) LastUsed ON tools.arthdref = LastUsed.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%';
