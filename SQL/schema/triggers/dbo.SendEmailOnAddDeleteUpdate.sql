SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[SendEmailOnAddDeleteUpdate]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[SendEmailOnAddDeleteUpdate]
   ON  [dbo].[stlMG_Recipient] 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	DECLARE @Action as nvarchar(50);
	SET @Action = (CASE WHEN EXISTS(SELECT * FROM INSERTED)
                         AND EXISTS(SELECT * FROM DELETED)
                        THEN ''Something updated''  -- Set Action to Updated.
                        WHEN EXISTS(SELECT * FROM INSERTED)
                        THEN ''Something inserted''  -- Set Action to Insert.
                        WHEN EXISTS(SELECT * FROM DELETED)
                        THEN ''Something Deleted''  -- Set Action to Deleted.
                        ELSE NULL -- Skip. It may have been a "failed delete".   
                    END);

	exec msdb.dbo.sp_send_dbmail @recipients=''jond@superlabel.com'', @profile_name=''STL Triggered Email'',@subject=''Test Email from stlMG_Recipient'', @body=@Action;
END' 
ALTER TABLE [dbo].[stlMG_Recipient] DISABLE TRIGGER [SendEmailOnAddDeleteUpdate]
