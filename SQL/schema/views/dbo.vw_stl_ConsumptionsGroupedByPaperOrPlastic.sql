SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_ConsumptionsGroupedByPaperOrPlastic]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_ConsumptionsGroupedByPaperOrPlastic
AS
SELECT        TOP (100) PERCENT JobConsumptions.ord__ref, JobConsumptions.art__ref, JobConsumptions.art__rpn, EstimatePaperOrPlastic.ProductGroup, JobConsumptions.breedte_, JobConsumptions.Quantity, JobConsumptions.Dollars, 
                         - (JobConsumptions.Quantity * 12.0 * JobConsumptions.breedte_ / 1000.0) AS MSI, CASE WHEN (JobConsumptions.Quantity * 12.0 * JobConsumptions.breedte_ / 1000.0) 
                         <> 0 THEN JobConsumptions.Dollars / - (JobConsumptions.Quantity * 12.0 * JobConsumptions.breedte_ / 1000.0) ELSE 0 END AS [$/MSI], JobFootage.JobFeet, JobFootage.JobMSI, dbo.vw_JobProducts.ProductIDs, 
                         EstimatePaperOrPlastic.BottomSubsrate AS EstBottomSubsrate, EstimatePaperOrPlastic.BottomFront AS EstBottomFront, EstimatePaperOrPlastic.BottomBack AS EstBottomBack, 
                         EstimatePaperOrPlastic.SupplSubstrate AS EstSupplSubstrate, EstimatePaperOrPlastic.SupplFront AS EstSupplFront, EstimatePaperOrPlastic.SupplBack AS EstSupplBack, 
                         EstimatePaperOrPlastic.PaperOrPlastic AS EstimatePaperOrPlastic, ProductPaperOrPlastic.PaperOrPlastic AS ProductPaperOrPlastic, CASE WHEN ISNULL(ProductPaperOrPlastic.PaperOrPlastic, ''-'') 
                         LIKE ''%-%'' THEN EstimatePaperOrPlastic.PaperOrPlastic ELSE ProductPaperOrPlastic.PaperOrPlastic END AS PaperOrPlastic, JobConsumptions.FirstConsumption, JobConsumptions.LastConsumption
FROM            (SELECT        drgers___1.drg__ref, Sub1Front.typ__oms + '' / '' + Sub1Back.typ__oms AS PaperOrPlastic
                          FROM            dbo.drgers__ AS drgers___1 LEFT OUTER JOIN
                                                    dbo.drgtyp__ AS Sub1Back ON drgers___1.typrgref = Sub1Back.typ__ref LEFT OUTER JOIN
                                                    dbo.drgtyp__ AS Sub1Front ON drgers___1.typfrref = Sub1Front.typ__ref) AS ProductPaperOrPlastic RIGHT OUTER JOIN
                         dbo.drgers__ ON ProductPaperOrPlastic.drg__ref = dbo.drgers__.drg__ref RIGHT OUTER JOIN
                             (SELECT        ord__ref, MAX(Feet) AS JobFeet, MAX(Feet) * 12.0 * breedte_ / 1000.0 AS JobMSI
                               FROM            (SELECT        JM.ord__ref, M.breedte_, SUM(JM.aantal__) * - 1.0 AS Feet
                                                         FROM            dbo.stobew__ AS JM INNER JOIN
                                                                                   dbo.artiky__ AS M ON JM.art__ref = M.art__ref AND (M.art__rpn LIKE ''MAT%'' OR
                                                                                   M.art__rpn LIKE ''LAM%'') AND JM.ord__ref <> ''''
                                                         GROUP BY JM.ord__ref, M.breedte_, JM.art__ref, M.art__rpn) AS JobFeet
                               GROUP BY ord__ref, breedte_) AS JobFootage RIGHT OUTER JOIN
                             (SELECT        ord__ref, MIN(datum___) AS FirstConsumption, MAX(datum___) AS LastConsumption, art__ref, art__rpn, breedte_, SUM(aantal__) AS Quantity, SUM(kost____) AS Dollars
                               FROM            (SELECT        S.ord__ref, S.datum___, S.kla__ref, S.art__ref, A.art__rpn, A.breedte_, S.aantal__, S.kost____
                                                         FROM            dbo.stobew__ AS S LEFT OUTER JOIN
                                                                                   dbo.artiky__ AS A ON S.art__ref = A.art__ref AND S.art__ref <> ''103160''
                                                         WHERE        (S.ord__ref NOT IN
                                                                                       (SELECT        ord__ref
                                                                                         FROM            dbo.order___ AS O
                                                                                         WHERE        (kla__ref IN (''100109'', ''100349'', ''100377'', ''100490'', ''100376'', ''100453'', ''100208'')))) AND (S.ord__ref NOT IN ('''', ''N'')) AND (S.soort___ IN (''3'', ''5'', ''C''))) AS Consumptions
                               GROUP BY ord__ref, art__ref, art__rpn, breedte_) AS JobConsumptions LEFT OUTER JOIN
                         dbo.vw_JobProducts LEFT OUTER JOIN
                             (SELECT        dbo.afgart__.afg__ref, CASE WHEN dbo.prodkl__.omschr__ = ''Magnetic'' THEN CASE WHEN CHARINDEX(''loco'', LOWER(v1bon___.omschr__)) > 0 THEN ''Magnetic LOCO'' WHEN CHARINDEX(''hico'', 
                                                         LOWER(v1bon___.omschr__)) > 0 THEN ''Magnetic HICO'' ELSE dbo.prodkl__.omschr__ END ELSE dbo.prodkl__.omschr__ END AS ProductGroup, dbo.v1off___.bon__ref, dbo.afgart__.off1_ref, 
                                                         dbo.v1eti___.drg__ref AS BottomSubsrate, Sub1Front.typ__oms AS BottomFront, Sub1Back.typ__oms AS BottomBack, dbo.v1etaf__.drg__ref AS SupplSubstrate, Sub2Front.typ__oms AS SupplFront, 
                                                         Sub2Back.typ__oms AS SupplBack, CASE WHEN v1etaf__.drg__ref IS NULL 
                                                         THEN Sub1Front.typ__oms + '' / '' + Sub1Back.typ__oms ELSE CASE WHEN Sub1Front.typ__oms = Sub1Back.typ__oms THEN Sub1Front.typ__oms ELSE CASE WHEN Sub1Back.typ__oms = ''-'' THEN Sub1Front.typ__oms
                                                          ELSE CASE WHEN Sub1Front.typ__oms = ''-'' THEN Sub1Back.typ__oms ELSE ''('' + Sub1Front.typ__oms + '','' + Sub1Back.typ__oms + '')'' END END END + '' / '' + CASE WHEN Sub2Front.typ__oms = Sub2Back.typ__oms
                                                          THEN Sub2Front.typ__oms ELSE CASE WHEN Sub2Back.typ__oms = ''-'' THEN Sub2Front.typ__oms ELSE CASE WHEN Sub2Front.typ__oms = ''-'' THEN Sub2Back.typ__oms ELSE ''('' + Sub2Front.typ__oms + '','' + Sub2Back.typ__oms
                                                          + '')'' END END END END AS PaperOrPlastic
                               FROM            dbo.afgart__ LEFT OUTER JOIN
                                                         dbo.v1eti___ ON dbo.afgart__.off1_ref = dbo.v1eti___.off__ref LEFT OUTER JOIN
                                                         dbo.v1etaf__ ON dbo.afgart__.off1_ref = dbo.v1etaf__.off__ref AND dbo.v1etaf__.drg__ref <> '''' LEFT OUTER JOIN
                                                         dbo.v1bon___ INNER JOIN
                                                         dbo.v1off___ ON dbo.v1bon___.bon__ref = dbo.v1off___.bon__ref ON dbo.v1eti___.off__ref = dbo.v1off___.off__ref LEFT OUTER JOIN
                                                         dbo.drgers__ AS Sub1 LEFT OUTER JOIN
                                                         dbo.drgtyp__ AS Sub1Back ON Sub1.typrgref = Sub1Back.typ__ref LEFT OUTER JOIN
                                                         dbo.drgtyp__ AS Sub1Front ON Sub1.typfrref = Sub1Front.typ__ref ON dbo.v1eti___.drg__ref = Sub1.drg__ref LEFT OUTER JOIN
                                                         dbo.drgtyp__ AS Sub2Back RIGHT OUTER JOIN
                                                         dbo.drgers__ AS Sub2 ON Sub2Back.typ__ref = Sub2.typrgref LEFT OUTER JOIN
                                                         dbo.drgtyp__ AS Sub2Front ON Sub2.typfrref = Sub2Front.typ__ref ON dbo.v1etaf__.drg__ref = Sub2.drg__ref LEFT OUTER JOIN
                                                         dbo.prodkl__ ON dbo.prodkl__.prkl_ref = dbo.afgart__.prkl_ref) AS EstimatePaperOrPlastic ON dbo.vw_JobProducts.LastProductID = EstimatePaperOrPlastic.afg__ref LEFT OUTER JOIN
                         dbo.afgart__ AS afgart___2 ON dbo.vw_JobProducts.LastProductID = afgart___2.afg__ref ON JobConsumptions.ord__ref = dbo.vw_JobProducts.off__ref ON JobFootage.ord__ref = JobConsumptions.ord__ref LEFT OUTER JOIN
                         dbo.artiky__ ON afgart___2.art__ref = dbo.artiky__.art__ref ON dbo.drgers__.drg__ref = dbo.artiky__.drg__ref
' 
