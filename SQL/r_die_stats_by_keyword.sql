-- R Die Usage Statistics by Keyword - Last Year
-- Aggregates all dies used in jobs during the last 3 years (not just end-of-life)
-- Groups by die keyword to show SKU count, job count, revolutions, and feet

SELECT 
    dies.stns_rpn AS DieKeyword,
    dies.omtrek__ AS Circumference,
    dies.materie_ AS Material,
    COUNT(DISTINCT h.arthdref) AS UniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / COUNT(DISTINCT h.arthdref) AS AvgRevolutionsPerSKU,
    CASE 
        WHEN dies.omtrek__ > 0 THEN 
            CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2))
        ELSE 0 
    END AS TotalFeet,
    CASE 
        WHEN dies.omtrek__ > 0 THEN 
            CAST((SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0) / COUNT(DISTINCT h.arthdref) AS DECIMAL(18,2))
        ELSE 0 
    END AS AvgFeetPerSKU,
    MIN(h.dat__beg) AS FirstUsed,
    MAX(h.dat__beg) AS LastUsed
FROM hlpreg__ h
JOIN arthlp__ t ON h.arth_ref = t.arth_ref
JOIN stnspr__ dies ON t.arth_ref = dies.stns_ref
WHERE t.arth_rpn LIKE 'R-%'
    AND dies.materie_ = '2' -- Flexible dies
    AND h.dat__beg >= DATEADD(YEAR, -3, GETDATE())
GROUP BY dies.stns_rpn, dies.omtrek__, dies.materie_
ORDER BY SUM(CAST(h.aantal__ AS BIGINT)) DESC; -- Most revolutions first

GO

-- Summary Totals Across All R Dies
SELECT 
    COUNT(DISTINCT dies.stns_rpn) AS TotalUniqueKeywords,
    COUNT(DISTINCT h.arthdref) AS TotalUniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / COUNT(DISTINCT h.arthdref) AS AvgRevolutionsPerSKU,
    CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2)) AS TotalFeet,
    CAST((SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0) / COUNT(DISTINCT h.arthdref) AS DECIMAL(18,2)) AS AvgFeetPerSKU
FROM hlpreg__ h
JOIN arthlp__ t ON h.arth_ref = t.arth_ref
JOIN stnspr__ dies ON t.arth_ref = dies.stns_ref
WHERE t.arth_rpn LIKE 'R-%'
    AND dies.materie_ = '2' -- Flexible dies
    AND h.dat__beg >= DATEADD(YEAR, -3, GETDATE());
