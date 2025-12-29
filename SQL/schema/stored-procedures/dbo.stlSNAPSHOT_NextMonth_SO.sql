SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNAPSHOT_NextMonth_SO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_SO] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 05/24/2022
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_SO]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	DECLARE @next_BOM DATETIME,
			@next_EOM DATETIME;

	SELECT @next_BOM = DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
	SELECT @next_EOM = DATEADD(SECOND, -1, DATEADD(MONTH, 1, @next_BOM));

	DELETE FROM stlSnapShot_SO 
	WHERE YEAR(AsOf) = YEAR(GETDATE()) AND MONTH(AsOf) = MONTH(GETDATE());
	--WHERE vrzv_dat BETWEEN @next_BOM AND @next_EOM;

	INSERT INTO stlSnapShot_SO
	(
		lyn__ref, bstvlgnr, afg__ref, afg__rpn, afg2_ref, versiref, zynrefkl, afg_oms1, afg_oms2, kla__ref, kla__rpn, knp__ref, vrt__ref, ktrk_ref, afr__ref, munt_ref, aant_dec, koers___, kitlynrf, soortkit, orilynrf, root_lyn__ref, 
		parent_lyn__ref, crea_dat, crea_uur, off1_ref, prod_off, prod_com, korting_, btw_beh_, betk_ref, betw_ref, lyn__srt, bst__ref, bst__bon, bsbn_kla, bsbn_kl2, bst__url, bst__dat, bst__uur, bst__com, b_aantal, beaantal, prys_srt, 
		prys_typ, prys_tst, prys_com, pr_excl_, preexcl_, preexclv, pr_incl_, proexcl_, proexclv, pr_exclv, pr_inclv, btw__ref, bedr__bm, bedr__vm, bedro_bm, bedro_vm, prysvast, fac_eenh, vpakvast, vpak_ref, aant__e2, aant__e3, 
		aant__e4, aant__e5, ord__ref, vrs__ref, akplynrf, lvb__ref, lbn__ref, lev__com, lbn__com, levvwref, leverkod, l_aantal, lant_min, lant_max, ltol_min, ltol_max, vrz__tst, laad_tst, annul___, lev__tst, vrzv_dat, vrzv_uur, levv_dat, 
		levv_uur, levb_dat, levb_uur, vrz__dat, vrz__uur, lev__dat, lev__uur, levtrcom, vrzvodat, vrzvouur, levvodat, levvouur, vrzvbdat, vrzvbuur, levvbdat, levvbuur, trn__srt, lok__ref, knplkref, trn__ref, trnt_ref, trsp_dgn, trsp_urn, 
		trsp_typ, trng_ref, lev__ref, lev__rpn, aant_pak, aant_pal, b_antpak, b_antpal, l_antpak, l_antpal, extgew__, b_netto_, b_tarra_, l_tarra_, kolom_6_, kolom_7_, kolom_8_, kolom_9_, kolom_10, kolom_11, koloma11, koloma12, 
		kolom_13, gwstintr, fmd__ref, fac__tst, fac__wyz, fac__typ, fac__grp, fac__com, fkla_ref, knpfcref, arek_ref, f_aantal, bedrf_bm, bedrf_vm, dgbk_ref, dossier_, fak__ref, dok__dat, bkj__ref, peri_ref, wp___ref, ksrt_ref, bst__lay, 
		uit__lay, lvb__lay, lvb___ex, stafprys, p_aantal, ord__grp, crea_ori, job__inl, jobnredi, jobnrvrz, fiat____, flok_ref, flknpref, user____, supervis, betd__vm, betdmeth, betd_dat, betd_uur, betd_tid, betdcard, betd_kla, betd_com, 
		betdf_bm, betdf_vm, tstval01, tstval02, tstval03, tstval04, tstval05, tstval06, tstval07, tstval08, tstval09, tstval10, webshopid, land_productie, btw_nr_klant, betw_srt, crea_usr, jobnr_archive, last_edit_time, last_edit_usr, rowid
	)
	SELECT 
		lyn__ref, bstvlgnr, afg__ref, afg__rpn, afg2_ref, versiref, zynrefkl, afg_oms1, afg_oms2, kla__ref, kla__rpn, knp__ref, vrt__ref, ktrk_ref, afr__ref, munt_ref, aant_dec, koers___, kitlynrf, soortkit, orilynrf, root_lyn__ref, 
		parent_lyn__ref, crea_dat, crea_uur, off1_ref, prod_off, prod_com, korting_, btw_beh_, betk_ref, betw_ref, lyn__srt, bst__ref, bst__bon, bsbn_kla, bsbn_kl2, bst__url, bst__dat, bst__uur, bst__com, b_aantal, beaantal, prys_srt, 
		prys_typ, prys_tst, prys_com, pr_excl_, preexcl_, preexclv, pr_incl_, proexcl_, proexclv, pr_exclv, pr_inclv, btw__ref, bedr__bm, bedr__vm, bedro_bm, bedro_vm, prysvast, fac_eenh, vpakvast, vpak_ref, aant__e2, aant__e3, 
		aant__e4, aant__e5, ord__ref, vrs__ref, akplynrf, lvb__ref, lbn__ref, lev__com, lbn__com, levvwref, leverkod, l_aantal, lant_min, lant_max, ltol_min, ltol_max, vrz__tst, laad_tst, annul___, lev__tst, vrzv_dat, vrzv_uur, levv_dat, 
		levv_uur, levb_dat, levb_uur, vrz__dat, vrz__uur, lev__dat, lev__uur, levtrcom, vrzvodat, vrzvouur, levvodat, levvouur, vrzvbdat, vrzvbuur, levvbdat, levvbuur, trn__srt, lok__ref, knplkref, trn__ref, trnt_ref, trsp_dgn, trsp_urn, 
		trsp_typ, trng_ref, lev__ref, lev__rpn, aant_pak, aant_pal, b_antpak, b_antpal, l_antpak, l_antpal, extgew__, b_netto_, b_tarra_, l_tarra_, kolom_6_, kolom_7_, kolom_8_, kolom_9_, kolom_10, kolom_11, koloma11, koloma12, 
		kolom_13, gwstintr, fmd__ref, fac__tst, fac__wyz, fac__typ, fac__grp, fac__com, fkla_ref, knpfcref, arek_ref, f_aantal, bedrf_bm, bedrf_vm, dgbk_ref, dossier_, fak__ref, dok__dat, bkj__ref, peri_ref, wp___ref, ksrt_ref, bst__lay, 
		uit__lay, lvb__lay, lvb___ex, stafprys, p_aantal, ord__grp, crea_ori, job__inl, jobnredi, jobnrvrz, fiat____, flok_ref, flknpref, user____, supervis, betd__vm, betdmeth, betd_dat, betd_uur, betd_tid, betdcard, betd_kla, betd_com, 
		betdf_bm, betdf_vm, tstval01, tstval02, tstval03, tstval04, tstval05, tstval06, tstval07, tstval08, tstval09, tstval10, webshopid, land_productie, btw_nr_klant, betw_srt, crea_usr, jobnr_archive, last_edit_time, last_edit_usr, rowid
	FROM bstlyn__
	WHERE kla__ref NOT IN ('100208')  
	AND vrz__tst >= '0' AND bstlyn__.vrz__tst <= 'N'
	AND vrzv_dat BETWEEN @next_BOM AND @next_EOM;

	END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

