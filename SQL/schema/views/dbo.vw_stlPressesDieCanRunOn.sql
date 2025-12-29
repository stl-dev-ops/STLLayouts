SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPressesDieCanRunOn]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPressesDieCanRunOn
AS
SELECT        stns_ref, CAST(STUFF
                             ((SELECT        N'', '' + prs__oms
                                 FROM            vw_STLDiePresses AS PressNames
                                 WHERE        PressNames.stns_ref = Presses.stns_ref
                                 ORDER BY prs__oms FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1024)) Presses
FROM            vw_STLDiePresses AS Presses
GROUP BY stns_ref       
' 
