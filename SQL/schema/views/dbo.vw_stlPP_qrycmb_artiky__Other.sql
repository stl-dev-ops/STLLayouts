SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPP_qrycmb_artiky__Other]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPP_qrycmb_artiky__Other
AS
SELECT ''000000'' as art__ref, ''------'' as art__rpn, ''Calculate this'' as art_oms1
UNION ALL
SELECT        art__ref, art__rpn, art_oms1
FROM            dbo.artiky__
WHERE        (artc_ref = ''11'') AND (uitgeput = ''n'')
' 
