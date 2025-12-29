SELECT j.ord__ref, j.open____, j.best_dat, j.kla__rpn, j.omschr__, j.leverdat, j.oplage__, j.QP_ID, j.bon__ref, j.EST_LABELS, j.EST_COG, j.EST_PDD, j.ScratchCode,
j.ACT_LABELS, j.ACT_COG, j.ACT_PDD, j.EST_TotalPressFeetWithWaste, j.GrayBoxFeet, j.EST_MR_Min, j.EST_PrintMin, j.EST_WashMin, j.PressTotalFeetWithWaste,
j.EST_Press, j.EST_ExactPressMSINeeded, j.EST_ExactPressFeetNeeded, j.EST_FSMaterialID, j.EST_FSMaterialWidth, j.EST_FSMaterialLatestPurchaseMSIPrice,
j.ACT_ExactPressFeetNeeded , j.ACT_ExactPressMSINeeded, j.FirstRealShipDate, j.LastRealShipDate, j.FeetConsumed, j.MSIConsumed, j.EST_FPM
FROM vw_stlJobEstVsAct j
WHERE j.kla__ref <> '100208' AND j.ord__ref IN 
(
SELECT DISTINCT c.ord__ref 
FROM stobew__ c
WHERE c.art__ref IN
(
    SELECT m.art__ref 
    FROM artiky__ m JOIN
    levbas__ s ON m.lev__ref = s.lev__ref
    where s.lev__rpn like 'hani%' or s.lev__rpn like 'POLYM%'
)
AND c.ord__ref NOT IN ('', 'N')
)
ORDER BY j.best_dat, j.kla__rpn, j.omschr__
