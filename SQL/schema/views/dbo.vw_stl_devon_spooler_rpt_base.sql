SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spooler_rpt_base]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_spooler_rpt_base
AS
SELECT     dbo.GetShiftDate(dbo.afgsku__.crea_dat, dbo.afgsku__.crea_uur) AS shift_date, dbo.afgsku__.crea_usr, COUNT(*) AS Spools
FROM         dbo.afgsku__ INNER JOIN
                      dbo.spool ON dbo.afgsku__.sku__ref = dbo.spool.sku__ref
GROUP BY dbo.afgsku__.crea_usr, dbo.GetShiftDate(dbo.afgsku__.crea_dat, dbo.afgsku__.crea_uur)
' 
