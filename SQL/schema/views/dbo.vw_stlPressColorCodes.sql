SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPressColorCodes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPressColorCodes
AS
SELECT        dbo.eprsiv__.prs__ref, dbo.epersn__.prs__oms, dbo.eprsiv__.prsivref, dbo.eprsiv__.ink__ref, dbo.inkklr__.ink__oms, dbo.eprsiv__.ink__vrb, dbo.eprsiv__.inkmnvrb, dbo.eprsiv__.inkvsvrb, 
                         dbo.eprsiv__.klpmsref, dbo.klrpms__.klpmsrpn, dbo.klrpms__.omschr__, dbo.eprsiv__.pctinkgw, dbo.epersn__.blokkeer
FROM            dbo.eprsiv__ LEFT OUTER JOIN
                         dbo.epersn__ ON dbo.eprsiv__.prs__ref = dbo.epersn__.prs__ref LEFT OUTER JOIN
                         dbo.inkklr__ ON dbo.eprsiv__.ink__ref = dbo.inkklr__.ink__ref LEFT OUTER JOIN
                         dbo.klrpms__ ON dbo.eprsiv__.klpmsref = dbo.klrpms__.klpmsref
' 
