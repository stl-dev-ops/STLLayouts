SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJobEstVsAct]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlJobEstVsAct]
AS

SELECT o.ord__ref, o.open____, o.best_dat, o.kla__ref, o.kla__rpn, o.omschr__, o.leverdat, o.oplage__, qp.QP_ID, o.bon__ref, EST_LABELS, EST_COGs.EST_COG, EST_PDD.EST_PDD, sc.ScratchCode, 
CASE 
 WHEN ISNULL(CERM_ProducedLabels.[Count], 0) <> 0 THEN CERM_ProducedLabels.[Count] 
 WHEN ISNULL(stlRewindBrick.[Count], 0)      <> 0 THEN stlRewindBrick.[Count] 
ELSE 
 ISNULL(ElevatedDeliveries.[Count], 0) 
END AS ACT_LABELS, ACT_COG.COG ACT_COG, GrayBox.ACT__PDD ACT_PDD, 
EST_TotalPressFeetWithWaste = (SELECT MAX(tedrkdto) FROM v4eti___ WHERE off__ref = o.ord__ref), 
GrayBox.GrayBoxFeet, EST_MakeReady.EST_MR_Min, EST_PrintTime.EST_PrintMin, EST_WashUpTime.EST_WashMin, 
PressTotalFeetWithWaste = (SELECT SUM(totam_in) FROM hlfvrd__ h WHERE h.ord__ref = o.ord__ref AND h.wp___ref IN (SELECT wp___ref FROM werkpo__ WHERE kenmerk_ in (''Press'', ''Cohesio'', ''Coating''))), 
EST_Press = 
( 
  SELECT CAST(STUFF 
  ((SELECT N'', '' + prs__oms 
  FROM 
  ( 
      SELECT DISTINCT v.off__ref, p.prs__oms 
      FROM v1edg___ v JOIN epersn__ p ON v.prs__ref = p.prs__ref 
  ) presses1 
  WHERE presses1.off__ref = presses2.off__ref 
  ORDER BY presses1.prs__oms FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(255)) JobIDspresses1 
  FROM v1edg___ presses2 
  WHERE presses2.off__ref = o.off__ref 
  GROUP BY presses2.off__ref 
), 
EST_ExactPressMSINeeded = o.oplage__ * i.etiket_h * i.etiket_b / 1000.0, 
EST_ExactPressFeetNeeded = o.oplage__ * i.etiket_h / 12.0 / i.aantal_b, 
EST_FACESHEET.EST_FSMaterialID, 
EST_FACESHEET.EST_FSMaterialWidth, 
EST_FACESHEET.EST_FSMaterialLatestPurchaseMSIPrice, 
ACT_ExactPressFeetNeeded = 
CASE 
 WHEN ISNULL(CERM_ProducedLabels.[Count], 0) <> 0 THEN CERM_ProducedLabels.[Count] 
 WHEN ISNULL(stlRewindBrick.[Count], 0)      <> 0 THEN stlRewindBrick.[Count] 
ELSE 
 ISNULL(ElevatedDeliveries.[Count], 0) 
END * i.etiket_h / 12.0 / i.aantal_b, 

ACT_ExactPressMSINeeded = 
CASE 
 WHEN ISNULL(CERM_ProducedLabels.[Count], 0) <> 0 THEN CERM_ProducedLabels.[Count] 
 WHEN ISNULL(stlRewindBrick.[Count], 0)      <> 0 THEN stlRewindBrick.[Count] 
ELSE 
 ISNULL(ElevatedDeliveries.[Count], 0) 
END * i.etiket_h * i.etiket_b / 1000.0, 

shipments.FirstRealShipDate, shipments.LastRealShipDate, matConsumptions.FeetConsumed, matConsumptions.MSIConsumed, EST_FPM.EST_FPM, PressClockings.FirstPressClocking, PressClockings.LastPressClocking  
        
FROM 
order___ o LEFT JOIN 
incent__ i ON o.ord__ref = i.ord__ref LEFT JOIN 
( 
 SELECT bon__ref, komment3 QP_ID 
 FROM v1bon___ 
 WHERE komment3 <> '''' 
) qp ON o.bon__ref = qp.bon__ref LEFT JOIN 
( 
 SELECT off__ref, SUM(aant_prd) AS [Count], SUM(oplage__) AS EST_LABELS 
 FROM v4vrs___ 
 GROUP BY off__ref 
) AS CERM_ProducedLabels ON CERM_ProducedLabels.off__ref = o.ord__ref LEFT JOIN 
( 
 SELECT ord__ref, SUM(goodLabels) AS [Count] 
 FROM stlST_RewindBrick 
 GROUP BY ord__ref 
) AS stlRewindBrick ON stlRewindBrick.ord__ref = o.ord__ref LEFT JOIN 
( 
 SELECT ord__ref, SUM(aantal__) AS [Count] 
 FROM grsbon__ INNER JOIN 
 hisglv__ ON grsbon__.grbonref = hisglv__.grbonref 
 GROUP BY ord__ref 
) AS ElevatedDeliveries ON ElevatedDeliveries.ord__ref = o.ord__ref LEFT JOIN 
( 
 SELECT off__ref, SUM(papier__ + papier_t + grdvb___ + grdvb__t) AS EST_COG 
 FROM v4kkst__ 
 WHERE rbk__ref NOT IN (''760005'', ''910000'') AND kst__srt = ''0'' 
 GROUP BY off__ref 
) AS EST_COGs ON EST_COGs.off__ref = o.ord__ref LEFT JOIN 
( 
 SELECT off__ref, SUM(total___) AS EST_PDD 
 FROM v4kkst__ 
 WHERE rbk__ref = ''760005'' AND kst__srt = ''0'' 
 GROUP BY off__ref 
) AS EST_PDD ON EST_PDD.off__ref = o.ord__ref LEFT JOIN 
( 
 SELECT ord__ref, SUM(kost____) COG 
 FROM stobew__ 
 WHERE soort___ IN (''1'', ''3'', ''5'', ''6'', ''C'') 
 GROUP BY ord__ref 
) AS ACT_COG ON ACT_COG.ord__ref = o.ord__ref LEFT JOIN 
( 
 SELECT ord__ref, MAX(GrayBoxACT_Feet) AS GrayBoxFeet, MAX(GrayBoxACT_Feet) * 24.0 / 1000.0 ACT__PDD 
 FROM 
 ( 
  SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxACT_Feet 
  FROM plcrol__ 
  GROUP BY ord__ref, art__ref 
 ) AS gb 
 GROUP BY ord__ref 
) AS GrayBox ON GrayBox.ord__ref = o.ord__ref LEFT JOIN 
( 
  SELECT TOP 1 WITH TIES v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EST_WashMin 
  FROM v4kkst__ INNER JOIN 
  rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref 
  WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref IN (''501020'', ''501320'', ''501520'', ''501720'', ''502120'', ''505020'', ''550020'')
  ORDER BY ROW_NUMBER() OVER (PARTITION BY v4kkst__.off__ref ORDER BY v4kkst__.kpn__ref) 
) AS EST_WashUpTime ON o.ord__ref = EST_WashUpTime.off__ref LEFT JOIN 
( 
  SELECT TOP 1 WITH TIES v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EST_PrintMin 
  FROM v4kkst__ INNER JOIN 
  rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref 
  WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref IN (''501010'', ''551000'', ''550010'', ''501310'', ''501510'', ''501710'', ''502110'', ''505010'') 
  ORDER BY ROW_NUMBER() OVER (PARTITION BY v4kkst__.off__ref ORDER BY v4kkst__.kpn__ref) 
) AS EST_PrintTime ON o.ord__ref = EST_PrintTime.off__ref LEFT JOIN 
( 
  SELECT TOP 1 WITH TIES v4kkst__.off__ref, v4kkst__.duur___i / 60 AS EST_MR_Min 
  FROM v4kkst__ INNER JOIN 
  rubrik__ ON v4kkst__.rbk__ref = rubrik__.rbk__ref 
  WHERE v4kkst__.kst__srt = ''0'' AND rubrik__.rbk__ref IN (''501000'', ''501300'', ''501500'', ''501700'', ''502100'', ''505000'', ''550000'') 
  ORDER BY ROW_NUMBER() OVER (PARTITION BY v4kkst__.off__ref ORDER BY v4kkst__.kpn__ref) 
) AS EST_MakeReady ON o.ord__ref = EST_MakeReady.off__ref LEFT JOIN 
( 
  SELECT off__ref, CAST(STUFF ((SELECT N'', '' + klcod_fr 
  FROM 
  ( 
    SELECT DISTINCT off__ref, klcod_fr 
    FROM v4edg___ 
    WHERE off__ref <> '''' AND klcod_fr <> '''' 
    UNION 
    SELECT ord__ref, pt.prd__rpn 
    FROM order___ o JOIN 
    afgprd__ pt ON o.prd__ref = pt.prd__ref 
   ) v4 
  WHERE v.off__ref = v4.off__ref 
  ORDER BY klcod_fr FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(255)) ScratchCode 
  FROM v4edg___ v 
  WHERE off__ref <> '''' 
  GROUP BY off__ref 
) sc ON sc.off__ref = o.ord__ref LEFT JOIN 
( 
 SELECT ord__ref, MIN(RealShipmentDate) FirstRealShipDate, MAX(RealShipmentDate) LastRealShipDate 
 FROM 
 ( 
  SELECT ord__ref, vrz__dat RealShipmentDate 
  FROM bstlyn__ so 
  WHERE YEAR(vrz__dat) <> 1980 
  UNION 
  SELECT ord__ref, datum___ RealShipmentDate 
  FROM afgpry__ sku  
  WHERE lyn__ref <> '''' AND ord__ref <> '''' 
  UNION 
  SELECT ord__ref, levr_dat RealShipmentDate 
  FROM grsbon__  
  WHERE ord__ref <> '''' 
 ) ship 
 GROUP BY ord__ref 
) AS shipments ON o.ord__ref = shipments.ord__ref LEFT JOIN 
( 
 SELECT move.ord__ref, SUM(move.aantal__ * -1.0) FeetConsumed, SUM(move.aantal__ * -1.0 * 12.0 * m.breedte_ / 1000.0) MSIConsumed 
 FROM stobew__ move LEFT JOIN 
 artiky__ m ON move.art__ref = m.art__ref 
 WHERE move.ord__ref NOT IN ('''', ''N'') AND move.art__srt = ''5'' 
 GROUP BY move.ord__ref 
) matConsumptions ON o.ord__ref = matConsumptions.ord__ref LEFT JOIN 
( 
  SELECT estFs.off__ref, estFs.art__ref EST_FSMaterialID, m.breedte_ EST_FSMaterialWidth, sub.prys__m2 EST_FSMaterialLatestPurchaseMSIPrice 
  FROM 
  ( 
    SELECT v.off__ref, MAX(v.art__ref) art__ref 
    FROM v4eti___ v 
    WHERE v.art__ref <> '''' 
    GROUP BY v.off__ref 
  ) estFs LEFT JOIN 
  artiky__ m ON estFs.art__ref = m.art__ref LEFT JOIN 
  drgers__ sub ON m.drg__ref = sub.drg__ref 
) EST_FACESHEET ON EST_FACESHEET.off__ref = o.ord__ref LEFT JOIN 
( 
  SELECT v.off__ref, CASE WHEN v.spddusr_ = 0 THEN v.spdd____ ELSE v.spddusr_ END EST_FPM 
  FROM v4edg___ v 
) EST_FPM ON o.ord__ref = EST_FPM.off__ref LEFT JOIN
(
  SELECT h.ord__ref, MIN(h.datum___) FirstPressClocking, MAX(h.datum___) LastPressClocking
  FROM hispnt__ h INNER JOIN 
  werkpo__ m ON m.wp___ref = h.wp___ref AND m.kenmerk_ IN (''Coating'', ''Cohesio'', ''Press'') 
  GROUP BY h.ord__ref  
) PressClockings ON o.ord__ref = PressClockings.ord__ref 

' 
