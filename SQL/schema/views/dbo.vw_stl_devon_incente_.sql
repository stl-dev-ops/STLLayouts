SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_incente_]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_incente_
AS
SELECT        dbo.incente_.wn___ref, dbo.incente_.ord__ref, dbo.incente_.wn_naam_, dbo.incente_.wn_vnaam, dbo.incente_.department, dbo.incente_.e_minutes, dbo.incente_.t_minutes, dbo.incente_.percent_, dbo.incente_.paid__yn, 
                         dbo.incente_.paid_amt, dbo.incente_.dat_paid, dbo.incent__.datum___ AS datefrom, dbo.incent__.datum___ AS dateto, dbo.incente_.wn_vnaam + '' '' + dbo.incente_.wn_naam_ AS employee, dbo.incent__.kla__rpn, 
                         dbo.incent__.press_e_min, dbo.incent__.press_a_min, dbo.incent__.press_t_dif, dbo.incent__.rewin_e_min, dbo.incent__.spool_a_min, dbo.incent__.spool_e_min, dbo.incent__.rewin_a_min, dbo.incent__.rewin_t_dif, 
                         dbo.incent__.spool_t_dif, dbo.incent__.coati_e_min, dbo.incent__.coati_a_min, dbo.incent__.coati_t_dif, dbo.incent__.cohes_e_min, dbo.incent__.cohes_a_min, dbo.incent__.cohes_t_dif, dbo.incent__.shipi_e_min, 
                         dbo.incent__.shipi_a_min, dbo.incent__.shipi_t_dif, dbo.incent__.shipi_ordered, dbo.incent__.oplage__, dbo.incent__.shipi_shipped, dbo.incent__.press_et_feet, dbo.incent__.press_ew_prc, dbo.incent__.press_at_feet, 
                         dbo.incent__.press_aw_prc, dbo.incent__.press_consumed_feet, dbo.incent__.press_sfg_good_feet, dbo.incent__.produced_lbls, dbo.incent__.produced_lbls_vs_ordered, dbo.incent__.press_break_min, 
                         dbo.incent__.press_job_min, dbo.incent__.rewin_job_min, dbo.incent__.rewin_break_min, dbo.incent__.spool_break_min, dbo.incent__.spool_job_min, dbo.incent__.coati_break_min, dbo.incent__.coati_job_min, 
                         dbo.incent__.cohes_break_min, dbo.incent__.cohes_job_min, dbo.incent__.shipi_break_min, dbo.incent__.shipi_job_min, dbo.incente_.exception, dbo.incent__.pro_tdesc, dbo.incent__.omschr__, 
                         CASE WHEN dbo.incente_.wp___ref = ''5001'' THEN ''A10'' WHEN dbo.incente_.wp___ref = ''5002'' THEN ''B2'' WHEN dbo.incente_.wp___ref = ''5003'' THEN ''F16'' WHEN dbo.incente_.wp___ref = ''5004'' THEN ''Aztec'' ELSE ''Not Press''
                          END AS Press, dbo.werkpo__.wp_naam_ AS Machine, dbo.incente_.empMakeReadyMin, dbo.incente_.empPrintMin, dbo.incente_.empTearDownMin, dbo.incente_.empGoodFt, dbo.incente_.empTotalFt, 
                         dbo.incente_.jobTotalGoodFt, dbo.incent__.press___met, dbo.incent__.press_t_met, dbo.incent__.press_w_met, 
                         CASE WHEN incent__.exception = ''1'' THEN ''Job Type'' WHEN incent__.exception = ''2'' THEN ''Customer Type'' ELSE ''None - OK'' END AS ExceptionDesc, CASE WHEN t_minutes = 0 THEN 0 ELSE (e_minutes / t_minutes) 
                         * 100 END AS timePercent, dbo.incente_.jobEstMakeReadyMin, dbo.incente_.jobEstPrintMin, dbo.incente_.jobEstTearDownMin, dbo.incente_.jobActMakeReadyMin, dbo.incente_.jobActPrintMin, dbo.incente_.jobActTearDownMin, 
                         dbo.incente_.empMakeReadyPct, dbo.incente_.empPrintPct, dbo.incente_.empTeardownPct, dbo.incente_.adjMakeReadyMin, dbo.incente_.adjPrintMin, dbo.incente_.adjTearDownMin, dbo.incente_.adjTotJobMin, 
                         dbo.incente_.adjTotEmpJobMin, dbo.incent__.press_eg_feet, dbo.incent__.coati_et_feet, dbo.incent__.coati_at_feet, dbo.incent__.coati_ag_feet, dbo.incent__.spool_t_met, dbo.incent__.spool_w_met, dbo.incent__.spool___met, 
                         dbo.incent__.coati_t_met, dbo.incent__.coati_w_met, dbo.incent__.coati___met, dbo.incent__.cohes_t_met, dbo.incent__.cohes_w_met, dbo.incent__.cohes___met, dbo.incent__.shipi_t_met, dbo.incent__.shipi_w_met, 
                         dbo.incent__.shipi___met, dbo.incent__.shippedfull, dbo.incente_.est__min_2, dbo.incente_.pay__amt_2, dbo.incente_.target_met_2, dbo.incente_.pot__amt_2, dbo.incente_.overrideReason, dbo.incente_.empNo, 
                         dbo.incente_.empIncentivesStartDt, dbo.incente_.est__min, dbo.incente_.pay__amt, dbo.incente_.target_met, dbo.incente_.pot__amt, dbo.incent__.rewin_adj_est_min, dbo.incent__.rewin_at_met, dbo.incent__.rewin_inc_met, 
                         dbo.incent__.spool_adj_est_min, dbo.incent__.spool_at_met, dbo.incent__.spool_inc_met, dbo.incent__.shipi_adj_est_min, dbo.incent__.shipi_at_met, dbo.incent__.shipi_inc_met, dbo.incent__.shipi_a_boxes, 
                         dbo.incent__.shipi_e_boxes, dbo.incent__.shipi_e_prodTimeMin, dbo.incent__.shipi_e_minperbox, dbo.incent__.shipi_e_prepmin, dbo.incent__.rewin_a_rolls, dbo.incent__.rewin_e_minperroll, dbo.incent__.rewin_e_prepmin, 
                         dbo.incent__.spool_a_spools, dbo.incent__.spool_e_minperspool, dbo.incent__.spool_e_prepmin, dbo.incent__.rewin_t_met, dbo.incent__.rewin_w_met, dbo.incent__.rewin___met
FROM            dbo.incente_ INNER JOIN
                         dbo.incent__ ON dbo.incente_.ord__ref = dbo.incent__.ord__ref INNER JOIN
                         dbo.werkpo__ ON dbo.incente_.wp___ref = dbo.werkpo__.wp___ref
' 
