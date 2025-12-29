SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLSpoolsPerShift]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLSpoolsPerShift
AS
SELECT     TOP (100) PERCENT dbo.GetShiftDate(dbo.afgsku__.crea_dat, dbo.afgsku__.crea_uur) AS shiftDt, dbo.paswrd__.username, COUNT(dbo.afgsku__.crea_usr) 
                      AS spoolCount, MAX(dbo.vw_STLEmpDailyClockingXShiftXUsernbr.tothours) AS WorkHours
FROM         dbo.spoolJob INNER JOIN
                      dbo.spool ON dbo.spoolJob.spoolJobID = dbo.spool.spoolJobID INNER JOIN
                      dbo.afgsku__ ON dbo.spool.sku__ref = dbo.afgsku__.sku__ref INNER JOIN
                      dbo.vw_STLEmpDailyClockingXShiftXUsernbr ON dbo.afgsku__.crea_usr = dbo.vw_STLEmpDailyClockingXShiftXUsernbr.usernbr_ AND 
                      dbo.vw_STLEmpDailyClockingXShiftXUsernbr.datum___ = dbo.GetShiftDate(dbo.afgsku__.crea_dat, dbo.afgsku__.crea_uur) INNER JOIN
                      dbo.paswrd__ ON dbo.afgsku__.crea_usr = dbo.paswrd__.usernbr_
GROUP BY dbo.GetShiftDate(dbo.afgsku__.crea_dat, dbo.afgsku__.crea_uur), dbo.paswrd__.username
ORDER BY shiftDt, dbo.paswrd__.username
' 
