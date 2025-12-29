SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDieRemovalLogUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlDieRemovalLogUpdate] AS' 
END

-- =============================================
-- Author:		<Jeff>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlDieRemovalLogUpdate] 
	-- Add the parameters for the stored procedure here
	@DieID nvarchar(10), --stns_ref
	@SKU_ID nvarchar(8), --arthdref
	@RemovalDate nvarchar(12),
	@RemovedByID nvarchar(6), --Operator_wn___ref
	@ReasonID nvarchar(2),
	@ApprovedByID nvarchar(6), --Approval_wn___ref
	@Deleted nvarchar(1)

AS 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
BEGIN TRANSACTION
	DECLARE @RecordCount int,
			@removedDate date,
			@reasID int,
			@delete bit;

	BEGIN TRY

	IF ISDATE(@RemovalDate) = 1
    BEGIN
		SET @removedDate = CAST(@RemovalDate AS date);
    END
	IF ISNUMERIC(@ReasonID) = 1
	BEGIN
		SET @reasID = CAST(@ReasonID AS int);
	END
		IF ISNUMERIC(@Deleted) = 1
	BEGIN
		SET @delete = CAST(@Deleted AS bit);
	END

	SELECT @RecordCount = (SELECT COUNT(*) FROM stlDieRemovalLog WHERE stns_ref = @DieID AND arthdref = @SKU_ID);

	IF @RecordCount = 0
			BEGIN
				--Have to create the record
				INSERT INTO stlDieRemovalLog (stns_ref, arthdref, RemovalDate, Operator_wn___ref, ReasonID, Approval_wn___ref, Deleted)
				VALUES (@DieID, @SKU_ID, @removedDate, @RemovedByID, @reasID, @ApprovedByID, @delete);
			END
			ELSE
			BEGIN

				UPDATE stlDieRemovalLog

				SET RemovalDate			= @removedDate,
					Operator_wn___ref	= @RemovedByID,
					ReasonID			= @reasID,
					Approval_wn___ref	= @ApprovedByID,
					Deleted				= @delete

				WHERE stns_ref = @DieID AND arthdref = @SKU_ID;

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

