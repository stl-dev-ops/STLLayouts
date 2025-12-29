SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLDieTypes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLDieTypes
AS
SELECT     TOP (100) PERCENT kom__ref, omschr__, kom__srt, rowid
FROM         dbo.kommen__
WHERE     (kom__srt = ''C'')
ORDER BY kom__ref
' 
