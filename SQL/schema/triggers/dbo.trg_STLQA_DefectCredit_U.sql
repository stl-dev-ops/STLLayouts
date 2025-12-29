SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trg_STLQA_DefectCredit_U]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER trg_STLQA_DefectCredit_U
   ON  stlQA_DefectCredit
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	UPDATE dbo.stlQA_DefectCredit set lastUpdate = CURRENT_TIMESTAMP
	WHERE stlQA_DefectCreditID in (SELECT DISTINCT stlQA_DefectCreditID FROM inserted);
END' 
ALTER TABLE [dbo].[stlQA_DefectCredit] ENABLE TRIGGER [trg_STLQA_DefectCredit_U]
