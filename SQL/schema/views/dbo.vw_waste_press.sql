SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_waste_press]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_waste_press
AS
SELECT     dbo.order___.ord__ref,
                          (SELECT     SUM(aantal__) AS Expr1
                            FROM          dbo.plcrol__
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (art__ref <> ''103160'')) AS GrossFT,
                          (SELECT     SUM(aantal__) AS Expr1
                            FROM          dbo.plcrol__ AS plcrol___1
                            WHERE      (ord__ref = dbo.order___.ord__ref) AND (art__ref = ''103160'')) AS ButtFT,
                          (SELECT     SUM(aantm_in) AS Expr1
                            FROM          dbo.hlfvrd__
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS GoodFT, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, 
                      dbo.v4eti___.aantal_b, dbo.v4eti___.aantal_h
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref
' 
