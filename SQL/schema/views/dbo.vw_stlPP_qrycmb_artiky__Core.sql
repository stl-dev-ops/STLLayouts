SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPP_qrycmb_artiky__Core]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPP_qrycmb_artiky__Core
AS
SELECT        ''000000'' AS art__ref, ''------'' AS art__rpn, ''Calculate this'' AS art_oms1, 0.0 as diameter, 0.0 as  breedte_, 0.0 as dikte___
UNION ALL
SELECT       art__ref, art__rpn, art_oms1, diameter, breedte_, dikte___
FROM            dbo.artiky__
WHERE        (art__srt = ''a'') AND (uitgeput = ''n'')
' 
