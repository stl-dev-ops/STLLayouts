SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_EstSpoolCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_EstSpoolCount
AS
SELECT     dbo.v4etaf__.off__ref, SUM(dbo.v4etaf__.ant____w) AS EstSpools
FROM         dbo.v4etaf__ INNER JOIN
                      dbo.stdeap__ ON dbo.v4etaf__.etap_ref = dbo.stdeap__.etap_ref
WHERE     (dbo.stdeap__.etap_typ = ''2'') AND (dbo.stdeap__.kombrf_9 = ''Spooling'')
GROUP BY dbo.v4etaf__.off__ref
' 
