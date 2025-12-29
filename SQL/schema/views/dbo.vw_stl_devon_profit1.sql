SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_profit1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_profit1
AS
SELECT     dbo.order___.ord__ref AS JOBID, dbo.order___.ord__rpn AS JOBKW, dbo.order___.best_dat AS ORDERDATE, dbo.order___.kla__ref AS CUSTID, 
                      dbo.order___.kla__rpn AS CUSTKW, dbo.order___.vrt__ref AS SALESREPID, dbo.order___.prkl_ref AS PRODGRID, dbo.order___.omschr__ AS JOBDESC, 
                      dbo.order___.oplage__ AS JOBQTY, dbo.prodkl__.omschr__ AS PRODGRDESC, dbo.ordcum__.lonen_ok AS ACT_WAGE_C, dbo.ordcum__.machi_ok AS ACT_MACH_C, 
                      dbo.ordcum__.afsch_hd AS act_dep, dbo.ordcum__.overh_ok AS ACT_OVER_C, dbo.ordcum__.papie_ok AS ACT_PAPE_C, dbo.ordcum__.grdvrbok AS ACT_OTHM_C, 
                      dbo.ordcum__.ondaan__ AS ACT_OUTS_C, MAX(dbo.bstlyn__.vrz__dat) AS SHIPDFROM, MAX(dbo.bstlyn__.vrz__dat) AS SHIPDTO, MIN(dbo.bstlyn__.vrz__tst) 
                      AS SHIPSTATUS, dbo.afgprd__.prd__rpn AS PRODTYPEKW
FROM         dbo.order___ INNER JOIN
                      dbo.afgprd__ ON dbo.order___.prd__ref = dbo.afgprd__.prd__ref LEFT OUTER JOIN
                      dbo.prodkl__ ON dbo.order___.prkl_ref = dbo.prodkl__.prkl_ref LEFT OUTER JOIN
                      dbo.ordcum__ ON dbo.order___.ord__ref = dbo.ordcum__.ord__ref LEFT OUTER JOIN
                      dbo.bstlyn__ ON dbo.order___.ord__ref = dbo.bstlyn__.ord__ref
WHERE     (dbo.order___.ord__ref IN
                          (SELECT     ord__ref
                            FROM          dbo.bstlyn__ AS bstlyn___1))
GROUP BY dbo.order___.ord__ref, dbo.order___.ord__rpn, dbo.order___.best_dat, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.vrt__ref, dbo.order___.prkl_ref, 
                      dbo.order___.omschr__, dbo.order___.oplage__, dbo.prodkl__.omschr__, dbo.ordcum__.lonen_ok, dbo.ordcum__.machi_ok, dbo.ordcum__.overh_ok, 
                      dbo.ordcum__.afsch_ok, dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.afgprd__.prd__rpn, dbo.ordcum__.afsch_hd
' 
