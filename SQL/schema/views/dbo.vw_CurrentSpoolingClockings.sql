SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CurrentSpoolingClockings]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_CurrentSpoolingClockings
AS
SELECT     TOP (100) PERCENT ord__ref, SUM(totminutes) AS totminutes
FROM         (SELECT     ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_)) AS totminutes
                       FROM          dbo.w_atl1__
                       WHERE      (wp___ref IN
                                                  (SELECT     wp___ref
                                                    FROM          dbo.werkpo__
                                                    WHERE      (kenmerk_ = ''Spooling''))) AND (soort___ = ''2'' OR
                                              soort___ = ''b'') AND (stoppen_ <> '' XX:XX'') AND (starten_ <> ''      '') AND (stoppen_ <> ''      '')
                       GROUP BY ord__ref
                       UNION ALL
                       SELECT     ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_)) AS totminutes
                       FROM         dbo.w_atl2__
                       WHERE     (wp___ref IN
                                                 (SELECT     wp___ref
                                                   FROM          dbo.werkpo__ AS werkpo___3
                                                   WHERE      (kenmerk_ = ''Spooling''))) AND (soort___ = ''2'' OR
                                             soort___ = ''b'') AND (stoppen_ <> '' XX:XX'') AND (starten_ <> ''      '') AND (stoppen_ <> ''      '')
                       GROUP BY ord__ref
                       UNION ALL
                       SELECT     ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_)) AS totminutes
                       FROM         dbo.w_pnt2__
                       WHERE     (wp___ref IN
                                                 (SELECT     wp___ref
                                                   FROM          dbo.werkpo__ AS werkpo___2
                                                   WHERE      (kenmerk_ = ''Spooling'')))
                       GROUP BY ord__ref
                       UNION ALL
                       SELECT     ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS totminutes
                       FROM         dbo.hispnt__
                       WHERE     (wp___ref IN
                                                 (SELECT     wp___ref
                                                   FROM          dbo.werkpo__ AS werkpo___1
                                                   WHERE      (kenmerk_ = ''Spooling'')))
                       GROUP BY ord__ref) AS SpoolingMinutesClocked
GROUP BY ord__ref
ORDER BY ord__ref
' 
