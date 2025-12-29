SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_SpoolDateSpoolIDUsernbr_]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_SpoolDateSpoolIDUsernbr_
AS
SELECT        CONVERT(DATE, sp.lastModified) AS SpoolDate, v.spoolID, v.usernbr_
FROM            dbo.vw_stl_SpoolOperator AS v INNER JOIN
                         dbo.spool AS sp ON v.spoolID = sp.spoolID
' 
