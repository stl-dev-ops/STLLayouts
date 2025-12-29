SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ActPressRewindSpoolMins]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ActPressRewindSpoolMins
AS
SELECT     ord__ref, totminutes, ''Press'' AS Dept
FROM         vw_CurrentPressClockings
UNION ALL
SELECT     ord__ref, totminutes, ''Rewinding'' AS Dept
FROM         vw_CurrentRewindingClockings
UNION ALL
SELECT     ord__ref, totminutes, ''Spooling'' AS Dept
FROM         vw_CurrentSpoolingClockings
' 
