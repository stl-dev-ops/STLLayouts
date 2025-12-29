SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPO_Tracking_Products]'))
EXEC dbo.sp_executesql @statement = N'






CREATE   VIEW [dbo].[vw_stlPO_Tracking_Products]
AS

SELECT 

ConfirmationDueDate = 
  CASE WHEN ISNULL(ConfirmationNA.NA, 1) = 0 THEN NULL ELSE
  CASE WHEN YEAR(ISNULL(ConfirmationCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE
  ISNULL(ConfirmationOverrideDueDate.OverrideDate, 
    (SELECT MIN(BusinessDate) FROM stlBusinessDaysCalendar WHERE BusinessDate > PO.bs___dat AND BusinessDay = ''Y'')) END END,

FollowUpOnDueDate = 
  CASE WHEN ISNULL(FollowUpNA.NA, 1) = 0 THEN NULL ELSE
  CASE WHEN YEAR(ISNULL(FollowUpCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE
  ISNULL(FollowUpOverrideDueDate.OverrideDate, PO_det.gvrzodat) END END,

TrackingNumberDueDate =
  CASE WHEN ISNULL(TrackingNumberNA.NA, 1) = 0 THEN NULL ELSE
  CASE WHEN YEAR(ISNULL(TrackingNumberCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE
  ISNULL(TrackingNumberOverrideDueDate.OverrideDate, PO_det.gvrz_dat) END END,

TrackShipmentDueDate =
  CASE WHEN ISNULL(TrackShipmentNA.NA, 1) = 0 THEN NULL ELSE
  CASE WHEN YEAR(ISNULL(TrackShipmentCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE
  ISNULL(TrackShipmentOverrideDueDate.OverrideDate,  (SELECT MIN(BusinessDate) FROM stlBusinessDaysCalendar WHERE BusinessDate > PO_det.gvrz_dat AND BusinessDay = ''Y'')) END END,

DefaultConfirmationDueDate    = (SELECT MIN(BusinessDate) FROM stlBusinessDaysCalendar WHERE BusinessDate > PO.bs___dat AND BusinessDay = ''Y''),
DefaultFollowUpOnDueDate      = PO_det.gvrzodat,
DefaultTrackingNumberDueDate  = PO_det.gvrz_dat,
DefaultTrackShipmentDueDate   = (SELECT MIN(BusinessDate) FROM stlBusinessDaysCalendar WHERE BusinessDate > PO_det.gvrz_dat AND BusinessDay = ''Y''),
ConfirmationCompletedOn       = ConfirmationCompleted.CompletedOn,
FollowUpCompletedOn           = FollowUpCompleted.CompletedOn,
TrackingNumberCompletedOn     = TrackingNumberCompleted.CompletedOn,
TrackShipmentCompletedOn      = TrackShipmentCompleted.CompletedOn,
ConfirmationNotes             = ConfirmationNotes.Notes,
FollowUpNotes                 = FollowUpNotes.Notes,
TrackingNumberNotes           = TrackingNumberNotes.Notes,
TrackShipmentNotes            = TrackShipmentNotes.Notes,
ConfirmationOverrideDueDate   = ConfirmationOverrideDueDate.OverrideDate,
FollowUpOverrideDueDate       = FollowUpOverrideDueDate.OverrideDate,
TrackingNumberOverrideDueDate = TrackingNumberOverrideDueDate.OverrideDate,
TrackShipmentOverrideDueDate  = TrackShipmentOverrideDueDate.OverrideDate,
ConfirmationApplicable        = ISNULL(ConfirmationNA.NA, 1),
FollowUpApplicable            = ISNULL(FollowUpNA.NA, 1),
TrackingNumberApplicable      = ISNULL(TrackingNumberNA.NA, 1),
TrackShipmentApplicable       = ISNULL(TrackShipmentNA.NA, 1),

PO.grbonref AS PO_Number, PO_det.lyn__ref OrderLineItemID, PO.bs___dat AS PO_Date, PO_det.baant___ OrderedQuantity, PO_det.btot__bm TotalAmountOfOrder,
PO_det.gvrzodat AS Required_Shipment_Date, PO_det.gvrz_dat AS Confirmed_Ship_Date, PO_det.glev_dat Desired_Delivery_Date,
PO_det.lev__ref, PO_det.lev__rpn AS Supplier, P.afg__ref AS ID, P.afg__rpn AS [Keyword], P.afg_oms1 AS [Description], P.afg_oms2 AS [Description2],
CASE WHEN YEAR(PO_det.levr_dat) = 2049 THEN NULL ELSE PO_det.levr_dat END AS Real_delivery,  
laant___ AS Delivered_Quantity, PO_det.comment_,
PO_det.fiat_tst, PO_det.fiat_dat InvoiceDate, PO_det.ftot__bm InvoiceAmount, 
CASE PO_det.fiat_tst
WHEN ''0'' THEN ''No confirmation needed''
WHEN ''1'' THEN ''To confirm''
WHEN ''2'' THEN ''Cancelled''
WHEN ''3'' THEN ''Modified''
WHEN ''4'' THEN ''Confirmed after changes''
WHEN ''5'' THEN ''Already confirmed''
WHEN ''6'' THEN ''Rejected''
END [Confirmation Supplier],
PO_det.lev__tst,
CASE PO_det.lev__tst 
WHEN ''0'' THEN ''Cancelled''
WHEN ''1'' THEN ''Not yet delivered''
WHEN ''2'' THEN ''Partly delivered''
WHEN ''3'' THEN ''Completely delivered''
ELSE PO_det.lev__tst 
END [Delivery status],
PO_det.fac__tst,
CASE PO_det.fac__tst 
WHEN ''0'' THEN ''Cancelled''
WHEN ''1'' THEN ''Not yet invoiced''
WHEN ''2'' THEN ''Partly invoiced''
WHEN ''3'' THEN ''Completely invoiced''
ELSE PO_det.fac__tst 
END [Invoice status],
PO_det.zyn__ref 

FROM grdbon__ AS PO INNER JOIN 
aprlyn__ AS PO_det ON PO_det.grbonref = PO.grbonref INNER JOIN  
afgart__ AS P ON PO_det.afg__ref = P.afg__ref LEFT JOIN    
(SELECT PurchaseOrderID, OrderLineItemID, CompletedOn FROM stlPO_DateCompleted WHERE DateType = 1 AND Deleted = 0) ConfirmationCompleted ON ConfirmationCompleted.OrderLineItemID = PO_det.lyn__ref AND ConfirmationCompleted.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, CompletedOn FROM stlPO_DateCompleted WHERE DateType = 2 AND Deleted = 0) FollowUpCompleted ON FollowUpCompleted.OrderLineItemID = PO_det.lyn__ref AND FollowUpCompleted.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, CompletedOn FROM stlPO_DateCompleted WHERE DateType = 3 AND Deleted = 0) TrackingNumberCompleted ON TrackingNumberCompleted.OrderLineItemID = PO_det.lyn__ref AND TrackingNumberCompleted.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, CompletedOn FROM stlPO_DateCompleted WHERE DateType = 4 AND Deleted = 0) TrackShipmentCompleted ON TrackShipmentCompleted.OrderLineItemID = PO_det.lyn__ref AND TrackShipmentCompleted.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, Notes FROM stlPO_CompletedNotes WHERE DateType = 1 AND Deleted = 0) ConfirmationNotes ON ConfirmationNotes.OrderLineItemID = PO_det.lyn__ref AND ConfirmationNotes.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, Notes FROM stlPO_CompletedNotes WHERE DateType = 2 AND Deleted = 0) FollowUpNotes ON FollowUpNotes.OrderLineItemID = PO_det.lyn__ref AND FollowUpNotes.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, Notes FROM stlPO_CompletedNotes WHERE DateType = 3 AND Deleted = 0) TrackingNumberNotes ON TrackingNumberNotes.OrderLineItemID = PO_det.lyn__ref AND TrackingNumberNotes.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, Notes FROM stlPO_CompletedNotes WHERE DateType = 4 AND Deleted = 0) TrackShipmentNotes ON TrackShipmentNotes.OrderLineItemID = PO_det.lyn__ref AND TrackShipmentNotes.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, OverrideDate FROM stlPO_DateOverrides WHERE DateType = 1 AND Deleted = 0) ConfirmationOverrideDueDate ON ConfirmationOverrideDueDate.OrderLineItemID = PO_det.lyn__ref AND ConfirmationOverrideDueDate.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, OverrideDate FROM stlPO_DateOverrides WHERE DateType = 2 AND Deleted = 0) FollowUpOverrideDueDate ON FollowUpOverrideDueDate.OrderLineItemID = PO_det.lyn__ref AND FollowUpOverrideDueDate.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, OverrideDate FROM stlPO_DateOverrides WHERE DateType = 3 AND Deleted = 0) TrackingNumberOverrideDueDate ON TrackingNumberOverrideDueDate.OrderLineItemID = PO_det.lyn__ref AND TrackingNumberOverrideDueDate.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, OverrideDate FROM stlPO_DateOverrides WHERE DateType = 4 AND Deleted = 0) TrackShipmentOverrideDueDate ON TrackShipmentOverrideDueDate.OrderLineItemID = PO_det.lyn__ref AND TrackShipmentOverrideDueDate.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, 0 NA FROM stlPO_DatesNA WHERE DateType = 1 AND Deleted = 0) ConfirmationNA ON ConfirmationNA.OrderLineItemID = PO_det.lyn__ref AND ConfirmationNA.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, 0 NA FROM stlPO_DatesNA WHERE DateType = 2 AND Deleted = 0) FollowUpNA ON FollowUpNA.OrderLineItemID = PO_det.lyn__ref AND FollowUpNA.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, 0 NA FROM stlPO_DatesNA WHERE DateType = 3 AND Deleted = 0) TrackingNumberNA ON TrackingNumberNA.OrderLineItemID = PO_det.lyn__ref AND TrackingNumberNA.PurchaseOrderID = PO_det.grbonref LEFT JOIN
(SELECT PurchaseOrderID, OrderLineItemID, 0 NA FROM stlPO_DatesNA WHERE DateType = 4 AND Deleted = 0) TrackShipmentNA ON TrackShipmentNA.OrderLineItemID = PO_det.lyn__ref AND TrackShipmentNA.PurchaseOrderID = PO_det.grbonref 

WHERE PO_det.lev__rpn NOT IN (''ELEV-001'', ''STLC-001'')

' 
