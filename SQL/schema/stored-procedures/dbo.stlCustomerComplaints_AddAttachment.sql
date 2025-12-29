SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaints_AddAttachment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCustomerComplaints_AddAttachment] AS' 
END


-- =============================================
-- Author:		jeff
-- Create date: 4/2/2024
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCustomerComplaints_AddAttachment]
	-- Add the parameters for the stored procedure here
	@ID int out,
	@stlCustomerComplaintID int,
	@DisplayName nvarchar(255),
	@Extension nvarchar(255),
	@FileName nvarchar(1000) out
AS
BEGIN
	DECLARE @CharacterIndexOfLastPeriod int;

	SET @CharacterIndexOfLastPeriod = LEN(@DisplayName) - LEN(REPLACE(@DisplayName, '.', ''));

	INSERT INTO stlCustomerComplaintAttachments (stlCustomerComplaintID, DisplayName) --, [FileName]) 
	VALUES (@stlCustomerComplaintID, @DisplayName) --, 'P:\STLSoftware\STLCustomerComplaints\Attachments\');

	SELECT @ID = SCOPE_IDENTITY();

	SET @FileName = 'P:\STLSoftware\STLCustomerComplaints\Attachments\' + CAST(@stlCustomerComplaintID AS nvarchar) + '\' + CAST(@ID AS nvarchar) + @Extension;

	UPDATE stlCustomerComplaintAttachments
	SET [FileName] = @FileName
	WHERE ID = @ID;

END

