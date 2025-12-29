SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_printtime0]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_printtime0
AS
SELECT     dbo.vw_stl_devon_printtimeBase.wn___ref, dbo.vw_stl_devon_printtimeBase.datum___, dbo.vw_stl_devon_printtimeBase.datum___ AS ToDate, 
                      dbo.vw_stl_devon_printtimeBase.wp___ref, dbo.vw_stl_devon_printtimeBase.ord__ref, dbo.vw_stl_devon_printtimeBase.wn___rpn, 
                      SUM(dbo.vw_stl_devon_printtime1.ActMR) AS ActMR, SUM(dbo.vw_stl_devon_printtime2.ActPrint) AS ActPrint, SUM(dbo.vw_stl_devon_printtime3.ActBD) AS ActBD, 
                      SUM(dbo.vw_stl_devon_printtime4.ActLunch) AS ActLunch, SUM(dbo.vw_stl_devon_printtime5.ActInterruptions) AS ActInterruptions
FROM         dbo.vw_stl_devon_printtimeBase LEFT OUTER JOIN
                      dbo.vw_stl_devon_printtime1 ON dbo.vw_stl_devon_printtimeBase.wn___ref = dbo.vw_stl_devon_printtime1.wn___ref AND 
                      dbo.vw_stl_devon_printtimeBase.datum___ = dbo.vw_stl_devon_printtime1.datum___ AND 
                      dbo.vw_stl_devon_printtimeBase.wp___ref = dbo.vw_stl_devon_printtime1.wp___ref AND 
                      dbo.vw_stl_devon_printtimeBase.ord__ref = dbo.vw_stl_devon_printtime1.ord__ref LEFT OUTER JOIN
                      dbo.vw_stl_devon_printtime2 ON dbo.vw_stl_devon_printtimeBase.wn___ref = dbo.vw_stl_devon_printtime2.wn___ref AND 
                      dbo.vw_stl_devon_printtimeBase.datum___ = dbo.vw_stl_devon_printtime2.datum___ AND 
                      dbo.vw_stl_devon_printtimeBase.wp___ref = dbo.vw_stl_devon_printtime2.wp___ref AND 
                      dbo.vw_stl_devon_printtimeBase.ord__ref = dbo.vw_stl_devon_printtime2.ord__ref LEFT OUTER JOIN
                      dbo.vw_stl_devon_printtime3 ON dbo.vw_stl_devon_printtimeBase.wn___ref = dbo.vw_stl_devon_printtime3.wn___ref AND 
                      dbo.vw_stl_devon_printtimeBase.datum___ = dbo.vw_stl_devon_printtime3.datum___ AND 
                      dbo.vw_stl_devon_printtimeBase.wp___ref = dbo.vw_stl_devon_printtime3.wp___ref AND 
                      dbo.vw_stl_devon_printtimeBase.ord__ref = dbo.vw_stl_devon_printtime3.ord__ref LEFT OUTER JOIN
                      dbo.vw_stl_devon_printtime4 ON dbo.vw_stl_devon_printtimeBase.wn___ref = dbo.vw_stl_devon_printtime4.wn___ref AND 
                      dbo.vw_stl_devon_printtimeBase.datum___ = dbo.vw_stl_devon_printtime4.datum___ AND 
                      dbo.vw_stl_devon_printtimeBase.wp___ref = dbo.vw_stl_devon_printtime4.wp___ref AND 
                      dbo.vw_stl_devon_printtimeBase.ord__ref = dbo.vw_stl_devon_printtime4.ord__ref LEFT OUTER JOIN
                      dbo.vw_stl_devon_printtime5 ON dbo.vw_stl_devon_printtimeBase.wn___ref = dbo.vw_stl_devon_printtime5.wn___ref AND 
                      dbo.vw_stl_devon_printtimeBase.datum___ = dbo.vw_stl_devon_printtime5.datum___ AND 
                      dbo.vw_stl_devon_printtimeBase.wp___ref = dbo.vw_stl_devon_printtime5.wp___ref AND 
                      dbo.vw_stl_devon_printtimeBase.ord__ref = dbo.vw_stl_devon_printtime5.ord__ref
WHERE     (dbo.vw_stl_devon_printtimeBase.wp___ref = ''5001'') OR
                      (dbo.vw_stl_devon_printtimeBase.wp___ref = ''5002'') OR
                      (dbo.vw_stl_devon_printtimeBase.wp___ref = ''5003'')
GROUP BY dbo.vw_stl_devon_printtimeBase.wn___ref, dbo.vw_stl_devon_printtimeBase.datum___, dbo.vw_stl_devon_printtimeBase.wp___ref, 
                      dbo.vw_stl_devon_printtimeBase.ord__ref, dbo.vw_stl_devon_printtimeBase.wn___rpn
' 
