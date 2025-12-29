SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCoh_LastClockedDt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCoh_LastClockedDt
AS
SELECT        ord__ref, MAX(datum___) AS Coh_LastClockedDt, MAX(datum___) AS ToDate
FROM            dbo.hispnt__
WHERE        (wp___ref = ''9801'') AND (akt__ref NOT IN (''90'', ''98'', ''99''))
GROUP BY ord__ref
' 
