SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_PG]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_PG
AS
SELECT     dbo.vw_stl_devon_printtime0.wn___ref, dbo.vw_stl_devon_printtime0.datum___, dbo.vw_stl_devon_printtime0.datum___ AS ToDate, 
                      dbo.vw_stl_devon_printtime0.wp___ref, dbo.vw_stl_devon_printtime0.ord__ref, dbo.vw_stl_devon_printtime0.wn___rpn, 
                      CASE WHEN vw_stl_devon_printtime0.ActMR IS NULL THEN 0 ELSE vw_stl_devon_printtime0.ActMR END AS ActMR, 
                      CASE WHEN vw_stl_devon_printtime0.ActPrint IS NULL THEN 0 ELSE vw_stl_devon_printtime0.ActPrint END AS ActPrint, 
                      CASE WHEN vw_stl_devon_printtime0.ActBD IS NULL THEN 0 ELSE vw_stl_devon_printtime0.ActBD END AS ActBD, 
                      CASE WHEN vw_stl_devon_printtime0.ActOther IS NULL THEN 0 ELSE vw_stl_devon_printtime0.ActOther END AS ActOther, 
                      CASE WHEN vw_stl_devon_op.oflinsvo IS NULL THEN 0 ELSE vw_stl_devon_op.oflinsvo END AS oflinsvo, CASE WHEN vw_stl_devon_op.tedrkd__ IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.tedrkd__ END AS tedrkd__, CASE WHEN vw_stl_devon_op.MakeReady IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.MakeReady END AS MakeReady, CASE WHEN vw_stl_devon_op.Breakdown IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.Breakdown END AS Breakdown, CASE WHEN vw_stl_devon_op.Printing IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.Printing END AS Printing, CASE WHEN vw_stl_devon_op_act.GoodFT IS NULL 
                      THEN 0 ELSE vw_stl_devon_op_act.GoodFT END AS GoodFT, CASE WHEN vw_stl_devon_op.tedrkd__ IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.tedrkd__ END + CASE WHEN vw_stl_devon_op.oflinsvo IS NULL THEN 0 ELSE vw_stl_devon_op.oflinsvo END AS EstGood, 
                      CASE WHEN vw_stl_devon_printtime0.ActPrint IS NULL OR
                      vw_stl_devon_printtime0.ActPrint = 0 THEN 0 ELSE vw_stl_devon_op_act.GoodFT / vw_stl_devon_printtime0.ActPrint END AS AVGFT, 
                      CASE WHEN (CASE WHEN vw_stl_devon_op.Printing IS NULL THEN 0 ELSE vw_stl_devon_op.Printing END) 
                      = 0 THEN 0 ELSE (CASE WHEN vw_stl_devon_op.tedrkd__ IS NULL THEN 0 ELSE vw_stl_devon_op.tedrkd__ END + CASE WHEN vw_stl_devon_op.oflinsvo IS NULL 
                      THEN 0 ELSE vw_stl_devon_op.oflinsvo END) / vw_stl_devon_op.Printing END AS estftpermin, dbo.v4off___.prkl_ref, dbo.prodkl__.omschr__
FROM         dbo.vw_stl_devon_printtime0 LEFT OUTER JOIN
                      dbo.vw_stl_devon_op ON dbo.vw_stl_devon_printtime0.ord__ref = dbo.vw_stl_devon_op.off__ref LEFT OUTER JOIN
                      dbo.vw_stl_devon_op_act ON dbo.vw_stl_devon_printtime0.ord__ref = dbo.vw_stl_devon_op_act.ord__ref AND 
                      dbo.vw_stl_devon_printtime0.wn___ref = dbo.vw_stl_devon_op_act.wn___ref AND 
                      dbo.vw_stl_devon_printtime0.datum___ = dbo.vw_stl_devon_op_act.dat__beg LEFT OUTER JOIN
                      dbo.v4off___ ON dbo.vw_stl_devon_printtime0.ord__ref = dbo.v4off___.off__ref LEFT OUTER JOIN
                      dbo.prodkl__ ON dbo.v4off___.prkl_ref = dbo.prodkl__.prkl_ref
' 
