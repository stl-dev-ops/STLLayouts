SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert] AS' 
END

-- =============================================
-- Author:		Jeff Rupp
-- Create date: 8/8/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert]
	-- Add the parameters for the stored procedure here
	@ProjectionsOfFutureCustomersID int,
	@ProjectionMonth int,
	@ProjectionYear int,
	@ProjectionValue nvarchar(7)

AS
BEGIN TRANSACTION
	DECLARE @_OldProjectionValue int
	BEGIN TRY

		IF ISNUMERIC(@ProjectionValue) = 0 
		BEGIN
			UPDATE stlProjectionsOfFutureCustomersMonthlyProjections
			SET Deleted = 1
			WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND ProjectionMonth = @ProjectionMonth AND ProjectionYear = @ProjectionYear;
		END
		ELSE
		BEGIN
			SELECT @_OldProjectionValue = ISNULL((SELECT ProjectionValue FROM stlProjectionsOfFutureCustomersMonthlyProjections WHERE Deleted = 0 AND ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND ProjectionMonth = @ProjectionMonth AND ProjectionYear = @ProjectionYear),0);
			IF @_OldProjectionValue <> CAST(@ProjectionValue AS int) 
			BEGIN
				UPDATE stlProjectionsOfFutureCustomersMonthlyProjections
				SET Deleted = 1
				WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND ProjectionMonth = @ProjectionMonth AND ProjectionYear = @ProjectionYear;

				INSERT INTO stlProjectionsOfFutureCustomersMonthlyProjections (ProjectionsOfFutureCustomersID, ProjectionMonth, ProjectionYear, ProjectionValue)
				VALUES (@ProjectionsOfFutureCustomersID, @ProjectionMonth, @ProjectionYear, CAST(@ProjectionValue AS int));
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

