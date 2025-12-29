SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_EstSpoolingMins]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_EstSpoolingMins]
AS
SELECT     dbo.v4etaf__.off__ref, dbo.GetMinutesFromCERMTimeString(dbo.v4etaf__.stel_tyd) + dbo.GetMinutesFromCERMTimeString(dbo.v4etaf__.prod_tyd) 
                      AS EstSpoolingMins
FROM         dbo.v4etaf__ INNER JOIN
                      dbo.stdeap__ ON dbo.v4etaf__.etap_ref = dbo.stdeap__.etap_ref
WHERE     (dbo.v4etaf__.etap_typ = ''2'') AND (dbo.stdeap__.kombrf_9 LIKE N''%Spool%'')
' 
