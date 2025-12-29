SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_act_assis_time]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_act_assis_time
AS
SELECT     ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS assistant
FROM         dbo.hispnt__
WHERE     (wp___ref = ''8000'')
GROUP BY ord__ref
' 
