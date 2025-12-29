SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_est_cost_2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_est_cost_2
AS
SELECT     off__ref, SUM(papier__ + grdvb___) AS COGs,
                          (SELECT     SUM(bedr__bm) AS Expr1
                            FROM          dbo.bstlyn__
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Dollars,
                          (SELECT     MIN(afg_oms1) AS Exp5
                            FROM          dbo.bstlyn__ AS bstlyn___6
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Description,
                          (SELECT     MIN(kla__rpn) AS Expr2
                            FROM          dbo.bstlyn__ AS bstlyn___1
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Customer,
                          (SELECT     MIN(vrzv_dat) AS Expr2
                            FROM          dbo.bstlyn__ AS bstlyn___2
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Ship,
                          (SELECT     MIN(vrzv_dat) AS Expr3
                            FROM          dbo.bstlyn__ AS bstlyn___3
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Ship2,
                          (SELECT     MIN(vrz__dat) AS Expr3
                            FROM          dbo.bstlyn__ AS bstlyn___3
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Ship3,
                          (SELECT     MIN(afg_oms1) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___5
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS Expr1,
                          (SELECT     MIN(CASE WHEN trn__srt = ''0'' THEN ''Stock Job'' ELSE ''Production'' END) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___4
                            WHERE      (ord__ref = dbo.v4kkst__.off__ref)) AS JobType
FROM         dbo.v4kkst__
WHERE     (kst__srt = ''0'')
GROUP BY off__ref
' 
