SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_costperlabel]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_costperlabel
AS
SELECT     TOP (100) PERCENT dbo.ordcum__.ord__ref, dbo.v4vrs___.afg__ref, SUM((dbo.ordcum__.papie_ok + dbo.ordcum__.grdvrbok) / dbo.ordcum__.aant_prd) AS Cost, 
                      SUM(dbo.ordcum__.machi_ok / dbo.ordcum__.aant_prd) AS MachineCost, dbo.ordcum__.dat__prd
FROM         dbo.ordcum__ INNER JOIN
                      dbo.v4vrs___ ON dbo.ordcum__.ord__ref = dbo.v4vrs___.off__ref
WHERE     (dbo.ordcum__.aant_prd > ''0'') AND (dbo.ordcum__.dat__prd BETWEEN ''2018-10-01'' AND ''2019-9-30'')
GROUP BY dbo.v4vrs___.afg__ref, dbo.ordcum__.ord__ref, dbo.ordcum__.aant_prd, dbo.ordcum__.dat__prd
ORDER BY dbo.ordcum__.ord__ref DESC, dbo.v4vrs___.afg__ref
' 
