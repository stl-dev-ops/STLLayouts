SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_incent__]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_incent__
AS
SELECT     ord__ref, datum___ AS datefrom, datum___ AS dateto, kla__ref, kla__rpn, omschr__, oplage__, prkl_ref, prd__ref, pro_tdesc, pro_gdesc, ityp, press_e_min, 
                      press_a_min, press_t_dif, rewin_e_min, rewin_a_min, rewin_t_dif, spool_e_min, spool_a_min, spool_t_dif, coati_e_min, coati_a_min, coati_t_dif, cohes_e_min, 
                      cohes_a_min, cohes_t_dif, shipi_e_min, shipi_a_min, shipi_t_dif, press_et_feet, press_eg_feet, press_eb_feet, press_ew_prc, press_at_ft01, press_at_ft02, 
                      press_at_feet, press_ag_ft01, press_ag_ft02, press_ag_feet, press_ab_ft01, press_ab_ft02, press_ab_feet, press_aw_prc, rewin_et_feet, rewin_eg_feet, 
                      rewin_eb_feet, rewin_ew_prc, rewin_stl_in, rewin_stl_p_in, rewin_at_feet, rewin_ag_feet, rewin_ab_feet, rewin_aw_prc, spool_et_feet, spool_eg_feet, spool_eb_feet, 
                      spool_ew_prc, spool_stl_in, spool_stl_p_in, spool_at_feet, spool_ag_feet, spool_ab_feet, spool_aw_prc, coati_et_feet, coati_eg_feet, coati_eb_feet, coati_ew_prc, 
                      coati_at_feet, coati_ag_feet, coati_ab_feet, coati_aw_prc, cohes_et_feet, cohes_eg_feet, cohes_eb_feet, cohes_ew_prc, cohes_at_feet, cohes_ag_feet, cohes_ab_feet,
                       cohes_aw_prc, shipi_ordered, shipi_shipped, shipi_dif, etiket_h, etiket_b, tssnaf_b, tssnaf_h, aantal_b, aantal_h, tedrkd__, spoolJobID, press_t_met, press_w_met, 
                      press___met, rewin_t_met, rewin_w_met, rewin___met, spool_t_met, spool_w_met, spool___met, coati_t_met, coati_w_met, coati___met, cohes_t_met, cohes_w_met,
                       cohes___met, shipi_t_met, shipi_w_met, shipi___met, shippedfull, trn__srt, press_consumed_feet, press_sfg_total_feet, press_sfg_good_feet, 
                      press_st_processed_good_feet, press_st_bad_feet, press_st_remaining_good_feet, produced_lbls, produced_lbls_vs_ordered, locked, lastUpdate, press_break_min, 
                      press_job_min, rewin_break_min, rewin_job_min, spool_break_min, spool_job_min, coati_break_min, coati_job_min, cohes_break_min, cohes_job_min, 
                      shipi_break_min, shipi_job_min, exception
FROM         dbo.incent__
' 
