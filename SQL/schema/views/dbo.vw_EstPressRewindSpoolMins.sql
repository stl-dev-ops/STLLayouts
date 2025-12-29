SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_EstPressRewindSpoolMins]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_EstPressRewindSpoolMins
AS
SELECT     off__ref, dbo.GetMinutesFromCERMTimeString(stel_tyd) + dbo.GetMinutesFromCERMTimeString(druk_tyd) + dbo.GetMinutesFromCERMTimeString(was__tyd) 
                      AS EstMins, ''Press'' AS Dept, ''5'' as afd__ref
FROM         v4eti___
UNION ALL
SELECT     dbo.v4etaf__.off__ref, dbo.GetMinutesFromCERMTimeString(dbo.v4etaf__.stel_tyd) + dbo.GetMinutesFromCERMTimeString(dbo.v4etaf__.prod_tyd) AS EstMins, 
                      dbo.stdeap__.kombrf_9 AS Dept,
                    CASE 
						WHEN dbo.stdeap__.kombrf_9 LIKE ''%Rewind%'' THEN ''7''
						WHEN dbo.stdeap__.kombrf_9 LIKE ''%Spool%'' THEN ''8''
						ELSE NULL
					END as afd__ref
                      
FROM         dbo.v4etaf__ INNER JOIN
                      dbo.stdeap__ ON dbo.v4etaf__.etap_ref = dbo.stdeap__.etap_ref
WHERE     (dbo.v4etaf__.etap_typ = ''2'') AND (dbo.stdeap__.kombrf_9 LIKE ''%Rewind%'' OR
                      dbo.stdeap__.kombrf_9 LIKE ''%Spool%'')

' 
