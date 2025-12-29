SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_diestock]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_diestock
AS
SELECT        TOP (100) PERCENT dbo.arthld__.arth_ref, dbo.arthld__.arthdref, dbo.arthld__.vak__ref, dbo.stnspr__.stns_rpn, dbo.arthld__.teller__, ToolUsage.LastScanned
FROM            dbo.arthld__ INNER JOIN
                         dbo.stnspr__ ON dbo.arthld__.arth_ref = dbo.stnspr__.stns_ref LEFT OUTER JOIN
                             (SELECT        arth_ref, MAX(dat__beg) AS LastScanned
                               FROM            dbo.hlpreg__
                               GROUP BY arth_ref) AS ToolUsage ON ToolUsage.arth_ref = dbo.stnspr__.stns_ref
' 
