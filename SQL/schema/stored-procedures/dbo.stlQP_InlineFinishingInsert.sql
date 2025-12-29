SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_InlineFinishingInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQP_InlineFinishingInsert] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 07/26/2021
-- Description:	Quick Price Inline Finishing Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQP_InlineFinishingInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@etap_ref nvarchar(7), 
	@omschr__ nvarchar(100), 
	@Comment nvarchar(100),
	@drg__ref nvarchar(6),
	@LaminateKeyword nvarchar(10), 
	@LaminateMSI_Cost float, 
	@arth_ref nvarchar(10), 
	@WasteFeet int, 
	@ExtraMakeReady int
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQP_InlineFinishings (QuoteID, etap_ref, omschr__, Comment, drg__ref, LaminateKeyword, LaminateMSI_Cost, arth_ref, WasteFeet, ExtraMakeReady)
	VALUES (@QuoteID, @etap_ref, @omschr__, @Comment, @drg__ref, @LaminateKeyword, @LaminateMSI_Cost, @arth_ref, @WasteFeet, @ExtraMakeReady);

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
