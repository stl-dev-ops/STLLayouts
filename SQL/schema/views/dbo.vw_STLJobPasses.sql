SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLJobPasses]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLJobPasses
AS
SELECT        TOP (100) PERCENT off__ref, dg___vnr
FROM            dbo.v4edg___
GROUP BY off__ref, dg___vnr
ORDER BY off__ref, dg___vnr
' 
