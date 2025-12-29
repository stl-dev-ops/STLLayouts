SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_est_cost_3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_est_cost_3
AS
SELECT     CASE WHEN ord__ref < ''0'' THEN ''Stock Sale'' ELSE ord__ref END AS ord__ref, SUM(bedr__bm) AS Dollars, kla__rpn, MIN(vrzv_dat) AS Ship1, MIN(vrzv_dat) AS Ship2, 
                      afg_oms1, off1_ref, lyn__ref,
                          (SELECT     SUM(papier__ + grdvb___) AS COG
                            FROM          dbo.v4kkst__
                            WHERE      (off__ref = dbo.bstlyn__.ord__ref)) AS COGs
FROM         dbo.bstlyn__
GROUP BY ord__ref, off1_ref, lyn__ref, afg_oms1, kla__rpn
' 
