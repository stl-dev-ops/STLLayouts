SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlBA_InvoicedAndOrdered]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlBA_InvoicedAndOrdered
AS
SELECT     RecType, GLAcct, BudgetMonth, BudgetYear, PeriodID, Cost
FROM         vw_stlBA_Ordered
UNION ALL
SELECT     RecType, GLAcct, BudgetMonth, BudgetYear, PeriodID, Cost
FROM         vw_stlBA_OrderedDies
UNION ALL
SELECT     Rectype, GLAcct, BudgetMonth, BudgetYear, PeriodID, Cost
FROM         vw_stlBA_Invoiced
UNION ALL
SELECT     Rectype, GLAcct, BudgetMonth, BudgetYear, PeriodID, Cost
FROM         vw_stlBA_InvoicedDies
' 
