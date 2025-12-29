-- R Die End-Of-Life Usage Statistics by Keyword - Last 3 Years
-- Aggregates flexible R dies that are now end-of-life and were used in jobs during the last 3 years
-- Groups by die keyword to show SKU count, job count, revolutions, and feet

SELECT 
    dies.stns_rpn AS DieKeyword,
    dies.omtrek__ AS Circumference,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / COUNT(DISTINCT tools.arthdref) AS AvgRevolutionsPerSKU,
    CASE 
        WHEN dies.omtrek__ > 0 THEN 
            CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2))
        ELSE 0 
    END AS TotalFeet,
    CASE 
        WHEN dies.omtrek__ > 0 THEN 
            CAST((SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0) / COUNT(DISTINCT tools.arthdref) AS DECIMAL(18,2))
        ELSE 0 
    END AS AvgFeetPerSKU,
    MIN(h.dat__beg) AS FirstUsed,
    MAX(h.dat__beg) AS LastUsed
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y' /* End-Of-Life */
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2' -- Flexible dies
    AND h.dat__beg >= DATEADD(YEAR, -3, GETDATE())
GROUP BY dies.stns_rpn, dies.omtrek__, dies.materie_
ORDER BY SUM(CAST(h.aantal__ AS BIGINT)) DESC; -- Most revolutions first

GO

-- Summary Totals Across All End-Of-Life Flexible R Dies
SELECT 
    COUNT(DISTINCT dies.stns_rpn) AS TotalUniqueKeywords,
    COUNT(DISTINCT tools.arthdref) AS TotalUniqueDieSKUs,
    COUNT(DISTINCT h.ord__ref) AS TotalJobs,
    SUM(CAST(h.aantal__ AS BIGINT)) AS TotalRevolutions,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / COUNT(DISTINCT tools.arthdref) AS AvgRevolutionsPerSKU,
    CAST(SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0 AS DECIMAL(18,2)) AS TotalFeet,
    CAST((SUM(CAST(h.aantal__ AS BIGINT) * dies.omtrek__) / 12.0) / COUNT(DISTINCT tools.arthdref) AS DECIMAL(18,2)) AS AvgFeetPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2' -- Flexible dies
    AND h.dat__beg >= DATEADD(YEAR, -3, GETDATE());

GO

-- Average Revolutions Per SKU by 12-Month Period (Last 5 Years)
-- Shows how average die lifespan has changed over time
SELECT 
    '60-48 Months Ago' AS Period,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / NULLIF(COUNT(DISTINCT tools.arthdref), 0) AS AvgRevolutionsPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2'
    AND h.dat__beg >= DATEADD(MONTH, -60, GETDATE())
    AND h.dat__beg < DATEADD(MONTH, -48, GETDATE())

UNION ALL

SELECT 
    '48-36 Months Ago' AS Period,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / NULLIF(COUNT(DISTINCT tools.arthdref), 0) AS AvgRevolutionsPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2'
    AND h.dat__beg >= DATEADD(MONTH, -48, GETDATE())
    AND h.dat__beg < DATEADD(MONTH, -36, GETDATE())

UNION ALL

SELECT 
    '36-24 Months Ago' AS Period,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / NULLIF(COUNT(DISTINCT tools.arthdref), 0) AS AvgRevolutionsPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2'
    AND h.dat__beg >= DATEADD(MONTH, -36, GETDATE())
    AND h.dat__beg < DATEADD(MONTH, -24, GETDATE())

UNION ALL

SELECT 
    '24-12 Months Ago' AS Period,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / NULLIF(COUNT(DISTINCT tools.arthdref), 0) AS AvgRevolutionsPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2'
    AND h.dat__beg >= DATEADD(MONTH, -24, GETDATE())
    AND h.dat__beg < DATEADD(MONTH, -12, GETDATE())

UNION ALL

SELECT 
    '12-0 Months Ago' AS Period,
    COUNT(DISTINCT tools.arthdref) AS UniqueDieSKUs,
    CAST(SUM(CAST(h.aantal__ AS BIGINT)) AS FLOAT) / NULLIF(COUNT(DISTINCT tools.arthdref), 0) AS AvgRevolutionsPerSKU
FROM arthld__ tools
JOIN stnspr__ dies ON tools.arth_ref = dies.stns_ref
JOIN hlpreg__ h ON h.arthdref = tools.arthdref
WHERE tools.uitgeput = 'Y'
    AND dies.stns_rpn LIKE 'R-%'
    AND dies.materie_ = '2'
    AND h.dat__beg >= DATEADD(MONTH, -12, GETDATE())
    AND h.dat__beg < GETDATE()
ORDER BY Period;
