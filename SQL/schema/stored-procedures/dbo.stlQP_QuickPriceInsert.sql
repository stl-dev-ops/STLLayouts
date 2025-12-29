SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuickPriceInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQP_QuickPriceInsert] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 07/26/2021
-- Description:	Quick Price Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQP_QuickPriceInsert]
	-- Add the parameters for the stored procedure here
	@QuoteID int OUTPUT,
	@kla__ref nvarchar(6),
	@knp__ref nvarchar(3),
	@vrt__ref nvarchar(6),
	@ReferenceAtCustomer nvarchar(255),
	@Description nvarchar(1000),
	@ParameterID int,
	@FaceSheetMaterialTypeID int, 
	@drg__ref nvarchar(6),
	@art__ref nvarchar(6),
	@drg__rpn nvarchar(17),
	@prys__m2 float,
	@Ink tinyint,
	@AdhesiveTypeID int, 
	@AggressiveAdhesive tinyint, 
    @PreventLabelLift tinyint,
    @HardToBondSurface tinyint,
    @TestingRequired tinyint,
	@LinerMaterialTypeID int, 
	@Millimeters tinyint, 
	@stns_ref nvarchar(10), 
	@stn_vorm nchar(1),
	@WidthAcross float, 
	@GapAcross float, 
	@LengthAround float, 
	@GapAround float, 
	@LabelsPerRoll int, 
	@NumberAcross int, 
	@WebWidth float, 
	@vpak_ref nvarchar(3),
	@CardTypeID int,
	@ClearBorder int,
	@FullBleed int, 
	@Leaders nvarchar(50),
	@CoreSize float,
	@InvoiceStyleID int,
	@InternalNotes nvarchar(MAX),
	@PricingApproved tinyint,
	@NotReplacingProduct tinyint,
	@PricingNotes nvarchar(MAX),
	@QuoteLetterNotes nvarchar(MAX),
	@prs__ref nvarchar(4),
	@prfm_ref nvarchar(10)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQP_Quotes (kla__ref, knp__ref, vrt__ref, ReferenceAtCustomer, QuoteDescription, ParameterID, InvoiceStyleID, PricingApproved, NotReplacingProduct, prfm_ref)
	VALUES	(@kla__ref, @knp__ref, @vrt__ref, @ReferenceAtCustomer, @Description, @ParameterID, @InvoiceStyleID, @PricingApproved, @NotReplacingProduct, @prfm_ref)

	SELECT @QuoteID = SCOPE_IDENTITY();

	IF LEN(@InternalNotes) > 0
		BEGIN
		INSERT INTO stlQP_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'internal', @InternalNotes)
		END
	IF LEN(@PricingNotes) > 0
		BEGIN
		INSERT INTO stlQP_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'pricing', @PricingNotes)
		END
	IF LEN(@QuoteLetterNotes) > 0
		BEGIN
		INSERT INTO stlQP_QuoteNotes (QuoteID, NoteType, Notes)
		VALUES (@QuoteID, 'quoteletter', @QuoteLetterNotes)
		END

	INSERT INTO stlQP_Label(QuoteID, FaceSheetMaterialTypeID, drg__ref, art__ref, drg__rpn, prys__m2, Ink, AdhesiveTypeID, AggressiveAdhesive, PreventLabelLift, HardToBondSurface, TestingRequired, LinerMaterialTypeID, Millimeters, stns_ref, stn_vorm, WidthAcross, GapAcross, LengthAround, GapAround, LabelsPerRoll, NumberAcross, WebWidth, vpak_ref, CardTypeID, ClearBorder, FullBleed, Leaders, CoreSize, prs__ref)
	VALUES (@QuoteID, @FaceSheetMaterialTypeID, @drg__ref, @art__ref, @drg__rpn, @prys__m2, @Ink, @AdhesiveTypeID, @AggressiveAdhesive, @PreventLabelLift, @HardToBondSurface, @TestingRequired, @LinerMaterialTypeID, @Millimeters, @stns_ref, @stn_vorm, @WidthAcross, @GapAcross, @LengthAround, @GapAround, @LabelsPerRoll, @NumberAcross, @WebWidth, @vpak_ref, @CardTypeID, @ClearBorder, @FullBleed, @Leaders, @CoreSize, @prs__ref)

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
