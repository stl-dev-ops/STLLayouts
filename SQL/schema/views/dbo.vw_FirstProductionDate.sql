SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_FirstProductionDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_FirstProductionDate
AS
SELECT     ord__ref, MIN(datum___) AS FirstProductionDate
FROM         dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_4
GROUP BY ord__ref
' 
