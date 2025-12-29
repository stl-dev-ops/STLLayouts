SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobDeptCompleteDt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobDeptCompleteDt
AS
SELECT        TOP (100) PERCENT h.ord__ref, w.kenmerk_, MAX(h.datum___) AS completeDt
FROM            dbo.hispnt__ AS h INNER JOIN
                         dbo.werkpo__ AS w ON h.wp___ref = w.wp___ref
GROUP BY h.ord__ref, w.kenmerk_
ORDER BY h.ord__ref, w.kenmerk_
' 
