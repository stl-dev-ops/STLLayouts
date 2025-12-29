SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateScheduleCommentsWithUsefulData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateScheduleCommentsWithUsefulData] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 03/28/2023
-- Description:	Adds other presses the die can run on and JSI warning and Expected Ship dates and difficulty level (special jobs)
--              to comments 4, 5, 6, & 7 of the schedule.
--
--
--              Comment 4 = plandv__.komment3 : Difficulty Level
--              Comment 5 = plandv__.komment4 : Pass, JSI if off site, Presses the die can run on
--              Comment 6 = plandv__.komment5 : Expected ship dates
--              Comment 7 = plandv__.komment6 : Did warehouse finish pulling the job?
--
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateScheduleCommentsWithUsefulData]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

UPDATE SCH
SET
SCH.komment3 = ISNULL(CAST(DEFCON.DifficultyLevel AS nvarchar), ''),
SCH.komment4 = 'P#' + CAST(SCH.priorite AS nvarchar) + ISNULL(' ' + CAST(JSI.vak__ref AS nvarchar), '')  + ' ' + ISNULL(CAST(DIE.Presses AS nvarchar), ''),
SCH.komment5 = ISNULL(CAST(Expected_Ship_Dates AS nvarchar), ''),
SCH.komment6 = ISNULL(CAST(JobPulled.JobPulled AS nvarchar), '')
FROM plandv__ AS SCH LEFT JOIN
vw_stlScheduledDiesWithPressesDieCanRunOn AS DIE ON SCH.ord__ref = DIE.off__ref LEFT JOIN
(
	SELECT DISTINCT resgrd__.ord__ref, vak__ref
	FROM resgrd__ INNER JOIN (SELECT DISTINCT art__ref, vak__ref FROM artikd__ 
	WHERE (vak__ref LIKE '%JSI%')
	  
) sJSI ON resgrd__.art__ref = sJSI.art__ref) JSI ON SCH.ord__ref = JSI.ord__ref LEFT JOIN 
(
	SELECT ord__ref, CAST(STUFF
	((SELECT N', ' + ShipDates
	FROM (SELECT DISTINCT ord__ref, CAST(MONTH(vrzv_dat) AS Nvarchar) + '/' + CAST(DAY(vrzv_dat) AS nvarchar) + '/' + CAST(YEAR(vrzv_dat) AS nvarchar)  AS ShipDates
	FROM bstlyn__) B
	WHERE so.ord__ref = B.ord__ref
	ORDER BY ShipDates FOR XML PATH('')), 1, 2, '') AS NVARCHAR(255)) Expected_Ship_Dates
	FROM bstlyn__ so
	WHERE ord__ref <> ''
	GROUP BY ord__ref
) SHIP ON SCH.ord__ref = SHIP.ord__ref LEFT JOIN
(
	SELECT o.ord__ref, ISNULL('DEFCON ' + CAST(d.DifficultyID AS varchar), '') DifficultyLevel
	FROM plandv__ AS sch INNER JOIN
	order___ o ON o.ord__ref = sch.ord__ref LEFT JOIN
	v4vrs___ AS v ON v.off__ref = o.ord__ref LEFT JOIN
	afgart__ AS a ON v.afg__ref = a.afg__ref LEFT JOIN
	vw_stlJobMaterial jm ON o.ord__ref = jm.ord__ref LEFT JOIN
	stlSpecialJobs d ON d.Deleted = 0 
	AND (d.kla__ref = o.kla__ref OR d.kla__ref = '') 
	AND (d.afg__ref = a.afg__ref OR d.afg__ref = '')
	AND (d.art__ref IN (jm.art__ref, jm.FACESHEET_ID, jm.ADH_ID, jm.LINER_ID ) OR d.art__ref = '')
) DEFCON ON DEFCON.ord__ref = SCH.ord__ref LEFT JOIN
(
	SELECT ord__ref, CASE WHEN JobPulled = 1 THEN 'Job Pulled' ELSE '' END JobPulled
	FROM stlJMS_JobsPulled
) JobPulled ON JobPulled.ord__ref = SCH.ord__ref 
WHERE SCH.ord__ref <> ''; 

UPDATE plandv__
SET komment_ = REPLACE(komment_, 'WEB WIDTH TOO WIDE! ', '')
WHERE rowid IN
(
	SELECT rowid FROM plandv__ WHERE komment_ LIKE '%WEB WIDTH TOO WIDE! %'
);

UPDATE plandv__
SET komment_ = 'WEB WIDTH TOO WIDE! ' + komment_
WHERE rowid IN
(
SELECT sch.rowid 
FROM plandv__ sch JOIN 
(
	SELECT off__ref, v.art__ref, m.breedte_ 
	FROM v4eti___ v JOIN
	artiky__ m ON v.art__ref = m.art__ref 
	WHERE v.off__ref IN
	(
		SELECT ord__ref 
		FROM plandv__ 
		WHERE ord__ref <> ''
	)
) jobMat ON sch.ord__ref = jobMat.off__ref JOIN
(
	SELECT plpl_ref = 'Z_ROTO1', breedte_ = 15
	UNION 
	SELECT plpl_ref = 'ROTO_1', breedte_ = 15
	UNION
	SELECT plpl_ref = 'Z_ROTO2', breedte_ = 10
	UNION 
	SELECT plpl_ref = 'ROTO_2', breedte_ = 10
	UNION
	SELECT plpl_ref = 'Z_ROTO3', breedte_ = 10
	UNION 
	SELECT plpl_ref = 'ROTO_3', breedte_ = 10
	UNION
	SELECT plpl_ref = 'Z_ROTO4', breedte_ = 13
	UNION 
	SELECT plpl_ref = 'ROTO_4', breedte_ = 13
	UNION
	SELECT plpl_ref = 'Z_ROTO5', breedte_ = 24
	UNION 
	SELECT plpl_ref = 'ROTO_5', breedte_ = 24
	UNION
	SELECT plpl_ref = 'Z_SLITTER', breedte_ = 40
	UNION 
	SELECT plpl_ref = 'SLITTER', breedte_ = 40
	UNION
	SELECT plpl_ref = 'Z_AZTEC', breedte_ = 15
	UNION 
	SELECT plpl_ref = 'AZTEC', breedte_ = 15
	UNION
	SELECT plpl_ref = 'A10', breedte_ = 10
	UNION
	SELECT plpl_ref = 'F16', breedte_ = 10
	UNION 
	SELECT plpl_ref = 'Z_A10_F16', breedte_ = 10
	UNION
	SELECT plpl_ref = 'Z_A10_ONLY', breedte_ = 10
	UNION
	SELECT plpl_ref = 'Z_COHESIO', breedte_ = 13
	UNION
	SELECT plpl_ref = 'COHESIO', breedte_ = 13
	UNION
	SELECT plpl_ref = 'MINI_COHESIO', breedte_ = 13
) MachMaxWebWidths ON MachMaxWebWidths.plpl_ref = sch.plpl_ref 
WHERE jobMat.breedte_ > MachMaxWebWidths.breedte_ 
);


	END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

