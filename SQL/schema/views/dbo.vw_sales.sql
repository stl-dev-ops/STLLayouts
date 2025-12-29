SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_sales]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_sales
AS
SELECT     lyn__ref, afg__ref, afg__rpn, afg2_ref, afg_oms1, afg_oms2, kla__ref, kla__rpn, vrt__ref, b_aantal, f_aantal, bedrf_bm, fak__ref, DATEPART(YYYY, dok__dat) 
                      AS f_year, DATEPART(MM, dok__dat) AS f_month, DATEPART(DD, dok__dat) AS f_day, DATEPART(WK, dok__dat) AS f_week, DATEPART(Q, dok__dat) AS f_quarter, 
                      ord__ref,
                          (SELECT     SUM(lonen___) AS Expr1
                            FROM          dbo.ordrub__
                            WHERE      (ord__ref = dbo.bstlyn__.ord__ref) AND (rbk__ref <> ''940000'')) AS k_wages_,
                          (SELECT     SUM(machines) AS Expr1
                            FROM          dbo.ordrub__ AS ordrub___4
                            WHERE      (ord__ref = dbo.bstlyn__.ord__ref) AND (rbk__ref <> ''940000'')) AS k_machi_,
                          (SELECT     SUM(papier__) AS Expr1
                            FROM          dbo.ordrub__ AS ordrub___3
                            WHERE      (ord__ref = dbo.bstlyn__.ord__ref) AND (rbk__ref <> ''940000'')) AS k_paper_,
                          (SELECT     SUM(grdvrb__) AS Expr1
                            FROM          dbo.ordrub__ AS ordrub___2
                            WHERE      (ord__ref = dbo.bstlyn__.ord__ref) AND (rbk__ref <> ''940000'')) AS k_othma_,
                          (SELECT     SUM(ondaan__) AS Expr1
                            FROM          dbo.ordrub__ AS ordrub___1
                            WHERE      (ord__ref = dbo.bstlyn__.ord__ref) AND (rbk__ref <> ''940000'')) AS k_ondaa_, bedro_vm, vrs__ref, vrz__tst, lbn__ref
FROM         dbo.bstlyn__
UNION ALL
select 
'''' as lyn__ref,
'''' as fak__ref,
'''' as afg__rpn,
'''' as afg2_ref,
'''' as afg_oms1,
'''' as afg_oms2,
hafgfk__.kla__ref,
hafgfk__.kla__rpn,
'''' as vrt__ref,
'''' as b_aantal,
hafgfl__.f_aantal,
tota__vm as bedrf_bm,
hafgfl__.fak__ref,
DATEPART(YYYY,hafgfk__.dok__dat) as f_year,
DATEPART(MM,hafgfk__.dok__dat) as f_month,
DATEPART(DD,hafgfk__.dok__dat) as f_day,
DATEPART(WK,hafgfk__.dok__dat) as f_week,
DATEPART(QQ,hafgfk__.dok__dat) as f_quarter,
'''' as ord__ref,
'''' as k_wages_,
'''' as k_machi_,
'''' as k_paper_,
'''' as k_othma_,
'''' as k_ondaa_,
'''' as bedro_vm,
'''' as vrs__ref,
'''' as vrz__tst,
'''' as lbn__ref

 from hafgfl__ left join hafgfk__ on hafgfl__.fak__ref=hafgfk__.fak__ref
 
 where hafgfl__.fak__ref not in (select fak__ref from bstlyn__) and hafgfl__.basisopl<>0


' 
