SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLTT_TmpConsumeFootage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLTT_TmpConsumeFootage
AS
SELECT        ord__ref, SUM(aantal__) * - 1 AS consumeFt
FROM            dbo.stobew__
WHERE        (wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Cohesio'', ''Press'', ''Coating'')))) AND (art__srt = ''5'') AND (soort___ <> ''C'') AND (art__ref NOT IN
                             (SELECT        art__ref
                               FROM            dbo.incentXa)) AND (art__ref IN
                             (SELECT        art__ref
                               FROM            dbo.v4eti___
                               WHERE        (off__ref = dbo.stobew__.ord__ref)))
GROUP BY ord__ref
' 
