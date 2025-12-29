SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductsStockApproval]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlProductsStockApproval
AS
SELECT        TOP (100) PERCENT a.afg__ref, a.afg__rpn, a.afg_oms1, dbo.prodkl__.prkl_ref, dbo.prodkl__.omschr__, dbo.prodfm__.prfm_ref, dbo.prodfm__.prfm_rpn, a.afg__ref AS ProdIDLookUp, bn.BookName, 
                         CASE WHEN a.prkl_ref IN (''102'', ''103'', ''104'') THEN ''Yes'' ELSE CASE WHEN a.prfm_ref IN (''0000000002'', ''0000000003'', ''0000000005'', ''0000000014'', ''0000000016'', ''0000000020'') 
                         THEN ''Yes'' ELSE CASE WHEN StlStock.StlStock = 1 THEN ''Yes'' ELSE CASE WHEN [StlR&D].[StlR&D] = 1 THEN ''Yes'' ELSE CASE WHEN bn.BookName IS NOT NULL 
                         THEN ''Yes'' ELSE ''No'' END END END END END AS U_500M_App, a.kla__rpn, CASE WHEN StlStock.StlStock = 1 THEN ''Yes'' END AS StlStock, a.klcod_fr
FROM            (SELECT        dbo.afgart__.afg__ref, dbo.afgclt__.zynrefkl AS BookName, dbo.afgart__.afg_oms1 AS ProductName, dbo.afgart__.aant__e2 AS RollSize
                          FROM            dbo.afgclt__ INNER JOIN
                                                    dbo.afgart__ ON dbo.afgclt__.afg__ref = dbo.afgart__.afg__ref AND dbo.afgart__.uitgeput = ''N'' AND dbo.afgclt__.kla__ref = ''100506'') AS bn RIGHT OUTER JOIN
                             (SELECT        afg__ref, 1 AS [StlR&D]
                               FROM            dbo.afgart__ AS pSTLRD
                               GROUP BY afg__ref, kla__ref
                               HAVING         (kla__ref IN (''100349'', ''100376'', ''100377'', ''100453'', ''100490''))) AS [StlR&D] RIGHT OUTER JOIN
                         dbo.afgart__ AS a ON [StlR&D].afg__ref = a.afg__ref ON bn.afg__ref = a.afg__ref LEFT OUTER JOIN
                             (SELECT        afg__ref, 1 AS StlStock
                               FROM            dbo.afgart__ AS afgart___1
                               GROUP BY afg__ref, kla__ref
                               HAVING         (kla__ref = ''100222'')
                               UNION
                               SELECT        afg__ref, 1 AS StlStock
                               FROM            dbo.afgclt__ AS afgclt___1
                               GROUP BY afg__ref, kla__ref
                               HAVING        (kla__ref = ''100222'')) AS StlStock ON a.afg__ref = StlStock.afg__ref LEFT OUTER JOIN
                         dbo.prodkl__ ON a.prkl_ref = dbo.prodkl__.prkl_ref LEFT OUTER JOIN
                         dbo.prodfm__ ON a.prfm_ref = dbo.prodfm__.prfm_ref
' 
