SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCoh_ActPrintMin]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCoh_ActPrintMin
AS
SELECT        dbo.hispnt__.ord__ref, SUM(LEFT(dbo.hispnt__.duur____, 3) * 60 + RIGHT(dbo.hispnt__.duur____, 2)) AS Coh_ActPrintMin
FROM            dbo.hispnt__ INNER JOIN
                         dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref
WHERE        (dbo.hispnt__.wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ = ''Cohesio''))) AND (dbo.wpakt___.klasse__ = ''2'') AND (dbo.hispnt__.ord__ref NOT LIKE ''1%'')
GROUP BY dbo.hispnt__.ord__ref
' 
