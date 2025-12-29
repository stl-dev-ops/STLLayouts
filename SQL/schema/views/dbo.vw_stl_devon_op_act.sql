SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_op_act]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_op_act
AS
SELECT     CASE WHEN SUM(aantlmok) IS NULL THEN 0 ELSE SUM(aantlmok) END AS GoodFT, ord__ref, wn___ref, dat__beg
FROM         dbo.plcrol__
WHERE     (wp___ref = ''5001'') OR
                      (wp___ref = ''5002'') OR
                      (wp___ref = ''5003'')
GROUP BY ord__ref, wn___ref, dat__beg
' 
