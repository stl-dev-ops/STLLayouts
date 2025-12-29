SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPressWaitOnRewind]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLPressWaitOnRewind
AS
SELECT        TOP (100) PERCENT l.ord__ref, CONVERT(DATE, l.LastSFGDt) AS FromDate, CONVERT(DATE, l.LastSFGDt) AS ToDate, l.LastSFGDt, c.CleanupStartDt, DATEDIFF(minute, l.LastSFGDt, c.CleanupStartDt) AS PressWaitMinutes, 
                         w.wn_vnaam + '' '' + w.wn_naam_ AS RewindOperator
FROM            dbo.vw_STL_LastSFGDate_Press AS l INNER JOIN
                         dbo.vw_STLCleanup_Start_Press AS c ON l.ord__ref = c.ord__ref LEFT OUTER JOIN
                         dbo.vw_STLLastRewinder AS r ON l.ord__ref = r.ord__ref LEFT OUTER JOIN
                         dbo.werknm__ AS w ON r.wn___ref = w.wn___ref
' 
