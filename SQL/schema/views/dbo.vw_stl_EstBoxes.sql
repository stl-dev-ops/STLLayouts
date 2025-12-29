SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_EstBoxes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_EstBoxes
AS
SELECT        off__ref, CASE WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 1 THEN aantal_h WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 2 THEN aantale2 WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 3 THEN aantale3 WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 3 THEN aantale3 WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 4 THEN aantale4 WHEN
                             (SELECT        TOP 1 CASE WHEN vpw.vpksrt_1 = ''3'' THEN 1 WHEN vpw.vpksrt_2 = ''3'' THEN 2 WHEN vpw.vpksrt_3 = ''3'' THEN 3 WHEN vpw.vpksrt_4 = ''3'' THEN 4 WHEN vpw.vpksrt_5 = ''3'' THEN 5 ELSE 0 END
                               FROM            v4vpak__ v4v JOIN
                                                         vpakpr__ vpr ON v4v.vpak_ref = vpr.vpak_ref JOIN
                                                         vpakwy__ vpw ON vpr.vpk__ref = vpw.vpk__ref
                               WHERE        off__ref = v.off__ref) = 5 THEN aantale5 ELSE 0 END AS EstBoxes
FROM            dbo.v4vpak__ AS v
' 
