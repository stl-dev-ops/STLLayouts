SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_newtime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_newtime
AS
SELECT     dbo.vw_stl_devon_printtime1.datum___, dbo.vw_stl_devon_printtime1.ord__ref, dbo.vw_stl_devon_printtime1.wn___rpn, dbo.vw_stl_devon_printtime1.ActMR, 
                      dbo.vw_stl_devon_printtime2.ActPrint, dbo.vw_stl_devon_printtime3.ActBD
FROM         dbo.vw_stl_devon_printtime1 INNER JOIN
                      dbo.vw_stl_devon_printtime2 ON dbo.vw_stl_devon_printtime1.datum___ = dbo.vw_stl_devon_printtime2.datum___ AND 
                      dbo.vw_stl_devon_printtime1.ord__ref = dbo.vw_stl_devon_printtime2.ord__ref AND 
                      dbo.vw_stl_devon_printtime1.wn___ref = dbo.vw_stl_devon_printtime2.wn___ref INNER JOIN
                      dbo.vw_stl_devon_printtime3 ON dbo.vw_stl_devon_printtime1.datum___ = dbo.vw_stl_devon_printtime3.datum___ AND 
                      dbo.vw_stl_devon_printtime1.ord__ref = dbo.vw_stl_devon_printtime3.ord__ref AND 
                      dbo.vw_stl_devon_printtime1.wn___ref = dbo.vw_stl_devon_printtime3.wn___ref
WHERE     (dbo.vw_stl_devon_printtime1.wn___rpn = ''BennyB'')
' 
