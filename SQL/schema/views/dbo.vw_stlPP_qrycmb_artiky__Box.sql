SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPP_qrycmb_artiky__Box]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPP_qrycmb_artiky__Box
AS
SELECT ''000000'' as art__ref, ''------'' as art__rpn, ''Calculate this'' as art_oms1
UNION ALL
SELECT artiky__.art__ref, artiky__.art__rpn, artiky__.art_oms1
FROM artiky__
WHERE (((artiky__.art__srt)=''9'') AND ((artiky__.uitgeput)=''N''));
' 
