SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InlineFinishingInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQPCohesio_InlineFinishingInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 04/20/2023
-- Description:	Cohesio Quick Price Inline Finishing Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQPCohesio_InlineFinishingInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@prs__ref nvarchar(4),
	@PassNumber int,
    @MaterialDescription nvarchar(255),
    @etap_ref nvarchar(7),
    @ExtraMRMinutes int,
    @ExtraWasteFeet int,
    @InlineSupplWastePercent float,
    @art__ref nvarchar(15),
    @MSICost float
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQPCohesio_InlineFinishing (QuoteID, prs__ref, PassNumber, MaterialDescription, etap_ref, ExtraMRMinutes, ExtraWasteFeet, InlineSupplWastePercent, art__ref, MSICost)
	VALUES (@QuoteID, @prs__ref, @PassNumber, @MaterialDescription, @etap_ref, @ExtraMRMinutes, @ExtraWasteFeet, @InlineSupplWastePercent, @art__ref, @MSICost);

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

