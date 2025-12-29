SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_profit]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_profit
AS
SELECT     dbo.vw_profitability.JOBID AS Expr1, dbo.vw_profitability.ACT_MACH_C + dbo.vw_profitability.ACT_PAPE_C + dbo.vw_profitability.ACT_OTHM_C AS Total_Cost, 
                      dbo.vw_profitability.ACT_PAPE_C + dbo.vw_profitability.ACT_OTHM_C AS Total_COGs, dbo.vw_profitability.ACT_MACH_C AS Expr2, 
                      dbo.vw_profitability.ACT_PAPE_C AS Expr3, dbo.vw_profitability.ACT_OTHM_C AS Expr4, dbo.bstlyn__.bedrf_vm, dbo.bstlyn__.ord__ref, dbo.bstlyn__.bedro_vm, 
                      dbo.bstlyn__.bedrf_vm - dbo.vw_profitability.ACT_MACH_C - dbo.vw_profitability.ACT_PAPE_C - dbo.vw_profitability.ACT_OTHM_C AS Profit, dbo.bstlyn__.b_aantal, 
                      dbo.bstlyn__.f_aantal, dbo.vw_profitability.CUSTKW AS Expr5, dbo.vw_profitability.JOBDESC AS Expr6, dbo.vw_profitability.PRODTYPEKW AS Expr7, 
                      dbo.order___.tstval01, dbo.vw_profitability.JOBQTY AS Expr8, dbo.vw_profitability.SHIPDFROM AS Expr9, dbo.vw_profitability.SHIPDTO AS Expr10, 
                      dbo.vw_profitability.*
FROM         dbo.vw_profitability INNER JOIN
                      dbo.bstlyn__ ON dbo.vw_profitability.JOBID = dbo.bstlyn__.ord__ref INNER JOIN
                      dbo.order___ ON dbo.bstlyn__.ord__ref = dbo.order___.ord__ref
' 
