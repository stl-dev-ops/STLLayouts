SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlFootage]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlFootage]
AS
SELECT C.ord__ref, O.best_dat AS OrderDate, CONVERT(varchar(7), C.FirstClocking, 126) AS FirstClockingYearMonth, CONVERT(varchar(7), C.LastClocking, 126) AS LastClockingYearMonth, 
v4edg.tedrk_to AS EST_FEET, GrayBox.ACT_FEET AS GRAY_BOX_FEET, SFG.SFG_FEET AS SFG_FEET, PCF.PRESS_CONSUMED_FEET AS PRESS_CONSUMED_FEET
FROM v4edg___ v4edg RIGHT JOIN
(
	SELECT ord__ref, MIN(datum___) AS FirstClocking, MAX(datum___) AS LastClocking
	FROM hispnt__
	WHERE kla__ref <> ''100109'' AND ord__ref <> ''''
	GROUP BY ord__ref
) AS C LEFT JOIN
order___ O ON C.ord__ref = O.ord__ref LEFT JOIN
(
	SELECT ord__ref, SUM(aantal__) * - 1 AS PRESS_CONSUMED_FEET
	FROM stobew__
	WHERE art__srt = ''5'' AND
	soort___ <> ''C'' AND
	wp___ref IN
	(
		SELECT wp___ref
		FROM werkpo__
		WHERE kenmerk_ IN (''Press'', ''Cohesio'')
	) AND
	(
	art__ref NOT IN
	(
		SELECT art__ref
		FROM incentXa
	)
	) AND 
	art__ref IN
	(
		SELECT art__ref
		FROM v4edg___
		WHERE  off__ref = stobew__.ord__ref
	)
	GROUP BY ord__ref
) AS PCF ON C.ord__ref = PCF.ord__ref LEFT OUTER JOIN
(
	SELECT ord__ref, SUM(totam_in) AS SFG_FEET
	FROM hlfvrd__
	WHERE wp___ref IN
	(
	   SELECT wp___ref
	   FROM werkpo__
	   WHERE kenmerk_ IN (''Press'', ''Cohesio'')
	) 
	GROUP BY ord__ref
) AS SFG ON C.ord__ref = SFG.ord__ref LEFT OUTER JOIN
(
	SELECT ord__ref, MAX(GrayBoxActualFeet) AS ACT_FEET
	FROM 
	(
		SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
		FROM plcrol__
		WHERE wp___ref IN  /* NOTE: soort___ (f, g, h) is mat type, Facesheet, liner etc.  */
		(
		   SELECT wp___ref
		   FROM werkpo__
		   WHERE kenmerk_ IN (''Press'', ''Cohesio'')
		) 
		GROUP BY ord__ref, art__ref
	) AS GB
	GROUP BY ord__ref
) AS GrayBox ON C.ord__ref = GrayBox.ord__ref ON v4edg.off__ref = C.ord__ref

--SELECT C.ord__ref, O.best_dat AS OrderDate, CONVERT(varchar(7), C.FirstClocking, 126) AS FirstClockingYearMonth, CONVERT(varchar(7), C.LastClocking, 126) AS LastClockingYearMonth, 
--v4eti.tedrkdto AS EST_FEET, GrayBox.ACT_FEET AS GRAY_BOX_FEET, SFG.SFG_FEET AS SFG_FEET, PCF.PRESS_CONSUMED_FEET AS PRESS_CONSUMED_FEET
--FROM v4eti___ v4eti RIGHT JOIN
--(
--	SELECT ord__ref, MIN(datum___) AS FirstClocking, MAX(datum___) AS LastClocking
--	FROM hispnt__
--	WHERE kla__ref <> ''100109'' AND ord__ref <> ''''
--	GROUP BY ord__ref
--) AS C LEFT JOIN
--order___ O ON C.ord__ref = O.ord__ref LEFT JOIN
--(
--	SELECT ord__ref, SUM(aantal__) * - 1 AS PRESS_CONSUMED_FEET
--	FROM stobew__
--	WHERE art__srt = ''5'' AND
--	soort___ <> ''C'' AND
--	wp___ref IN
--	(
--		SELECT wp___ref
--		FROM werkpo__
--		WHERE kenmerk_ IN (''Press'', ''Cohesio'')
--	) AND 
--	(
--	art__ref NOT IN
--	(
--		SELECT art__ref
--		FROM incentXa
--	)
--	) AND 
--	art__ref IN
--	(
--		SELECT art__ref
--		FROM v4eti___
--		WHERE  off__ref = stobew__.ord__ref
--	)
--	GROUP BY ord__ref
--) AS PCF ON C.ord__ref = PCF.ord__ref LEFT OUTER JOIN
--(
--	SELECT ord__ref, SUM(totam_in) AS SFG_FEET
--	FROM hlfvrd__
--	WHERE wp___ref IN
--	(
--	   SELECT wp___ref
--	   FROM werkpo__
--	   WHERE kenmerk_ IN (''Press'', ''Cohesio'')
--	) 
--	GROUP BY ord__ref
--) AS SFG ON C.ord__ref = SFG.ord__ref LEFT OUTER JOIN
--(
--	SELECT ord__ref, MAX(GrayBoxActualFeet) AS ACT_FEET
--	FROM 
--	(
--		SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
--		FROM plcrol__
--		WHERE wp___ref IN  /* NOTE: soort___ (f, g, h) is mat type, Facesheet, liner etc.  */
--		(
--		   SELECT wp___ref
--		   FROM werkpo__
--		   WHERE kenmerk_ IN (''Press'', ''Cohesio'')
--		) 
--		GROUP BY ord__ref, art__ref
--	) AS GB
--	GROUP BY ord__ref
--) AS GrayBox ON C.ord__ref = GrayBox.ord__ref ON v4eti.off__ref = C.ord__ref
' 
