SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_incent___UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_incent___UTrig] ON [dbo].[incent__] FOR UPDATE AS
SET NOCOUNT ON
DECLARE @ID as int
set @ID = (select id from inserted)
IF UPDATE(locked)
	BEGIN
		UPDATE incent__ SET lockedDate = GETDATE() WHERE id = @ID
	END' 
ALTER TABLE [dbo].[incent__] DISABLE TRIGGER [T_incent___UTrig]
