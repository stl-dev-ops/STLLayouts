SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlTSYS]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlTSYS
AS
SELECT        b.lyn__ref, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.naam____ ELSE l.lev_loc1 END) AS name____, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.dienst__ ELSE l.lev_loc2 END) AS Building, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.straat__ ELSE l.lev_loc3 END) AS Street, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN k.postnaam ELSE k.postnaam END ELSE CASE WHEN l.land_ref = ''US'' THEN l.postnaam ELSE l.postnaam END END) AS City, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN LEFT(k.state___, 2) ELSE k.state___ END ELSE CASE WHEN l.land_ref = ''US'' THEN LEFT(l.state___, 2) ELSE l.state___ END END) AS state___, 
                         (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN k.post_ref ELSE k.post_ref END ELSE CASE WHEN l.land_ref = ''US'' THEN l.post_ref ELSE l.post_ref END END) AS zip, ''*'' + b.bsbn_kla + ''*'' AS PONo, 
                         ''*'' + b.zynrefkl + ''*'' AS ItemNo, b.kla__ref
FROM            dbo.bstlyn__ AS b INNER JOIN
                         dbo.klabas__ AS k ON b.kla__ref = k.kla__ref LEFT OUTER JOIN
                         dbo.konpkl__ ON b.knplkref = dbo.konpkl__.knp__ref AND b.kla__ref = dbo.konpkl__.kla__ref LEFT OUTER JOIN
                         dbo.konper__ AS c ON b.lok__ref = c.lok__ref AND b.knplkref = c.knp__ref LEFT OUTER JOIN
                         dbo.levlok__ AS l ON b.lok__ref = l.lok__ref LEFT OUTER JOIN
                         dbo.bstext__ AS x ON b.lyn__ref = x.lyn__ref LEFT OUTER JOIN
                         dbo.lev_vw__ AS lv ON b.levvwref = lv.levvwref
WHERE        (b.kla__ref = N''100462'')
' 
