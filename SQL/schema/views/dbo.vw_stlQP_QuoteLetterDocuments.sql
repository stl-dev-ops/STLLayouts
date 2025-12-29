SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlQP_QuoteLetterDocuments]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlQP_QuoteLetterDocuments
AS
SELECT        ID, QuoteID, FileName, Deleted, Created, CreatedBy, SUBSTRING(CreatedBy, CHARINDEX(''\'', CreatedBy) + 1, LEN(CreatedBy)) AS CreatedByUser
FROM            dbo.stlQP_QuoteLetterDocuments
' 
