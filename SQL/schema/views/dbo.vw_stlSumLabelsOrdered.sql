SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSumLabelsOrdered]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlSumLabelsOrdered]
AS
SELECT ord__ref, SUM(b_aantal) AS sum_b_aantal, MAX(vrz__dat) AS LastShipDate
FROM bstlyn__
GROUP BY ord__ref
' 
