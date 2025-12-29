SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlIncentiveReport]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlIncentiveReport
AS
SELECT        dbo.incent__.id, dbo.incent__.ord__ref, dbo.incent__.datum___, dbo.incent__.kla__ref, dbo.incent__.kla__rpn, dbo.incent__.omschr__, dbo.incent__.oplage__, dbo.incent__.prkl_ref, dbo.incent__.prd__ref, 
                         dbo.incent__.pro_tdesc, dbo.incent__.pro_gdesc, dbo.incent__.ityp, dbo.incent__.trn__srt, dbo.incent__.press_e_min, dbo.incent__.press_a_min, dbo.incent__.press_break_min, dbo.incent__.press_job_min, 
                         dbo.incent__.press_t_dif, dbo.incent__.rewin_e_min, dbo.incent__.rewin_a_min, dbo.incent__.rewin_break_min, dbo.incent__.rewin_job_min, dbo.incent__.rewin_t_dif, dbo.incent__.spool_e_min, dbo.incent__.spool_a_min, 
                         dbo.incent__.spool_break_min, dbo.incent__.spool_job_min, dbo.incent__.spool_t_dif, dbo.incent__.coati_e_min, dbo.incent__.coati_a_min, dbo.incent__.coati_break_min, dbo.incent__.coati_job_min, dbo.incent__.coati_t_dif, 
                         dbo.incent__.cohes_e_min, dbo.incent__.cohes_a_min, dbo.incent__.cohes_break_min, dbo.incent__.cohes_job_min, dbo.incent__.cohes_t_dif, dbo.incent__.shipi_e_min, dbo.incent__.shipi_a_min, 
                         dbo.incent__.shipi_break_min, dbo.incent__.shipi_job_min, dbo.incent__.shipi_t_dif, dbo.incent__.press_et_feet, dbo.incent__.press_eg_feet, dbo.incent__.press_eb_feet, dbo.incent__.press_ew_prc, 
                         dbo.incent__.press_at_ft01, dbo.incent__.press_at_ft02, dbo.incent__.press_at_feet, dbo.incent__.press_consumed_feet, dbo.incent__.press_sfg_total_feet, dbo.incent__.press_sfg_good_feet, 
                         dbo.incent__.press_st_processed_good_feet, dbo.incent__.press_st_bad_feet, dbo.incent__.press_st_remaining_good_feet, dbo.incent__.press_ag_ft01, dbo.incent__.press_ag_ft02, dbo.incent__.press_ag_feet, 
                         dbo.incent__.press_ab_ft01, dbo.incent__.press_ab_ft02, dbo.incent__.press_ab_feet, dbo.incent__.press_aw_prc, dbo.incent__.rewin_et_feet, dbo.incent__.rewin_eg_feet, dbo.incent__.rewin_eb_feet, 
                         dbo.incent__.rewin_ew_prc, dbo.incent__.rewin_stl_in, dbo.incent__.rewin_stl_p_in, dbo.incent__.rewin_at_feet, dbo.incent__.rewin_ag_feet, dbo.incent__.rewin_ab_feet, dbo.incent__.rewin_aw_prc, dbo.incent__.spool_et_feet, 
                         dbo.incent__.spool_eg_feet, dbo.incent__.spool_eb_feet, dbo.incent__.spool_ew_prc, dbo.incent__.spool_stl_in, dbo.incent__.spool_stl_p_in, dbo.incent__.spool_at_feet, dbo.incent__.spool_ag_feet, 
                         dbo.incent__.spool_ab_feet, dbo.incent__.spool_aw_prc, dbo.incent__.coati_et_feet, dbo.incent__.coati_eg_feet, dbo.incent__.coati_eb_feet, dbo.incent__.coati_ew_prc, dbo.incent__.coati_at_feet, dbo.incent__.coati_ag_feet, 
                         dbo.incent__.coati_ab_feet, dbo.incent__.coati_aw_prc, dbo.incent__.cohes_et_feet, dbo.incent__.cohes_eg_feet, dbo.incent__.cohes_eb_feet, dbo.incent__.cohes_ew_prc, dbo.incent__.cohes_at_feet, 
                         dbo.incent__.cohes_ag_feet, dbo.incent__.cohes_ab_feet, dbo.incent__.cohes_aw_prc, dbo.incent__.shipi_ordered, dbo.incent__.shipi_shipped, dbo.incent__.shipi_dif, dbo.incent__.produced_lbls, 
                         dbo.incent__.produced_lbls_vs_ordered, dbo.incent__.etiket_h, dbo.incent__.etiket_b, dbo.incent__.tssnaf_b, dbo.incent__.tssnaf_h, dbo.incent__.aantal_b, dbo.incent__.aantal_h, dbo.incent__.tedrkd__, 
                         dbo.incent__.spoolJobID, dbo.incent__.press_t_met, dbo.incent__.press_w_met, dbo.incent__.press___met, dbo.incent__.rewin_t_met, dbo.incent__.rewin_w_met, dbo.incent__.rewin___met, dbo.incent__.spool_t_met, 
                         dbo.incent__.spool_w_met, dbo.incent__.spool___met, dbo.incent__.coati_t_met, dbo.incent__.coati_w_met, dbo.incent__.coati___met, dbo.incent__.cohes_t_met, dbo.incent__.cohes_w_met, dbo.incent__.cohes___met, 
                         dbo.incent__.shipi_t_met, dbo.incent__.shipi_w_met, dbo.incent__.shipi___met, dbo.incent__.shippedfull, dbo.incent__.lastUpdate, dbo.incent__.locked, dbo.incent__.lockedDate, dbo.incent__.exception, 
                         dbo.incent__.clockingsToProcess, dbo.incent__.shipi_a_boxes, dbo.incent__.shipi_e_boxes, dbo.incent__.shipi_e_prodTimeMin, dbo.incent__.shipi_e_minperbox, dbo.incent__.shipi_e_prepmin, 
                         dbo.incent__.shipi_adj_est_min, dbo.incent__.shipi_at_met, dbo.incent__.shipi_inc_met, dbo.incent__.rewin_a_rolls, dbo.incent__.rewin_e_minperroll, dbo.incent__.rewin_e_prepmin, dbo.incent__.rewin_adj_est_min, 
                         dbo.incent__.rewin_at_met, dbo.incent__.rewin_inc_met, dbo.incent__.spool_a_spools, dbo.incent__.spool_e_minperspool, dbo.incent__.spool_e_prepmin, dbo.incent__.spool_adj_est_min, dbo.incent__.spool_at_met, 
                         dbo.incent__.spool_inc_met, dbo.incent__.printing_min, dbo.incent__.non_job_tot_ft, dbo.incent__.non_job_gd_ft, dbo.incent__.non_job_ft_calculated, dbo.incent__.jobActMakeReadyMin, dbo.incent__.jobActPrintMin, 
                         dbo.incent__.jobActTeardownMin, dbo.incente_.id AS Expr1, dbo.incente_.wn___ref, dbo.incente_.ord__ref AS Expr2, dbo.incente_.wn_naam_, dbo.incente_.wn_vnaam, dbo.incente_.wp___ref, dbo.incente_.department, 
                         dbo.incente_.est__min, dbo.incente_.est__min_2, dbo.incente_.e_minutes, dbo.incente_.t_minutes, dbo.incente_.percent_, dbo.incente_.paid__yn, dbo.incente_.pay__amt, dbo.incente_.pay__amt_2, dbo.incente_.paid_amt, 
                         dbo.incente_.dat_paid, dbo.incente_.target_met, dbo.incente_.target_met_2, dbo.incente_.pot__amt, dbo.incente_.pot__amt_2, dbo.incente_.lastUpdate AS Expr3, dbo.incente_.locked AS Expr4, dbo.incente_.mgrApproved, 
                         dbo.incente_.tmstamp, dbo.incente_.exception AS Expr5, dbo.incente_.empNo, dbo.incente_.overrideReason, dbo.incente_.empMakeReadyMin, dbo.incente_.empPrintMin, dbo.incente_.empTearDownMin, 
                         dbo.incente_.empGoodFt, dbo.incente_.empTotalFt, dbo.incente_.jobTotalGoodFt, dbo.incente_.jobEstMakeReadyMin, dbo.incente_.jobEstPrintMin, dbo.incente_.jobEstTearDownMin, 
                         dbo.incente_.jobActMakeReadyMin AS Expr6, dbo.incente_.jobActPrintMin AS Expr7, dbo.incente_.jobActTearDownMin AS Expr8, dbo.incente_.empMakeReadyPct, dbo.incente_.empPrintPct, dbo.incente_.empTeardownPct, 
                         dbo.incente_.adjMakeReadyMin, dbo.incente_.adjPrintMin, dbo.incente_.adjTearDownMin, dbo.incente_.adjTotJobMin, dbo.incente_.adjTotEmpJobMin, dbo.incente_.jobFlatRolls, dbo.incente_.empFlatRolls, 
                         dbo.incente_.non_job_tot_ft AS Expr9, dbo.incente_.non_job_gd_ft AS Expr10, dbo.incente_.empIncentivesStartDt, dbo.stlPaychexEmpNo.stlPaychexEmpNoID, dbo.stlPaychexEmpNo.lastName, 
                         dbo.stlPaychexEmpNo.firstName, dbo.stlPaychexEmpNo.empNo AS Expr11, dbo.stlPaychexEmpNo.inactive, dbo.stlPaychexEmpNo.incentiveDt, 
                         CASE WHEN dbo.incente_.wp___ref = ''5001'' THEN ''A10'' WHEN dbo.incente_.wp___ref = ''5002'' THEN ''B2'' WHEN dbo.incente_.wp___ref = ''5003'' THEN ''F16'' WHEN dbo.incente_.wp___ref = ''5004'' THEN ''Aztec'' ELSE ''Not Press''
                          END AS Press, CASE WHEN incent__.exception = ''1'' THEN ''Job Type'' WHEN incent__.exception = ''2'' THEN ''Customer Type'' ELSE ''None - OK'' END AS ExceptionDesc, 
                         CASE WHEN t_minutes = 0 THEN 0 ELSE (e_minutes / t_minutes) * 100 END AS timePercent
FROM            dbo.incente_ INNER JOIN
                         dbo.incent__ ON dbo.incente_.ord__ref = dbo.incent__.ord__ref INNER JOIN
                         dbo.werkpo__ ON dbo.incente_.wp___ref = dbo.werkpo__.wp___ref INNER JOIN
                         dbo.stlPayChexXCERMID ON dbo.incente_.empNo = dbo.stlPayChexXCERMID.empNo INNER JOIN
                         dbo.stlPaychexEmpNo ON dbo.stlPayChexXCERMID.empNo = dbo.stlPaychexEmpNo.empNo
' 
