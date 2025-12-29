SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNAPSHOT_NextMonth_Schedule]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_Schedule] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 05/24/2022
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlSNAPSHOT_NextMonth_Schedule]
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

	DELETE FROM stlSnapShot_SCH
	WHERE YEAR(AsOf) = YEAR(GETDATE()) AND MONTH(AsOf) = MONTH(GETDATE());
	--WHERE datum___ BETWEEN @next_BOM AND @next_EOM;

	INSERT INTO stlSnapShot_SCH
	(
		Est_COGs, pldv_ref, ord__ref, suborder, kpn__ref, dg___ref, aktie___, priorite, druk____, toestand, plan__iu, wp___ref, akt__ref, plpl_ref, plpl_cal, aantal__, duur____, duurstel, duurprod, wissels_, pln_tm__, pln_dt__, pln_dd__, 
		komment_, komment1, komment2, komment3, komment4, datum___, start___, datumend, stop____, weeknum_, planvast, dat__min, sta__min, dat__max, sta__max, valide__, pmd__ref, wn___ref, kla__ref, kla__rpn, orgdatum, 
		orgstart, af__date, af__uur_, af__user, af__wyze, af__duur, jobnr_vw, rowid
	)
	SELECT
		Estimated_COGs = (SELECT SUM(papier__ + grdvb___) FROM v4kkst__ WHERE off__ref = ord__ref),
		pldv_ref, ord__ref, suborder, kpn__ref, dg___ref, aktie___, priorite, druk____, toestand, plan__iu, wp___ref, akt__ref, plpl_ref, plpl_cal, aantal__, duur____, duurstel, duurprod, wissels_, pln_tm__, pln_dt__, pln_dd__, komment_,
		komment1, komment2, komment3, komment4, datum___, start___, datumend, stop____, weeknum_, planvast, dat__min, sta__min, dat__max, sta__max, valide__, pmd__ref, wn___ref, kla__ref, kla__rpn, orgdatum, orgstart, 
		af__date, af__uur_, af__user, af__wyze, af__duur, jobnr_vw, rowid
	FROM 
	(
		SELECT TOP 1 WITH TIES *
		FROM plandv__ 
		WHERE ord__ref NOT IN ( '', 'N') AND toestand <> '3' AND plpl_ref IN ('A10', 'B2', 'F16', 'AZTEC', 'COATING', 'COHESIO', 'MINI_COHESIO', 'ROTO_1', 'ROTO_2', 'ROTO_3', 'ROTO_4')
		ORDER BY ROW_NUMBER() OVER (PARTITION BY ord__ref ORDER BY datum___, start___)
	) Jobs_exp_starts_with_costs
	WHERE datum___ BETWEEN @next_BOM AND @next_EOM; 

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

