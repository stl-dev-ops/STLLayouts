SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_AddFolder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_AddFolder] AS' 
END

-- =============================================
-- Author:		jeff
-- Create date: 1/9/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_AddFolder]
	-- Add the parameters for the stored procedure here
	@ID int out,
	@stlPDI_ID int,
	@FolderName nvarchar(1000)
AS
BEGIN

	INSERT INTO stlPDI_Attachments (stlPDI_ID, DisplayName, [FileName]) 
	VALUES (@stlPDI_ID, @FolderName, @FolderName) --, 'S:\STLSoftware\STLProductDevelopmentOrImprovementApp\Attachments\');

	SELECT @ID = SCOPE_IDENTITY();

END

