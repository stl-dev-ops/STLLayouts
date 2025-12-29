SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_datereport]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_datereport
AS
SELECT     ord__ref, kla__ref, kla__rpn, best_dat, DATEPART(YYYY, best_dat) AS byear, DATEPART(MM, best_dat) AS bmonth, DATEPART(DD, best_dat) AS bday,
                          (SELECT     MAX(vrzvodat) AS Expr1
                            FROM          dbo.bstlyn__
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS originalship,
                          (SELECT     MIN(vrzv_dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___5
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS expship,
                          (SELECT     MAX(klcod_fr) AS Expr1
                            FROM          dbo.v4eti___
                            WHERE      (off__ref = dbo.order___.ord__ref)) AS scratchcode,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__
                                                         WHERE      (kenmerk_ = ''Coating''))) AND (ord__ref = dbo.order___.ord__ref)) AS startcoatdate,
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___15
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___15
                                                         WHERE      (kenmerk_ = ''Coating''))) AND (ord__ref = dbo.order___.ord__ref)) AS stopcoatdate, DATEDIFF(dd,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___14
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___14
                                                         WHERE      (kenmerk_ = ''Coating''))) AND (ord__ref = dbo.order___.ord__ref)),
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___13
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___13
                                                         WHERE      (kenmerk_ = ''Coating''))) AND (ord__ref = dbo.order___.ord__ref))) AS sscoat,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___12
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___12
                                                         WHERE      (kenmerk_ = ''Press''))) AND (ord__ref = dbo.order___.ord__ref)) AS startpressdate,
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___11
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___11
                                                         WHERE      (kenmerk_ = ''Press''))) AND (ord__ref = dbo.order___.ord__ref)) AS stoppressdate, DATEDIFF(dd,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___10
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___10
                                                         WHERE      (kenmerk_ = ''Press''))) AND (ord__ref = dbo.order___.ord__ref)),
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___9
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___9
                                                         WHERE      (kenmerk_ = ''Press''))) AND (ord__ref = dbo.order___.ord__ref))) AS sspress,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___8
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___8
                                                         WHERE      (kenmerk_ = ''Rewinding''))) AND (ord__ref = dbo.order___.ord__ref)) AS startrewinddate,
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___7
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___7
                                                         WHERE      (kenmerk_ = ''Rewinding''))) AND (ord__ref = dbo.order___.ord__ref)) AS stoprewinddate, DATEDIFF(dd,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___6
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___6
                                                         WHERE      (kenmerk_ = ''Rewinding''))) AND (ord__ref = dbo.order___.ord__ref)),
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___5
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___5
                                                         WHERE      (kenmerk_ = ''Rewinding''))) AND (ord__ref = dbo.order___.ord__ref))) AS ssrewind,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___4
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___4
                                                         WHERE      (kenmerk_ = ''Spooling''))) AND (ord__ref = dbo.order___.ord__ref)) AS startspooldate,
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___3
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___3
                                                         WHERE      (kenmerk_ = ''Spooling''))) AND (ord__ref = dbo.order___.ord__ref)) AS stopspooldate, DATEDIFF(dd,
                          (SELECT     MIN(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___2
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___2
                                                         WHERE      (kenmerk_ = ''Spooling''))) AND (ord__ref = dbo.order___.ord__ref)),
                          (SELECT     MAX(datum___) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___1
                            WHERE      (wp___ref IN
                                                       (SELECT     wp___ref
                                                         FROM          dbo.werkpo__ AS werkpo___1
                                                         WHERE      (kenmerk_ = ''Spooling''))) AND (ord__ref = dbo.order___.ord__ref))) AS Expr1,
                          (SELECT     MIN(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___4
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS firstshipdate,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___3
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS lastshipdate, DATEDIFF(dd, best_dat,
                          (SELECT     MIN(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___2
                            WHERE      (ord__ref = dbo.order___.ord__ref))) AS orderfship, DATEDIFF(dd, best_dat,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___1
                            WHERE      (ord__ref = dbo.order___.ord__ref))) AS orderlship, omschr__, oplage__, DATEDIFF(dd, best_dat,
                          (SELECT     MAX(vrzvodat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___6
                            WHERE      (ord__ref = dbo.order___.ord__ref))) AS orderoship, DATEDIFF(dd, best_dat,
                          (SELECT     MAX(vrzv_dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___6
                            WHERE      (ord__ref = dbo.order___.ord__ref))) AS ordervship
FROM         dbo.order___
' 
