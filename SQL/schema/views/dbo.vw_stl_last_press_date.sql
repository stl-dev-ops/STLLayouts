SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_last_press_date]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_last_press_date
AS
SELECT        dbo.hispnt__.ord__ref, MAX(dbo.hispnt__.datum___) AS last_press_date
FROM            dbo.hispnt__ INNER JOIN
                         dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref
WHERE        (dbo.hispnt__.wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Press'')))) AND (dbo.wpakt___.klasse__ <> ''4'')
GROUP BY dbo.hispnt__.ord__ref
' 
