SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints_AddFolder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCustomerComplaints_AddFolder] AS' 
END



-- =============================================
-- Author:		jeff
-- Create date: 4/10/2025
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCustomerComplaints_AddFolder]
	-- Add the parameters for the stored procedure here
	@ID int out,
	@stlCustomerComplaintID int,
	@FolderName nvarchar(1000)
AS
BEGIN

	INSERT INTO stlCustomerComplaintAttachments (stlCustomerComplaintID, DisplayName, [FileName]) 
	VALUES (@stlCustomerComplaintID, @FolderName, @FolderName) --, 'P:\STLSoftware\STLCustomerComplaints\Attachments\');

	SELECT @ID = SCOPE_IDENTITY();

END

