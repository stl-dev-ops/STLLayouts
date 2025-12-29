SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_stocksales]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_stocksales
AS
SELECT     ord__ref, bedr__bm, CASE WHEN ord__ref < ''0'' THEN ''Stock Sale'' ELSE NULL END AS Sale
FROM         dbo.bstlyn__
' 
