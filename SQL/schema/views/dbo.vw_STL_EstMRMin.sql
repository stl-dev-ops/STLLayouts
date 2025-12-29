SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_EstMRMin]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_EstMRMin
AS
SELECT        off__ref, SUM(dbo.GetMinutesFromCERMTimeString(stel_tyd)) AS EstMRMin
FROM            dbo.v4edg___
WHERE        (off__ref NOT LIKE ''1%'')
GROUP BY off__ref
' 
