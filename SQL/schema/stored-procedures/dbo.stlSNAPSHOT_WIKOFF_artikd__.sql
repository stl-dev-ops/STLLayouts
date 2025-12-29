SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNAPSHOT_WIKOFF_artikd__]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNAPSHOT_WIKOFF_artikd__] AS' 
END




-- =============================================
-- Author:		jeff rupp
-- Create date: 08/17/2022
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlSNAPSHOT_WIKOFF_artikd__]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

		INSERT INTO [dbo].[stlSnapShot_artikd__WIKOFF]
		(
				artd_ref, art__srt, art__ref, zyn__ref, in_stock, in___qrt, vak__ref, vaks_ref, vak2_ref, pal__ref, tst__qrt, jobnr_vw, levr_vnr, levdat__, 
				levuur__, besteld_, komment_, komm_qrt, jobnrlev, plpl_ref, ord__ref, nakprijs, validdat, joins___, core____, face____, rowid		   
		)
		 SELECT artd_ref, art__srt, art__ref, zyn__ref, in_stock, in___qrt, vak__ref, vaks_ref, vak2_ref, pal__ref, tst__qrt, jobnr_vw, levr_vnr, levdat__, 
				levuur__, besteld_, komment_, komm_qrt, jobnrlev, plpl_ref, ord__ref, nakprijs, validdat, joins___, core____, face____, rowid
		 FROM artikd__
		 WHERE art__ref IN (SELECT art__ref FROM artiky__ WHERE lev__ref = '200118' )

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

