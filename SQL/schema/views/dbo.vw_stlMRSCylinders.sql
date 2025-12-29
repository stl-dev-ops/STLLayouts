SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSCylinders]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMRSCylinders
AS
SELECT        TOP (100) PERCENT v.off__ref, ep.prs__oms AS prs__oms, v.dg___vnr, e.omwentel, v.off__ref + ''_'' + v.dg___vnr AS pass, '''' AS toolKW, '''' AS mag, e.trm__ref AS teethID
FROM            dbo.eprstr__ AS e INNER JOIN
                         dbo.v4edg___ AS v ON v.trm__ref = e.trm__ref AND v.prs__ref = e.prs__ref INNER JOIN
                         dbo.epersn__ AS ep ON v.prs__ref = ep.prs__ref
' 
