SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledJobsCurrentNext]'))
EXEC dbo.sp_executesql @statement = N'
/*
	toestand 1 - To do
	         2 - Busy
			 3 - Finished
*/
CREATE VIEW [dbo].[vw_stlScheduledJobsCurrentNext]
AS

SELECT planpl__.plpl_ref, CURRENT_JOBS.ord__ref AS CurrentJobID, CURRENT_JOBS.StartDate CurrentStartDate, CURRENT_JOBS.EndDate CurrentEndDate, NEXT_JOBS.ord__ref AS NextJobID, NEXT_JOBS.StartDate, NEXT_JOBS.EndDate

FROM planpl__ LEFT OUTER JOIN
(
	SELECT TOP (100) PERCENT plpl_ref, ord__ref, DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), datum___) StartDate, DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), datumend) EndDate
	FROM plandv__
	WHERE (toestand <> ''3'') AND (ord__ref <> '''') 
	AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), datum___) <= GETDATE() 
	AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), datumend) >= GETDATE()
	ORDER BY ord__ref
) AS CURRENT_JOBS ON planpl__.plpl_ref = CURRENT_JOBS.plpl_ref LEFT OUTER JOIN
(
	SELECT DISTINCT plpl_ref, NEXT_JOB.ord__ref, NEXT_JOB.datum___, NEXT_JOB.start___, NEXT_JOB.StartDate, NEXT_JOB.EndDate
	FROM plandv__ 

	CROSS APPLY
	(
		SELECT TOP 1 ord__ref, datum___, start___, 
		DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), datum___) StartDate, 
		DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), datumend) EndDate
		FROM plandv__
		WHERE toestand <> ''3'' AND ord__ref <> '''' 
		AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), datum___) >= GETDATE() 
		AND plpl_ref = plandv__.plpl_reF
		ORDER BY datum___, start___
	) AS NEXT_JOB

) AS NEXT_JOBS ON planpl__.plpl_ref = NEXT_JOBS.plpl_ref

WHERE planpl__.geblokk_ = N''N''

' 
