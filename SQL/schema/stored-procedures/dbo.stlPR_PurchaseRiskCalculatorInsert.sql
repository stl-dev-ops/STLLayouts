SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPR_PurchaseRiskCalculatorInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPR_PurchaseRiskCalculatorInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 05/1/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlPR_PurchaseRiskCalculatorInsert]
	-- Add the parameters for the stored procedure here
	@PurchaseRiskID int OUTPUT,
	@art__ref nvarchar(15),
	@QuantityBuying float,
	@PriceUsedForRisk float,
	@PurchaseOrderValue float,
	@OverrideLatestPurchasePrice tinyint,
	@LatestPurchasePrice float,
	@SupplierToDeliverBy datetime,
	@InStockAsOfCreatedDate float,
	@ReservedAsOfCreatedDate float,
	@QuarentineAsOfCreatedDate float,
	@AvailableAsOfCreatedDate float,
	@ToBeDeliveredAsOfCreatedDate float,
	@ExpectedStockBeforeDeliveryEOM float,
	@ExpectedValueBeforeDeliveryEOM float,
	@ExpectedStockAfterDeliveryEOM float,
	@ExpectedValueAfterDeliveryEOM float,
	@FinalStockBeforeDelivery float,
	@FinalValueBeforeDelivery float,
	@FinalStockAfterDelivery float,
	@FinalValueAfterDelivery float,
	@ProjectedBudgetFiscalYearToDeliveryEOM float,
	@ActualBudgetFiscalYearToDeliveryEOM float,
	@InvoicedFiscalYearToDeliveryEOM float,
	@CERM_NotYetInvoicedAsOfCreatedDate float,
	@ProjectedBudgetAvailableAtDeliveryEOM float,
	@ActualBudgetAvailableAtDeliveryEOM float,
	@RiskValueAfterDeliveryEOM float,
	@ProjectedRiskRatioAfterDeliveryEOM float,
	@ActualRiskRatioAfterDeliveryEOM float


AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlPR_PurchaseRisk
	( 
		art__ref, QuantityBuying, PriceUsedForRisk, PurchaseOrderValue, OverrideLatestPurchasePrice, LatestPurchasePrice, SupplierToDeliverBy, 
		InStockAsOfCreatedDate, ReservedAsOfCreatedDate, QuarentineAsOfCreatedDate, AvailableAsOfCreatedDate, ToBeDeliveredAsOfCreatedDate, 
		ExpectedStockBeforeDeliveryEOM, ExpectedValueBeforeDeliveryEOM, ExpectedStockAfterDeliveryEOM, ExpectedValueAfterDeliveryEOM, 
		FinalStockBeforeDelivery, FinalValueBeforeDelivery, FinalStockAfterDelivery, FinalValueAfterDelivery, 
		ProjectedBudgetFiscalYearToDeliveryEOM, ActualBudgetFiscalYearToDeliveryEOM, InvoicedFiscalYearToDeliveryEOM, CERM_NotYetInvoicedAsOfCreatedDate, 
		ProjectedBudgetAvailableAtDeliveryEOM, ActualBudgetAvailableAtDeliveryEOM, RiskValueAfterDeliveryEOM, ProjectedRiskRatioAfterDeliveryEOM, ActualRiskRatioAfterDeliveryEOM
	)
	VALUES	
	(
		@art__ref, @QuantityBuying, @PriceUsedForRisk, @PurchaseOrderValue, @OverrideLatestPurchasePrice, @LatestPurchasePrice, @SupplierToDeliverBy, 
		@InStockAsOfCreatedDate, @ReservedAsOfCreatedDate, @QuarentineAsOfCreatedDate, @AvailableAsOfCreatedDate, @ToBeDeliveredAsOfCreatedDate, 
		@ExpectedStockBeforeDeliveryEOM, @ExpectedValueBeforeDeliveryEOM, @ExpectedStockAfterDeliveryEOM, @ExpectedValueAfterDeliveryEOM, 
		@FinalStockBeforeDelivery, @FinalValueBeforeDelivery, @FinalStockAfterDelivery, @FinalValueAfterDelivery, 
		@ProjectedBudgetFiscalYearToDeliveryEOM, @ActualBudgetFiscalYearToDeliveryEOM, @InvoicedFiscalYearToDeliveryEOM, @CERM_NotYetInvoicedAsOfCreatedDate, 
		@ProjectedBudgetAvailableAtDeliveryEOM, @ActualBudgetAvailableAtDeliveryEOM, @RiskValueAfterDeliveryEOM, @ProjectedRiskRatioAfterDeliveryEOM, @ActualRiskRatioAfterDeliveryEOM 
	)

	SELECT @PurchaseRiskID = SCOPE_IDENTITY();

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

