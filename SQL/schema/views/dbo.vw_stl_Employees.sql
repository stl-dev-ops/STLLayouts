SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_Employees]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_Employees
AS
SELECT        dbo.paswrd__.usernbr_, dbo.paswrd__.username
FROM            dbo.paswrd__
UNION
SELECT        CONVERT(nvarchar(6),dbo.stlEmployeesNotInCERM.usernbr_) ,  dbo.stlEmployeesNotInCERM.username
FROM            dbo.stlEmployeesNotInCERM
' 
