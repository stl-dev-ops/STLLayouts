SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPO_Tracking]'))
EXEC dbo.sp_executesql @statement = N'







CREATE   VIEW [dbo].[vw_stlPO_Tracking]
AS

SELECT ''MATERIAL'' PO_Type, ConfirmationDueDate, FollowUpOnDueDate, TrackingNumberDueDate, TrackShipmentDueDate, DefaultConfirmationDueDate, DefaultFollowUpOnDueDate, DefaultTrackingNumberDueDate, DefaultTrackShipmentDueDate, 
					ConfirmationCompletedOn, FollowUpCompletedOn, TrackingNumberCompletedOn, TrackShipmentCompletedOn, ConfirmationNotes, FollowUpNotes, TrackingNumberNotes, TrackShipmentNotes, ConfirmationOverrideDueDate, 
					FollowUpOverrideDueDate, TrackingNumberOverrideDueDate, TrackShipmentOverrideDueDate, ConfirmationApplicable, FollowUpApplicable, TrackingNumberApplicable, TrackShipmentApplicable, PO_Number, 
					OrderLineItemID, PO_Date, OrderedQuantity, TotalAmountOfOrder, Required_Shipment_Date, Confirmed_Ship_Date, lev__ref, Supplier, ID, art__ref AS MaterialOrToolID, Keyword, [Description], Description2,  
					[Confirmation Supplier], lev__tst, [Delivery status], fac__tst, [Invoice status], grs__com Comment, zyn__ref [Ref at Supplier], Desired_Delivery_Date, InvoiceDate, InvoiceAmount 
FROM vw_stlPO_Tracking_Materials
WHERE Keyword NOT LIKE ''VF%'' AND Keyword NOT LIKE ''DTV%'' AND Description2 NOT LIKE ''%payment structure%''
UNION

--SELECT ''PRODUCT'' PO_Type, ConfirmationDueDate, FollowUpOnDueDate, TrackingNumberDueDate, TrackShipmentDueDate, DefaultConfirmationDueDate, DefaultFollowUpOnDueDate, DefaultTrackingNumberDueDate, DefaultTrackShipmentDueDate, 
--					ConfirmationCompletedOn, FollowUpCompletedOn, TrackingNumberCompletedOn, TrackShipmentCompletedOn, ConfirmationNotes, FollowUpNotes, TrackingNumberNotes, TrackShipmentNotes, ConfirmationOverrideDueDate, 
--					FollowUpOverrideDueDate, TrackingNumberOverrideDueDate, TrackShipmentOverrideDueDate, ConfirmationApplicable, FollowUpApplicable, TrackingNumberApplicable, TrackShipmentApplicable, PO_Number, 
--					OrderLineItemID, PO_Date, OrderedQuantity, TotalAmountOfOrder, Required_Shipment_Date, Confirmed_Ship_Date, lev__ref, Supplier, ID, Keyword, Description, Description2, 
--					[Confirmation Supplier], lev__tst, [Delivery status], fac__tst, [Invoice status], comment_ Comment, zyn__ref [Ref at Supplier], Desired_Delivery_Date, InvoiceDate, InvoiceAmount  
--FROM vw_stlPO_Tracking_Products

--UNION

SELECT ''OUTSIDE'' PO_Type, ConfirmationDueDate, FollowUpOnDueDate, TrackingNumberDueDate, TrackShipmentDueDate, DefaultConfirmationDueDate, DefaultFollowUpOnDueDate, DefaultTrackingNumberDueDate, DefaultTrackShipmentDueDate, 
					ConfirmationCompletedOn, FollowUpCompletedOn, TrackingNumberCompletedOn, TrackShipmentCompletedOn, ConfirmationNotes, FollowUpNotes, TrackingNumberNotes, TrackShipmentNotes, ConfirmationOverrideDueDate, 
					FollowUpOverrideDueDate, TrackingNumberOverrideDueDate, TrackShipmentOverrideDueDate, ConfirmationApplicable, FollowUpApplicable, TrackingNumberApplicable, TrackShipmentApplicable, PO_Number, 
					OrderLineItemID, PO_Date, OrderedQuantity, TotalAmountOfOrder, Required_Shipment_Date, Confirmed_Ship_Date, lev__ref, Supplier, ID, arth_ref AS MaterialOrToolID, Keyword, Description, Description2, 
					[Confirmation Supplier], lev__tst, [Delivery status], fac__tst, [Invoice status], bswrkoms + '' '' + komment_ Comment, uw_ref__ [Ref at Supplier], Desired_Delivery_Date, InvoiceDate, InvoiceAmount  
FROM vw_stlPO_Tracking_OutsideServices

' 
