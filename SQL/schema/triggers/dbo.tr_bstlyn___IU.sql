SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_bstlyn___IU]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jon
-- Create date: 7-13-22
-- Description:	insert records into the stlRedstone_Trigger table if there''s a lbn__ref and it isn''t already in stlRedstone_Trigger
-- =============================================
CREATE TRIGGER [dbo].[tr_bstlyn___IU]
   ON  [dbo].[bstlyn__]   AFTER UPDATE, INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @lbn__ref as nvarchar(10)
	DECLARE @Oldlbn__ref as nvarchar(10)

    -- Insert statements for trigger here
	--12/2/22: Jon modified: during bulk updates or deletes, the DELETED and INSERTED table could have
	--			multiple rows, causing the SET statement to fail. 
	--			Since the reason for the trigger will only happen on non-bulk updates and deletes
	--			we will prevent this error by selecting the min(lbn__ref) to ensure only 1 record is returned
	--			the IF UPDATE(lbn__ref) statement is expected to prevent issues with this method
	SET @Oldlbn__ref = (SELECT min(lbn__ref) from DELETED)
	SET @lbn__ref = (SELECT min(lbn__ref) from INSERTED)
	IF UPDATE(lbn__ref) and @Oldlbn__ref <> @lbn__ref
	BEGIN
		IF @lbn__ref <> '''' and NOT EXISTS (SELECT * from stlRedstone_Trigger where lbn__ref = @lbn__ref)
		BEGIN
			INSERT into stlRedstone_Trigger (lbn__ref) VALUES(@lbn__ref)
		END
	END

END' 
ALTER TABLE [dbo].[bstlyn__] ENABLE TRIGGER [tr_bstlyn___IU]
