SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spooler_rpt_base2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_stl_devon_spooler_rpt_base2]
AS
SELECT     rb.crea_usr, rb.shift_date AS FromDate, rb.shift_date AS ToDate, rb.Spools, c.tothours
FROM         dbo.vw_stl_devon_spooler_rpt_base AS rb INNER JOIN
                      dbo.vw_STLEmpDailyClockingXShiftXUsernbr AS c ON rb.crea_usr = c.usernbr_ AND rb.shift_date = c.datum___
' 
