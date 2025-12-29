SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STLDeleteTrackingNumber]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[STLDeleteTrackingNumber] AS' 
END
-- =============================================

-- =============================================
ALTER PROCEDURE [dbo].[STLDeleteTrackingNumber]
    @TrackingNumber nvarchar(50)
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @bstext__Count int
		DECLARE @lyn__ref nvarchar(10)
		
		BEGIN TRY
			update bstext__ set tekst_02 = '' where tekst_02 = @TrackingNumber;
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


