SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMaterialStockLocationsQuantities]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlMaterialStockLocationsQuantities]
AS

SELECT omschr__, vak__ref, art__ref, art__rpn, art_oms1, artd_ref, in_stock, in___qrt, uitgeput, min_stoc, max_stoc, Regulated, CAS1, CAS2, CAS3, CAS4, zyn__ref,
Unit = 
CASE art__srt
	WHEN ''0'' THEN ''Feet''
	WHEN ''1'' THEN ''Feet''
	WHEN ''2'' THEN ''Each''
	WHEN ''3'' THEN ''Each''
	WHEN ''4'' THEN ''Feet''
	WHEN ''5'' THEN ''Feet''
	WHEN ''6'' THEN ''Pounds''
	WHEN ''7'' THEN ''Each''
	WHEN ''8'' THEN ''Each''
	WHEN ''9'' THEN ''Each''
	WHEN ''a'' THEN ''Each''
ELSE
	art__srt
END 

FROM 
(
	SELECT c.omschr__, sku.vak__ref, sku.art__ref, m.art__rpn, m.art_oms1, sku.artd_ref, sku.in_stock, sku.in___qrt, m.uitgeput, m.min_stoc, m.max_stoc,
			cf.[Regulated?] Regulated, CAST(cf.[CAS#1] AS nvarchar(255)) CAS1, CAST(cf.[CAS#2] AS nvarchar(255)) CAS2, CAST(cf.[CAS#3] AS nvarchar(255)) CAS3, CAST(cf.[CAS#4] AS nvarchar(255)) CAS4, m.zyn__ref, m.art__srt 
	FROM artikd__ sku INNER JOIN 
	artiky__ m ON sku.art__ref = m.art__ref INNER JOIN 
	artcat__ c ON m.artc_ref = c.artc_ref INNER JOIN 
	vw_stlMaterialCustomFields cf ON m.art__ref = cf.art__ref 
) AS s 

' 
