SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCleanup_Start_Press]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCleanup_Start_Press
AS
SELECT        h.ord__ref, MAX(DATEADD(mi, dbo.GetMinutesFromCERMTimeString(h.starten_), h.datum___)) AS CleanupStartDt
FROM            dbo.hispnt__ AS h INNER JOIN
                         dbo.wpakt___ AS w ON h.wp___ref = w.wp___ref AND h.akt__ref = w.akt__ref
WHERE        (w.akt_oms_ = ''cleanup'') AND (h.wp___ref IN (''5001'', ''5002'', ''5003'')) AND (h.starten_ <> ''  0:00'')
GROUP BY h.ord__ref
' 
