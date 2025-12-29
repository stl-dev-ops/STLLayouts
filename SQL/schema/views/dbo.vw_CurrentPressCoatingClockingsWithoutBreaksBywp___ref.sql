SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CurrentPressCoatingClockingsWithoutBreaksBywp___ref]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_CurrentPressCoatingClockingsWithoutBreaksBywp___ref
AS
SELECT        TOP (100) PERCENT z.ord__ref, z.wp___ref, w.wp_naam_, z.dg___ref, SUM(z.totminutes) AS totminutes
FROM            (SELECT        a.ord__ref, a.wp___ref, a.dg___ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_atl1__ AS a INNER JOIN
                                                    dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                        (SELECT        wp___ref
                                                          FROM            dbo.werkpo__
                                                          WHERE        (kenmerk_ = ''Press'') OR
                                                                                    (kenmerk_ = ''Cohesio'') OR
                                                                                    (kenmerk_ = ''Coating''))) AND (a.soort___ = ''2'' OR
                                                    a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, a.dg___ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_atl2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___3
                                                         WHERE        (kenmerk_ = ''Press'') OR
                                                                                   (kenmerk_ = ''Cohesio'') OR
                                                                                   (kenmerk_ = ''Coating''))) AND (a.soort___ = ''2'' OR
                                                   a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, a.dg___ref, SUM(dbo.GetMinutesFromCERMTimeString(a.stoppen_) - dbo.GetMinutesFromCERMTimeString(a.starten_)) AS totminutes
                          FROM            dbo.w_pnt2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___2
                                                         WHERE        (kenmerk_ = ''Press'') OR
                                                                                   (kenmerk_ = ''Cohesio'') OR
                                                                                   (kenmerk_ = ''Coating''))) AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, a.dg___ref, SUM(dbo.GetMinutesFromCERMTimeString(a.duur____)) AS totminutes
                          FROM            dbo.hispnt__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref
                          WHERE        (a.wp___ref IN
                                                       (SELECT        wp___ref
                                                         FROM            dbo.werkpo__ AS werkpo___1
                                                         WHERE        (kenmerk_ = ''Press'') OR
                                                                                   (kenmerk_ = ''Cohesio'') OR
                                                                                   (kenmerk_ = ''Coating''))) AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, a.dg___ref) AS z INNER JOIN
                         dbo.werkpo__ AS w ON z.wp___ref = w.wp___ref
GROUP BY z.ord__ref, z.wp___ref, w.wp_naam_, z.dg___ref
' 
