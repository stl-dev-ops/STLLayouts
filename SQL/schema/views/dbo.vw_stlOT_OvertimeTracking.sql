SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlOT_OvertimeTracking]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlOT_OvertimeTracking]
AS
SELECT OT.ID, OT.MachineID, M.Machine, OT.PeriodID, P.Period, OT.OT_Date, OT.Overtime, OT.ReasonID, R.Reason, OT.Updated, OT.UpdatedBy
FROM stlOT_Machines AS M INNER JOIN
stlOT_OvertimeTracking AS OT ON M.ID = OT.MachineID INNER JOIN
stlOT_Periods AS P ON OT.PeriodID = P.ID LEFT JOIN
stlOT_Reasons AS R ON OT.ReasonID = R.ID
' 
