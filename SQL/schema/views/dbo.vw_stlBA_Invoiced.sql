SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlBA_Invoiced]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlBA_Invoiced
AS
SELECT     TOP (100) PERCENT ''Invoiced'' AS Rectype, CASE WHEN vw_stlBA_tstval03GLAccount.GLAccount IS NULL 
                      THEN cde___ap ELSE vw_stlBA_tstval03GLAccount.GLAccount END AS GLAcct, LEFT(DATENAME(month, dbo.grsbon__.levr_dat), 3) AS BudgetMonth, 
                      CASE WHEN MONTH(dbo.grsbon__.levr_dat) >= 10 THEN Year(dbo.grsbon__.levr_dat) ELSE Year(dbo.grsbon__.levr_dat) - 1 END AS BudgetYear, 
                      CASE WHEN MONTH(dbo.grsbon__.levr_dat) >= 10 THEN MONTH(dbo.grsbon__.levr_dat) - 9 ELSE MONTH(dbo.grsbon__.levr_dat) + 3 END AS PeriodID, 
                      SUM(dbo.grsbon__.totfp_bm) AS Cost
FROM         dbo.grdbon__ LEFT OUTER JOIN
                      dbo.grsbon__ ON dbo.grdbon__.grbonref = dbo.grsbon__.grbonref LEFT OUTER JOIN
                      dbo.artiky__ ON dbo.grsbon__.art__ref = dbo.artiky__.art__ref LEFT OUTER JOIN
                      dbo.levbas__ ON dbo.grdbon__.lev__ref = dbo.levbas__.lev__ref LEFT OUTER JOIN
                      dbo.artcat__ ON dbo.artiky__.artc_ref = dbo.artcat__.artc_ref LEFT OUTER JOIN
                      dbo.algrek__ ON dbo.artcat__.akpr_ref = dbo.algrek__.arek_ref LEFT OUTER JOIN
                      dbo.vw_stlBA_tstval03GLAccount ON dbo.grsbon__.tstval03 = dbo.vw_stlBA_tstval03GLAccount.tstval03
WHERE     (dbo.algrek__.cde___ap IN
                          (SELECT     GLAccount
                            FROM          dbo.stlBA_GLAccount)) AND (dbo.levbas__.lev__ref NOT IN (''200176'', ''200003'', ''200358'')) AND (dbo.grsbon__.fac__tst = ''3'')
GROUP BY CASE WHEN vw_stlBA_tstval03GLAccount.GLAccount IS NULL THEN cde___ap ELSE vw_stlBA_tstval03GLAccount.GLAccount END, LEFT(DATENAME(month, 
                      dbo.grsbon__.levr_dat), 3), CASE WHEN MONTH(dbo.grsbon__.levr_dat) >= 10 THEN Year(dbo.grsbon__.levr_dat) ELSE Year(dbo.grsbon__.levr_dat) - 1 END, 
                      CASE WHEN MONTH(dbo.grsbon__.levr_dat) >= 10 THEN MONTH(dbo.grsbon__.levr_dat) - 9 ELSE MONTH(dbo.grsbon__.levr_dat) + 3 END
ORDER BY GLAcct, BudgetYear, PeriodID
' 
