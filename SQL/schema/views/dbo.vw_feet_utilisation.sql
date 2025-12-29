SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_feet_utilisation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_feet_utilisation
AS
SELECT     DATEPART(YYYY, dat__beg) AS ryear, DATEPART(WK, dat__beg) AS rweek, wp___ref AS machine, SUM(aantal__) AS feet, SUM(aantlmok) AS goodfeet
FROM         dbo.plcrol__
WHERE     (soort___ = ''f'')
GROUP BY dat__beg, wp___ref
' 
