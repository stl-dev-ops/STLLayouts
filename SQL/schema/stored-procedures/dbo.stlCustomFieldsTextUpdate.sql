SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomFieldsTextUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCustomFieldsTextUpdate] AS' 
END

-- =============================================
-- Author:		Jeff Rupp
-- Create date: 9/28/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlCustomFieldsTextUpdate]
    @tabname_ nvarchar(100), /* artiky__, afgart__, order___, etc */
	@det__ref nvarchar(15),  /* art__ref, afg__ref, ord__ref, etc */
	@vrg__ref nvarchar(6),   /* Question ID */
	@antw_txt nvarchar(255)
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		 
		DECLARE @ExistingRecordCount int
		
		BEGIN TRY
			SELECT @ExistingRecordCount = (SELECT COUNT(antw_txt) FROM gegdet__ WHERE det__ref = @det__ref AND tabname_ = @tabname_ AND vrg__ref = @vrg__ref);

			IF @ExistingRecordCount = 0
				BEGIN
					INSERT INTO gegdet__ (tabname_, det__ref, vrg__ref, antw_txt)
					VALUES (@tabname_, @det__ref, @vrg__ref, @antw_txt) 
				END
			ELSE
				BEGIN
					UPDATE gegdet__ 
					SET antw_txt = @antw_txt 
					WHERE det__ref = @det__ref AND tabname_ = @tabname_ AND vrg__ref = @vrg__ref
				END

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


