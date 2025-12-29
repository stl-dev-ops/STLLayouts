SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductJobCost]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlProductJobCost
AS
SELECT        afg__ref, SUM(aant_prd / TotalProduced * vrrkprys) AS LifetimeAvgJobCostPer1000
FROM            (SELECT        v.afg__ref, v.aant_prd, tp.TotalProduced, v.vrrkprys
                          FROM            dbo.v4vrs___ AS v INNER JOIN
                                                        (SELECT        afg__ref, SUM(aant_prd) AS TotalProduced
                                                          FROM            dbo.v4vrs___ AS t
                                                          GROUP BY afg__ref) AS tp ON v.afg__ref = tp.afg__ref
                          WHERE        (v.vrrkprys <> 0) AND (tp.TotalProduced <> 0)) AS JobCosts
GROUP BY afg__ref
' 
