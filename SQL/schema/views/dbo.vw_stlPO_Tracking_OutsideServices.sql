SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPO_Tracking_OutsideServices]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlPO_Tracking_OutsideServices]
AS
SELECT        ConfirmationDueDate = CASE WHEN ISNULL(ConfirmationNA.NA, 1) = 0 THEN NULL ELSE CASE WHEN YEAR(ISNULL(ConfirmationCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL 
                         ELSE ISNULL(ConfirmationOverrideDueDate.OverrideDate,
                             (SELECT        MIN(BusinessDate)
                               FROM            stlBusinessDaysCalendar
                               WHERE        BusinessDate > PO.bs___dat AND BusinessDay = ''Y'')) END END, FollowUpOnDueDate = CASE WHEN ISNULL(FollowUpNA.NA, 1) = 0 THEN NULL 
                         ELSE CASE WHEN YEAR(ISNULL(FollowUpCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE ISNULL(FollowUpOverrideDueDate.OverrideDate, PO.glev_dat) END END, 
                         TrackingNumberDueDate = CASE WHEN ISNULL(TrackingNumberNA.NA, 1) = 0 THEN NULL ELSE CASE WHEN YEAR(ISNULL(TrackingNumberCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL 
                         ELSE ISNULL(TrackingNumberOverrideDueDate.OverrideDate, Transport.vrzv_dat) END END, TrackShipmentDueDate = CASE WHEN ISNULL(TrackShipmentNA.NA, 1) = 0 THEN NULL 
                         ELSE CASE WHEN YEAR(ISNULL(TrackShipmentCompleted.CompletedOn, ''1/1/1980'')) <> 1980 THEN NULL ELSE ISNULL(TrackShipmentOverrideDueDate.OverrideDate,
                             (SELECT        MIN(BusinessDate)
                               FROM            stlBusinessDaysCalendar
                               WHERE        BusinessDate > Transport.vrzv_dat AND BusinessDay = ''Y'')) END END, DefaultConfirmationDueDate =
                             (SELECT        MIN(BusinessDate)
                               FROM            stlBusinessDaysCalendar
                               WHERE        BusinessDate > PO.bs___dat AND BusinessDay = ''Y''), DefaultFollowUpOnDueDate = PO.glev_dat, DefaultTrackingNumberDueDate = Transport.vrzv_dat, DefaultTrackShipmentDueDate =
                             (SELECT        MIN(BusinessDate)
                               FROM            stlBusinessDaysCalendar
                               WHERE        BusinessDate > Transport.vrzv_dat AND BusinessDay = ''Y''), ConfirmationCompletedOn = ConfirmationCompleted.CompletedOn, FollowUpCompletedOn = FollowUpCompleted.CompletedOn, 
                         TrackingNumberCompletedOn = TrackingNumberCompleted.CompletedOn, TrackShipmentCompletedOn = TrackShipmentCompleted.CompletedOn, ConfirmationNotes = ConfirmationNotes.Notes, 
                         FollowUpNotes = FollowUpNotes.Notes, TrackingNumberNotes = TrackingNumberNotes.Notes, TrackShipmentNotes = TrackShipmentNotes.Notes, ConfirmationOverrideDueDate = ConfirmationOverrideDueDate.OverrideDate, 
                         FollowUpOverrideDueDate = FollowUpOverrideDueDate.OverrideDate, TrackingNumberOverrideDueDate = TrackingNumberOverrideDueDate.OverrideDate, 
                         TrackShipmentOverrideDueDate = TrackShipmentOverrideDueDate.OverrideDate, ConfirmationApplicable = ISNULL(ConfirmationNA.NA, 1), FollowUpApplicable = ISNULL(FollowUpNA.NA, 1), 
                         TrackingNumberApplicable = ISNULL(TrackingNumberNA.NA, 1), TrackShipmentApplicable = ISNULL(TrackShipmentNA.NA, 1), PO.bsbonref AS PO_Number, '''' OrderLineItemID, PO.bs___dat AS PO_Date, 
                         PO.gaant___ OrderedQuantity, PO.vrz___bm TotalAmountOfOrder, PO.glev_dat AS Required_Shipment_Date, Transport.vrzv_dat AS Confirmed_Ship_Date, PO.glev_dat Desired_Delivery_Date, PO.bswrkoms, PO.komment_, PO.lev__ref, 
                         PO.lev__rpn AS Supplier, PO.arth_ref ID, PO.arth_ref, T .arth_rpn AS [Keyword], T .arth_oms AS [Description2], O.omschr__ AS [Description], PO.fiat__ok, 
                         CASE PO.fiat__ok WHEN ''0'' THEN ''No confirmation needed'' WHEN ''1'' THEN ''To confirm'' WHEN ''2'' THEN ''Cancelled'' WHEN ''3'' THEN ''Modified'' WHEN ''4'' THEN ''Confirmed after changes'' WHEN ''5'' THEN ''Already confirmed'' WHEN
                          ''6'' THEN ''Rejected'' END [Confirmation Supplier], PO.lev2_tst AS lev__tst, 
                         CASE PO.lev2_tst WHEN ''0'' THEN ''Cancelled'' WHEN ''1'' THEN ''Not yet delivered'' WHEN ''2'' THEN ''Partly delivered'' WHEN ''3'' THEN ''Completely delivered'' ELSE PO.lev2_tst END [Delivery status], PO.fac__tst, 
                         CASE PO.fac__tst WHEN ''0'' THEN ''Cancelled'' WHEN ''1'' THEN ''Not yet invoiced'' WHEN ''2'' THEN ''Partly invoiced'' WHEN ''3'' THEN ''Completely invoiced'' ELSE PO.fac__tst END [Invoice status], PO.uw_ref__, PO.fiat_dat InvoiceDate, PO.forf__bm InvoiceAmount
FROM            besbon__ PO LEFT JOIN
                         order___ O ON PO.ord__ref = O.ord__ref LEFT JOIN
                         arthlp__ T ON PO.arth_ref = T .arth_ref LEFT JOIN
                             (SELECT        TOP 1 WITH TIES *
                               FROM            trnlyn__
                               ORDER BY ROW_NUMBER() OVER (PARTITION BY bsbonref
                               ORDER BY toestand DESC)) Transport ON PO.bsbonref = Transport.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, CompletedOn
      FROM            stlPO_DateCompleted
      WHERE        DateType = 1 AND Deleted = 0) ConfirmationCompleted ON ConfirmationCompleted.OrderLineItemID = '''' AND ConfirmationCompleted.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, CompletedOn
      FROM            stlPO_DateCompleted
      WHERE        DateType = 2 AND Deleted = 0) FollowUpCompleted ON FollowUpCompleted.OrderLineItemID = '''' AND FollowUpCompleted.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, CompletedOn
      FROM            stlPO_DateCompleted
      WHERE        DateType = 3 AND Deleted = 0) TrackingNumberCompleted ON TrackingNumberCompleted.OrderLineItemID = '''' AND TrackingNumberCompleted.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, CompletedOn
      FROM            stlPO_DateCompleted
      WHERE        DateType = 4 AND Deleted = 0) TrackShipmentCompleted ON TrackShipmentCompleted.OrderLineItemID = '''' AND TrackShipmentCompleted.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, Notes
      FROM            stlPO_CompletedNotes
      WHERE        DateType = 1 AND Deleted = 0) ConfirmationNotes ON ConfirmationNotes.OrderLineItemID = '''' AND ConfirmationNotes.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, Notes
      FROM            stlPO_CompletedNotes
      WHERE        DateType = 2 AND Deleted = 0) FollowUpNotes ON FollowUpNotes.OrderLineItemID = '''' AND FollowUpNotes.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, Notes
      FROM            stlPO_CompletedNotes
      WHERE        DateType = 3 AND Deleted = 0) TrackingNumberNotes ON TrackingNumberNotes.OrderLineItemID = '''' AND TrackingNumberNotes.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, Notes
      FROM            stlPO_CompletedNotes
      WHERE        DateType = 4 AND Deleted = 0) TrackShipmentNotes ON TrackShipmentNotes.OrderLineItemID = '''' AND TrackShipmentNotes.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, OverrideDate
      FROM            stlPO_DateOverrides
      WHERE        DateType = 1 AND Deleted = 0) ConfirmationOverrideDueDate ON ConfirmationOverrideDueDate.OrderLineItemID = '''' AND ConfirmationOverrideDueDate.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, OverrideDate
      FROM            stlPO_DateOverrides
      WHERE        DateType = 2 AND Deleted = 0) FollowUpOverrideDueDate ON FollowUpOverrideDueDate.OrderLineItemID = '''' AND FollowUpOverrideDueDate.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, OverrideDate
      FROM            stlPO_DateOverrides
      WHERE        DateType = 3 AND Deleted = 0) TrackingNumberOverrideDueDate ON TrackingNumberOverrideDueDate.OrderLineItemID = '''' AND TrackingNumberOverrideDueDate.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, OverrideDate
      FROM            stlPO_DateOverrides
      WHERE        DateType = 4 AND Deleted = 0) TrackShipmentOverrideDueDate ON TrackShipmentOverrideDueDate.OrderLineItemID = '''' AND TrackShipmentOverrideDueDate.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, 0 NA
      FROM            stlPO_DatesNA
      WHERE        DateType = 1 AND Deleted = 0) ConfirmationNA ON ConfirmationNA.OrderLineItemID = '''' AND ConfirmationNA.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, 0 NA
      FROM            stlPO_DatesNA
      WHERE        DateType = 2 AND Deleted = 0) FollowUpNA ON FollowUpNA.OrderLineItemID = '''' AND FollowUpNA.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, 0 NA
      FROM            stlPO_DatesNA
      WHERE        DateType = 3 AND Deleted = 0) TrackingNumberNA ON TrackingNumberNA.OrderLineItemID = '''' AND TrackingNumberNA.PurchaseOrderID = PO.bsbonref LEFT JOIN
    (SELECT        PurchaseOrderID, OrderLineItemID, 0 NA
      FROM            stlPO_DatesNA
      WHERE        DateType = 4 AND Deleted = 0) TrackShipmentNA ON TrackShipmentNA.OrderLineItemID = '''' AND TrackShipmentNA.PurchaseOrderID = PO.bsbonref
' 
