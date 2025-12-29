SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_tempview]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_tempview]
AS
SELECT 
JobID						= sch.ord__ref, 
JobStart					= sch.JobStart, 
JobEnd						= sch.JobEnd, 
LabelsToProduce				= sch.aantal__, 
DieID						= JobDies.stns_ref, 
DieStart					= JobDies.StartDate, 
DieEnd						= JobDies.EndDate, 
DieKeyword					= Die.stns_rpn, 
--v4eti___PrintFeetWithWaste	= v4e.tedrkdto, 
--v4edg___PrintFeetWithWaste	= v4edg.Feet, 
RevolutionsNeeded			= CASE WHEN (Die.omtrek__ = 0 OR Die.omtrek__ = NULL) THEN 0 ELSE (v4e.tedrkdto * 12) / Die.omtrek__ END, 
BackUpDiesNeeded			= CASE WHEN LEFT(Die.stns_rpn, 1) IN (''R'', ''I'') THEN
								CASE WHEN CASE WHEN (Die.omtrek__ = 0 OR Die.omtrek__ = NULL) THEN 0 ELSE (v4e.tedrkdto * 12) / Die.omtrek__ END < 60000 THEN
									0
								ELSE
									CASE WHEN CASE WHEN (Die.omtrek__ = 0 OR Die.omtrek__ = NULL) THEN 0 ELSE (v4e.tedrkdto * 12) / Die.omtrek__ END < 200000 THEN
										1
									ELSE
										2
									END
								END
							ELSE
								CASE WHEN LEFT(Die.stns_rpn, 1) =''S'' THEN
									CASE WHEN CASE WHEN (Die.omtrek__ = 0 OR Die.omtrek__ = NULL) THEN 0 ELSE (v4e.tedrkdto * 12) / Die.omtrek__ END < 120000 THEN
										0
									ELSE
										CASE WHEN CASE WHEN (Die.omtrek__ = 0 OR Die.omtrek__ = NULL) THEN 0 ELSE (v4e.tedrkdto * 12) / Die.omtrek__ END < 240000 THEN
											1
										ELSE
											2
										END
									END
								ELSE
									0
								END
							END,
--Customer					= o.kla__rpn, 
--JobDieCheckStatus			= DieCheckStatus.omschr__, 
Press						= JobDies.plpl_ref 
FROM vw_stlScheduledDies AS JobDies RIGHT JOIN 
( 
  SELECT ord__ref, MIN(datum___) JobStart, MAX(datumend) JobEnd, MAX(aantal__) aantal__ 
  FROM plandv__ 
  WHERE ord__ref NOT IN 
  ( 
   SELECT ord__ref FROM plandv__ WHERE SUBSTRING(plpl_ref, 1, 1) = ''Z'' 
  ) 
  GROUP BY ord__ref 
) AS sch ON sch.ord__ref = JobDies.off__ref AND JobDies.stns_ref <> '''' INNER JOIN 
stnspr__ AS Die ON Die.stns_ref = JobDies.stns_ref  INNER JOIN 
(SELECT off__ref, MAX(tedrkdto) tedrkdto FROM v4eti___ GROUP BY off__ref) AS v4e ON sch.ord__ref = v4e.off__ref INNER JOIN 
order___ AS o ON v4e.off__ref = o.ord__ref LEFT JOIN 
( 
  SELECT off__ref, MAX(tedrk_to) Feet 
  FROM v4edg___ 
  GROUP BY off__ref 
) AS v4edg ON v4edg.off__ref = o.ord__ref LEFT JOIN 
( 
  SELECT tstd_ref, omschr__ 
  FROM tstval__ 
  WHERE (fldname_ = ''tstval04'') AND (tabname_ = ''order___'') 
) AS  DieCheckStatus ON o.tstval04 = DieCheckStatus.tstd_ref 

' 
