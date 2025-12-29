SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_goodft]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_goodft
AS
SELECT     CASE WHEN SUM(aantlmok) IS NULL THEN 0 ELSE SUM(aantlmok) END AS GoodFT, dbo.plcrol__.ord__ref, dbo.plcrol__.dat__beg, dbo.werknm__.wn___rpn
FROM         dbo.plcrol__ INNER JOIN
                      dbo.werknm__ ON dbo.plcrol__.wn___ref = dbo.werknm__.wn___ref
WHERE     (dbo.plcrol__.wp___ref = ''5001'') OR
                      (dbo.plcrol__.wp___ref = ''5002'') OR
                      (dbo.plcrol__.wp___ref = ''5003'')
GROUP BY dbo.plcrol__.ord__ref, dbo.plcrol__.dat__beg, dbo.werknm__.wn___rpn
' 
