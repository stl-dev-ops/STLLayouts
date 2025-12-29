SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert] AS' 
END

-- =============================================
-- Author:		Jeff Rupp
-- Create date: 1/5/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert]
	-- Add the parameters for the stored procedure here
	@ProjectionsByCustomerByYearID int,
	@ProjectionMonth int,
	@ForecastValueDataEntryFromSalesRep nvarchar(7),
	@ActualValueDataEntryFromSalesRep nvarchar(7)

AS
BEGIN TRANSACTION
	DECLARE @_OldMonthForecast int
	DECLARE @_OldMonthValue int
	DECLARE @_NewMonthForecast int
	DECLARE @_NewMonthValue int
	BEGIN TRY

		IF ISNUMERIC(@ForecastValueDataEntryFromSalesRep) = 0 AND ISNUMERIC(@ActualValueDataEntryFromSalesRep) = 0
		BEGIN
			UPDATE stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData
			SET Deleted = 1
			WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth;
		END
		ELSE
		BEGIN
			IF ISNUMERIC(@ForecastValueDataEntryFromSalesRep) <> 0 
				BEGIN
					SET @_NewMonthForecast = CAST(@ForecastValueDataEntryFromSalesRep AS int);
				END
			ELSE
				BEGIN
					SET @_NewMonthForecast = 0;
				END
			IF ISNUMERIC(@ActualValueDataEntryFromSalesRep) <> 0 
				BEGIN
					SET @_NewMonthValue = CAST(@ActualValueDataEntryFromSalesRep AS int)
				END
			ELSE
				BEGIN
					SET @_NewMonthValue = 0;
				END

			SELECT @_OldMonthForecast = ISNULL((SELECT ForecastValueDataEntryFromSalesRep FROM stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData WHERE Deleted = 0 AND ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth),0);
			SELECT @_OldMonthValue = ISNULL((SELECT ActualValueDataEntryFromSalesRep FROM stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData WHERE Deleted = 0 AND ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth),0);
			IF (@_OldMonthForecast <> @_NewMonthForecast) OR (@_OldMonthValue <> @_NewMonthValue)
			BEGIN
				UPDATE stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData
				SET Deleted = 1
				WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth;

				INSERT INTO stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData (ProjectionsByCustomerByYearID, ProjectionMonth, ForecastValueDataEntryFromSalesRep, ActualValueDataEntryFromSalesRep)
				VALUES (@ProjectionsByCustomerByYearID, @ProjectionMonth, @_NewMonthForecast, @_NewMonthValue);
			END
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

