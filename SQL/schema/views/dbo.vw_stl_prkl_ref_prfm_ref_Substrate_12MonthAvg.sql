SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_prkl_ref_prfm_ref_Substrate_12MonthAvg]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_prkl_ref_prfm_ref_Substrate_12MonthAvg
AS
SELECT        TOP (100) PERCENT prkl_ref, ISNULL(prfm_ref, N'''') AS prfm_ref, COUNT(ord__ref) AS JobCount, AVG(oplage__) AS AvgOrdered, SUM(oplage__) AS SumOrdered, AVG(oplage__) / SUM(oplage__) 
                         * 100.0 AS PercentOrdered, FirstSubstrate, SecondSubstrate
FROM            (SELECT        dbo.order___.ord__ref, dbo.order___.prkl_ref,
                                                        (SELECT DISTINCT dbo.afgart__.prfm_ref
                                                          FROM            dbo.bstlyn__ INNER JOIN
                                                                                    dbo.afgart__ ON dbo.bstlyn__.afg__ref = dbo.afgart__.afg__ref INNER JOIN
                                                                                    dbo.prodfm__ ON dbo.afgart__.prfm_ref = dbo.prodfm__.prfm_ref
                                                          WHERE        (dbo.order___.ord__ref = dbo.bstlyn__.ord__ref) AND (dbo.prodfm__.prfm_ref IN (''0000000002'', ''0000000003'', ''0000000005'', ''0000000014'', ''0000000016''))) AS prfm_ref, 
                                                    dbo.order___.oplage__, Sub1.drg__rpn AS FirstSubstrate, Sub2.drg__rpn AS SecondSubstrate
                          FROM            dbo.drgers__ AS Sub2 RIGHT OUTER JOIN
                                                        (SELECT        off__ref, drg__ref
                                                          FROM            dbo.v1etaf__
                                                          WHERE        (drg__ref <> N'''')) AS [2ndSubstrate] ON Sub2.drg__ref = [2ndSubstrate].drg__ref RIGHT OUTER JOIN
                                                    dbo.drgers__ AS Sub1 RIGHT OUTER JOIN
                                                        (SELECT        off__ref, drg__ref
                                                          FROM            dbo.v1eti___) AS Substrate ON Sub1.drg__ref = Substrate.drg__ref RIGHT OUTER JOIN
                                                    dbo.order___ ON Substrate.off__ref = dbo.order___.off__ref ON [2ndSubstrate].off__ref = dbo.order___.off__ref
                          WHERE        (dbo.order___.ord__ref IN
                                                        (SELECT        ord__ref
                                                          FROM            dbo.incent__
                                                          WHERE        (datum___ >= DATEADD(year, - 1, GETDATE()))))) AS prkl_ref_prfm_refSubstrates
GROUP BY prkl_ref, prfm_ref, FirstSubstrate, SecondSubstrate
' 
