SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_tracking_number_search]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_tracking_number_search
AS
SELECT        CASE WHEN bstlyn__.dok__dat = ''1980-01-01'' THEN NULL ELSE bstlyn__.dok__dat END AS InvoiceDate, dbo.bstlyn__.fak__ref AS InvoiceID, dbo.bstlyn__.kla__ref AS CustomerID, 
                         dbo.bstlyn__.kla__rpn AS Customer, ISNULL(dbo.prodfm__.prfm_ref, N'''') AS BrandID, ISNULL(dbo.prodfm__.prfm_oms, N'''') AS Brand, dbo.afgart__.afg__rpn AS ProductKW, 
                         dbo.bstlyn__.afg_oms1 AS Description1, dbo.bstlyn__.afg_oms2 AS Description2, dbo.bstlyn__.bedrf_bm AS Sales, dbo.bstlyn__.bedr__bm AS InLogin, dbo.bstlyn__.b_aantal AS InvoicedQty, 
                         dbo.prodkl__.prkl_ref AS ProductGroupID, dbo.prodkl__.omschr__ AS ProductGroup, dbo.bstlyn__.ord__ref AS JobID, OrderDetails.OrderDate, dbo.bstlyn__.lyn__ref, OrderDetails.bon__ref, 
                         dbo.afgart__.afg__ref AS ProductID, dbo.klabas__.naam____, dbo.bstlyn__.betk_ref, dbo.bstlyn__.pr_excl_, 
                         CASE WHEN afgart__.Prys_srt = ''0'' THEN ''Text'' WHEN afgart__.Prys_srt = ''1'' THEN ''Discount/supplement'' WHEN afgart__.Prys_srt = ''2'' THEN ''Fixed amount'' WHEN afgart__.Prys_srt = ''3'' THEN ''/lb'' WHEN afgart__.Prys_srt
                          = ''4'' THEN ''/page'' WHEN afgart__.Prys_srt = ''5'' THEN ''/piece'' WHEN afgart__.Prys_srt = ''6'' THEN ''/100'' WHEN afgart__.Prys_srt = ''7'' THEN ''/1,000'' WHEN afgart__.Prys_srt = ''8'' THEN ''/100,000'' WHEN afgart__.Prys_srt
                          = ''9'' THEN ''/sh tn'' WHEN afgart__.Prys_srt = ''B'' THEN ''/ft'' WHEN afgart__.Prys_srt = ''C'' THEN ''/msi'' ELSE afgart__.Prys_srt END AS PriceType, dbo.bstlyn__.vrz__dat AS RealShipmentDate, 
                         TrackingNumber.TrackingNumber, dbo.bstlyn__.bst__ref
FROM            dbo.bstlyn__ LEFT OUTER JOIN
                         dbo.klabas__ ON dbo.bstlyn__.kla__ref = dbo.klabas__.kla__ref LEFT OUTER JOIN
                             (SELECT        dbo.order___.ord__ref, dbo.order___.best_dat AS OrderDate, dbo.order___.vrt__ref, dbo.verte___.vrt__rpn, dbo.verte___.naam____, dbo.order___.bon__ref
                               FROM            dbo.order___ INNER JOIN
                                                         dbo.verte___ ON dbo.order___.vrt__ref = dbo.verte___.vrt__ref) AS OrderDetails ON dbo.bstlyn__.ord__ref = OrderDetails.ord__ref LEFT OUTER JOIN
                         dbo.prodfm__ RIGHT OUTER JOIN
                         dbo.prodkl__ RIGHT OUTER JOIN
                         dbo.afgart__ ON dbo.prodkl__.prkl_ref = dbo.afgart__.prkl_ref ON dbo.prodfm__.prfm_ref = dbo.afgart__.prfm_ref ON dbo.bstlyn__.afg__ref = dbo.afgart__.afg__ref LEFT OUTER JOIN
                             (SELECT        lyn__ref, tekst_02 AS TrackingNumber
                               FROM            dbo.bstext__) AS TrackingNumber ON TrackingNumber.lyn__ref = dbo.bstlyn__.lyn__ref
WHERE        (dbo.bstlyn__.kla__ref <> 100208)
' 
