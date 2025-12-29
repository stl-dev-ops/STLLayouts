-- Excel-friendly Spool Trace Query
-- Wrap key identifiers with ="value" to prevent scientific notation in Excel / Power BI imports.
-- Source: Enhanced spool_trace.sql with operators & machine names.

SET NOCOUNT ON;
SET QUOTED_IDENTIFIER ON;

DECLARE @JobNo    nvarchar(6) = N'511267';  -- e.g., N'505976'
DECLARE @SpoolNo  int         = NULL;       -- e.g., 12

;WITH SpoolSel AS (
  SELECT s.spoolID, s.spoolNo, s.sku__ref AS SpoolSKU, s.Qty AS SpoolQty, s.Weight AS SpoolWeight,
         s.weightPer20K, s.flatRollQty, s.flatRollDiff, s.lastModified AS SpoolLastModified,
         sj.spoolJobID, sj.ord__ref AS JobNo
  FROM dbo.spool AS s
  INNER JOIN dbo.spoolJob AS sj ON sj.spoolJobID = s.spoolJobID
  WHERE (@JobNo   IS NULL OR sj.ord__ref = @JobNo)
    AND (@SpoolNo IS NULL OR s.spoolNo  = @SpoolNo)
), FRS AS (
  SELECT frs.flatRollSpoolID, frs.spoolID, frs.flatRollID, frs.brickID, frs.lastModified AS FlatRollAddedToSpool
  FROM dbo.flatRollSpool AS frs
), FR AS (
  SELECT fr.flatRollID, fr.brickID, fr.flatRollNo, fr.operatorID, fr.spoolerID, fr.lastModified AS FlatRollLastModified
  FROM dbo.flatRoll AS fr
), SPOOL AS (
  SELECT spl.spoolerID, spl.spooler AS SpoolerMachine
  FROM dbo.spooler AS spl
), BR AS (
  SELECT b.brickID, b.spoolJobID, b.brickNo, b.sku__ref AS BrickSFG, b.flatRolls, b.rewindBrickNo, b.lastModified AS BrickLastModified
  FROM dbo.brick AS b
), RB AS (
  SELECT rb.stlST_RewindBrickID, rb.created_hlf__ref AS BrickSFG, rb.ord__ref AS JobNo,
         rb.rewindBrickNo AS RewindBrickNo, rb.goodLabels, rb.grossLabels, rb.labelsPerRow,
         rb.goodCount, rb.qaHold, rb.closed, rb.lastModified AS RewindBrickLastModified,
         rb.wn___ref AS RewindOperatorRef
  FROM dbo.stlST_RewindBrick AS rb
), RWSFG AS (
  SELECT hlf.hlf__ref, hlf.wp___ref AS RewindMachineRef
  FROM dbo.hlfvrd__ AS hlf
), RWMACH AS (
  SELECT wp.wp___ref, wp.wp_naam_ AS RewindMachineName
  FROM dbo.werkpo__ AS wp
), PRJ AS (
  SELECT prx.stlST_RewindBrickID, prx.stlST_PressRollID, prx.goodLabels AS PRX_GoodLabels,
         prx.grossLabels AS PRX_GrossLabels, prx.goodCount AS PRX_GoodCount, prx.wn___ref AS PressJunctionOperatorRef
  FROM dbo.stlST_PressRollXstlST_RewindBrick AS prx
), PR AS (
  SELECT pr.stlST_PressRollID, pr.hlf__ref AS PressRollSFG, pr.inh__oms AS PressRollDesc,
         pr.ord__ref AS JobNo, pr.aantm_in AS PressSFGGoodFt, pr.goodCount AS PressGoodCount,
         pr.rewindGoodLabels, pr.rewindWasteLabels, pr.badRowsWasteLabels, pr.flatrolls,
         pr.etiket_h, pr.tssnaf_h, pr.lastModified AS PressRollLastModified
  FROM dbo.stlST_PressRoll AS pr
), PRSFG AS (
  SELECT hlf.hlf__ref, hlf.wn___ref AS PressCreatorRef, hlf.wp___ref AS PressMachineRef
  FROM dbo.hlfvrd__ AS hlf
), PRMACH AS (
  SELECT wp.wp___ref, wp.wp_naam_ AS PressMachineName
  FROM dbo.werkpo__ AS wp
), SKU AS (
  SELECT sk.sku__ref, sk.ord__ref, sk.box__ref, sk.pal__ref, sk.vak__ref, 
         sk.aant__ex AS SkuQty, sk.crea_dat AS SkuCreated, sk.inhoud01, sk.volgnr__
  FROM dbo.afgsku__ AS sk
), BX AS (
  SELECT bx.box__ref, bx.pal__ref, bx.ord__ref, bx.crea_dat AS BoxCreated
  FROM dbo.afgbox__ AS bx
), PAL AS (
  SELECT pal.pal__ref, pal.pal__oms AS PalletDesc, pal.datum___ AS PalletDate, pal.vak__ref AS PalletLocation
  FROM dbo.palet___ AS pal
), OPR AS (
  SELECT o.operatorID, o.operator AS OperatorName
  FROM dbo.operator AS o
), WRK AS (
  SELECT w.wn___ref, LTRIM(RTRIM(w.wn_vnaam)) + ' ' + LTRIM(RTRIM(w.wn_naam_)) AS WorkerName
  FROM dbo.werknm__ AS w
)
SELECT
  ss.JobNo,
  ss.spoolNo AS SpoolNo,
  '="' + ss.SpoolSKU + '"' AS SpoolSKU,
  ss.SpoolQty,
  ss.SpoolWeight,
  ss.weightPer20K,
  ss.flatRollQty,
  ss.flatRollDiff,
  ss.SpoolLastModified,

  fr.flatRollNo,
  fr.FlatRollLastModified,
  spool.SpoolerMachine,
  opr.OperatorName AS SpoolingOperator,

  br.brickNo AS BrickNo,
  '="' + br.BrickSFG + '"' AS BrickSFG,
  br.rewindBrickNo,
  br.flatRolls AS BrickFlatRolls,
  br.BrickLastModified,

  rb.RewindBrickNo,
  rb.goodLabels      AS RewindBrickGoodLabels,
  rb.grossLabels     AS RewindBrickGrossLabels,
  rb.labelsPerRow    AS RewindBrickLabelsPerRow,
  rb.goodCount       AS RewindBrickGoodCount,
  rb.qaHold          AS RewindBrickQAHold,
  rb.closed          AS RewindBrickClosed,
  rb.RewindBrickLastModified,
  rwmach.RewindMachineName,
  wrk_rb.WorkerName  AS RewindOperator,

  '="' + pr.PressRollSFG + '"' AS PressRollSFG,
  pr.PressRollDesc,
  pr.PressGoodCount,
  pr.PressSFGGoodFt,
  pr.rewindGoodLabels AS PressRewindGoodLabels,
  pr.rewindWasteLabels AS PressRewindWasteLabels,
  pr.badRowsWasteLabels AS PressBadRowsWasteLabels,
  pr.flatrolls          AS PressFlatRolls,
  pr.etiket_h,
  pr.tssnaf_h,
  pr.PressRollLastModified,
  prmach.PressMachineName,
  wrk_pr.WorkerName AS PressOperator,

  '="' + sku.sku__ref + '"' AS FG_SKU,
  sku.volgnr__ AS FG_SeqNumber,
  sku.SkuQty AS FG_Qty,
  sku.inhoud01 AS FG_SpoolNumber,
  sku.SkuCreated,
  '="' + bx.box__ref + '"' AS BoxRef,
  bx.BoxCreated,
  '="' + pal.pal__ref + '"' AS PalletRef,
  pal.PalletDesc,
  pal.PalletDate,
  pal.PalletLocation,

  frs.flatRollSpoolID,
  frs.FlatRollAddedToSpool
FROM SpoolSel AS ss
INNER JOIN FRS AS frs
  ON frs.spoolID = ss.spoolID
INNER JOIN FR AS fr
  ON fr.flatRollID = frs.flatRollID
INNER JOIN BR AS br
  ON br.brickID = frs.brickID
LEFT JOIN SPOOL AS spool
  ON spool.spoolerID = fr.spoolerID
LEFT JOIN OPR AS opr
  ON opr.operatorID = fr.operatorID
LEFT JOIN RB AS rb
  ON rb.BrickSFG = br.BrickSFG
 AND rb.JobNo    = ss.JobNo
LEFT JOIN RWSFG AS rwsfg
  ON rwsfg.hlf__ref = rb.BrickSFG
LEFT JOIN RWMACH AS rwmach
  ON rwmach.wp___ref = rwsfg.RewindMachineRef
LEFT JOIN WRK AS wrk_rb
  ON wrk_rb.wn___ref = rb.RewindOperatorRef
LEFT JOIN PRJ AS prj
  ON prj.stlST_RewindBrickID = rb.stlST_RewindBrickID
LEFT JOIN PR AS pr
  ON pr.stlST_PressRollID = prj.stlST_PressRollID
LEFT JOIN PRSFG AS prsfg
  ON prsfg.hlf__ref = pr.PressRollSFG
LEFT JOIN PRMACH AS prmach
  ON prmach.wp___ref = prsfg.PressMachineRef
LEFT JOIN WRK AS wrk_pr
  ON wrk_pr.wn___ref = prsfg.PressCreatorRef
LEFT JOIN SKU AS sku
  ON sku.sku__ref = ss.SpoolSKU
 AND sku.ord__ref = ss.JobNo
LEFT JOIN BX AS bx
  ON bx.box__ref   = sku.box__ref
 AND bx.ord__ref   = ss.JobNo
LEFT JOIN PAL AS pal
  ON pal.pal__ref  = bx.pal__ref
ORDER BY ss.JobNo, ss.spoolNo, frs.flatRollSpoolID;
