SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Calcmeters]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW vw_Calcmeters as  SELECT     v4eti___.art__ref, v4eti___.off__ref, v4eti___.vrbpap__, ''vxeti___'' AS [table___] FROM         v4eti___ UNION SELECT     v4etaf__.art__ref, v4etaf__.off__ref, v4etaf__.vrbpap__, ''vxetaf__'' AS [table___] FROM         v4etaf__ WHERE     v4etaf__.art__ref <> ''''
' 
