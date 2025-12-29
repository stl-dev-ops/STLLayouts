SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_incentive_pot_vs_act]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_incentive_pot_vs_act
AS
SELECT     TOP (100) PERCENT i.datum___ AS FromDate, i.datum___ AS ToDate, i.ord__ref, i.exception, e.department, e.wn_vnaam + '' '' + e.wn_naam_ AS empName, e.pot__amt, 
                      e.pay__amt
FROM         dbo.incent__ AS i INNER JOIN
                      dbo.incente_ AS e ON i.ord__ref = e.ord__ref
WHERE     (i.datum___ IS NOT NULL) AND (i.locked = 1) AND (e.pot__amt > 0)
ORDER BY FromDate
' 
