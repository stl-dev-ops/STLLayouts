SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLFedExInterface]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLFedExInterface
AS
SELECT        TOP (100) PERCENT b.lbn__ref AS PackingListRef, b.lev__com AS BillingComment, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.naam____ ELSE l.lev_loc1 END) AS Name, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.telefoon ELSE l.telefoon END) AS Phone, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.dienst__ ELSE l.lev_loc2 END) AS Dept, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN k.straat__ ELSE l.lev_loc3 END) AS Street, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN k.postnaam ELSE k.postnaam END ELSE CASE WHEN l.land_ref = ''US'' THEN l.postnaam ELSE l.postnaam END END) AS City, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN LEFT(k.state___, 2) ELSE k.state___ END ELSE CASE WHEN l.land_ref = ''US'' THEN LEFT(l.state___, 2) ELSE l.state___ END END) AS State, 
                         (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN k.post_ref ELSE k.post_ref END ELSE CASE WHEN l.land_ref = ''US'' THEN l.post_ref ELSE l.post_ref END END) AS Zip, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN CASE WHEN k.land_ref = ''US'' THEN ''USA'' ELSE k.land_ref END ELSE CASE WHEN l.land_ref = ''US'' THEN ''USA'' ELSE l.land_ref END END) AS Country, (CASE WHEN b.lok__ref IS NULL OR
                         b.lok__ref = '''' THEN konpkl__.knp__vnm + '' '' + konpkl__.knp__nam ELSE c.knp__vnm + '' '' + c.knp__nam END) AS Contact, b.bsbn_kla AS CustPO, lv.omschr__ AS TermsOfDelivery, x.tekst_09 AS Email1, x.tekst_10 AS Email2, 
                         x.tekst_11 AS Email3, x.tekst_12 AS Email4, CASE WHEN x.tekst_16 = '''' OR
                         x.tekst_16 IS NULL 
                         THEN CASE b.kla__ref WHEN ''100606'' THEN 1 WHEN ''100525'' THEN 1 WHEN ''100343'' THEN 1 WHEN ''100579'' THEN 1 WHEN ''100611'' THEN 1 WHEN ''100086'' THEN 1 ELSE 0 END ELSE 1 END AS GenericShipment
FROM            dbo.bstlyn__ AS b INNER JOIN
                         dbo.klabas__ AS k ON b.kla__ref = k.kla__ref LEFT OUTER JOIN
                         dbo.konpkl__ ON b.knplkref = dbo.konpkl__.knp__ref AND b.kla__ref = dbo.konpkl__.kla__ref LEFT OUTER JOIN
                         dbo.konper__ AS c ON b.lok__ref = c.lok__ref AND b.knplkref = c.knp__ref LEFT OUTER JOIN
                         dbo.levlok__ AS l ON b.lok__ref = l.lok__ref LEFT OUTER JOIN
                         dbo.bstext__ AS x ON b.lyn__ref = x.lyn__ref LEFT OUTER JOIN
                         dbo.lev_vw__ AS lv ON b.levvwref = lv.levvwref
WHERE        (b.lyn__ref IN
                             (SELECT        TOP (1) lyn__ref
                               FROM            dbo.bstlyn__
                               WHERE        (lbn__ref = b.lbn__ref)))
' 
