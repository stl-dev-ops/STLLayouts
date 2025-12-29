SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlStockedProductsSalesOrders]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlStockedProductsSalesOrders]
AS
SELECT c.naam____ AS Customer, so.vrzv_dat AS ExpectedShipmentDate, 
CASE WHEN so.vrz__dat = ''1980-01-01'' THEN NULL ELSE so.vrz__dat END AS RealShipmentDate, so.afg__ref AS ProductID, Book.zynrefkl BookName, sp.ProductName, 
so.f_aantal AS InvoicedQty, sp.RollSize, so.f_aantal / sp.RollSize AS RollsInvoiced, c.kla__ref, so.l_aantal AS DeliveredQty, so.l_aantal / sp.RollSize AS RollsDelivered, so.bedrf_bm AS InvoicedAmount, sp.GrossPurchasePrice, 
sp.tstval03, sp.ProductStatus, sp.MachineNames, so.preexcl_, sr.vrt__rpn AS SalesRepresentative, so.b_aantal AS OrderedQty, so.b_aantal / sp.RollSize AS RollsOrdered
FROM klabas__ AS c INNER JOIN
bstlyn__ AS so ON c.kla__ref = so.kla__ref INNER JOIN
vw_stlStockedProducts AS sp ON so.afg__ref = sp.afg__ref LEFT OUTER JOIN
verte___ AS sr ON c.vrt__ref = sr.vrt__ref LEFT JOIN
(
	SELECT afg__ref, zynrefkl
	FROM afgclt__
	WHERE kla__ref = ''100506''
) Book ON so.afg__ref = Book.afg__ref 
WHERE so.kla__ref <> ''100208''
' 
