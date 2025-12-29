SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_goodbad_job]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_goodbad_job
AS
SELECT     DATEPART(YYYY, dat__beg) AS ryear, DATEPART(WK, dat__beg) AS rweek, DATEPART(DD, dat__beg) AS rday, ord__ref, wp___ref AS machine, SUM(aantal__) AS feet, 
                      SUM(aantlmok) AS goodfeet
FROM         dbo.plcrol__
WHERE     (soort___ = ''f'')
GROUP BY ord__ref, dat__beg, wp___ref
' 
