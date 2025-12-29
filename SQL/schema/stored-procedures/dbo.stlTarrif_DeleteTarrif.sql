SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTarrif_DeleteTarrif]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlTarrif_DeleteTarrif] AS' 
END

-- =============================================

-- =============================================
ALTER PROCEDURE [dbo].[stlTarrif_DeleteTarrif]
    @bon__ref nvarchar(6)
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		
		BEGIN TRY
			DELETE 
			FROM v1tar___ 
			WHERE bon__ref = @bon__ref

			DELETE 
			FROM v1tar_definition__ 
			WHERE bon__ref = @bon__ref
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


