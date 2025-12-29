SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCoh_EstPrintMin]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCoh_EstPrintMin
AS
SELECT        off__ref, SUM(dbo.GetMinutesFromCERMTimeString(druk_tyd)) AS Coh_EstPrintMin
FROM            dbo.v4edg___
WHERE        (prs__ref = ''5004'' OR
                         prs__ref = ''5019'') AND (off__ref NOT LIKE ''1%'')
GROUP BY off__ref
' 
