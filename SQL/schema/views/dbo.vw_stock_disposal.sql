SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stock_disposal]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stock_disposal
AS
SELECT     TOP (100) PERCENT a.art__ref AS material_id, a.art__rpn AS material_keyword, a.art__bst AS ok_ord, a.art_vrrd AS stock_mg, 
                      dbo.artikn__.dat_verb AS consumption_date, dbo.artcat__.omschr__ AS material_category, dbo.artikn__.dat_lev_ AS delivery_date, dbo.artikn__.reserve_, 
                      dbo.artikn__.in_stock, a.art_oms1 AS mat_desc
FROM         dbo.artiky__ AS a LEFT OUTER JOIN
                      dbo.artikn__ ON a.art__ref = dbo.artikn__.art__ref LEFT OUTER JOIN
                      dbo.artcat__ ON a.artc_ref = dbo.artcat__.artc_ref
ORDER BY material_id
' 
