SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_AddAttachement]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_AddAttachement] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_AddAttachement]
	-- Add the parameters for the stored procedure here
	@ID int out,
	@stlPDI_ID int,
	@DisplayName nvarchar(255),
	@Extension nvarchar(255),
	@FileName nvarchar(1000) out
AS
BEGIN
	DECLARE @CharacterIndexOfLastPeriod int;

	SET @CharacterIndexOfLastPeriod = LEN(@DisplayName) - LEN(REPLACE(@DisplayName, '.', ''));

	INSERT INTO stlPDI_Attachments (stlPDI_ID, DisplayName) --, [FileName]) 
	VALUES (@stlPDI_ID, @DisplayName) --, 'S:\STLSoftware\STLProductDevelopmentOrImprovementApp\Attachments\');

	SELECT @ID = SCOPE_IDENTITY();

	SET @FileName = 'S:\STLSoftware\STLProductDevelopment\Attachments\' + CAST(@ID AS nvarchar) + @Extension;

	UPDATE stlPDI_Attachments
	SET [FileName] = @FileName
	WHERE ID = @ID;

END

