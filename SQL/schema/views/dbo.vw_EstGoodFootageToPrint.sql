SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_EstGoodFootageToPrint]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_EstGoodFootageToPrint
AS
SELECT     TOP (100) PERCENT dbo.order___.ord__ref, (CASE WHEN order___.prkl_ref <> ''200'' THEN CASE WHEN v4eti___.tedrkd__ = NULL 
                      THEN 0 ELSE CASE WHEN v4eti___.oflinsvo = NULL 
                      THEN v4eti___.tedrkd__ ELSE v4eti___.tedrkd__ + v4eti___.oflinsvo END END ELSE CASE WHEN v4eti___.tedrkd__ = NULL 
                      THEN 0 ELSE v4eti___.tedrkd__ END END) AS EstGoodFootageToPrint
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref
ORDER BY dbo.order___.ord__ref
' 
