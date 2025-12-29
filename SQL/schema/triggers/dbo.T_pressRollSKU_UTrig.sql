SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_pressRollSKU_UTrig]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[T_pressRollSKU_UTrig] 
   ON  [dbo].[pressRollSKU] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
 /* update lastModified */
	IF NOT UPDATE(lastModified)
	BEGIN
		UPDATE dbo.pressRollSKU SET lastModified = GETDATE() WHERE pressRollSKUID in (SELECT DISTINCT pressRollSKUID FROM inserted)
	END

END' 
ALTER TABLE [dbo].[pressRollSKU] ENABLE TRIGGER [T_pressRollSKU_UTrig]
