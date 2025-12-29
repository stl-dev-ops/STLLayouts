SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPortalCustomerOrders]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLPortalCustomerOrders
AS
SELECT        bl.kla__ref AS CustomerID, bl.afg__ref AS STLProductID, bl.bsbn_kl2 AS CustomerPONumber, bl.zynrefkl AS CustomerProductID, bl.afg_oms1 AS ProductDescription, CASE WHEN bl.tstval02 <> ''2000'' THEN NULL 
                         ELSE bl.vrzv_dat END AS ExpectedShipDate, bl.vrz__dat AS ShipDate, bl.levv_dat AS ExpectedDeliveryDate, bl.bst__dat AS OrderDate, bt.tekst_02 AS TrackingNumber, bl.lev__com AS DeliveryComments, 
                         bl.bst__dat AS FromOrderDate, bl.bst__dat AS ToOrderDate, CASE WHEN bl.vrz__dat > ''1980-01-01'' THEN ''Shipped'' WHEN pd.ord__ref IS NOT NULL THEN ''In Production'' ELSE ''Ordered'' END AS OrderStatus, 
                         lv.omschr__ AS ShippingMethod, CASE WHEN bl.l_aantal = 0 THEN bl.b_aantal ELSE bl.l_aantal END AS PickedQty, bt.tekst_05 AS CarrierKW, REPLACE(u.trackingURL, ''[proNum]'', bt.tekst_02) AS UpdatedTrackingURL, 
                         bl.ord__ref
FROM            dbo.bstlyn__ AS bl LEFT OUTER JOIN
                         dbo.bstext__ AS bt ON bl.lyn__ref = bt.lyn__ref LEFT OUTER JOIN
                         dbo.stlPORTAL_TrackingURL AS u ON bt.tekst_05 = u.carrier_KW LEFT OUTER JOIN
                         dbo.levbas__ AS l ON bl.lev__ref = l.lev__ref LEFT OUTER JOIN
                         dbo.lev_vw__ AS lv ON bl.levvwref = lv.levvwref LEFT OUTER JOIN
                             (SELECT DISTINCT ord__ref
                               FROM            dbo.plandv__) AS pd ON bl.ord__ref = pd.ord__ref
WHERE        (bl.trn__srt IN (''1'', ''2'', ''3'', ''4''))
' 
