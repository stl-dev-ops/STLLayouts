SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_inventory]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_inventory
AS
SELECT     dbo.afgant__.afg__ref, dbo.afgant__.in__vrrd, CASE WHEN MAX(kla__rpn) = ''STL STOCK'' THEN AVG(dbo.vw_stl_devon_costperlabel.Cost) WHEN MAX(kla__rpn) 
                      = ''PLI IL'' THEN AVG(dbo.vw_stl_devon_costperlabel.Cost) ELSE ''0'' END AS CostPer, CASE WHEN MAX(kla__rpn) 
                      = ''STL STOCK'' THEN AVG(dbo.vw_stl_devon_costperlabel.MachineCost) WHEN MAX(kla__rpn) = ''PLI IL'' THEN AVG(dbo.vw_stl_devon_costperlabel.MachineCost) 
                      ELSE ''0'' END AS MachineCostPer, MAX(dbo.order___.kla__rpn) AS Customer, MAX(dbo.order___.omschr__) AS Description, 
                      AVG(dbo.order___.voorz_bd / dbo.order___.oplage__ * 1000) AS UnitPrice, AVG(dbo.vw_stl_devon_costperlabel.Cost) AS CostPer_ALL_CUST, 
                      AVG(dbo.vw_stl_devon_costperlabel.MachineCost) AS MachineCostPer_ALL_CUST
FROM         dbo.afgant__ INNER JOIN
                      dbo.vw_stl_devon_costperlabel ON dbo.afgant__.afg__ref = dbo.vw_stl_devon_costperlabel.afg__ref INNER JOIN
                      dbo.order___ ON dbo.vw_stl_devon_costperlabel.ord__ref = dbo.order___.ord__ref
WHERE     (dbo.afgant__.in__vrrd > ''0'')
GROUP BY dbo.afgant__.afg__ref, dbo.afgant__.in__vrrd
' 
