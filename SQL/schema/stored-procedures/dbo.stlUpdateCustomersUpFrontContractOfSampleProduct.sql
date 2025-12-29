SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateCustomersUpFrontContractOfSampleProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateCustomersUpFrontContractOfSampleProduct] AS' 
END

-- =============================================
-- Author:		Jeff
-- Create date: <Create Date,,>
-- Description:	bstext__.tekst_30 tracks customer's Up Front Contract for when they will test samples
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateCustomersUpFrontContractOfSampleProduct]
	-- Add the parameters for the stored procedure here
	@lyn__ref nvarchar(10), 
	@Up_Front_Contract_Date nvarchar(10) 
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @bstext__Count int
		
		BEGIN TRY

			SELECT @bstext__Count = (select COUNT(lyn__ref) from stlSamplesSent where lyn__ref = @lyn__ref);
			
			IF @bstext__Count = 0
			BEGIN
				--Have to create the bstext__ record
				INSERT INTO stlSamplesSent (lyn__ref, UpFrontContractDate) 
				VALUES (@lyn__ref, @Up_Front_Contract_Date);
			END
			ELSE
			BEGIN
				UPDATE stlSamplesSent 
				SET UpFrontContractDate = @Up_Front_Contract_Date 
				WHERE lyn__ref = @lyn__ref;
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



