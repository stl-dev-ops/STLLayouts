SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPaychexHourlyEarnings]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlPaychexHourlyEarnings]
AS
SELECT DISTINCT 
ISNULL(emp.firstName + '' '' + emp.lastName, ''Unknown empNo: '' + CAST(emp.empNo AS nvarchar) ) AS EmployeeName, 
FORMAT(RegularHours.CompensationMonth, ''MMM yyyy'') MonthYear, 
FORMAT(TotalEarnings.TotalEarnings / (RegularHours.TotalHours), ''C'') DollarPerHour 
FROM
(
	SELECT MAX(CompensationMonth) CompensationMonth
	FROM stlPaychexCompensation
) maxFDofM JOIN
(
	SELECT empNo, CompensationMonth, SUM(Hours) TotalHours
	FROM stlPaychexCompensation
	WHERE OrganizationLevelID1 IN (200, 215)
	AND CompensationType NOT IN (''Overtime'')
	GROUP BY empNo, CompensationMonth
) RegularHours ON maxFDofM.CompensationMonth = RegularHours.CompensationMonth LEFT JOIN
(
	SELECT empNo, CompensationMonth, SUM(Earnings) TotalEarnings
	FROM stlPaychexCompensation
	WHERE OrganizationLevelID1 IN (200, 215)
	GROUP BY empNo, CompensationMonth
) TotalEarnings ON RegularHours.empNo = TotalEarnings.empNo AND RegularHours.CompensationMonth = TotalEarnings.CompensationMonth LEFT JOIN
stlPaychexEmpNo AS emp ON emp.empNo = RegularHours.empNo 
WHERE RegularHours.TotalHours <> 0
' 
