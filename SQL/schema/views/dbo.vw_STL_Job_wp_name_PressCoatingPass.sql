SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_Job_wp_name_PressCoatingPass]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_Job_wp_name_PressCoatingPass
AS
SELECT        TOP (100) PERCENT ord__ref, wp___ref, wp_naam_, dg___ref
FROM            (SELECT        a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          FROM            dbo.w_atl1__ AS a INNER JOIN
                                                    dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref INNER JOIN
                                                    dbo.werkpo__ AS wp ON a.wp___ref = wp.wp___ref
                          WHERE        (wp.kenmerk_ = ''Press'' OR
                                                    wp.kenmerk_ = ''coating'') AND (a.soort___ = ''2'' OR
                                                    a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          FROM            dbo.w_atl2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref INNER JOIN
                                                   dbo.werkpo__ AS wp ON a.wp___ref = wp.wp___ref
                          WHERE        (wp.kenmerk_ = ''Press'' OR
                                                   wp.kenmerk_ = ''coating'') AND (a.soort___ = ''2'' OR
                                                   a.soort___ = ''b'') AND (a.stoppen_ <> '' XX:XX'') AND (a.starten_ <> ''      '') AND (a.stoppen_ <> ''      '') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          FROM            dbo.w_pnt2__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref INNER JOIN
                                                   dbo.werkpo__ AS wp ON a.wp___ref = wp.wp___ref
                          WHERE        (wp.kenmerk_ = ''Press'' OR
                                                   wp.kenmerk_ = ''coating'') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          UNION ALL
                          SELECT        a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref
                          FROM            dbo.hispnt__ AS a INNER JOIN
                                                   dbo.wpakt___ AS w ON a.akt__ref = w.akt__ref AND w.wp___ref = a.wp___ref INNER JOIN
                                                   dbo.werkpo__ AS wp ON a.wp___ref = wp.wp___ref
                          WHERE        (wp.kenmerk_ = ''Press'' OR
                                                   wp.kenmerk_ = ''coating'') AND (w.klasse__ <> ''4'') AND (a.akt__ref <> ''60'')
                          GROUP BY a.ord__ref, a.wp___ref, wp.wp_naam_, a.dg___ref) AS PressMinutesClocked
GROUP BY ord__ref, wp___ref, wp_naam_, dg___ref
' 
