SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobPrintOpStartDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_JobPrintOpStartDate]
AS
SELECT     ord__ref, MIN(datum___) AS StartPrintDt, wn___ref
FROM         dbo.hispnt__
WHERE     (wp___ref IN (''5001'', ''5002'', ''5003''))
GROUP BY ord__ref, wn___ref
' 
