SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSTools]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMRSTools
AS
SELECT        off__ref, v.stns_ref, s.stns_rpn, s.stns_oms, tanden__ teeth, CASE WHEN s.materie_ = ''1'' THEN ''Engraved'' WHEN s.materie_ = ''2'' THEN ''Magnetic'' ELSE ''UNKNOWN'' END CylinderType
FROM            v4etaf__ v JOIN
                         stnspr__ s ON v.stns_ref = s.stns_ref
UNION
SELECT        off__ref, v.stns_ref, s.stns_rpn, s.stns_oms, tanden__ teeth, CASE WHEN s.materie_ = ''1'' THEN ''Engraved'' WHEN s.materie_ = ''2'' THEN ''Magnetic'' ELSE ''UNKNOWN'' END CylinderType
FROM            v4edg___ v JOIN
                         stnspr__ s ON v.stns_ref = s.stns_ref
' 
