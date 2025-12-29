SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQPCohesio_QuoteUpdate] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 04/20/2023
-- Description:	COHESIO Quick Price Update
-- =============================================
ALTER PROCEDURE [dbo].[stlQPCohesio_QuoteUpdate]
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@Customer nvarchar(255),
	@vrt__ref nvarchar(6),
	@QuoteDescription nvarchar(255),
	@ProductDescription nvarchar(255),
	@InternalNotes nvarchar(MAX),

	@PricingApproved tinyint,
	@PricingNotes nvarchar(MAX),

	@QuoteLetterNotes nvarchar(MAX),

	@WidthAcross float,
    @GapAcross float,
    @RepeatAcross float,
    @LengthAround float,
    @GapAround float,
    @RepeatAround float,
    @LabelsPerRoll int,

	@NumberAcross int,
    @TrimWaste float,
    @CostPerHour float,
	@PDD_Cost float,
    @RewindWastePercent float,
    @ColorCodeExtraWasteFeetPerPass float,
    @ColorCodeExtraMR_MinutesPerPass int,
    @ColorCodeWasteFeetPercentPerPass float,
    @ColorCodeWashingMinutesPerPass int,
	@InvoiceStyleID int 
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	UPDATE stlQPCohesio_Quotes 
	SET Customer           = @Customer,
	    vrt__ref		   = @vrt__ref,
	    QuoteDescription   = @QuoteDescription,
		ProductDescription = @ProductDescription,
		InvoiceStyleID	   = @InvoiceStyleID,
		PricingApproved    = @PricingApproved,
		Updated            = GETDATE(),
		UpdatedBy          = SUSER_SNAME()
	WHERE ID = @QuoteID;

	UPDATE stlQPCohesio_QuoteNotes SET Deleted = 1 WHERE QuoteID = @QuoteID;
	IF LEN(@InternalNotes) > 0
		BEGIN
		INSERT INTO stlQPCohesio_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'internal', @InternalNotes)
		END
	IF (LEN(@PricingNotes)) > 0
		BEGIN
		INSERT INTO stlQPCohesio_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'pricing', @PricingNotes)
		END
	IF LEN(@QuoteLetterNotes) > 0
		BEGIN
		INSERT INTO stlQPCohesio_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'quoteletter', @QuoteLetterNotes)
		END


	UPDATE stlQPCohesio_Label SET Deleted = 1 WHERE QuoteID = @QuoteID;

	INSERT INTO stlQPCohesio_Label (QuoteID, WidthAcross, GapAcross, RepeatAcross, LengthAround, GapAround, RepeatAround, LabelsPerRoll)
	VALUES (@QuoteID, @WidthAcross, @GapAcross, @RepeatAcross, @LengthAround, @GapAround, @RepeatAround, @LabelsPerRoll);

	UPDATE stlQPCohesio_ProductionDetails SET Deleted = 1 WHERE QuoteID = @QuoteID;

	INSERT INTO stlQPCohesio_ProductionDetails (QuoteID, NumberAcross, TrimWaste, CostPerHour, PDD_Cost, RewindWastePercent, ColorCodeExtraWasteFeetPerPass, ColorCodeExtraMR_MinutesPerPass, ColorCodeWasteFeetPercentPerPass, ColorCodeWashingMinutesPerPass)
	VALUES (@QuoteID, @NumberAcross, @TrimWaste, @CostPerHour, @PDD_Cost, @RewindWastePercent, @ColorCodeExtraWasteFeetPerPass, @ColorCodeExtraMR_MinutesPerPass, @ColorCodeWasteFeetPercentPerPass, @ColorCodeWashingMinutesPerPass);

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

