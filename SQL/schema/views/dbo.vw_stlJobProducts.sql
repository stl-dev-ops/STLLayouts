SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJobProducts]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlJobProducts]
AS
SELECT v.off__ref, a.afg__ref, a.afg_oms1
FROM v4vrs___ v INNER JOIN
afgart__ a ON v.afg__ref = a.afg__ref
' 
