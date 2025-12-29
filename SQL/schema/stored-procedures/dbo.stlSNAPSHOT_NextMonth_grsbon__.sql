SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNAPSHOT_NextMonth_grsbon__]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_grsbon__] AS' 
END




-- =============================================
-- Author:		jeff rupp
-- Create date: 03/10/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_grsbon__]
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

	DELETE FROM stlSnapShot_EOM_grsbon__
	WHERE YEAR(AsOf) = YEAR(GETDATE()) AND MONTH(AsOf) = MONTH(GETDATE());
	--WHERE glev_dat BETWEEN @next_BOM AND @next_EOM;

	INSERT INTO stlSnapShot_EOM_grsbon__
	(
		grbonref, grs__vnr, compl___, lev__tst, fac__tst, ord__ref, suborder, grs__com, grs_com2, art__ref, art_oms2, zyn__ref, art__srt, art__typ, lev__ref, lev__rpn, glev_dat, glev_uur, glevodat, glevouur, levr_dat, levr_uur, 
		gvrz_dat, gvrz_uur, gvrzodat, gvrzouur, vrz__dat, vrz__uur, elecbest, trn__ref, trnt_ref, aniv1ref, aniv2ref, aniv3ref, fiat__ok, fiat_dat, fiat_uur, fiat_usr, fiat_com, fiat_num, tstval01, tstval02, tstval03, tstval04, tstval05, gaant___, 
		gaant_kg, laant___, laant_kg, faant___, faant_kg, pak__oms, pak__inh, munt_ref, aant_dec, koers___, drg_prys, bpri__vm, bpri__bm, bpri__om, bprik_vm, bprik_bm, bprik_om, fpri__vm, fpri__bm, fpri__om, fprik_vm, fprik_bm, 
		fprik_om, totfp_vm, totfp_bm, totfp_om, teofk_bm, fprto2vm, fprto2bm, fprto2om, totbp_bm, totbp_vm, totlp_bm, totlp_vm, aktr_ref, volgnr__, salesgroup_id, rowid, tstval06, tstval07, tstval08, tstval09, tstval10, tstval11, tstval12, 
		tstval13, tstval14, tstval15, tstval16, tstval17, tstval18, tstval19, tstval20
	)
	SELECT grbonref, grs__vnr, compl___, lev__tst, fac__tst, ord__ref, suborder, grs__com, grs_com2, art__ref, art_oms2, zyn__ref, art__srt, art__typ, lev__ref, lev__rpn, glev_dat, glev_uur, glevodat, glevouur, levr_dat, levr_uur, 
            gvrz_dat, gvrz_uur, gvrzodat, gvrzouur, vrz__dat, vrz__uur, elecbest, trn__ref, trnt_ref, aniv1ref, aniv2ref, aniv3ref, fiat__ok, fiat_dat, fiat_uur, fiat_usr, fiat_com, fiat_num, tstval01, tstval02, tstval03, tstval04, tstval05, gaant___, 
            gaant_kg, laant___, laant_kg, faant___, faant_kg, pak__oms, pak__inh, munt_ref, aant_dec, koers___, drg_prys, bpri__vm, bpri__bm, bpri__om, bprik_vm, bprik_bm, bprik_om, fpri__vm, fpri__bm, fpri__om, fprik_vm, fprik_bm, 
            fprik_om, totfp_vm, totfp_bm, totfp_om, teofk_bm, fprto2vm, fprto2bm, fprto2om, totbp_bm, totbp_vm, totlp_bm, totlp_vm, aktr_ref, volgnr__, salesgroup_id, rowid, tstval06, tstval07, tstval08, tstval09, tstval10, tstval11, tstval12, 
            tstval13, tstval14, tstval15, tstval16, tstval17, tstval18, tstval19, tstval20
	FROM grsbon__
	WHERE glev_dat BETWEEN @next_BOM AND @next_EOM; 

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

