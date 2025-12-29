SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculationInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQP_GraduatedCalculationInsert] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 07/26/2021
-- Description:	Quick Price Graduated Calculation Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQP_GraduatedCalculationInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@RunQuantity int, 
	@Copies int, 
	@Margin_Percent float, 
	@MarkUp_Percent float,
	@COG_Percent float, 
	@BaseRunFeet float, 
	@BaseRunWasteFeet float, 
	@OfflineFinishingMakeReadyFeet float, 
	@OfflineFinishingWasteFeet float, 
	@InlineMakeReadyTime float,
	@InlineFinishingWasteFeet float, 
    @TotalShiftChangesFeet float, 
	@TotalJobFeet float, 
	@BaseRunTime float, 
	@RollChangesTime float, 
	@ExpectedShiftChanges float, 
	@ShiftStartupsTime float, 
	@TotalJobTime float, 
	@TotalPDD float, 
	@TotalINK_Cost float, 
	@TotalMaterialCost float, 
	@TotalCOG float, 
	@AdminCost float, 
	@BaseCost float, 
	@TotalPrice float, 
    @PricePer1000 float,
	@PriceLockID int,
	@ShowOnQuoteLetter tinyint
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQP_GraduatedCalculations (QuoteID, RunQuantity, Copies, Margin_Percent, MarkUp_Percent, COG_Percent, BaseRunFeet, BaseRunWasteFeet, OfflineFinishingMakeReadyFeet, 
			OfflineFinishingWasteFeet, InlineMakeReadyTime, InlineFinishingWasteFeet, TotalShiftChangesFeet, TotalJobFeet, BaseRunTime, RollChangesTime, ExpectedShiftChanges, 
			ShiftStartupsTime, TotalJobTime, TotalPDD, TotalINK_Cost, TotalMaterialCost, TotalCOG, AdminCost, BaseCost, TotalPrice, PricePer1000, PriceLockID, ShowOnQuoteLetter)
	VALUES (@QuoteID, @RunQuantity, @Copies, @Margin_Percent, @MarkUp_Percent, @COG_Percent, @BaseRunFeet, @BaseRunWasteFeet, @OfflineFinishingMakeReadyFeet, @OfflineFinishingWasteFeet, 
			@InlineMakeReadyTime, @InlineFinishingWasteFeet, @TotalShiftChangesFeet, @TotalJobFeet, @BaseRunTime, @RollChangesTime, @ExpectedShiftChanges, @ShiftStartupsTime, 
			@TotalJobTime, @TotalPDD, @TotalINK_Cost, @TotalMaterialCost, @TotalCOG, @AdminCost, @BaseCost, @TotalPrice, @PricePer1000, @PriceLockID, @ShowOnQuoteLetter);

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
