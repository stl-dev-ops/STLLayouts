SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SalesProjections]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_SalesProjections
AS
SELECT     dbo.bstlyn__.ord__ref AS Job#, dbo.bstlyn__.kla__rpn AS Customer, dbo.bstlyn__.vrzv_dat AS ExpectedShipDate, dbo.bstlyn__.afg_oms1 AS Description, 
                      dbo.bstlyn__.bedr__bm AS IndividualSale, 
                      CASE WHEN TotalSalesOrder.Dollars <> 0 THEN COGs * dbo.bstlyn__.bedr__bm / TotalSalesOrder.Dollars ELSE COGs END AS IndividualCOGs, 
                      dbo.bstlyn__.bedr__bm - CASE WHEN TotalSalesOrder.Dollars <> 0 THEN COGs * dbo.bstlyn__.bedr__bm / TotalSalesOrder.Dollars ELSE COGs END AS IndividualSaleLessIndividualCOGs,
                       CASE WHEN dbo.bstlyn__.bedr__bm <> 0 THEN CASE WHEN TotalSalesOrder.Dollars <> 0 THEN COGs * dbo.bstlyn__.bedr__bm / TotalSalesOrder.Dollars ELSE COGs
                       END / dbo.bstlyn__.bedr__bm ELSE NULL END AS IndividualCOGsPercent, TotalSalesOrder.Dollars AS TotalSale, 
                      CASE WHEN TotalSalesOrder.Dollars <> 0 THEN dbo.bstlyn__.bedr__bm / TotalSalesOrder.Dollars ELSE NULL END AS IndividualSalePercent, 
                      dbo.bstlyn__.kla__ref
FROM         dbo.bstlyn__ INNER JOIN
                          (SELECT     off__ref, SUM(papier__ + grdvb___) AS COGs
                            FROM          dbo.v4kkst__
                            WHERE      (kst__srt = ''0'')
                            GROUP BY off__ref) AS CostOfGoods ON dbo.bstlyn__.ord__ref = CostOfGoods.off__ref INNER JOIN
                          (SELECT     ord__ref, SUM(bedr__bm) AS Dollars
                            FROM          dbo.bstlyn__ AS salesOrders
                            GROUP BY ord__ref) AS TotalSalesOrder ON dbo.bstlyn__.ord__ref = TotalSalesOrder.ord__ref
' 
