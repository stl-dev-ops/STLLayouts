SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_profit_bi]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_profit_bi
AS
SELECT     JOBID, JOBKW, ORDERDATE, CUSTID, CUSTKW, SALESREPID, PRODGRID, JOBDESC, JOBQTY, PRODGRDESC, ACT_WAGE_C, ACT_MACH_C, ACT_OVER_C, 
                      ACT_PAPE_C, ACT_OTHM_C, ACT_OUTS_C, SHIPDFROM, SHIPDTO, SHIPSTATUS, PRODTYPEKW,
                          (SELECT     SUM(bedrf_bm) AS SALESPR
                            FROM          dbo.bstlyn__
                            WHERE      (ord__ref = dbo.vw_profitability.JOBID)) AS Sales
FROM         dbo.vw_profitability
WHERE     (SHIPSTATUS = ''Y'')
' 
