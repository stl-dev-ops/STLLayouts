SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateOverageStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateOverageStatus] AS' 
END

-- =============================================
-- Author:		<jeff> plagerized jon's fed ex update
-- Create date: <Create Date,,>
-- Description:	bstext__.tekst_14 tracks customer's approval of sample shipments
-- @Customer_Approval = 'Not Tested', 'Approved', 'Failed', 'Cancelled'
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateOverageStatus]
	-- Add the parameters for the stored procedure here
	@ord__ref nvarchar(6), 
	@OverageStatusID tinyint
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @ord__ref__Count int
		
		BEGIN TRY

			SELECT @ord__ref__Count = (select COUNT(ord__ref) from stlJobOverageStatus where ord__ref = @ord__ref);
			
			IF @ord__ref__Count = 0
			BEGIN
				IF @OverageStatusID <> 0
				BEGIN
					INSERT INTO stlJobOverageStatus (ord__ref, OverageStatusID) 
					VALUES (@ord__ref, @OverageStatusID);
				END
			END
			ELSE
			BEGIN
				IF @OverageStatusID <> 0
				BEGIN
					UPDATE stlJobOverageStatus 
					SET OverageStatusID = @OverageStatusID 
					WHERE ord__ref = @ord__ref;
				END
				ELSE
				BEGIN
					DELETE FROM stlJobOverageStatus
					WHERE ord__ref = @ord__ref; 
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



