SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_AddAttachement]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQP_AddAttachement] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlQP_AddAttachement]
	-- Add the parameters for the stored procedure here
	@ID int out,
	@QuoteID int,
	@DisplayName nvarchar(255),
	@Extension nvarchar(255),
	@FileName nvarchar(1000) out
AS
BEGIN
	DECLARE @CharacterIndexOfLastPeriod int;

	SET @CharacterIndexOfLastPeriod = LEN(@DisplayName) - LEN(REPLACE(@DisplayName, '.', ''));

	INSERT INTO stlQP_Attachments (QuoteID, DisplayName) --, [FileName]) 
	VALUES (@QuoteID, @DisplayName) --, 'S:\QP\QuickPriceApp\Attachments\');

	SELECT @ID = SCOPE_IDENTITY();

	SET @FileName = 'S:\QP\Files\' + CAST(@QuoteID AS nvarchar) + '\' + CAST(@ID AS nvarchar) + @Extension;

	UPDATE stlQP_Attachments
	SET [FileName] = @FileName
	WHERE ID = @ID;

END

