SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_op_feet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_op_feet
AS
SELECT      dbo.vw_stl_devon_goodft1.dat__beg, dbo.vw_stl_devon_goodft1.GoodFT, dbo.vw_stl_devon_goodft1.wn___rpn from  dbo.vw_stl_devon_goodft1
union 
Select vw_stl_devon_avg_operator.dat__beg, vw_stl_devon_avg_operator.goodft, vw_stl_devon_avg_operator.wn___rpn from vw_stl_devon_avg_operator
' 
