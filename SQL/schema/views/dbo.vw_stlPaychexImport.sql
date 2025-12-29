SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPaychexImport]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlPaychexImport]
AS

SELECT stlPaychexImportID, empNo, lastName, firstName, clockingDate, clockInType, clockInTime, clockOutType, clockOutTime, regular, ot, totalPaid, unpaid,
CAST(clockingDate AS datetime) + CAST(clockInTime AS datetime) CLOCK_IN,
DATEADD(MILLISECOND, (totalPaid + unpaid) * 60.0 * 60.0 * 1000.0, CAST(clockingDate AS datetime) + CAST(clockInTime AS datetime)) CLOCK_OUT, fixedClockingDate

FROM stlPaychexImport


' 
