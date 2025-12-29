SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPayChexCERMHours]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_STLPayChexCERMHours]
AS
SELECT     TOP (100) PERCENT r.EmpName, r.pDate AS FromDate, r.ToDate, r.PayChexHours, cm.tothours AS CERMclocking, r.PayChexHours - cm.tothours AS diff
FROM         (SELECT     firstName + '' '' + lastName AS EmpName, stlPaychexImport.fixedClockingDate AS pDate, fixedClockingDate AS ToDate, SUM(regular + ot) AS PayChexHours, empNo
                       FROM          dbo.stlPayChexImport
                       GROUP BY firstName + '' '' + lastName, fixedClockingDate, empNo) AS r LEFT OUTER JOIN
                      dbo.vw_STLPayChex_Emp_Daily_Clocking_By_Shift AS cm ON r.empNo = cm.empNo AND r.pDate = cm.datum___
ORDER BY r.EmpName, FromDate
' 
