USE [sqlb00]
GO

SELECT
    q.prfm_oms AS [Quality Group],
    p.afg__ref AS [PID],
    p.afg_oms1 AS [Description],
    p.afgmdlrf AS [Model PID],
    CASE 
        WHEN (p.afgmdlrf IS NULL OR LTRIM(RTRIM(p.afgmdlrf)) = '') THEN ''
        WHEN p.afg__ref = p.afgmdlrf THEN 'Modal Product'
        ELSE 'Derivative Product'
    END AS [Kind of Product]
FROM dbo.prodfm__ q
JOIN dbo.afgart__ p
    ON p.prfm_ref = q.prfm_ref
WHERE p.uitgeput = 'N';
