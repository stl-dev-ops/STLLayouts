SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_bst]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_bst
AS
SELECT     bst__ref, SUM(f_aantal) AS Total
FROM         dbo.vw_stl_devon_rerun
GROUP BY bst__ref
' 
