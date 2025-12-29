SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCoh_MRtime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCoh_MRtime
AS
SELECT        Clockings.Coh_FirstClockedDt, dbo.incent__.kla__ref, dbo.incent__.kla__rpn, dbo.incent__.ord__ref, dbo.incent__.omschr__, dbo.incent__.oplage__, dbo.vw_STLCoh_EstMRMin.Coh_EstMRMin, 
                         dbo.vw_STLCoh_ActMRMin.Coh_ActMRMin, dbo.vw_STLCoh_EstMRMin.Coh_EstMRMin - dbo.vw_STLCoh_ActMRMin.Coh_ActMRMin AS Coh_MRMin_Difference, Clockings.ToDate, Clockings.FromDate
FROM            dbo.incent__ LEFT OUTER JOIN
                         dbo.vw_STLCoh_EstMRMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_EstMRMin.off__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_ActMRMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_ActMRMin.ord__ref RIGHT OUTER JOIN
                             (SELECT        ord__ref, MIN(datum___) AS Coh_FirstClockedDt, MIN(datum___) AS ToDate, MIN(datum___) AS FromDate
                               FROM            dbo.hispnt__
                               WHERE        (wp___ref = ''9801'') AND (akt__ref NOT IN (''90'', ''98'', ''99''))
                               GROUP BY ord__ref) AS Clockings ON dbo.incent__.ord__ref = Clockings.ord__ref
' 
