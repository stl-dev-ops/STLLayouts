SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLCoh_JobTimes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLCoh_JobTimes
AS
SELECT        Clockings.Coh_FirstClockedDt, dbo.incent__.kla__ref, dbo.incent__.kla__rpn, dbo.incent__.ord__ref, dbo.incent__.omschr__, dbo.incent__.oplage__, Clockings.ToDate, Clockings.FromDate, 
                         dbo.vw_STLCoh_EstPrintMin.Coh_EstPrintMin, dbo.vw_STLCoh_ActPrintMin.Coh_ActPrintMin, dbo.vw_STLCoh_EstTearDownMin.Coh_EstTearDownMin, dbo.vw_STLCoh_ActTearDownMin.Coh_ActTearDownMin, 
                         dbo.incent__.cohes_at_feet, dbo.incent__.cohes_ag_feet, dbo.incent__.produced_lbls, dbo.incent__.shipi_shipped,
                             (SELECT        MAX(pr_excl_) AS Expr1
                               FROM            dbo.bstlyn__
                               WHERE        (ord__ref = dbo.incent__.ord__ref)) AS pr_excl_, dbo.incent__.cohes_e_min, dbo.incent__.cohes_a_min, dbo.vw_STLCoh_EstMRMin.Coh_EstMRMin, 
                         dbo.vw_STLCoh_ActMRMin.Coh_ActMRMin
FROM            dbo.incent__ LEFT OUTER JOIN
                         dbo.vw_STLCoh_ActMRMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_ActMRMin.ord__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_EstMRMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_EstMRMin.off__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_EstTearDownMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_EstTearDownMin.off__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_EstPrintMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_EstPrintMin.off__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_ActTearDownMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_ActTearDownMin.ord__ref LEFT OUTER JOIN
                         dbo.vw_STLCoh_ActPrintMin ON dbo.incent__.ord__ref = dbo.vw_STLCoh_ActPrintMin.ord__ref RIGHT OUTER JOIN
                             (SELECT        ord__ref, MIN(datum___) AS Coh_FirstClockedDt, MIN(datum___) AS ToDate, MIN(datum___) AS FromDate
                               FROM            dbo.hispnt__
                               WHERE        (wp___ref = ''9801'') AND (akt__ref NOT IN (''90'', ''98'', ''99''))
                               GROUP BY ord__ref) AS Clockings ON dbo.incent__.ord__ref = Clockings.ord__ref
' 
