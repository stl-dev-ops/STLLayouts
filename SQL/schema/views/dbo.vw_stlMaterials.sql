SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMaterials]'))
EXEC dbo.sp_executesql @statement = N'











CREATE VIEW [dbo].[vw_stlMaterials]
AS
SELECT DISTINCT 
m.art__ref, UPPER(TRIM(m.art__rpn)) AS art__rpn, m.drg__ref, SUB.SubstrateKey drg__rpn, m.lev__ref, S.lev__rpn, m.zyn__ref, SL.antw_oms AS ShelfLife, SL.Months AS ShelfLifeMonths, 
mQ.in_stock, mQ.reserve_, mQ.in___qrt, mQ.in_best_, in_stock - in___qrt + in_best_ - reserve_ FinalStock, 
m.min_stoc, m.max_stoc, 
SUB.drg__ref1, UPPER(SUB.SubstrateKey1) AS SubstrateKey1, SUB.drg__ref2, UPPER(SUB.SubstrateKey2) AS SubstrateKey2, 
SUB.drg__ref3, UPPER(SUB.SubstrateKey3) AS SubstrateKey3, m.art_oms1, m.artc_ref, mC.omschr__ AS Category, 
mrLT.MostRecentLeadTime, LT.AverageLeadTime, LT12.AverageLeadTimeLast12Months, LT12.SamplePortionSize,
mQ.l_akp_vl AS LatestPrice, m.breedte_, mQ.art__srt, ISNULL(PrePress, 0) PrePress, ISNULL(AfterPress, 0) AfterPress, ISNULL(NewItems, 0) NewItems, m.uitgeput, m.art__bst,
art__ref1 = (SELECT TOP 1 art__ref FROM artiky__ WHERE artiky__.art__rpn = UPPER(SUB.SubstrateKey1)),
art__ref2 = (SELECT TOP 1 art__ref FROM artiky__ WHERE artiky__.art__rpn = UPPER(SUB.SubstrateKey2)),
art__ref3 = (SELECT TOP 1 art__ref FROM artiky__ WHERE artiky__.art__rpn = UPPER(SUB.SubstrateKey3)), Last3AverageLeadTime, Last3SamplePortionSize 

FROM artiky__ AS m LEFT JOIN
artikn__ AS mQ ON m.art__ref = mQ.art__ref LEFT JOIN
artcat__ AS mC ON m.artc_ref = mC.artc_ref LEFT JOIN
vw_SubstratesLatestPrices AS SUB ON m.drg__ref = SUB.drg__ref LEFT JOIN
levbas__ AS S ON m.lev__ref = S.lev__ref LEFT JOIN
(
	SELECT gSL.det__ref, gSL.antw_ref, dbo.gegant__.antw_oms, 
	CASE gSL.antw_ref WHEN ''000001'' THEN 999 WHEN ''000002'' THEN 6 WHEN ''000003'' THEN 3 WHEN ''000004'' THEN 9 WHEN ''000005'' THEN 12 WHEN ''000006'' THEN 18 WHEN ''000007'' THEN 24 END AS Months
	FROM gegdet__ AS gSL INNER JOIN
	gegant__ ON gSL.vrg__ref = dbo.gegant__.vrg__ref AND gSL.antw_ref = dbo.gegant__.antw_ref AND gSL.tabname_ = ''artiky__'' AND gSL.vrg__ref = ''000015''
) AS SL ON m.art__ref = SL.det__ref LEFT JOIN
(
	SELECT art__ref, CAST(SUM([Days]) AS decimal) / CAST(COUNT(art__ref) AS decimal) AverageLeadTime
	FROM
	(
		SELECT PO_det.art__ref, DATEDIFF(DAY, PO.bs___dat, PO_det.levr_dat) [Days]
		FROM grdbon__ AS PO INNER JOIN   
		grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
		WHERE YEAR(PO_det.levr_dat) <> 2049 AND PO_det.lev__tst IN (''2'', ''3'') AND PO_det.tstval03 <> ''0002''
	) LeadTime
	GROUP BY art__ref 
) LT ON LT.art__ref = m.art__ref LEFT JOIN
(
	SELECT art__ref, CAST(SUM([Days]) AS decimal) / CAST(COUNT(art__ref) AS decimal) AverageLeadTimeLast12Months, COUNT(art__ref) SamplePortionSize
	FROM
	(
		SELECT PO_det.art__ref, DATEDIFF(DAY, PO.bs___dat, PO_det.levr_dat) [Days]
		FROM grdbon__ AS PO INNER JOIN   
		grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
		WHERE PO.bs___dat > DATEADD(YEAR, -1, GETDATE()) AND YEAR(PO_det.levr_dat) <> 2049 AND PO_det.lev__tst IN (''2'', ''3'') AND PO_det.tstval03 <> ''0002''
	) LeadTimeLast12Months
	GROUP BY art__ref 
) LT12 ON LT12.art__ref = m.art__ref LEFT JOIN
(
	SELECT TOP 1 WITH TIES PO_det.art__ref, DATEDIFF(DAY, PO.bs___dat, PO_det.levr_dat) MostRecentLeadTime
	FROM grdbon__ AS PO INNER JOIN   
	grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
	WHERE YEAR(PO_det.levr_dat) <> 2049 AND PO_det.lev__tst IN (''2'', ''3'') AND PO_det.tstval03 <> ''0002''
	ORDER BY ROW_NUMBER() OVER (PARTITION BY PO_det.art__ref ORDER BY PO_det.levr_dat DESC)
) mrLT ON mrLT.art__ref = m.art__ref LEFT JOIN
(
SELECT d.art__ref, COUNT(d.Days) Last3SamplePortionSize, CAST(SUM(d.Days) AS decimal) / CAST(COUNT(d.Days) AS decimal) Last3AverageLeadTime
FROM 
( 
	SELECT PO_det.art__ref, DATEDIFF(DAY, PO.bs___dat, PO_det.levr_dat) [Days], ROW_NUMBER() OVER (PARTITION BY PO_det.art__ref ORDER BY PO_det.levr_dat DESC) Row#
	FROM grdbon__ AS PO INNER JOIN   
	grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
	WHERE YEAR(PO_det.levr_dat) BETWEEN YEAR(GETDATE()) - 2 AND YEAR(GETDATE()) AND PO_det.lev__tst IN (''2'', ''3'') AND PO_det.tstval03 <> ''0002''
) d
WHERE [Row#] < 4
GROUP BY D.art__ref 
) LT_last3 ON LT_last3.art__ref = m.art__ref LEFT JOIN
(
	SELECT art__ref, 1 AS PrePress FROM stlPPAP_PrePressInventory
) PPI ON PPI.art__ref = m.art__ref LEFT JOIN
(
	SELECT art__ref, 1 AS AfterPress FROM stlPPAP_AfterPressInventory
) API ON API.art__ref = m.art__ref LEFT JOIN
(
	SELECT art__ref, 1 AS NewItems FROM stlPPAP_NewItemInventory
) NII ON NII.art__ref = m.art__ref 
' 
