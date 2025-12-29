SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJobConsumptions]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlJobConsumptions]
AS

SELECT 
mm.ord__ref, mm.art__ref, mm.artd_ref,
JobThatCreatedThisMaterialSKU.ord__ref JobThatCreatedThisMaterialSKU,
kost____ JOB_COST, 
ProducedLabels.[Count] PRODUCED_QUANTITY, 
CASE 
	WHEN ProducedLabels.[Count] <> 0 THEN kost____ / ProducedLabels.[Count] * 1000 
ELSE 
	NULL 
END JOB_COST_PER_1000,
ProducedLabels.CERM_Count,
ProducedLabels.stlRewindBrick_Count,
ProducedLabels.ElevatedDeliveries_Count 

FROM stobew__ mm LEFT JOIN
(
	SELECT 
	o.ord__ref, ISNULL(CERM_ProducedLabels.[Count], 0) CERM_Count, ISNULL(stlRewindBrick.[Count], 0) stlRewindBrick_Count, ISNULL(ElevatedDeliveries.[Count], 0) ElevatedDeliveries_Count, 
	CASE 
		WHEN ISNULL(CERM_ProducedLabels.[Count], 0) <> 0 THEN CERM_ProducedLabels.[Count] 
		WHEN ISNULL(stlRewindBrick.[Count], 0)      <> 0 THEN stlRewindBrick.[Count]
	ELSE  
		ISNULL(ElevatedDeliveries.[Count], 0)
	END AS [Count]
	FROM order___ o LEFT JOIN
	(
		SELECT off__ref, SUM(aant_prd) AS [Count]
		FROM v4vrs___
		GROUP BY off__ref
	) AS CERM_ProducedLabels ON CERM_ProducedLabels.off__ref = o.ord__ref LEFT JOIN
	(
		SELECT ord__ref, SUM(goodLabels) AS [Count]
		FROM stlST_RewindBrick
		GROUP BY ord__ref
	) AS stlRewindBrick ON stlRewindBrick.ord__ref = o.ord__ref LEFT JOIN
	(
		SELECT ord__ref, SUM(aantal__) AS [Count]
		FROM grsbon__  INNER JOIN
		hisglv__ ON grsbon__.grbonref = hisglv__.grbonref 
		GROUP BY ord__ref 
    ) ElevatedDeliveries ON ElevatedDeliveries.ord__ref = o.ord__ref
) AS ProducedLabels ON ProducedLabels.ord__ref = mm.ord__ref LEFT JOIN
(
	SELECT artd_ref, grsbon__.ord__ref 
	FROM stobew__ INNER JOIN
	grsbon__ ON stobew__.grbonref = grsbon__.grbonref 
	WHERE grsbon__.ord__ref <> '''' AND artd_ref <> ''''
) JobThatCreatedThisMaterialSKU ON JobThatCreatedThisMaterialSKU.artd_ref = mm.artd_ref 
WHERE mm.ord__ref <> ''N'' AND mm.ord__ref <> ''''
' 
