-- R Die End-Of-Life Statistics by Keyword - Used in Last 2 Years
-- Dies that were used in the last 2 years and are now marked end-of-life
-- Groups by die keyword to show SKU count, job count, revolutions, feet, and averages

SELECT 
    dies.stns_rpn AS DieKeyword,
    dies.omtrek__ AS Circumference,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    AVG(CAST(tools.teller__ AS FLOAT)) AS AvgRevolutionsPerSKU,
    CASE 
        WHEN dies.omtrek__ > 0 THEN 
            CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2))
        ELSE 0 
    END AS TotalFeet,
    MIN(h.dat__beg) AS FirstUsed,
    MAX(h.dat__beg) AS LastUsed
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y' /* End-Of-Life */
    AND dies.stns_rpn LIKE 'R-%'
    AND h.dat__beg >= DATEADD(YEAR, -2, GETDATE())
GROUP BY dies.stns_rpn, dies.omtrek__
ORDER BY AVG(CAST(tools.teller__ AS FLOAT)) DESC; -- Highest average revolutions per SKU first

GO

-- Summary Totals Across All End-Of-Life R Dies
SELECT 
    COUNT(DISTINCT dies.stns_rpn) AS TotalUniqueKeywords,
    COUNT(DISTINCT tools.arthdref) AS TotalUniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    AVG(CAST(tools.teller__ AS FLOAT)) AS OverallAvgRevolutionsPerSKU,
    CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2)) AS TotalFeet
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND h.dat__beg >= DATEADD(YEAR, -2, GETDATE());
