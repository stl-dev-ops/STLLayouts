SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_rewind_op]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_rewind_op
AS
SELECT     ord__ref AS Job, wn___uit AS EmID, COUNT(hlf__ref) AS Total, MAX(datumuit) AS Date1, MAX(datumuit) AS Date2, SUM(aantm_in) AS Feet
FROM         dbo.hlfvrd__
WHERE     (wp___uit > ''0'') AND (wp___uit <> ''4001'')
GROUP BY datumuit, ord__ref, wn___uit
' 
