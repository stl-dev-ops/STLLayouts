SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_GraduatedCalculationInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQPCohesio_GraduatedCalculationInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 04/20/2023
-- Description:	Cohesio Quick Price Graduated Calculation Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQPCohesio_GraduatedCalculationInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int, 
	@Quantity int, 
	@AdminCost float, 
	@MaterialCost float, 
	@InkCost float, 
	@TotalCOG float, 
	@PDD_Cost float, 
	@TotalCost float, 
	@NumberOfRolls float, 
	@PricePer1000 float, 
	@PricePerRoll float, 
	@TotalSale float, 
	@MarginPercent float, 
	@COGPercent float, 
	@ExactFeet float, 
	@PrintMSI float, 
	@ColorCodeWasteFeet float, 
	@JobWasteFeet float, 
	@RollChangeWasteFeet float, 
	@InlineFinishingWasteFeet float, 
	@InlineSupplWasteFeet float, 
	@ShiftStartupFeet float,
	@TotalFeet float, 
	@MR_ColorCodeHours float, 
	@SetupHours float, 
	@ShiftStartupHours float,
	@RunHours float, 
	@InlineExtraMRHours float, 
	@ColorCodeWashHours float, 
	@TotalHours float
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQPCohesio_GraduatedCalculations (
		QuoteID, Quantity, AdminCost, MaterialCost, InkCost, TotalCOG, PDD_Cost, TotalCost, NumberOfRolls, PricePer1000, PricePerRoll, 
		TotalSale, MarginPercent, COGPercent, ExactFeet, PrintMSI, ColorCodeWasteFeet, JobWasteFeet, RollChangeWasteFeet, InlineFinishingWasteFeet, 
		InlineSupplWasteFeet, ShiftStartupFeet, TotalFeet, MR_ColorCodeHours, SetupHours, ShiftStartupHours, RunHours, InlineExtraMRHours, ColorCodeWashHours, TotalHours)
	VALUES (@QuoteID, @Quantity, @AdminCost, @MaterialCost, @InkCost, @TotalCOG, @PDD_Cost, @TotalCost, @NumberOfRolls, @PricePer1000, @PricePerRoll, 
		@TotalSale, @MarginPercent, @COGPercent, @ExactFeet, @PrintMSI, @ColorCodeWasteFeet, @JobWasteFeet, @RollChangeWasteFeet, @InlineFinishingWasteFeet, 
		@InlineSupplWasteFeet, @ShiftStartupFeet, @TotalFeet, @MR_ColorCodeHours, @SetupHours, @ShiftStartupHours, @RunHours, @InlineExtraMRHours, @ColorCodeWashHours, @TotalHours);


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

