SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovementINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_ProductDevelopmentOrImprovementINSERT] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 08/09/2021
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_ProductDevelopmentOrImprovementINSERT]
	-- Add the parameters for the stored procedure here
	@stlPDI_ID int OUTPUT,
	@ProjectID nvarchar(50),
	@vrt__ref nvarchar(6),
	@DevelopmentTypeID tinyint,
	@DriverID tinyint,
	@Description nvarchar(255),
	@afg__ref nvarchar(6),
	@ProblemToSolve nvarchar(1000),
	@ProductPurpose nvarchar(1000),
	@SalesSourceID tinyint,
	@SalesPrice decimal(19,2), 
	@SalesPriceUnitID int,
	@SalesVolume int,
	@SalesVolumeUnitID int,

	@SalesVolumeInitial decimal(19,2), 
	@ChanceOfObtainingInitial decimal(19,2), 

	@SalesVolumeAfter1Year decimal(19,2), 
	@ChanceOfObtainingAfter1Year decimal(19,2), 
	@SalesVolumeAfter2Year decimal(19,2), 
	@ChanceOfObtainingAfter2Year decimal(19,2),

	@ReplacedSalesVolumeInitial decimal(19,2), 
	@ReplacedChanceOfObtainingInitial decimal(19,2), 
	@ReplacedSalesVolumeAfter1Year decimal(19,2), 
	@ReplacedChanceOfObtainingAfter1Year decimal(19,2), 
	@ReplacedSalesVolumeAfter2Year decimal(19,2), 
	@ReplacedChanceOfObtainingAfter2Year decimal(19,2),

	@DeadlineForCompletion nvarchar(10), 
	@PhaseID int,
	@RawGoodsToolingDeliverBy nvarchar(10), 
	@DeadlineForCompletionNotes nvarchar(1000),
	@NextUpdateBy nvarchar(10),
	@BudgetDate nvarchar(10),
	@BudgetNotes nvarchar(1000),
	@MachineCost int, 
	@NoOfTimesToMachine int, 
	@HoursPerTime decimal(19,2),
	@BudgetSourceID int,
	@BudgetPercent decimal(5,2),
	@CompletionNotes nvarchar(1000),
	@ProjectStatusID nvarchar(2),
	@ReadyForMarketingID nvarchar(2),
	@FutureCustomers nvarchar(1000),
	@ManagerID nvarchar(6)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION
	DECLARE @_DevelopmentTypeID tinyint,
		    @_DriverID tinyint,
			@_vrt__ref nvarchar(6),
			@_afg__ref nvarchar(6),
			@_SalesSourceID tinyint,
			@_DeadlineForCompletion datetime,
			@_PhaseID int,
			@_NextUpdateBy datetime,
			@_BudgetDate datetime,
			@_RawGoodsToolingDeliverBy datetime,
			@_ProjectStatusID int,
			@_ReadyForMarketingID int

	BEGIN TRY

	IF ISNUMERIC(@ReadyForMarketingID) <> 0
	BEGIN
		SET @_ReadyForMarketingID = CAST(@ReadyForMarketingID AS int);
	END
	ELSE
	BEGIN
		SET @_ReadyForMarketingID = 0;
	END
	IF ISNUMERIC(@ProjectStatusID) <> 0
	BEGIN
		SET @_ProjectStatusID = CAST(@ProjectStatusID AS int);
	END
	ELSE
	BEGIN
		SET @_ProjectStatusID = 1;
	END

	IF @DevelopmentTypeID <> 0
	BEGIN
		SET @_DevelopmentTypeID = @DevelopmentTypeID;
	END
	IF @DriverID <> 0
	BEGIN
		SET @_DriverID = @DriverID;
	END
	IF @PhaseID <> 0
	BEGIN
		SET @_PhaseID = @PhaseID;
	END
	IF (LEN(@vrt__ref) <> 0)
	BEGIN
		SET @_vrt__ref = @vrt__ref;
	END
	IF (LEN(@afg__ref) <> 0)
	BEGIN
		SET @_afg__ref = @afg__ref;
	END
	IF @SalesSourceID <> 0
	BEGIN
		SET @_SalesSourceID = @SalesSourceID;
	END
	IF (ISDATE(@DeadlineForCompletion) = 1)
	BEGIN
		SET @_DeadlineForCompletion = CAST(@DeadlineForCompletion AS datetime)
	END
	IF (ISDATE(@BudgetDate) = 1)
	BEGIN
		SET @_BudgetDate = CAST(@BudgetDate AS datetime)
	END
	IF (ISDATE(@NextUpdateBy) = 1)
	BEGIN
		SET @_NextUpdateBy = CAST(@NextUpdateBy AS datetime)
	END
	IF (ISDATE(@RawGoodsToolingDeliverBy) = 1)
	BEGIN
		SET @_RawGoodsToolingDeliverBy = CAST(@RawGoodsToolingDeliverBy AS datetime)
	END

	INSERT INTO stlPDI_ProductDevelopmentOrImprovement (vrt__ref, DevelopmentTypeID, DriverID, [Description], afg__ref, ProjectStatusID, ReadyForMarketingID, FutureCustomers, ManagerID)
	VALUES	(@_vrt__ref, @_DevelopmentTypeID, @_DriverID, TRIM(@Description), @_afg__ref, @_ProjectStatusID, @_ReadyForMarketingID, @FutureCustomers, @ManagerID);

	SELECT @stlPDI_ID = SCOPE_IDENTITY();

	UPDATE stlPDI_ProductDevelopmentOrImprovement 
	SET ProjectID = CAST(6000 + ID AS nvarchar)
	WHERE ID = @stlPDI_ID;

	INSERT INTO stlPDI_Sales (stlPDI_ID, SourceID, SalesPrice, SalesPriceUnitID, SalesVolume, SalesVolumeUnitID, SalesVolumeInitial, ChanceOfObtainingInitial, SalesVolumeAfter1Year, ChanceOfObtainingAfter1Year, SalesVolumeAfter2Year, ChanceOfObtainingAfter2Year)
	VALUES (@stlPDI_ID, @_SalesSourceID, @SalesPrice, @SalesPriceUnitID, @SalesVolume, @SalesVolumeUnitID, @SalesVolumeInitial, @ChanceOfObtainingInitial, @SalesVolumeAfter1Year, @ChanceOfObtainingAfter1Year, @SalesVolumeAfter2Year, @ChanceOfObtainingAfter2Year);

	INSERT INTO stlPDI_ReplacedSales (stlPDI_ID, ReplacedSalesVolumeInitial, ReplacedChanceOfObtainingInitial, ReplacedSalesVolumeAfter1Year, ReplacedChanceOfObtainingAfter1Year, ReplacedSalesVolumeAfter2Year, ReplacedChanceOfObtainingAfter2Year)
	VALUES (@stlPDI_ID, @ReplacedSalesVolumeInitial, @ReplacedChanceOfObtainingInitial, @ReplacedSalesVolumeAfter1Year, @ReplacedChanceOfObtainingAfter1Year, @ReplacedSalesVolumeAfter2Year, @ReplacedChanceOfObtainingAfter2Year);

	IF (LEN(TRIM(@ProblemToSolve)) <> 0)
	BEGIN
		INSERT INTO stlPDI_ProblemSolvingNotes (stlPDI_ID, ProblemToSolve)
		VALUES (@stlPDI_ID, TRIM(@ProblemToSolve));
	END

	IF (LEN(TRIM(@ProductPurpose)) <> 0)
	BEGIN
		INSERT INTO stlPDI_ProductPurposeNotes (stlPDI_ID, ProductPurpose)
		VALUES (@stlPDI_ID, TRIM(@ProductPurpose));
	END

	INSERT INTO stlPDI_Timelines (stlPDI_ID, DeadlineForCompletion, PhaseID, NextUpdateBy, RawGoodsToolingDeliverBy, DeadlineForCompletionNotes)
	VALUES (@stlPDI_ID, @_DeadlineForCompletion, @_PhaseID, @_NextUpdateBy, @_RawGoodsToolingDeliverBy, TRIM(@DeadlineForCompletionNotes));

	INSERT INTO stlPDI_Budget (stlPDI_ID, BudgetDate, BudgetNotes, MachineCost, NoOfTimesToMachine, HoursPerTime, BudgetSourceID, BudgetPercent)
	VALUES (@stlPDI_ID, @_BudgetDate, @BudgetNotes, @MachineCost, @NoOfTimesToMachine, @HoursPerTime, @BudgetSourceID, @BudgetPercent)

	IF (LEN(TRIM(@CompletionNotes)) <> 0)
	BEGIN
		INSERT INTO stlPDI_CompletionNotes (stlPDI_ID, HowWillWeKnowWeAreDone)
		VALUES (@stlPDI_ID, TRIM(@CompletionNotes));
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

