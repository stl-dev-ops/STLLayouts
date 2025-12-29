SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHoldUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNH_StockAndHoldUpdate] AS' 
END


-- =============================================
-- Author:		jeff rupp
-- Create date: 11/01/2021
-- Description:	Stock & Hold Update
-- =============================================
ALTER PROCEDURE [dbo].[stlSNH_StockAndHoldUpdate]
	-- Add the parameters for the stored procedure here
	@ID int,
	@art__ref nvarchar(6),
	@HoldTime int NULL, 
	@HoldTimeUnitID int NULL,
	@ManufacturingTime int NULL, 
	@ManufacturingTimeUnitID int NULL, 
	@MinReleaseNotes nvarchar(255),
	@TransitTime int NULL, 
	@PalletQuantity int NULL,
	@PalletUnitID int NULL,
	@WarehouseMax int NULL, 
	@ReorderSoonPercent int NULL, 
	@ReorderNowPercent int NULL
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	UPDATE stlSNH_StockAndHold
	SET art__ref                = @art__ref,
		HoldTime      	        = @HoldTime,
		HoldTimeUnitID          = @HoldTimeUnitID,
		ManufacturingTime       = @ManufacturingTime,
		ManufacturingTimeUnitID = @ManufacturingTimeUnitID,
		TransitTime             = @TransitTime,
		MinReleaseNotes         = @MinReleaseNotes,
		PalletQuantity          = @PalletQuantity,
		PalletUnitID            = @PalletUnitID,
		WarehouseMax            = @WarehouseMax,
		ReorderSoonPercent      = @ReorderSoonPercent,
		ReorderNowPercent       = @ReorderNowPercent,
		Updated                 = GETDATE(),
		UpdatedBy               = SUSER_SNAME()
	WHERE ID = @ID;

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

