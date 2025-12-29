SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_AdditionalNotesUPDATE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_AdditionalNotesUPDATE] AS' 
END


-- =============================================
-- Author:		jeff rupp
-- Create date: 10/12/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_AdditionalNotesUPDATE]
	-- Add the parameters for the stored procedure here	
	@ID int,
	@Notes nvarchar(4000),
	@Pinned tinyint,
	@Hidden tinyint,
	@ToBeCompletedDate nvarchar(10)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION
	DECLARE @TrimedNotes nvarchar(4000),
			@ToBeCompleted datetime;
	SET @TrimedNotes = TRIM(@Notes);
	IF(ISDATE(@ToBeCompletedDate) > 0)
	BEGIN
		SET @ToBeCompleted = CONVERT(datetime, @ToBeCompletedDate);
	END
	BEGIN TRY

		IF (LEN(TRIM(@TrimedNotes)) <> 0)
			BEGIN
				UPDATE stlPDI_AdditionalNotes
				SET Notes         = @TrimedNotes,
					Pinned		  = @Pinned,
					[Hidden]      = @Hidden,
					ToBeCompleted = @ToBeCompleted,
					Updated       = GETDATE(),
					UpdatedBy     = SUSER_SNAME()
					WHERE ID = @ID AND (Notes <> @TrimedNotes OR Pinned <> @Pinned OR [Hidden] <> @Hidden OR ISNULL(ToBeCompleted,0) <> ISNULL(@ToBeCompleted, 0));
			END
		ELSE
			BEGIN
				UPDATE stlPDI_AdditionalNotes
				SET Deleted   = 1,
					Updated   = GETDATE(),
					UpdatedBy = SUSER_SNAME()
					WHERE ID  = @ID;
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

