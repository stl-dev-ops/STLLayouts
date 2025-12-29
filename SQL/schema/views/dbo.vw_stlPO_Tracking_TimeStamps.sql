SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPO_Tracking_TimeStamps]'))
EXEC dbo.sp_executesql @statement = N'




CREATE   VIEW [dbo].[vw_stlPO_Tracking_TimeStamps]
AS

SELECT TOP 1 WITH TIES PurchaseOrderID, OrderLineItemID, CreatedBy, Created
FROM 
(
	SELECT PurchaseOrderID, OrderLineItemID, CreatedBy, Created
	FROM stlPO_DatesNA
	UNION
	SELECT PurchaseOrderID, OrderLineItemID, CreatedBy, Created
	FROM stlPO_DateOverrides
	UNION
	SELECT PurchaseOrderID, OrderLineItemID, CreatedBy, Created
	FROM stlPO_DateCompleted
	UNION
	SELECT PurchaseOrderID, OrderLineItemID, CreatedBy, Created
	FROM stlPO_CompletedNotes
) tStamps
ORDER BY ROW_NUMBER() OVER (PARTITION BY PurchaseOrderID, OrderLineItemID ORDER BY Created DESC)

' 
