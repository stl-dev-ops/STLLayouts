SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_avg_Operator]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_avg_Operator
AS
SELECT DISTINCT 
                      TOP (100) PERCENT dat__beg, SUM(GoodFT) / COUNT(wn___rpn) AS GoodFT, CASE WHEN dat__beg IS NULL THEN ''0'' ELSE ''Average'' END AS wn___rpn
FROM         dbo.vw_stl_devon_goodft1
GROUP BY dat__beg
' 
