SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_MaterialLatestPrices]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_MaterialLatestPrices
AS
SELECT     dbo.artikn__.art__ref, dbo.artiky__.art__rpn AS MaterialKey, dbo.artikn__.l_akp_vl AS LatestPrice
FROM         dbo.artikn__ INNER JOIN
                      dbo.artiky__ ON dbo.artikn__.art__ref = dbo.artiky__.art__ref
WHERE     (dbo.artiky__.art__bst = N''Y'')
' 
