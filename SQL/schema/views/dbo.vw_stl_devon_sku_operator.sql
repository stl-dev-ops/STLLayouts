SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_sku_operator]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_sku_operator
AS
SELECT     crea_usr, COUNT(aant__ex) AS SKU, ord__ref
FROM         dbo.afgsku__
WHERE     (ord__ref = ''500210'')
GROUP BY crea_usr, ord__ref
' 
