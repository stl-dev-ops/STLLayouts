SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Consumptions]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_Consumptions as  SELECT     art__ref, ord__ref, SUM(aantal__) AS aantal__, soort___, MAX(datum___) AS dat__end, wp___ref FROM         dbo.stobew__ WHERE     (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'') GROUP BY ord__ref, art__ref, soort___, wp___ref
' 
