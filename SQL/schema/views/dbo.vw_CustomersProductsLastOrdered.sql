SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CustomersProductsLastOrdered]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_CustomersProductsLastOrdered
AS
SELECT DISTINCT 
                         TOP (100) PERCENT bstlynLastOrdered.lyn__ref AS SalesOrderID, bstlynLastOrdered.bst__dat AS LastOrderedDate, dbo.klabas__.kla__ref AS CustomerID, dbo.klabas__.kla__rpn AS CustomerKeyword, 
                         dbo.klabas__.naam____ AS CustomerName, dbo.afgart__.afg__ref AS ProductID, dbo.afgart__.afg__rpn AS Product, dbo.afgart__.afg_oms1 AS ProductDescription, dbo.afgart__.etiket_b AS Width, dbo.afgart__.etiket_h AS Height, 
                         Substrates.SubstrateKey AS Substrate, Substrates.SubstrateKey2 AS Substrate2, Substrates.SubstrateKey1 AS Substrate1, Substrates.SubstrateKey3 AS Substrate3, dbo.afgart__.klcod_fr AS ColorCode, 
                         dbo.afgprd__.prd__rpn AS ProductType, dbo.prodkl__.omschr__ AS ProductGroup, RDie.stns_rpn AS RDie, LinealDie.LDieKeyword AS LDie, SecurityDie.SDieKeyword AS SDie, dbo.vpakpr__.vpak_rpn AS PackingKeyword, 
                         dbo.vpakpr__.vpak_oms AS PackingDescription, CASE afgart__.eti_vorm WHEN 1 THEN ''Rectangle'' WHEN 2 THEN ''Circle'' WHEN 3 THEN ''Irregular'' END AS Shape, bstlynLastOrdered.bst__dat AS DateFrom, 
                         bstlynLastOrdered.bst__dat AS DateTo, dbo.klabas__.kla__ref, dbo.afgart__.afg__ref
FROM            dbo.vw_incent__ INNER JOIN
                             (SELECT        dbo.bstlyn__.lyn__ref, dbo.bstlyn__.bst__dat, dbo.bstlyn__.kla__ref, dbo.bstlyn__.ord__ref, dbo.bstlyn__.afg__ref, dbo.bstlyn__.vpak_ref
                               FROM            dbo.bstlyn__ INNER JOIN
                                                             (SELECT        kla__ref, MAX(bst__dat) AS LastOrdered, afg__ref
                                                               FROM            dbo.bstlyn__ AS b
                                                               GROUP BY kla__ref, afg__ref
                                                               HAVING         (afg__ref <> N'''')) AS bMax ON dbo.bstlyn__.kla__ref = bMax.kla__ref AND dbo.bstlyn__.afg__ref = bMax.afg__ref AND dbo.bstlyn__.bst__dat = bMax.LastOrdered) AS bstlynLastOrdered INNER JOIN
                         dbo.klabas__ ON bstlynLastOrdered.kla__ref = dbo.klabas__.kla__ref ON dbo.vw_incent__.ord__ref = bstlynLastOrdered.ord__ref LEFT OUTER JOIN
                         dbo.afgprd__ ON dbo.vw_incent__.prd__ref = dbo.afgprd__.prd__ref LEFT OUTER JOIN
                             (SELECT        drg__ref, drg__rpn AS SubstrateKey, taal___7 AS SubstrateKey1, taal___8 AS SubstrateKey2, taal___9 AS SubstrateKey3, geblokk_
                               FROM            dbo.drgers__) AS Substrates RIGHT OUTER JOIN
                         dbo.afgart__ ON Substrates.drg__ref = dbo.afgart__.drg__ref ON dbo.afgart__.afg__ref = bstlynLastOrdered.afg__ref LEFT OUTER JOIN
                         dbo.v4eti___ ON dbo.v4eti___.off__ref = bstlynLastOrdered.ord__ref LEFT OUTER JOIN
                         dbo.prodkl__ ON dbo.prodkl__.prkl_ref = dbo.vw_incent__.prkl_ref LEFT OUTER JOIN
                         dbo.stnspr__ AS RDie ON dbo.v4eti___.stns_ref = RDie.stns_ref LEFT OUTER JOIN
                             (SELECT        lDie.off__ref AS Loff__ref, lDie.kpn__ref AS Lkpn__ref, lDie.stns_ref AS L_DieID, lDieT.stns_rpn AS LDieKeyword
                               FROM            dbo.v4etaf__ AS lDie INNER JOIN
                                                         dbo.stnspr__ AS lDieT ON lDie.stns_ref = lDieT.stns_ref AND lDie.etas_ref = ''18'') AS LinealDie ON dbo.v4eti___.off__ref = LinealDie.Loff__ref AND dbo.v4eti___.kpn__ref = LinealDie.Lkpn__ref LEFT OUTER JOIN
                             (SELECT        sDie.off__ref AS Soff__ref, sDie.kpn__ref AS Skpn__ref, sDie.stns_ref AS S_DieID, sDieT.stns_rpn AS SDieKeyword
                               FROM            dbo.v4etaf__ AS sDie INNER JOIN
                                                         dbo.stnspr__ AS sDieT ON sDie.stns_ref = sDieT.stns_ref AND sDie.etas_ref = ''17'') AS SecurityDie ON dbo.v4eti___.off__ref = SecurityDie.Soff__ref AND 
                         dbo.v4eti___.kpn__ref = SecurityDie.Skpn__ref LEFT OUTER JOIN
                         dbo.vpakpr__ ON dbo.vpakpr__.vpak_ref = bstlynLastOrdered.vpak_ref
' 
