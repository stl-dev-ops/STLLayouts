SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[order___U]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[order___U] 
   ON  [dbo].[order___] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	IF not(update(tstval10))
	BEGIN
		UPDATE  dbo.order___
			SET     tstval10 = ''0003''
			WHERE   rowid IN (SELECT rowid FROM     inserted ) and kla__ref in (select kla__ref from incentRD)
	END

END' 
ALTER TABLE [dbo].[order___] ENABLE TRIGGER [order___U]
