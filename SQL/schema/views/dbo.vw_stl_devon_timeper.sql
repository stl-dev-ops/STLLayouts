SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_timeper]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_timeper
AS
SELECT     wn___ref, wp___ref AS Machine, datum___ AS TimeDate, ord__ref AS Job1, SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Minutes, 
                      wn___rpn AS Keyword
FROM         dbo.hispnt__
WHERE     (ord__ref > ''0'') AND (wp___ref > ''6000'') AND (akt__ref <> ''02'') AND (akt__ref <> ''03'')
GROUP BY wn___ref, wp___ref, datum___, ord__ref, wn___rpn
' 
