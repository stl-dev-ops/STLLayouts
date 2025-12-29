
-- QUERY: AAqryBrickQtyCERMQtyDiff.sql --

SELECT brick.sku__ref, dbo_hlfvrd__.hlf__ref, brick.qty, dbo_hlfvrd__.aant__in, [qty]-[aant__in] AS Expr1, brick.lastModified
FROM dbo_hlfvrd__ RIGHT JOIN brick ON dbo_hlfvrd__.hlf__ref = brick.sku__ref
WHERE ((([qty]-[aant__in])<>0));


-- QUERY: AAqryUnlockRwBrick.sql --

PARAMETERS [Rw Brick ID] Long;
UPDATE rewindBrick SET rewindBrick.closed = 0
WHERE (((rewindBrick.rewindBrickID)=[Rw Brick ID]));


-- QUERY: Copy Of qryrptRewindBrickLbl.sql --

SELECT Code39([rewindBrickID]) AS ID, rewindBrick.rewindBrickID AS rwID, rewindBrick.ord__ref, rewindBrick.qtyFt, rewindBrick.rewindBrickNo, IIf([spoolJob],[qtyLabels],[grossQtyLabels]) AS Labels, dbo_v4vrs___.afg__ref, dbo_klabas__.naam____, IIf(([aantal_b]=0 Or [grossQtyLabels]=0),0,[grossQtyLabels]/[aantal_b]) AS LabelsPerRow
FROM tblDupeFourRecordsForLabels, (dbo_klabas__ INNER JOIN ((rewindBrick INNER JOIN dbo_v4vrs___ ON rewindBrick.ord__ref = dbo_v4vrs___.off__ref) INNER JOIN dbo_order___ ON rewindBrick.ord__ref = dbo_order___.ord__ref) ON dbo_klabas__.kla__ref = dbo_order___.kla__ref) INNER JOIN dbo_v4eti___ ON rewindBrick.ord__ref = dbo_v4eti___.off__ref
WHERE (((rewindBrick.rewindBrickID)=[Forms]![frmRewindBrick].[Form].[rewindBrickID]));


-- QUERY: Copy Of qrySpool.sql --

SELECT spool.*, qrySumFRQtyInSpool.FRQty, [FRQty]-[Qty] AS FRDiff
FROM (spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID) LEFT JOIN qrySumFRQtyInSpool ON spool.spoolID = qrySumFRQtyInSpool.spoolID
ORDER BY spool.spoolNo;


-- QUERY: QAFROrderIntoSpool.sql --

SELECT spoolJob.ord__ref, spool.spoolNo, flatRoll.flatRollNo, brick.sku__ref AS BRickSKU, flatRollSpool.lastModified AS FRAddedToSpoolDate, flatRoll.lastModified AS FRLastModDate, flatRollSpool.flatRollSpoolID
FROM spool INNER JOIN (flatRoll INNER JOIN ((spoolJob INNER JOIN brick ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON spool.spoolID = flatRollSpool.spoolID
WHERE (((spoolJob.ord__ref)=[Job#]) AND ((spool.spoolNo)=[Spool#]))
ORDER BY flatRollSpool.flatRollSpoolID;


-- QUERY: QARewindBricks.sql --

PARAMETERS Job_No Text ( 255 );
SELECT rewindBrick.ord__ref AS Job_No, rewindBrick.rewindBrickNo AS [RWBrick#], rewindBrick.grossQtyLabels AS RWGrossQtyLabel, rewindBrick.qtyLabels AS RWQtyLabels, pressRollWaste.hlf__ref AS [PR-SKU], pressRollWaste.inh__oms AS [PR #], IIf([rewindBrick].[closed],'Yes','No') AS RWBrickClosed, IIf([pressRollWaste].[closed],'Yes','No') AS PRWasteClosed
FROM rewindBrick INNER JOIN pressRollWaste ON rewindBrick.rewindBrickID = pressRollWaste.rewindBrickID
WHERE (((rewindBrick.ord__ref)=[Job_No]))
ORDER BY rewindBrick.rewindBrickID;


-- QUERY: qryBrick.sql --

SELECT brick.brickID, brick.spoolJobID, brick.brickNo, brick.sku__ref, brick.flatRolls, brick.wasteWeight, brick.lastModified, dbo_hlfvrd__.aant__in AS CERMSFGQty, brick.rewindBrickNo
FROM brick LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
ORDER BY brick.brickID;


-- QUERY: qryBricksInSpool.sql --

PARAMETERS JobNo Text ( 255 ), SpoolNo Short;
SELECT spoolJob.ord__ref, brick.brickID, spool.spoolNo
FROM spool INNER JOIN ((spoolJob INNER JOIN brick ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON spool.spoolID = flatRollSpool.spoolID
GROUP BY spoolJob.ord__ref, brick.brickID, spool.spoolNo
HAVING (((spoolJob.ord__ref)=[JobNo]) AND ((spool.spoolNo)=[SpoolNo]));


-- QUERY: qryBricksInSpoolform.sql --

SELECT spoolJob.ord__ref, brick.brickID, spool.spoolNo
FROM spool INNER JOIN ((spoolJob INNER JOIN brick ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON spool.spoolID = flatRollSpool.spoolID
GROUP BY spoolJob.ord__ref, brick.brickID, spool.spoolNo
HAVING (((spoolJob.ord__ref)=forms!frmQASisterSpools!txtord__ref) And ((spool.spoolNo)=forms!frmQASisterSpools!txtSpoolNo));


-- QUERY: qrybstlyn__Grouped.sql --

SELECT dbo_bstlyn__.ord__ref, dbo_bstlyn__.vrs__ref, dbo_bstlyn__.bsbn_kla
FROM dbo_bstlyn__
GROUP BY dbo_bstlyn__.ord__ref, dbo_bstlyn__.vrs__ref, dbo_bstlyn__.bsbn_kla;


-- QUERY: qrycmbBrick.sql --

SELECT brick.brickID, brick.sku__ref, brick.spoolJobID, dbo_stlST_RewindBrick.goodLabels AS qty, brick.qty AS GrossGoodQty
FROM brick INNER JOIN dbo_stlST_RewindBrick ON brick.sku__ref = dbo_stlST_RewindBrick.created_hlf__ref
WHERE (((brick.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]));


-- QUERY: qrycmbCermWorkers.sql --

SELECT [wn_naam_] & ' ' & [wn_vnaam] AS Name, dbo_werknm__.wn___ref
FROM dbo_werknm__
ORDER BY [wn_naam_] & ' ' & [wn_vnaam];


-- QUERY: qrycmbCurrentRewinders.sql --

SELECT dbo_w_atl1__.wn___ref, dbo_w_atl1__.wp___ref, [wn_vnaam] & ' ' & [wn_naam_] AS wName
FROM dbo_w_atl1__ INNER JOIN dbo_werknm__ ON dbo_w_atl1__.wn___ref = dbo_werknm__.wn___ref
WHERE (((dbo_w_atl1__.[stoppen_])=' XX:XX') AND ((dbo_w_atl1__.[wp___ref]) In (select wp___ref from dbo_werkpo__ where kenmerk_ in ('Rewinding'))))
ORDER BY [wn_vnaam] & ' ' & [wn_naam_];


-- QUERY: qrycmbJobsToSignOff.sql --

SELECT dbo_order___.ord__ref, dbo_klabas__.naam____, dbo_afgart__.afg_oms1
FROM ((((dbo_order___ INNER JOIN dbo_klabas__ ON dbo_order___.kla__ref = dbo_klabas__.kla__ref) INNER JOIN dbo_stlST_RewindBrick ON dbo_order___.ord__ref = dbo_stlST_RewindBrick.ord__ref) LEFT JOIN dbo_stlST_RewindJobSignOff ON dbo_order___.ord__ref = dbo_stlST_RewindJobSignOff.ord__ref) INNER JOIN dbo_v4vrs___ ON dbo_order___.ord__ref = dbo_v4vrs___.off__ref) INNER JOIN dbo_afgart__ ON dbo_v4vrs___.afg__ref = dbo_afgart__.afg__ref
GROUP BY dbo_order___.ord__ref, dbo_klabas__.naam____, dbo_afgart__.afg_oms1, dbo_stlST_RewindJobSignOff.signedOff
HAVING (((dbo_stlST_RewindJobSignOff.signedOff) Is Null)) OR (((dbo_stlST_RewindJobSignOff.signedOff)=False))
ORDER BY dbo_order___.ord__ref;


-- QUERY: qrycmbOperatorsActive.sql --

SELECT operator.operatorID, operator.operator
FROM operator
WHERE (((operator.active)=Yes))
ORDER BY operator.operator;


-- QUERY: qrycmbOperatorsAll.sql --

SELECT operator.operatorID, operator.operator
FROM operator
ORDER BY operator.operator;


-- QUERY: qrycmbPaswrd_.sql --

SELECT dbo_paswrd__.usernbr_, dbo_paswrd__.username, dbo_paswrd__.indienst
FROM dbo_paswrd__
WHERE (((dbo_paswrd__.indienst)="1"))
ORDER BY dbo_paswrd__.username;


-- QUERY: qrycmbpressRollBadReason.sql --

SELECT dbo_stlST_pressRollBadRowReason.reason, dbo_stlST_pressRollBadRowReason.stlST_pressRollBadRowReasonID
FROM dbo_stlST_pressRollBadRowReason
ORDER BY dbo_stlST_pressRollBadRowReason.stlST_pressRollBadRowReasonID;


-- QUERY: qrycmbRewindOperator.sql --

SELECT dbo_werknm__.wn___ref, [wn_vnaam] & ' ' & [wn_naam_] AS rName
FROM dbo_werknm__
WHERE (((dbo_werknm__.afd__ref)='7') AND ((dbo_werknm__.indienst)='Y'));


-- QUERY: qrycmbRewindSignOff.sql --

SELECT [wn_vnaam] & " " & [wn_naam_] AS OName, dbo_werknm__.wn___ref
FROM spoolTracePermission INNER JOIN dbo_werknm__ ON spoolTracePermission.wn___ref = dbo_werknm__.wn___ref
WHERE (((spoolTracePermission.rewindJobSignOff)=True))
ORDER BY [wn_vnaam] & " " & [wn_naam_];


-- QUERY: qrycmbSpool.sql --

SELECT spool.spoolID, spool.spoolNo, spool.spoolJobID
FROM spool
WHERE (((spool.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]))
ORDER BY spool.spoolNo;


-- QUERY: qrycmbSpooler.sql --

SELECT spooler.spoolerID, spooler.spooler, spooler.capacity
FROM spooler
ORDER BY spooler.spooler;


-- QUERY: qrycmbstlST_RewindBrick.sql --

SELECT brick.brickID, brick.sku__ref, brick.spoolJobID, dbo_hlfvrd__.aant__in AS qty, brick.qty AS GrossGoodQty
FROM brick LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
WHERE (((brick.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]));


-- QUERY: qryFixSpoolJobSpoolQtys.sql --

UPDATE spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID SET spool.Qty = RoundUpSpool([Weight],[spoolJob].[weightPer20K]), spool.flatRollDiff = RoundUpSpool([Weight],[spoolJob].[weightPer20K])-[flatRollQty]
WHERE (((spoolJob.spoolJobID)=434));


-- QUERY: qryFlatRoll.sql --

SELECT flatRoll.*
FROM flatRoll
ORDER BY flatRoll.flatRollNo;


-- QUERY: qryFlatRollCoreLbl505976.sql --

SELECT dbo_afgart__.afg_oms1, dbo_afgsku__.sku__ref AS SKU, "Lot#" & " " & [dbo_v4vrs___].[off__ref] AS Lot, "Mfg ref#" & " " & [dbo_afgart__].[afg__ref] AS MFG, "Seq # " & " " & [volgnr__] AS Seq, dbo_afgart__.afg__ref, dbo_afgsku__.lyn__ref, dbo_v4vrs___.off__ref, dbo_afgsku__.volgnr__
FROM (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN dbo_v4vrs___ ON (dbo_afgart__.afg__ref = dbo_v4vrs___.afg__ref) AND (dbo_afgsku__.ord__ref = dbo_v4vrs___.off__ref)
WHERE (((dbo_v4vrs___.off__ref)="505976") AND ((dbo_afgsku__.volgnr__)>=900 And (dbo_afgsku__.volgnr__)<=2900));


-- QUERY: qryflatRollXSpool.sql --

SELECT flatRollSpool.spoolID, flatRollSpool.flatRollID, flatRollSpool.brickID, flatRollSpool.flatRollSpoolID, flatRollSpool.tmstamp
FROM flatRollSpool;


-- QUERY: qryflatRollXSpool_old.sql --

SELECT flatRoll.brickID, flatRollSpool.spoolID, flatRollSpool.flatRollID, flatRoll.flatRollNo, flatRoll.notUsedBad, flatRoll.notUsedGood, flatRoll.notUsedNote, flatRoll.machine, spool.spoolNo
FROM spool INNER JOIN ((brick INNER JOIN flatRoll ON brick.brickID = flatRoll.brickID) INNER JOIN flatRollSpool ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON spool.spoolID = flatRollSpool.spoolID;


-- QUERY: qryfrmOperatorMaint.sql --

SELECT operator.*
FROM operator
ORDER BY operator.operator;


-- QUERY: qryfrmPressRoll.sql --

SELECT dbo_stlST_PressRoll.*
FROM dbo_stlST_PressRoll
ORDER BY dbo_stlST_PressRoll.stlST_PressRollID;


-- QUERY: qryfrmPressRollSKU.sql --

SELECT pressRollSKU.pressRollSKUID, pressRollSKU.brickID, pressRollSKU.hlf__ref, dbo_hlfvrd__.inh__oms
FROM pressRollSKU INNER JOIN dbo_hlfvrd__ ON pressRollSKU.hlf__ref = dbo_hlfvrd__.hlf__ref;


-- QUERY: qryfrmPressRollWaste.sql --

SELECT pressRollWaste.pressRollWasteID, pressRollWaste.hlf__ref, pressRollWaste.wn___ref, pressRollWaste.pressGoodLabels, pressRollWaste.actualGoodLabels, pressRollWaste.rewindWasteFt, pressRollWaste.pressBadMaterialFt, pressRollWaste.lastModified, pressRollWaste.ord__ref, pressRollWaste.inh__oms, pressRollWaste.rewindBrickID, pressRollWaste.aantm_in, pressRollWaste.badRowsMaterialFt, pressRollWaste.goodCount, pressRollWaste.actualGoodFt, pressRollWaste.noCarryover, pressRollWaste.carryOverGoodFt, pressRollWaste.closed, pressRollWaste.flatrolls, pressRollWaste.tssnaf_h, pressRollWaste.etiket_h, pressRollWaste.grossGoodLabels, pressRollWaste.noTraceabilityNT, pressRollWaste.numberOfBricksNT, pressRollWaste.countPerBrickNT
FROM pressRollWaste
ORDER BY pressRollWaste.pressRollWasteID;


-- QUERY: qryfrmRewindBrick.sql --

SELECT rewindBrick.rewindBrickID, rewindBrick.qtyLabels, rewindBrick.ord__ref, rewindBrick.qtyFt, rewindBrick.closed, rewindBrick.lastModified, rewindBrick.rewindBrickNo, rewindBrick.spoolJob, rewindBrick.grossQtyLabels
FROM rewindBrick;


-- QUERY: qryfrmRewindBrickSKU.sql --

SELECT rewindBrickSKU.rewindBrickSKUID, rewindBrickSKU.rewindBrickID, rewindBrick.rewindBrickNo, rewindBrickSKU.brickID, rewindBrick.ord__ref, rewindBrick.qtyLabels
FROM rewindBrickSKU INNER JOIN rewindBrick ON rewindBrickSKU.rewindBrickID = rewindBrick.rewindBrickID
ORDER BY rewindBrickSKU.rewindBrickSKUID;


-- QUERY: qryfrmSpoolTracePermission.sql --

SELECT spoolTracePermission.spoolTracePermissionID, spoolTracePermission.tmstamp, spoolTracePermission.lastModified, spoolTracePermission.wn___ref, spoolTracePermission.unlockPressRoll, spoolTracePermission.unlockRewindBrick
FROM spoolTracePermission;


-- QUERY: qryfrm_stlST_RewindJobSignOff.sql --

SELECT dbo_stlST_RewindJobSignOff.*
FROM dbo_stlST_RewindJobSignOff;


-- QUERY: qryOldSisterSpoolsObsolete.sql --

SELECT spoolJob.ord__ref AS JobNo, pressRollSKU.hlf__ref AS PressRollSFG, dbo_hlfvrd__.inh__oms AS PRDesc, brick.sku__ref AS RewindSFG, flatRoll.flatRollNo, spool.spoolNo, spool.sku__ref AS SpoolFG, spool.Qty
FROM flatRoll INNER JOIN (((spoolJob INNER JOIN ((qryBricksInSpool INNER JOIN (spool INNER JOIN flatRollSpool ON spool.spoolID = flatRollSpool.spoolID) ON qryBricksInSpool.brickID = flatRollSpool.brickID) INNER JOIN brick ON flatRollSpool.brickID = brick.brickID) ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN pressRollSKU ON brick.brickID = pressRollSKU.brickID) INNER JOIN dbo_hlfvrd__ ON pressRollSKU.hlf__ref = dbo_hlfvrd__.hlf__ref) ON flatRoll.flatRollID = flatRollSpool.flatRollID;


-- QUERY: qryPressRollSKU.sql --

SELECT pressRollSKU.pressRollSKUID, pressRollSKU.brickID, pressRollSKU.hlf__ref
FROM pressRollSKU;


-- QUERY: qrypressRollWasteBadRowCt.sql --

SELECT pressRollWaste.pressRollWasteID, Count(pressRollBadRow.pressRollBadRowID) AS BadRowCt
FROM pressRollWaste INNER JOIN pressRollBadRow ON pressRollWaste.pressRollWasteID = pressRollBadRow.pressRollWasteID
GROUP BY pressRollWaste.pressRollWasteID;


-- QUERY: qrypressRollWasteRWWasteLbl.sql --

SELECT pressRollWaste.pressRollWasteID, ((12/IIf(([pressRollWaste].[etiket_h]+[pressRollWaste].[tssnaf_h])=0,0.01,([pressRollWaste].[etiket_h]+[pressRollWaste].[tssnaf_h])))*[flatrolls])*[rewindWasteFt] AS rewindWasteLbl
FROM pressRollWaste;


-- QUERY: qryQAOrderOfBricksInSpool.sql --

SELECT brick.sku__ref, brick.rewindBrickNo, brick.qty, flatRollSpool.lastModified, spoolJob.ord__ref, spool.spoolNo
FROM brick INNER JOIN ((spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID) INNER JOIN flatRollSpool ON spool.spoolID = flatRollSpool.spoolID) ON brick.brickID = flatRollSpool.brickID
WHERE (((spoolJob.ord__ref)=[Job #]) AND ((spool.spoolNo)=[Spool #]))
ORDER BY flatRollSpool.flatRollSpoolID;


-- QUERY: qryrptBadRowsForAJob.sql --

SELECT dbo_stlST_RewindBrick.ord__ref, dbo_stlST_RewindBrick.rewindBrickNo, dbo_stlST_pressRollBadRow.flatRollNo, dbo_stlST_pressRollBadRow.reason, dbo_stlST_pressRollBadRow.comment
FROM dbo_stlST_pressRollBadRow INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_pressRollBadRow.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID
WHERE (((dbo_stlST_RewindBrick.[ord__ref])=[Job Number]))
ORDER BY dbo_stlST_RewindBrick.rewindBrickNo, dbo_stlST_pressRollBadRow.flatRollNo;


-- QUERY: qryrptFlatRollCoreLbl.sql --

SELECT dbo_afgart__.afg_oms1, dbo_afgsku__.sku__ref AS SKU, "Lot#" & " " & [dbo_v4vrs___].[off__ref] AS Lot, "Mfg ref#" & " " & [dbo_afgart__].[afg__ref] AS MFG, "Seq # " & " " & [volgnr__] AS Seq, dbo_afgart__.afg__ref, dbo_afgsku__.lyn__ref, dbo_v4vrs___.off__ref, "MR " & [rewindBrickNo] AS MR, dbo_v4vrs___.rowid, dbo_afgart__.vdt__ref, dbo_afgart__.vdt__ref, "Cust Ref #: " & [zynrefkl] AS RefAtCust
FROM (((dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN dbo_stlST_RewindBrickSKU ON dbo_afgsku__.sku__ref = dbo_stlST_RewindBrickSKU.sku__ref) INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_RewindBrickSKU.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID) INNER JOIN dbo_v4vrs___ ON (dbo_stlST_RewindBrick.vrs__ref = dbo_v4vrs___.vrs__ref) AND (dbo_stlST_RewindBrick.ord__ref = dbo_v4vrs___.off__ref);


-- QUERY: qryrptFlatRollLabel.sql --

SELECT "Roll Label - Seq # " & [volgnr__] AS RollLabel, "Lot# " & [dbo_afgsku__].[ord__ref] AS Lot, "Mfg ref# " & [dbo_afgsku__].[afg__ref] AS MfgRef, "Cust ref# " & [dbo_afgart__].[zynrefkl] AS CustRef, "PO# " & [bsbn_kla] AS PO, "Unwind# " & [wikk____] AS Unwind, "QTY: " & Format([aant__ex],"#,###") AS Qty, "DATE: " & Format([dbo_afgsku__].[crea_dat],"mm-dd-yyyy") AS [Date], dbo_stlST_RewindBrickSKU.lane, dbo_stlST_RewindBrick.rewindBrickNo, dbo_afgsku__.sku__ref AS Sku, dbo_afgsku__.sku__ref AS Code128Sku
FROM tblDupeFourRecordsForLabels, ((dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN qrybstlyn__Grouped ON (dbo_afgsku__.vrs__ref = qrybstlyn__Grouped.vrs__ref) AND (dbo_afgsku__.ord__ref = qrybstlyn__Grouped.ord__ref)) INNER JOIN (dbo_stlST_RewindBrick INNER JOIN dbo_stlST_RewindBrickSKU ON dbo_stlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_RewindBrickSKU.stlST_RewindBrickID) ON dbo_afgsku__.sku__ref = dbo_stlST_RewindBrickSKU.sku__ref;


-- QUERY: qryrptFlatRollRoundLbl.sql --

SELECT Format([etiket_b]*25.4,"#,##0.0") & 'mm x ' & Format([aant_rol]*[etiket_h]*25.4/1000,"#,##0.0") & "M    " & Format([etiket_b],"#,##0.0") & '''' & ' x ' & Format([aant_rol],"#,##0.0") & '''' AS MetricFeet, 'INK ' & IIf([wikk____]<'5','OUTSIDE','INSIDE') AS Winding, dbo_afgsku__.sku__ref AS SKU, 'Lot #: ' & [dbo_stlST_RewindBrick].[ord__ref] AS Lot
FROM ((dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN dbo_stlST_RewindBrickSKU ON dbo_afgsku__.sku__ref = dbo_stlST_RewindBrickSKU.sku__ref) INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_RewindBrickSKU.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID;


-- QUERY: qryrptPressWasteAnalysis.sql --

PARAMETERS [Job No] Text ( 255 );
SELECT rewindBrick.ord__ref AS JobNo, pressRollWaste.hlf__ref AS SKU, dbo_hlfvrd__.inh__oms AS PR, IIf(IsNull([RWBrickCt]),0,[RWBrickCt]) AS RewindBrickCt, dbo_hlfvrd__.totam_in AS PressSFGTotalFt, dbo_hlfvrd__.aantm_in AS PressSFGGoodFt, pressRollWaste.pressGoodLabels AS PressSFGGoodLbl, Sum(pressRollWaste.actualGoodLabels) AS RWActualGoodLbl, Sum(pressRollWaste.grossGoodLabels) AS RWGrossGoodLbl, IIf(IsNull([BadRowCt]),0,[BadRowCt]) AS BadRowsCt, Sum(pressRollWaste.badRowsMaterialFt) AS BadRowsFt, Sum(pressRollWaste.pressBadMaterialFt) AS PressBadFt, qrypressRollWasteRWWasteLbl.rewindWasteLbl AS RWWasteLbl, Sum(pressRollWaste.rewindWasteFt) AS RWWasteFt
FROM ((((rewindBrick LEFT JOIN pressRollWaste ON rewindBrick.rewindBrickID = pressRollWaste.rewindBrickID) LEFT JOIN dbo_hlfvrd__ ON pressRollWaste.hlf__ref = dbo_hlfvrd__.hlf__ref) LEFT JOIN qrypressRollWasteBadRowCt ON pressRollWaste.pressRollWasteID = qrypressRollWasteBadRowCt.pressRollWasteID) LEFT JOIN qryRWBrickCt ON rewindBrick.rewindBrickID = qryRWBrickCt.rewindBrickID) LEFT JOIN qrypressRollWasteRWWasteLbl ON pressRollWaste.pressRollWasteID = qrypressRollWasteRWWasteLbl.pressRollWasteID
GROUP BY rewindBrick.ord__ref, pressRollWaste.hlf__ref, dbo_hlfvrd__.inh__oms, IIf(IsNull([RWBrickCt]),0,[RWBrickCt]), dbo_hlfvrd__.totam_in, dbo_hlfvrd__.aantm_in, pressRollWaste.pressGoodLabels, IIf(IsNull([BadRowCt]),0,[BadRowCt]), qrypressRollWasteRWWasteLbl.rewindWasteLbl
HAVING (((rewindBrick.ord__ref)=[Job No]));


-- QUERY: qryrptRewindBrickLbl.sql --

SELECT Code39([rewindBrickID]) AS ID, rewindBrick.rewindBrickID AS rwID, rewindBrick.ord__ref, rewindBrick.qtyFt, rewindBrick.rewindBrickNo, IIf([spoolJob],[qtyLabels],[grossQtyLabels]) AS Labels, dbo_v4vrs___.afg__ref, dbo_klabas__.naam____, IIf(([aantal_b]=0 Or [grossQtyLabels]=0),0,[grossQtyLabels]/[aantal_b]) AS LabelsPerRow
FROM tblDupeFourRecordsForLabels, (dbo_klabas__ INNER JOIN ((rewindBrick INNER JOIN dbo_v4vrs___ ON rewindBrick.ord__ref = dbo_v4vrs___.off__ref) INNER JOIN dbo_order___ ON rewindBrick.ord__ref = dbo_order___.ord__ref) ON dbo_klabas__.kla__ref = dbo_order___.kla__ref) INNER JOIN dbo_v4eti___ ON rewindBrick.ord__ref = dbo_v4eti___.off__ref
WHERE (((rewindBrick.rewindBrickID)=[Forms]![frmRewindBrick].[Form].[rewindBrickID]));


-- QUERY: qryrptSpoolLabel.sql --

SELECT "Spool Label - Seq # " & [inhoud01] AS SpoolLabell, "Lot# " & [dbo_afgsku__].[ord__ref] & " - Spool# " & [inhoud01] AS Lot, "Mfg ref# " & [dbo_afgsku__].[afg__ref] AS MfgRef, "Cust ref# " & [dbo_afgart__].[zynrefkl] AS CustRef, "PO# " & [bsbn_kla] AS PO, "Unwind# " & [wikk____] AS Unwind, "QTY: " & Format([aant__ex],"#,###") AS Qty, "DATE: " & Format([dbo_afgsku__].[crea_dat],"mm-dd-yyyy") AS [Date], "Spool# " & [inhoud01] AS Spool, "Spool Weight: " & [inhoud02] & " lbs" AS SpoolWt, [inhoud03] & " lbs is " & [inhoud04] & " labels " AS WeightPer20K, dbo_afgsku__.sku__ref AS Sku, dbo_afgsku__.sku__ref AS Code128Sku, IIf(InStr(UCase([afg_oms1]) & UCase([afg_oms2]),"PRINTRAYCE")>0,True,False) AS PT
FROM tblDupeFourRecordsForLabels, (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN qrybstlyn__Grouped ON (dbo_afgsku__.vrs__ref = qrybstlyn__Grouped.vrs__ref) AND (dbo_afgsku__.ord__ref = qrybstlyn__Grouped.ord__ref);


-- QUERY: qryrptSpoolLabel508109.sql --

SELECT "Spool Label - Seq # " & [inhoud01] AS SpoolLabell, "Lot# " & [dbo_afgsku__].[ord__ref] AS Lot, "Mfg ref# " & [dbo_afgsku__].[afg__ref] AS MfgRef, "Cust ref# " & [dbo_afgart__].[zynrefkl] AS CustRef, "PO# " & [bsbn_kla] AS PO, "Unwind# " & [wikk____] AS Unwind, "QTY: " & Format([aant__ex],"#,###") AS Qty, "DATE: " & Format([dbo_afgsku__].[crea_dat],"mm-dd-yyyy") AS [Date], "Spool# " & [inhoud01] AS Spool, "Spool Weight: " & [inhoud02] & " lbs" AS SpoolWt, [inhoud03] & " lbs is " & [inhoud04] & " labels " AS WeightPer20K, dbo_afgsku__.sku__ref AS Sku, dbo_afgsku__.sku__ref AS Code128Sku, IIf(InStr(UCase([afg_oms1]) & UCase([afg_oms2]),"PRINTRAYCE")>0,True,False) AS PT
FROM tblDupeFourRecordsForLabels, (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN qrybstlyn__Grouped ON (dbo_afgsku__.ord__ref = qrybstlyn__Grouped.ord__ref) AND (dbo_afgsku__.vrs__ref = qrybstlyn__Grouped.vrs__ref)
WHERE (((dbo_afgsku__.sku__ref)="00154000000020210618"));


-- QUERY: qryrptSpoolLabelBackup.sql --

SELECT "Spool Label - Seq # " & [inhoud01] AS SpoolLabell, "Lot# " & [dbo_afgsku__].[ord__ref] AS Lot, "Mfg ref# " & [dbo_afgsku__].[afg__ref] AS MfgRef, "Cust ref# " & [dbo_afgart__].[zynrefkl] AS CustRef, "PO# " & [bsbn_kla] AS PO, "Unwind# " & [wikk____] AS Unwind, "QTY: " & Format([aant__ex],"#,###") AS Qty, "DATE: " & Format([dbo_afgsku__].[crea_dat],"mm-dd-yyyy") AS [Date], "Spool# " & [inhoud01] AS Spool, "Spool Weight: " & [inhoud02] & " lbs" AS SpoolWt, [inhoud03] & " lbs is " & [inhoud04] & " labels " AS WeightPer20K, dbo_afgsku__.sku__ref AS Sku, dbo_afgsku__.sku__ref AS Code128Sku
FROM tblDupeFourRecordsForLabels, (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN dbo_bstlyn__ ON (dbo_afgsku__.vrs__ref = dbo_bstlyn__.vrs__ref) AND (dbo_afgsku__.ord__ref = dbo_bstlyn__.ord__ref);


-- QUERY: qryrptSpoolLabelTest.sql --

SELECT "Spool Label - Seq # " & [inhoud01] AS SpoolLabell, "Lot# " & [dbo_afgsku__].[ord__ref] AS Lot, "Mfg ref# " & [dbo_afgsku__].[afg__ref] AS MfgRef, "Cust ref# " & [dbo_afgart__].[zynrefkl] AS CustRef, "PO# " & [bsbn_kla] AS PO, "Unwind# " & [wikk____] AS Unwind, "QTY: " & Format([aant__ex],"#,###") AS Qty, "DATE: " & Format([dbo_afgsku__].[crea_dat],"mm-dd-yyyy") AS [Date], "Spool# " & [inhoud01] AS Spool, "Spool Weight: " & [inhoud02] & " lbs" AS SpoolWt, [inhoud03] & " lbs is " & [inhoud04] & " labels " AS WeightPer20K, dbo_afgsku__.sku__ref AS Sku, dbo_afgsku__.sku__ref AS Code128Sku
FROM tblDupeFourRecordsForLabels, (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN qrybstlyn__Grouped ON (dbo_afgsku__.vrs__ref = qrybstlyn__Grouped.vrs__ref) AND (dbo_afgsku__.ord__ref = qrybstlyn__Grouped.ord__ref);


-- QUERY: qryrptSTRewindBrickLbl.sql --

SELECT Code39([created_hlf__ref]) AS ID, dbo_stlST_RewindBrick.created_hlf__ref AS hlf__ref, dbo_stlST_RewindBrick.goodLabels AS Labels, dbo_v4vrs___.afg__ref, dbo_klabas__.naam____, dbo_stlST_RewindBrick.labelsPerRow AS LabelsPerRow, dbo_stlST_RewindBrick.ord__ref, "BR-" & [rewindBrickNo] AS BRrewindBrickNo, IIf((Not IsNull([flatRolls]) And [flatRolls]<>0),([dbo_stlST_RewindBrick].[goodLabels]*([dbo_stlST_PressRoll].[etiket_h]+[dbo_stlST_PressRoll].[tssnaf_h]))/[flatRolls]/12,0) AS qtyFt, [wn_vnaam] & ' ' & [wn_naam_] AS Operator
FROM tblDupeFourRecordsForLabels, ((((((dbo_klabas__ INNER JOIN dbo_order___ ON dbo_klabas__.kla__ref = dbo_order___.kla__ref) INNER JOIN dbo_stlST_RewindBrick ON dbo_order___.ord__ref = dbo_stlST_RewindBrick.ord__ref) INNER JOIN dbo_v4vrs___ ON (dbo_stlST_RewindBrick.vrs__ref = dbo_v4vrs___.vrs__ref) AND (dbo_stlST_RewindBrick.ord__ref = dbo_v4vrs___.off__ref)) INNER JOIN dbo_v4eti___ ON dbo_stlST_RewindBrick.ord__ref = dbo_v4eti___.off__ref) INNER JOIN dbo_stlST_PressRollXstlST_RewindBrick ON dbo_stlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_PressRollXstlST_RewindBrick.stlST_RewindBrickID) INNER JOIN dbo_stlST_PressRoll ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollID = dbo_stlST_PressRoll.stlST_PressRollID) INNER JOIN dbo_werknm__ ON dbo_stlST_RewindBrick.wn___ref = dbo_werknm__.wn___ref;


-- QUERY: qryrptUnlockLog.sql --

SELECT dbo_stlST_UnlockLog.logDt, dbo_stlST_UnlockLog.operator_wn___ref AS OpNum, [wn_naam_] & " " & [wn_vnaam] AS Operator, dbo_stlST_UnlockLog.code_wn___ref AS [Code Used], dbo_stlST_UnlockLog.ord__ref AS Job, dbo_stlST_UnlockLog.hlf__ref AS SFG, dbo_stlST_UnlockLog.sku__ref AS SKU, dbo_stlST_UnlockLog.message AS Msg
FROM dbo_stlST_UnlockLog LEFT JOIN dbo_werknm__ ON dbo_stlST_UnlockLog.operator_wn___ref = dbo_werknm__.wn___ref
ORDER BY dbo_stlST_UnlockLog.stlST_UnlockLogID DESC;


-- QUERY: qryRWBrickCt.sql --

SELECT rewindBrick.rewindBrickID, Count(pressRollWaste.pressRollWasteID) AS RWBrickCt
FROM rewindBrick INNER JOIN pressRollWaste ON rewindBrick.rewindBrickID = pressRollWaste.rewindBrickID
GROUP BY rewindBrick.rewindBrickID;


-- QUERY: qrySkusPerBrick.sql --

SELECT dbo_stlST_RewindBrick.stlST_RewindBrickID, Min(dbo_stlST_RewindBrick.labelsPerRow) AS STMinLabelsPerRow, Count(dbo_stlST_RewindBrickSKU.sku__ref) AS STSkuCount
FROM dbo_stlST_RewindBrick INNER JOIN dbo_stlST_RewindBrickSKU ON dbo_stlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_RewindBrickSKU.stlST_RewindBrickID
GROUP BY dbo_stlST_RewindBrick.stlST_RewindBrickID;


-- QUERY: qrySpool.sql --

SELECT spool.*, dbo_afgsku__.inhoud01, dbo_afgsku__.aant__ex, dbo_paswrd__.username, dbo_afgsku__.crea_dat, dbo_afgsku__.crea_uur
FROM (spool LEFT JOIN dbo_afgsku__ ON spool.sku__ref = dbo_afgsku__.sku__ref) LEFT JOIN dbo_paswrd__ ON dbo_afgsku__.crea_usr = dbo_paswrd__.usernbr_
ORDER BY spool.spoolNo;


-- QUERY: qrySpoolFlatroll.sql --

SELECT spool.spoolJobID, spool.spoolNo, brick.brickID, flatRoll.flatRollNo, brick.sku__ref
FROM brick INNER JOIN (flatRoll INNER JOIN (spool INNER JOIN flatRollSpool ON spool.spoolID = flatRollSpool.spoolID) ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON (brick.brickID = flatRollSpool.brickID) AND (brick.brickID = flatRoll.brickID)
ORDER BY spool.spoolJobID, spool.spoolNo, flatRoll.flatRollNo, brick.sku__ref;


-- QUERY: qrySpoolJob.sql --

SELECT spoolJob.spoolJobID, spoolJob.ord__ref
FROM spoolJob;


-- QUERY: qryspoolJobQtyCalculation.sql --

SELECT spoolJobQtyCalculation.*
FROM spoolJobQtyCalculation
ORDER BY spoolJobQtyCalculation.spoolJobQtyCalculationID;


-- QUERY: qrysubfrmpressRollBadRow.sql --

SELECT pressRollBadRow.pressRollBadRowID, pressRollBadRow.pressRollWasteID, pressRollBadRow.flatRollNo, pressRollBadRow.lastModified
FROM pressRollBadRow
ORDER BY pressRollBadRow.flatRollNo;


-- QUERY: qrysubfrm_JTQASisterSpools.sql --

SELECT qryBricksInSpoolform.ord__ref AS [Job No], dbo_stlST_PressRoll.hlf__ref AS [Press Roll Sku], dbo_stlST_PressRoll.inh__oms AS [PR Description], dbo_stlST_RewindBrick.created_hlf__ref AS [Brick Sku], flatRoll.flatRollNo AS [Flat Roll No], spool.spoolNo AS [Spool No], spool.sku__ref AS [Spool Sku], spool.Qty
FROM qryBricksInSpoolform INNER JOIN (spool INNER JOIN (flatRoll INNER JOIN ((((brick INNER JOIN dbo_stlST_RewindBrick ON brick.sku__ref = dbo_stlST_RewindBrick.created_hlf__ref) INNER JOIN dbo_stlST_PressRollXstlST_RewindBrick ON dbo_stlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_PressRollXstlST_RewindBrick.stlST_RewindBrickID) INNER JOIN dbo_stlST_PressRoll ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollID = dbo_stlST_PressRoll.stlST_PressRollID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON spool.spoolID = flatRollSpool.spoolID) ON qryBricksInSpoolform.brickID = flatRollSpool.brickID
ORDER BY qryBricksInSpoolform.ord__ref, dbo_stlST_PressRoll.hlf__ref, dbo_stlST_RewindBrick.created_hlf__ref, flatRoll.flatRollNo, spool.spoolNo;


-- QUERY: qrysubfrm_stlST_pressRollBadRow.sql --

SELECT dbo_stlST_pressRollBadRow.stlST_pressRollBadRowID, dbo_stlST_pressRollBadRow.stlST_RewindBrickID, dbo_stlST_pressRollBadRow.flatRollNo, dbo_stlST_pressRollBadRow.lastModified
FROM dbo_stlST_pressRollBadRow
ORDER BY dbo_stlST_pressRollBadRow.flatRollNo;


-- QUERY: qrysubfrm_stlST_pressRollsInBrick.sql --

SELECT dbo_stlST_PressRollXstlST_RewindBrick.*, dbo_stlST_PressRoll.hlf__ref, dbo_stlST_PressRoll.inh__oms
FROM dbo_stlST_PressRollXstlST_RewindBrick INNER JOIN dbo_stlST_PressRoll ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollID = dbo_stlST_PressRoll.stlST_PressRollID
ORDER BY dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollXstlST_RewindBrickID;


-- QUERY: qrysubfrm_stlST_pressRollsInBrickForSpooling.sql --

SELECT dbo_stlST_PressRollXstlST_RewindBrick.*, dbo_stlST_PressRoll.hlf__ref, dbo_stlST_PressRoll.inh__oms, dbo_stlST_RewindBrick.created_hlf__ref
FROM (dbo_stlST_PressRollXstlST_RewindBrick INNER JOIN dbo_stlST_PressRoll ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollID = dbo_stlST_PressRoll.stlST_PressRollID) INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID
ORDER BY dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollXstlST_RewindBrickID;


-- QUERY: qrysubfrm_stlST_RewindBrick.sql --

SELECT dbo_stlST_RewindBrick.rewindBrickNo, dbo_stlST_RewindBrick.closed, dbo_stlST_RewindBrick.lastModified, dbo_stlST_RewindBrick.goodCount, dbo_stlST_RewindBrick.goodLabels, dbo_stlST_RewindBrick.grossLabels, dbo_stlST_RewindBrick.roundedLabels, dbo_stlST_RewindBrick.labelsPerRow, dbo_stlST_PressRollXstlST_RewindBrick.goodCount, dbo_stlST_PressRollXstlST_RewindBrick.goodLabels, dbo_stlST_PressRollXstlST_RewindBrick.grossLabels, dbo_stlST_RewindBrick.stlST_RewindBrickID, dbo_stlST_PressRollXstlST_RewindBrick.stlST_RewindBrickID, dbo_stlST_PressRollXstlST_RewindBrick.stlST_PressRollID, dbo_stlST_RewindBrick.created_hlf__ref, dbo_stlST_RewindBrick.qaHold, dbo_stlST_RewindBrick.splices, dbo_stlST_RewindBrick.brickDefectReason, dbo_stlST_RewindBrick.brickDefectComment, dbo_stlST_RewindBrick.brickDefectDept
FROM dbo_stlST_PressRollXstlST_RewindBrick INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_PressRollXstlST_RewindBrick.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID
ORDER BY dbo_stlST_RewindBrick.stlST_RewindBrickID;


-- QUERY: qrysubfrm_stlST_RewindBrickSignOff.sql --

SELECT dbo_vw_stlST_RewindJobSignOff.*
FROM dbo_vw_stlST_RewindJobSignOff
ORDER BY dbo_vw_stlST_RewindJobSignOff.rewindBrickNo;


-- QUERY: qrysubfrm_stlST_RewindBrickSKU.sql --

SELECT dbo_stlST_RewindBrickSKU.stlST_RewindBrickSKUID, dbo_stlST_RewindBrickSKU.stlST_RewindBrickID, dbo_stlST_RewindBrickSKU.sku__ref, dbo_afgsku__.volgnr__
FROM dbo_stlST_RewindBrickSKU INNER JOIN dbo_afgsku__ ON dbo_stlST_RewindBrickSKU.sku__ref = dbo_afgsku__.sku__ref
ORDER BY dbo_stlST_RewindBrickSKU.stlST_RewindBrickSKUID;


-- QUERY: qrySumFRQtyInSpool.sql --

SELECT flatRollSpool.spoolID, Sum(IIf(IsNull([aant__in]),[qty],[aant__in])/[flatrolls]) AS FRQty
FROM (brick INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
GROUP BY flatRollSpool.spoolID
ORDER BY flatRollSpool.spoolID;


-- QUERY: qryTotalSpoolsPerJob.sql --

SELECT Sum(spool.Qty) AS SumOfQty, spoolJob.ord__ref
FROM spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID
GROUP BY spoolJob.ord__ref
HAVING (((spoolJob.ord__ref)=[Forms]![frmSpoolJob]![ord__ref]));


-- QUERY: qryWaste.sql --

SELECT waste.*
FROM waste
ORDER BY waste.wasteID;


-- QUERY: TmprryQryFrLnkFldsCrtn0123456789.sql --

SELECT;

