SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLTT_TmpAfg]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLTT_TmpAfg
AS
SELECT        off__ref, afg__ref
FROM            dbo.v4vrs___ AS v4v
WHERE        (vrs__ref = ''001'')
GROUP BY off__ref, afg__ref
' 
