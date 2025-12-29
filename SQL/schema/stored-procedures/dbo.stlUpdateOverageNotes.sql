SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateOverageNotes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateOverageNotes] AS' 
END

-- =============================================
-- Author:		<jeff> 
-- Create date: <Create Date,,>

-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateOverageNotes]
	-- Add the parameters for the stored procedure here
	@ord__ref nvarchar(6), 
	@OverageNotes nvarchar(1000)
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @ord__ref__Count int,
				@trimedNotes nvarchar(1000);
		
		BEGIN TRY
			SET @trimedNotes = '';
	
			IF @OverageNotes IS NOT NULL
				SET @trimedNotes	= RTRIM(LTRIM(@OverageNotes));

			SELECT @ord__ref__Count = (select COUNT(ord__ref) from stlJobOverageNotes where ord__ref = @ord__ref);
			
			IF @trimedNotes = ''
				-- No notes so just delete
				BEGIN
					DELETE FROM stlJobOverageNotes WHERE ord__ref = @ord__ref;
				END
			ELSE
				--Something to insert or update
				BEGIN
					IF @ord__ref__Count = 0
					BEGIN
						INSERT INTO stlJobOverageNotes (ord__ref, Notes)
						VALUES (@ord__ref, @trimedNotes);
					END
					ELSE
					BEGIN
						UPDATE stlJobOverageNotes
						SET Notes = @trimedNotes
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



