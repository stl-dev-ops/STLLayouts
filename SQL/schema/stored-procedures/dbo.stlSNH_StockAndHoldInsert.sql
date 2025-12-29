SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHoldInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSNH_StockAndHoldInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 11/01/2021
-- Description:	Stock & Hold Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlSNH_StockAndHoldInsert]
	-- Add the parameters for the stored procedure here
	@ID int OUTPUT,
	@art__ref nvarchar(6),
	@HoldTime int NULL, 
	@HoldTimeUnitID int NULL, 
	@ManufacturingTime int NULL, 
	@ManufacturingTimeUnitID int NULL, 
	@TransitTime int NULL, 
	@MinReleaseNotes nvarchar(255),
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

	INSERT INTO stlSNH_StockAndHold 
			( art__ref,  HoldTime,  HoldTimeUnitID,  TransitTime,  ManufacturingTime,  ManufacturingTimeUnitID,  MinReleaseNotes,  PalletQuantity,  PalletUnitID,  WarehouseMax,  ReorderSoonPercent,  ReorderNowPercent)
	VALUES	(@art__ref, @HoldTime, @HoldTimeUnitID, @TransitTime, @ManufacturingTime, @ManufacturingTimeUnitID, @MinReleaseNotes, @PalletQuantity, @PalletUnitID, @WarehouseMax, @ReorderSoonPercent, @ReorderNowPercent)

	SELECT @ID = SCOPE_IDENTITY();

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

