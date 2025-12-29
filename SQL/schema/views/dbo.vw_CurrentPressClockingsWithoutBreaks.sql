SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CurrentPressClockingsWithoutBreaks]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_CurrentPressClockingsWithoutBreaks
AS
SELECT        TOP (100) PERCENT ord__ref, SUM(totminutes) AS totminutes
FROM            (SELECT        a.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_atl1__ AS a INNER JOIN
                                                    dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                        (SELECT        wp___ref
                                                          FROM            dbo.werkpo__
                                                          WHERE        (kenmerk_ = ''Press''))) AND (a.soort___ = ''2'' OR
                                                    a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref
                          UNION ALL
                          SELECT        a.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_atl2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___3
                                                         WHERE        (kenmerk_ = ''Press''))) AND (a.soort___ = ''2'' OR
                                                   a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref
                          UNION ALL
                          SELECT        a.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_pnt2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___2
                                                         WHERE        (kenmerk_ = ''Press''))) AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref
                          UNION ALL
                          SELECT        a.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(a.duur____)) AS totminutes
                          FROM            dbo.hispnt__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___1
                                                         WHERE        (kenmerk_ = ''Press''))) AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref) AS PressMinutesClocked
GROUP BY ord__ref
' 
