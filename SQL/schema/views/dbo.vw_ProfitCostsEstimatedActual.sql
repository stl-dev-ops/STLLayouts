SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ProfitCostsEstimatedActual]'))
EXEC dbo.sp_executesql @statement = N'




CREATE VIEW [dbo].[vw_ProfitCostsEstimatedActual]
AS
SELECT DISTINCT 
o.best_dat, o.ord__ref, C.kla__rpn, o.omschr__, Substrates.SubstrateKey, Substrates.SubstrateKey2, Substrates.SubstrateKey1, SalesPrices.ESTSALESPR, SalesPrices.ACTSALESPR, EstimatedCosts.EST_WAGE_COST, 
EstimatedCosts.EST_MACH_COST, EstimatedCosts.EST_OVER_COST, EstimatedCosts.EST_PAPE_COST, EstimatedCosts.EST_OTHM_COST, EstimatedCosts.EST_OUTSIDE_COST, EstimatedCosts.EST_TOT_COST, 
ACT_WAGE_COST    = oc.lonen_ok + oc.lonen_hd + oc.lonen_sp, 
ACT_MACH_COST    = oc.machi_ok + oc.machi_hd + oc.machi_sp, 
ACT_OVER_COST    = oc.overh_ok + oc.overh_hd + oc.overh_sp, 
ACT_PAPE_COST    = oc.papie_ok + oc.papie_hd + oc.papie_sp, 
ACT_OTHM_COST    = oc.grdvrbok + oc.grdvrbhd + oc.grdvrbsp + (CASE WHEN ISNULL(CERM_ActualPDD, 0) = 0 THEN ISNULL(GrayBox.ActualFeet, 0) * 31.0 / 1000.0 ELSE 0 END), 
ACT_OUTSIDE_COST = oc.ondaan__ + oc.ondaanhd + oc.ondaansp, 
ACT_TOT_COST     = (oc.lonen_ok + oc.lonen_hd + oc.lonen_sp + oc.machi_ok + oc.machi_hd + oc.machi_sp + oc.overh_ok + oc.overh_hd + oc.overh_sp + 
                    oc.papie_ok + oc.papie_hd + oc.papie_sp + oc.grdvrbok + oc.grdvrbhd + oc.grdvrbsp + oc.ondaan__ + oc.ondaanhd + oc.ondaansp) + 
				    CASE WHEN ISNULL(CERM_ActualPDD, 0) = 0 THEN ISNULL(GrayBox.ActualFeet, 0) * 31.0 / 1000.0 ELSE 0 END, 
v4eti.tedrkdto AS EST_FEET, ActualConsumedFeet.ConsumedFeet, C.kla__ref, 
ISNULL(GrayBox.ActualFeet, 0) * 31.0 / 1000.0 AS ActualPDD, 
ISNULL(CERM_ActualPDD, 0) AS CERM_ActualPDD, I.oplage__ AS OrderedQuantity, SalesOrders.InvoicedQuantity, SalesOrders.DeliveredQuantity, SalesOrders.PricePer1000, 
SalesOrders.lyn__ref, o.leverdat AS DeliveryDate, SalesOrders.InvoiceID, o.bon__ref, dies.stns_rpn, dies.stns_oms, v4eti.klcod_fr, EstimatedMakeReady.EstimatedMakeReadyMinutes, 
EstimatedPrintTime.EstimatedPrintMinutes, EstimatedWashUpTime.EstimatedWashUpMinutes, 
CASE WHEN subs.lev__rpn LIKE ''ELEV-%'' OR subs.lev__rpn LIKE ''COHE-%'' THEN ''STL'' ELSE ''Vendor'' END AS MatSource, 
Substrates.drg__ref, SalesOrders.InvoiceDate, v4vrs.afg__ref, p.afg__rpn, MaterialsCost.MaterialCost, InkCosts.InkCost, JobStartDate.JobStartDate, 
C.naam____, curRew.totminutes AS ActRewindingMins, estRwMins.EstRewindingMins, curSp.totminutes AS ActSpoolingMins, estSpMins.EstSpoolingMins, Substrates.SubstrateKey3, o.off__ref, SalesOrders.bst__com, 
p.afg_oms1, p.afg_oms2, GrayBox.ActualFeet, SalesOrders.vrz__dat, pg.prkl_ref AS ProductID, pg.omschr__ AS ProductGroup, brand.prfm_ref AS BrandID, brand.prfm_oms AS Brand, o.bsbn_kla, p.rol____b ProductRollWidth

FROM 
(
	SELECT ord__ref, SUM(bedr__bm) AS ESTSALESPR, SUM(bedrf_bm) AS ACTSALESPR
	FROM bstlyn__
	GROUP BY ord__ref
) AS SalesPrices RIGHT JOIN
(
	SELECT off__ref, SUM(lonen___ + lonen__t) AS EST_WAGE_COST, SUM(machi___ + machi__t) AS EST_MACH_COST, 
	SUM(overh___ + overh__t) AS EST_OVER_COST, SUM(papier__ + papier_t) AS EST_PAPE_COST, 
	SUM(grdvb___ + grdvb__t) AS EST_OTHM_COST, SUM(oa______ + oa_____t) AS EST_OUTSIDE_COST, 
	SUM(lonen___ + lonen__t + machi___ + machi__t + overh___ + overh__t + papier__ + papier_t + grdvb___ + grdvb__t + oa______ + oa_____t) AS EST_TOT_COST
	FROM v4kkst__
	WHERE kst__srt = ''0''
	GROUP BY off__ref, kst__srt
) AS EstimatedCosts RIGHT JOIN
ordcum__ AS oc RIGHT JOIN
(
	SELECT ord__ref, lyn__ref, vrz__dat, fak__ref AS InvoiceID, CASE WHEN dok__dat = ''1980-01-01'' THEN NULL ELSE dok__dat END AS InvoiceDate, pr_excl_ AS PricePer1000, b_aantal AS OrderedQuantity, 
	f_aantal AS InvoicedQuantity, l_aantal AS DeliveredQuantity, afg__ref, afg__rpn, bst__com, afg_oms1, afg_oms2
	FROM bstlyn__ 
) AS SalesOrders RIGHT JOIN
stnspr__ AS dies RIGHT JOIN
drgers__ AS subs RIGHT JOIN
v4eti___ AS v4eti ON subs.drg__ref = v4eti.drg__ref LEFT JOIN
(
	SELECT drg__ref, drg__rpn AS SubstrateKey, taal___7 AS SubstrateKey1, taal___8 AS SubstrateKey2, taal___9 AS SubstrateKey3, geblokk_
	FROM drgers__ AS drgers___1
) AS Substrates ON v4eti.drg__ref = Substrates.drg__ref ON dies.stns_ref = v4eti.stns_ref RIGHT JOIN
v4vrs___ AS v4vrs LEFT JOIN
afgart__ AS p ON v4vrs.afg__ref = p.afg__ref RIGHT OUTER JOIN
order___ AS o LEFT JOIN
(
	SELECT ord__ref, grdvrb__ CERM_ActualPDD FROM ordrub__ WHERE rbk__ref = ''760005''
) CERM_PDD ON CERM_PDD.ord__ref = o.ord__ref LEFT JOIN
incent__ AS I ON o.ord__ref = I.ord__ref ON v4vrs.off__ref = o.ord__ref LEFT JOIN
(
	SELECT ord__ref, MAX(GrayBoxActualFeet) AS ActualFeet
	FROM 
	(
		SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
		FROM plcrol__
		GROUP BY ord__ref, art__ref
	) AS GB
	GROUP BY ord__ref) AS GrayBox ON o.ord__ref = GrayBox.ord__ref LEFT JOIN
vw_EstSpoolingMins AS estSpMins ON o.ord__ref = estSpMins.off__ref LEFT JOIN
vw_CurrentSpoolingClockings AS curSp ON o.ord__ref = curSp.ord__ref LEFT JOIN
vw_EstRewindingMins AS estRwMins ON o.ord__ref = estRwMins.off__ref LEFT JOIN
vw_CurrentRewindingClockings AS curRew ON o.ord__ref = curRew.ord__ref LEFT JOIN
(
	SELECT ord__ref, MIN(datum___) AS JobStartDate
	FROM stobew__
	GROUP BY ord__ref
) AS JobStartDate ON o.ord__ref = JobStartDate.ord__ref LEFT JOIN
(
	SELECT stobew__.ord__ref, SUM(stobew__.kost____) AS MaterialCost
	FROM stobew__ INNER JOIN
	artiky__ ON stobew__.art__ref = artiky__.art__ref LEFT JOIN
	werkpo__ ON stobew__.wp___ref = werkpo__.wp___ref
	WHERE stobew__.art__srt <> ''6'' AND stobew__.soort___ <> ''8''
	GROUP BY stobew__.ord__ref
) AS MaterialsCost ON o.ord__ref = MaterialsCost.ord__ref LEFT JOIN
(
	SELECT stobew__.ord__ref, SUM(stobew__.kost____) AS InkCost
	FROM stobew__ INNER JOIN
	artiky__ ON stobew__.art__ref = artiky__.art__ref LEFT OUTER JOIN
	werkpo__ ON stobew__.wp___ref = werkpo__.wp___ref
	WHERE stobew__.art__srt = ''6'' AND stobew__.soort___ <> ''8''
	GROUP BY stobew__.ord__ref
) AS InkCosts ON o.ord__ref = InkCosts.ord__ref LEFT JOIN
(
	SELECT v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EstimatedWashUpMinutes
	FROM v4kkst__ INNER JOIN
	rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref
	WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref = ''550020''
) AS EstimatedWashUpTime ON o.ord__ref = EstimatedWashUpTime.off__ref LEFT JOIN
(
	SELECT v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EstimatedPrintMinutes
	FROM v4kkst__ INNER JOIN
	rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref
	WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref = ''550010''
) AS EstimatedPrintTime ON o.ord__ref = EstimatedPrintTime.off__ref LEFT JOIN
(
	SELECT v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EstimatedMakeReadyMinutes
	FROM v4kkst__ INNER JOIN
	rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref
	WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref = ''550000''
) AS EstimatedMakeReady ON o.ord__ref = EstimatedMakeReady.off__ref LEFT JOIN
klabas__ AS C ON o.kla__ref = C.kla__ref ON v4eti.off__ref = o.ord__ref ON SalesOrders.ord__ref = o.ord__ref LEFT JOIN
(
	SELECT ord__ref, MAX(ABS(aantal__)) AS ConsumedFeet
	FROM 
	(
		SELECT ord__ref, SUM(aantal__) AS aantal__
		FROM stobew__
		WHERE ord__ref <> '''' AND art__ref <> '''' AND ord__ref <> ''N''
		GROUP BY ord__ref, art__ref, soort___, wp___ref, art__srt
		HAVING art__srt = ''5''
	) AS MatConsumptions
	GROUP BY ord__ref
) AS ActualConsumedFeet ON o.ord__ref = ActualConsumedFeet.ord__ref ON oc.ord__ref = o.ord__ref ON EstimatedCosts.off__ref = o.ord__ref ON SalesPrices.ord__ref = o.ord__ref LEFT JOIN
prodkl__ AS pg ON p.prkl_ref = pg.prkl_ref LEFT JOIN
prodfm__ AS brand ON p.prfm_ref = brand.prfm_ref
' 
