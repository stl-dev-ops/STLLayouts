SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlFootageByYearMonth]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlFootageByYearMonth]
AS
SELECT 
YearMonth           = CONVERT(varchar(7), O.best_dat, 126), 
EST_FEET            = SUM(v4eti.tedrkdto), 
GRAY_BOX_FEET       = SUM(GrayBox.ACT_FEET), 
SFG_FEET            = SUM(SFG.SFG_FEET), 
PRESS_CONSUMED_FEET = SUM(PCF.PRESS_CONSUMED_FEET)         

FROM
(
	SELECT ord__ref, best_dat
    FROM order___
    WHERE kla__ref <> ''100109''
) AS O LEFT JOIN
(
	SELECT ord__ref, SUM(aantal__) * - 1 AS PRESS_CONSUMED_FEET
	FROM stobew__
	WHERE (wp___ref LIKE ''5%'' OR wp___ref = ''9801'') AND (art__srt = ''5'') AND (soort___ <> ''C'') AND 
	art__ref NOT IN
	(
		SELECT art__ref
		FROM incentXa
	) AND 
	art__ref IN
	(
		SELECT art__ref
		FROM v4eti___ 
		WHERE off__ref = stobew__.ord__ref
	)
	GROUP BY ord__ref
) AS PCF ON O.ord__ref = PCF.ord__ref LEFT JOIN
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
) AS SFG ON O.ord__ref = SFG.ord__ref LEFT JOIN
(
	SELECT ord__ref, MAX(GrayBoxActualFeet) AS ACT_FEET
	FROM 
	(
		SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
		FROM plcrol__
		GROUP BY ord__ref, art__ref
	) AS GB
	GROUP BY ord__ref
) AS GrayBox ON O.ord__ref = GrayBox.ord__ref LEFT JOIN
v4eti___ v4eti ON O.ord__ref = v4eti.off__ref
GROUP BY CONVERT(varchar(7), O.best_dat, 126)
' 
