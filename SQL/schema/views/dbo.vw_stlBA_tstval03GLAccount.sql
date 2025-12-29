SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlBA_tstval03GLAccount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlBA_tstval03GLAccount
AS
SELECT     tstval03, GLAccount
FROM         dbo.stlBA_tstval03GLAccount
' 
