SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_crm_stobew__]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_crm_stobew__
AS
SELECT jobnr_vw, soort___, identify, datum___, uur_____, user____, art__srt, art__ref, artd_ref, zyn__ref, aantal__, rollen__, prijs___, markt___, kost____, toeslag_, kom__ref, kmnt_ref, doss_ord, doss_kst, lev__ref, grbonref, grs__vnr, jobnrlev, mat__ref, job__inl, fkgr_ref, ord__ref, suborder, kpn__ref, kla__ref, produktf, rbk__ref, wp___ref, wn___ref, res__ref, rowid
FROM stobew__
WHERE soort___ NOT IN  (''3'', ''5'', ''6'', ''7'', ''8'', ''C'')
UNION
SELECT jobnr_vw, soort___, identify, datum___, uur_____, user____, art__srt, art__ref, artd_ref, zyn__ref, aantal__, rollen__, prijs___, markt___, - kost____, - toeslag_, kom__ref, kmnt_ref, doss_ord, doss_kst, lev__ref, grbonref, grs__vnr, jobnrlev, mat__ref, job__inl, fkgr_ref, ord__ref, suborder, kpn__ref, kla__ref, produktf, rbk__ref, wp___ref, wn___ref, res__ref, rowid
FROM stobew__
WHERE soort___ IN (''3'', ''5'', ''6'', ''7'', ''8'', ''C'')' 
