SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trg_STLQA_DefectCreditDetail_U]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER trg_STLQA_DefectCreditDetail_U
   ON  stlQA_DefectCreditDetail
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	UPDATE dbo.stlQA_DefectCreditDetail set lastUpdate = CURRENT_TIMESTAMP
	WHERE stlQA_DefectCreditDetailID in (SELECT DISTINCT stlQA_DefectCreditDetailID FROM inserted);
END' 
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] ENABLE TRIGGER [trg_STLQA_DefectCreditDetail_U]
