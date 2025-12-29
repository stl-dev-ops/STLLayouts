SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLTT_TmpPLCFootage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLTT_TmpPLCFootage
AS
SELECT        ord__ref, SUM(aantal__) AS plcFootage
FROM            dbo.plcrol__
WHERE        (art__ref NOT IN
                             (SELECT        art__ref
                               FROM            dbo.incentXa)) AND (soort___ = ''f'') AND (wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Cohesio'', ''Press'', ''Coating''))))
GROUP BY ord__ref
' 
