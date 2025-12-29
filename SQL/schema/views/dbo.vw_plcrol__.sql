SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_plcrol__]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_plcrol__
AS
SELECT        dbo.plcrol__.art__ref, dbo.artiky__.art__rpn, dbo.plcrol__.artd_ref, dbo.plcrol__.hlf__ref, dbo.plcrol__.wp___ref, dbo.werkpo__.wp_naam_, dbo.plcrol__.akt__ref, dbo.wpakt___.akt_oms_, dbo.plcrol__.toestand, 
                         CASE WHEN toestand = ''1'' THEN ''Active'' WHEN toestand = ''2'' THEN ''Not registered'' WHEN toestand = ''3'' THEN ''Registered'' END AS Toes, dbo.plcrol__.soort___, dbo.plcrol__.dat__beg, dbo.plcrol__.uur__beg, 
                         dbo.plcrol__.dt___beg, dbo.plcrol__.dat__end, dbo.plcrol__.uur__end, dbo.plcrol__.dt___end, dbo.plcrol__.aantal__, dbo.plcrol__.aantlmok, dbo.plcrol__.aantexok, dbo.plcrol__.plc__beg, dbo.plcrol__.plc__end, 
                         dbo.plcrol__.wn___ref, dbo.werknm__.wn___rpn, dbo.plcrol__.ord__ref, dbo.plcrol__.suborder, dbo.plcrol__.kpn__ref, dbo.plcrol__.vrs_refs, dbo.plcrol__.vrm__ref, dbo.plcrol__.jobnr_vw, dbo.plcrol__.rowid
FROM            dbo.plcrol__ LEFT OUTER JOIN
                         dbo.wpakt___ ON dbo.plcrol__.akt__ref = dbo.wpakt___.akt__ref AND dbo.wpakt___.wp___ref = dbo.plcrol__.wp___ref LEFT OUTER JOIN
                         dbo.artiky__ ON dbo.artiky__.art__ref = dbo.plcrol__.art__ref LEFT OUTER JOIN
                         dbo.werkpo__ ON dbo.werkpo__.wp___ref = dbo.plcrol__.wp___ref LEFT OUTER JOIN
                         dbo.werknm__ ON dbo.werknm__.wn___ref = dbo.plcrol__.wn___ref
' 
