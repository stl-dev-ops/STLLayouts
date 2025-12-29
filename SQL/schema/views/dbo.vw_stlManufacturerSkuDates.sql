SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlManufacturerSkuDates]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlManufacturerSkuDates]
AS
SELECT sku.art__ref, m.artc_ref, c.omschr__, m.art__rpn, m.art_oms1, m.uitgeput, msd.ID, sku.artd_ref, sku.in_stock - sku.in___qrt Stock, sku.vak__ref, msd.ManufacturerDate, msd.Deleted, sku.levdat__, H2O_UV.antw_oms,
msd.Created, SUBSTRING(msd.CreatedBy, CHARINDEX(''\'', msd.CreatedBy) + 1, LEN(msd.CreatedBy)) AS CreatedBy, msd.Updated, SUBSTRING(msd.UpdatedBy, CHARINDEX(''\'', msd.UpdatedBy) + 1, LEN(msd.UpdatedBy)) AS UpdatedBy
FROM 
artikd__ sku  INNER JOIN
artiky__ m ON sku.art__ref = m.art__ref LEFT JOIN
(
	SELECT TOP 1 WITH TIES ID, artd_ref, ManufacturerDate, Deleted, Created, CreatedBy, Updated, UpdatedBy
	FROM stlManufacturerSkuDates
	WHERE Deleted = 0
	ORDER BY ROW_NUMBER() OVER (PARTITION BY artd_ref ORDER BY Updated DESC)
) msd ON msd.artd_ref = sku.artd_ref  INNER JOIN 
artcat__ c ON m.artc_ref = c.artc_ref LEFT JOIN
(
	SELECT H2O_UVd.det__ref, H2O_UVa.antw_oms
	FROM gegdet__ AS H2O_UVd INNER JOIN
	gegant__ AS H2O_UVa ON H2O_UVd.vrg__ref = H2O_UVa.vrg__ref AND H2O_UVd.antw_ref = H2O_UVa.antw_ref AND H2O_UVd.tabname_ = ''artiky__'' AND H2O_UVd.vrg__ref = ''000061''
) AS H2O_UV ON H2O_UV.det__ref = m.art__ref
' 
