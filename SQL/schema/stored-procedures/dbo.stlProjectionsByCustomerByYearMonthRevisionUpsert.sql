SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearMonthRevisionUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsByCustomerByYearMonthRevisionUpsert] AS' 
END
-- =============================================
-- Author:		Jeff Rupp
-- Create date: 1/5/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsByCustomerByYearMonthRevisionUpsert]
	-- Add the parameters for the stored procedure here
	@ProjectionsByCustomerByYearID int,
	@ProjectionMonth int,
	@RevisionValue nvarchar(7)

AS
BEGIN TRANSACTION
	DECLARE @_OldMonthRevision int
	BEGIN TRY

		IF ISNUMERIC(@RevisionValue) = 0 
		BEGIN
			UPDATE stlProjectionsByCustomerByYearMonthRevisions
			SET Deleted = 1
			WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth;
		END
		ELSE
		BEGIN
			SELECT @_OldMonthRevision = ISNULL((SELECT RevisedProjectedValue FROM stlProjectionsByCustomerByYearMonthRevisions WHERE Deleted = 0 AND ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth),0);
			IF @_OldMonthRevision <> CAST(@RevisionValue AS int) 
			BEGIN
				UPDATE stlProjectionsByCustomerByYearMonthRevisions
				SET Deleted = 1
				WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID AND ProjectionMonth = @ProjectionMonth;

				INSERT INTO stlProjectionsByCustomerByYearMonthRevisions (ProjectionsByCustomerByYearID, ProjectionMonth, RevisedProjectedValue)
				VALUES (@ProjectionsByCustomerByYearID, @ProjectionMonth, CAST(@RevisionValue AS int));
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

