SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNB_NewBusinessInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlNB_NewBusinessInsert] AS' 
END
-- =============================================
-- Author:		jeff
-- Create date: 2/1/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlNB_NewBusinessInsert]
	-- Add the parameters for the stored procedure here
	@NewBusinessID int OUTPUT,
	@afg__ref nvarchar(6),
	@NewBusinessStatusID int,
	@StartDate datetime,
	@EndDate nvarchar(10)
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
BEGIN TRANSACTION
	DECLARE @_StartDate datetime,
			@_EndDate datetime

	BEGIN TRY
		IF ISDATE(@StartDate) + ISDATE(@EndDate) <> 0
		BEGIN
			IF ISDATE(@StartDate) = 1
			BEGIN
				SET @_StartDate = CAST(@StartDate as datetime)
			END
			IF ISDATE(@EndDate) = 1
			BEGIN
				SET @_EndDate = CAST(@EndDate as datetime)
			END
			INSERT INTO stlNB_NewBusiness (afg__ref, stlNB_NewBusinessStatusID, StartDate, EndDate)
			VALUES (@afg__ref, @NewBusinessStatusID, @_StartDate, @_EndDate);
			SELECT @NewBusinessID = SCOPE_IDENTITY();
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

