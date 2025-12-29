SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_RowellCERMHours]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_RowellCERMHours
AS
SELECT     TOP (100) PERCENT r.EmpName, r.Dept, r.pDate AS FromDate, r.ToDate, r.RowellHours, cm.tothours AS CERMclocking, r.RowellHours - cm.tothours AS diff
FROM         (SELECT     EmployeeName AS EmpName, PunchDate AS pDate, PunchDate AS ToDate, SUM(Hours) AS RowellHours, EmployeeID, Department AS Dept
                       FROM          dbo.stlRowellImport
                       GROUP BY EmployeeName, PunchDate, EmployeeID, Department) AS r LEFT OUTER JOIN
                      dbo.vw_Rowell_emp_daily_clocking_By_Shift AS cm ON r.EmployeeID = cm.EmployeeID AND r.pDate = cm.datum___
ORDER BY r.EmpName, FromDate
' 
