SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PayChexEmployees]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_PayChexEmployees
AS
SELECT     empNo, lastName, firstName
FROM         dbo.stlPayChexImport
GROUP BY empNo, lastName, firstName
' 
