SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_CommercializationPlanINSERT] AS' 
END
-- =============================================
-- Author:		Jeff
-- Create date: 6/27/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_CommercializationPlanINSERT]
	-- Add the parameters for the stored procedure here
	@CommercializationPlanID int OUTPUT,
	@stlPDI_ID int,
	@ProductDescription nvarchar(255),
	@Size_WxL nvarchar(255),
	@Material nvarchar(255),
	@FinishingPackaging nvarchar(255)
AS

BEGIN TRANSACTION

	BEGIN TRY

    INSERT INTO stlPDI_CommercializationPlan (stlPDI_ID, ProductDescription, Size_WxL, Material, FinishingPackaging)
	VALUES (@stlPDI_ID, @ProductDescription, @Size_WxL, @Material, @FinishingPackaging);

	SELECT @CommercializationPlanID = SCOPE_IDENTITY();

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

