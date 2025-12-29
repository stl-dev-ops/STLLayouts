SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlbudget]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlbudget
AS
SELECT     year____, month___, budget__, type____,
                          (SELECT     SUM(gaant_kg * bpri__vm) AS Expr1
                            FROM          dbo.grsbon__
                            WHERE      (DATEPART(YYYY, levr_dat) = dbo.stl_bud_.year____) AND (DATEPART(MM, levr_dat) = dbo.stl_bud_.month___) AND (tstval03 = dbo.stl_bud_.typeid__)) 
                      AS po_usd__,
                          (SELECT     SUM(kost____) AS Expr1
                            FROM          dbo.stobew__
                            WHERE      (soort___ = ''3'' OR
                                                   soort___ = ''C'') AND (ord__ref IN
                                                       (SELECT     ord__ref
                                                         FROM          dbo.order___
                                                         WHERE      (tstval05 = dbo.stl_bud_.typeid__))) AND (DATEPART(YYYY, datum___) = dbo.stl_bud_.year____) AND (DATEPART(MM, datum___) 
                                                   = dbo.stl_bud_.month___)) AS job_usd_
FROM         dbo.stl_bud_
' 
