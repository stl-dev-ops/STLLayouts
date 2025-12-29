SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlBA_InvoicedDies]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlBA_InvoicedDies
AS
SELECT     TOP (100) PERCENT ''Invoiced'' AS Rectype, ''4418-0008-0000'' AS GLAcct, LEFT(DATENAME(month, bs___dat), 3) AS BudgetMonth, 
                      CASE WHEN MONTH(dbo.besbon__.bs___dat) >= 10 THEN Year(dbo.besbon__.bs___dat) ELSE Year(dbo.besbon__.bs___dat) - 1 END AS BudgetYear, 
                      CASE WHEN MONTH(dbo.besbon__.bs___dat) >= 10 THEN MONTH(dbo.besbon__.bs___dat) - 9 ELSE MONTH(dbo.besbon__.bs___dat) + 3 END AS PeriodID, 
                      SUM(prof__bm) AS Cost
FROM         dbo.besbon__
WHERE     (lev__ref NOT IN (''200176'', ''200003'', ''200358'')) AND (fac__tst = ''3'')
GROUP BY LEFT(DATENAME(month, bs___dat), 3), CASE WHEN MONTH(dbo.besbon__.bs___dat) >= 10 THEN Year(dbo.besbon__.bs___dat) 
                      ELSE Year(dbo.besbon__.bs___dat) - 1 END, CASE WHEN MONTH(dbo.besbon__.bs___dat) >= 10 THEN MONTH(dbo.besbon__.bs___dat) 
                      - 9 ELSE MONTH(dbo.besbon__.bs___dat) + 3 END
ORDER BY GLAcct, BudgetYear, PeriodID
' 
