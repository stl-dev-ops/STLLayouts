SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_BasicJobInfo]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_BasicJobInfo
AS
SELECT     dbo.order___.ord__ref, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.omschr__, dbo.order___.oplage__, dbo.v4eti___.klcod_fr,
                          (SELECT     MAX(lev__dat) AS Expr1
                            FROM          dbo.bstlyn__
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS LastShipDate
FROM         dbo.order___ LEFT OUTER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref
' 
