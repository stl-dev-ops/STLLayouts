SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlStockedProducts_w_RnD]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlStockedProducts_w_RnD]
AS
SELECT P.afg__ref, Book.zynrefkl AS BookName, P.afg_oms1 AS ProductName, 
CASE WHEN P.aant__e2 = 0 THEN 1 ELSE P.aant__e2 END AS RollSize, ISNULL(wwwCris.Price, P.b_akp_vm) AS GrossPurchasePrice, 
P.etiket_b AS Width, P.etiket_h AS Height, P.etiket_b * P.etiket_h AS AreaSqInches, P.prkl_ref, PG.omschr__ AS ProductGroup, Book.pr_exclv AS Price, dbo.vw_stlProductsCustomFields.ShelfLife, 
P.oms_aant AS UnitDescription, P.min__chk AS MinimumOrderQuantity, PQ.in__vrrd - PQ.in___qrt AS InStock, 
PQ.te_lever * - 1 AS ToDeliver, PQ.in_produ AS InProduction, (PQ.in__vrrd - PQ.in___qrt) + PQ.te_lever * - 1 AS Available, 
stlStockProduction.LabelsInProduction, PQ.in_best_ AS Purchase, Cases.Count AS CaseCount, Rolls.Count AS RollCount, 
P.aant__e2 AS Q1, 
CASE WHEN aant__e2 > 0 THEN eenh1int ELSE '''' END AS U1, 
P.aant__e3 AS Q2, 
CASE WHEN aant__e3 > 0 THEN eenh2int ELSE '''' END AS U2, 
P.aant__e4 AS Q3, 
CASE WHEN aant__e4 > 0 THEN eenh3int ELSE '''' END AS U3, 
P.aant__e5 AS Q4, 
CASE WHEN aant__e5 > 0 THEN eenh4int ELSE '''' END AS U4, 
Book.prys_02v AS BookMinPrice, Book.prys_01v AS BookMaxPrice, P.kla__ref, P.kla__rpn, P.tstval03, PS.omschr__ AS ProductStatus, P.etiket_h + P.lblgp___ AS RepeatAround,
(
	SELECT MAX(aantal_b) 
	FROM v4eti___ 
	WHERE off__ref = (SELECT MAX(off__ref) FROM v4vrs___ WHERE afg__ref = P.afg__ref)
) AS NumberAcross, 
dbo.vw_stlProductsCustomFields.MachineNames, dbo.vw_stlProductsCustomFields.LeadTime, dbo.vw_stlProductsCustomFields.STL_RnD, 
dbo.vw_stlProductsCustomFields.HideOnSampleReport, ISNULL(Product_POs.PPO_RollsOrdered, 0) + ISNULL(Material_POs.MPO_RollsOrdered, 0) AS RollsOrdered, 
P.minstock, 
CASE WHEN ISNULL(wwwCris.Price, 0) = 0 THEN LastPOPrice.bpri__bm ELSE wwwCris.Price END AS LastPOPrice, 
wwwCris.WebWidth, wwwCris.Waste, wwwCris.MSI_Price, 
CASE 
	WHEN P.Prys_srt = ''0'' THEN ''Text'' 
	WHEN P.Prys_srt = ''1'' THEN ''Discount/supplement'' 
	WHEN P.Prys_srt = ''2'' THEN ''Fixed amount'' 
	WHEN P.Prys_srt = ''3'' THEN ''/lb'' 
	WHEN P.Prys_srt = ''4'' THEN ''/page'' 
	WHEN P.Prys_srt = ''5'' THEN ''/piece'' 
	WHEN P.Prys_srt = ''6'' THEN ''/100'' 
	WHEN P.Prys_srt = ''7'' THEN ''/1,000'' 
	WHEN P.Prys_srt = ''8'' THEN ''/100,000'' 
	WHEN P.Prys_srt = ''9'' THEN ''/sh tn'' 
	WHEN P.Prys_srt = ''B'' THEN ''/ft'' 
	WHEN P.Prys_srt = ''C'' THEN ''/msi'' 
ELSE 
	P.Prys_srt 
END AS PriceType

FROM 
(
	SELECT DISTINCT PO.afg__ref, PO.bpri__bm
	FROM 
	(
		SELECT afg__ref, MAX(levr_dat) AS LastDelivery
		FROM aprlyn__ AS a
		WHERE lev__tst = ''3''
		GROUP BY afg__ref
	) AS lastDel INNER JOIN
	aprlyn__ AS PO ON lastDel.afg__ref = PO.afg__ref AND lastDel.LastDelivery = PO.levr_dat
) AS LastPOPrice RIGHT JOIN
prodkl__ AS PG INNER JOIN
afgart__ AS P ON PG.prkl_ref = P.prkl_ref INNER JOIN
vpakpr__ AS PP ON PP.vpak_ref = P.vpak_ref INNER JOIN
vpakwy__ AS PM ON PM.vpk__ref = PP.vpk__ref LEFT JOIN
stl_WildWildWestPriceOverridesFromCris wwwCris ON P.afg__ref = wwwCris.afg__ref ON LastPOPrice.afg__ref = P.afg__ref LEFT JOIN
(
	SELECT afg__ref, SUM(OrderedLabels) AS LabelsInProduction
	FROM 
	(
		SELECT afg__ref, b_aantal AS OrderedLabels
		FROM bstlyn__
		WHERE vrz__tst <> N''Y'' AND vrz__tst <> N''Z'' 
			/* vrz__tst Shipped Status Y = Done, Z = Returned */
		AND trn__srt IN (''1'', ''2'', ''3'', ''4'', ''R'', ''0'') 
			/* trn__srt = Kind of delivery address 1 = Customer, 2 = Customer Default , 3 = Customer addresses, 4 = All Addresses, R = RMA, 0 = Warehouse */
		AND kla__ref IN (''100109'', ''100222'', ''100349'', ''100376'', ''100377'', ''100453'', ''100490'') 
			/* 100109 = Superior T, 100222 = STL STOCK, 100349 = STL R&D, 100376 = STL R&D PrinTrayce, 100377 = STL R&D CO, 100453 = STLR&DPAID, 100490 = STL R&D CT */
	) AS stlStockOrders
	GROUP BY afg__ref
) AS stlStockProduction ON P.afg__ref = stlStockProduction.afg__ref LEFT JOIN
(
	SELECT PO_PID.antw_txt AS afg__ref, dbo.grsbon__.gaant___ AS MPO_RollsOrdered
	FROM grdbon__ INNER JOIN
	grsbon__ ON dbo.grsbon__.grbonref = dbo.grdbon__.grbonref INNER JOIN
	artiky__ ON dbo.artiky__.art__ref = dbo.grsbon__.art__ref LEFT JOIN
	gegdet__ AS PO_PID ON PO_PID.det__ref = dbo.artiky__.art__ref AND PO_PID.tabname_ = ''artiky__'' AND PO_PID.vrg__ref = ''000022''
	WHERE PO_PID.antw_txt <> '''' AND grsbon__.laant___ = 0
) AS Material_POs ON P.afg__ref = Material_POs.afg__ref LEFT JOIN
vw_stlProductsCustomFields ON P.afg__ref = vw_stlProductsCustomFields.afg__ref LEFT JOIN
(
	SELECT tstd_ref, omschr__
	FROM tstval__
	WHERE fldname_ = ''tstval03'' AND tabname_ = ''afgart__''
) AS PS ON P.tstval03 = PS.tstd_ref LEFT JOIN
(
	SELECT afg__ref, zynrefkl, pr_exclv, prys_01v, prys_02v
	FROM afgclt__
	WHERE kla__ref = ''100506''
) AS Book ON P.afg__ref = Book.afg__ref LEFT JOIN
afgant__ AS PQ ON P.afg__ref = PQ.afg__ref LEFT JOIN
(
	SELECT afg__ref, COUNT(sku__ref) AS [Count]
	FROM afgsku__
	WHERE (tst__qrt = ''1'' AND toestand = N''1'') OR (toestand = N''2'') /* tst__qrt 1 = NOT Quarentined, toestand 1 = In stock, 2 = Picked */
	GROUP BY afg__ref
) AS Rolls ON P.afg__ref = Rolls.afg__ref LEFT JOIN
(
	SELECT afg__ref, COUNT(afg__ref) AS [Count]
	FROM
	(
		SELECT DISTINCT afg__ref, box__ref
		FROM afgsku__
		WHERE (tst__qrt = ''1'' AND toestand = N''1'') OR (toestand = N''2'') /* tst__qrt 1 = NOT Quarentined, toestand 1 = In stock, 2 = Picked */
	) AS CaseCounts
	GROUP BY afg__ref
) AS Cases ON P.afg__ref = Cases.afg__ref LEFT JOIN
(
	SELECT afg__ref, SUM(baant___ / CASE WHEN aant__e2 = 0 THEN 1 ELSE aant__e2 END) AS PPO_RollsOrdered
	FROM aprlyn__
	WHERE (lev__tst = ''1'') OR 	(lev__tst = ''2'')
	GROUP BY afg__ref
) AS Product_POs ON P.afg__ref = Product_POs.afg__ref

WHERE (P.uitgeput = ''N'') 
AND (P.tstval03 = N''0002'' OR P.tstval03 = N''0003'' OR P.tstval03 = N''0005'')
' 
