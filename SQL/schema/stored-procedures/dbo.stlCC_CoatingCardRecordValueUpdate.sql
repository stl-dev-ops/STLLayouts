SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordValueUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CoatingCardRecordValueUpdate] AS' 
END
-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/1/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CoatingCardRecordValueUpdate]
	-- Add the parameters for the stored procedure here
	@ord__ref nvarchar(6),
	@TemplateID int,
	@Value nvarchar(50)
AS
BEGIN TRANSACTION
	DECLARE @ID int

BEGIN TRY
	SET @ID = (
				SELECT ID FROM stlCC_CoatingCardRecordValues v 
				WHERE v.Deleted = 0 
				AND v.ord__ref = @ord__ref 
				AND v.TemplateID = @TemplateID);

	IF @ID IS NULL
		BEGIN --INSERT
			IF @Value <> ''
				INSERT INTO stlCC_CoatingCardRecordValues (ord__ref, TemplateID, [Value])
				VALUES (@ord__ref, @TemplateID, @Value);
		END
	ELSE
		BEGIN --UPDATE
			IF @Value <> ''
			BEGIN
				UPDATE stlCC_CoatingCardRecordValues
				SET [Value] = @Value, Updated = GETDATE(), UpdatedBy = SUSER_SNAME() 
				WHERE ID = @ID;
			END
			ELSE
			BEGIN
				UPDATE stlCC_CoatingCardRecordValues
				SET Deleted = 1, Updated = GETDATE(), UpdatedBy = SUSER_SNAME() 
				WHERE ID = @ID;
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
