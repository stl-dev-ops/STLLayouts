SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ActPressRewindSpoolMinsSummed]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ActPressRewindSpoolMinsSummed
AS
SELECT     ord__ref, SUM(totminutes) AS totmins
FROM         dbo.vw_ActPressRewindSpoolMins
GROUP BY ord__ref
' 
