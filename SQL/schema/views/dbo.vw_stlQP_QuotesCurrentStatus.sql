SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlQP_QuotesCurrentStatus]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlQP_QuotesCurrentStatus]
AS
SELECT QuoteID, 
       StatusID, 
	   Status = (SELECT Status FROM stlQP_Status WHERE ID = StatusID),
	   StatusDate, 
	   Notes
FROM (
SELECT *, ROW_NUMBER() OVER(PARTITION BY QuoteID ORDER BY Created DESC) AS row_number
FROM stlQP_QuoteStatus WHERE Deleted = 0) test
WHERE test.row_number = 1
' 
