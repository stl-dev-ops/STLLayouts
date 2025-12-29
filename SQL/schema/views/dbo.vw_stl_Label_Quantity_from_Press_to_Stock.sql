SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_Label_Quantity_from_Press_to_Stock]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stl_Label_Quantity_from_Press_to_Stock]
AS
SELECT ord__ref, PressStartDate, kla__rpn, omschr__, oplage__, FROM_Date, TO_date, PressLabels, ExpectedShipDates, RealShipDates, SentToStock, Shipped, SentToRewind, RewindLabels, 
SentToRewind - RewindLabels AS RewindWaste, 
CASE WHEN SentToRewind = 0 THEN 0 ELSE (SentToRewind - RewindLabels) / SentToRewind END AS RewindWasteRatio, 
SentToSpool, SpoolLabels, SentToSpool - SpoolLabels AS SpoolWaste, 
CASE WHEN SentToSpool = 0 THEN 0 ELSE (SentToSpool - SpoolLabels) / SentToSpool END AS SpoolWasteRatio, 
SentToShipping, ProducedLabels, SentToShipping - ProducedLabels AS ShipWaste, 
CASE WHEN SentToShipping = 0 THEN 0 ELSE (SentToShipping - ProducedLabels) / SentToShipping END AS ShipWasteRatio

FROM
(
	SELECT O.ord__ref, C.PressStartDate, O.kla__rpn, O.omschr__, O.oplage__, C.FROM_Date, C.TO_date, ISNULL(P.Labels, 0) AS PressLabels, CASE WHEN R.Labels IS NULL THEN 0 ELSE P.Labels END AS SentToRewind, 
    ISNULL(R.Labels, 0) AS RewindLabels, CASE WHEN S.Labels IS NULL THEN 0 ELSE CASE WHEN R.Labels IS NULL THEN P.Labels ELSE R.Labels END END AS SentToSpool, ISNULL(S.Labels, 0) AS SpoolLabels, 
    CASE 
		WHEN A.Labels IS NULL THEN 0 
	ELSE 
		CASE 
			WHEN S.Labels IS NULL THEN 
				CASE WHEN R.Labels IS NULL THEN P.Labels 
			ELSE 
				R.Labels 
			END 
		ELSE 
			S.Labels 
		END 
	END AS SentToShipping, 
	ISNULL(A.Labels, 0) AS ProducedLabels, ES.ExpectedShipDates, RS.RealShipDates, ISNULL(Stocked.Labels, 0) AS SentToStock, ISNULL(Shipped.Labels, 0) AS Shipped

    FROM
	(
		SELECT ord__ref, kla__rpn, omschr__, oplage__
        FROM order___
        WHERE kla__ref NOT IN (''100208'', ''100109'')
	) AS O LEFT OUTER JOIN
    (
		SELECT ord__ref, MIN(datum___) AS PressStartDate, MIN(datum___) AS FROM_Date, MIN(datum___) AS TO_date
        FROM hispnt__
		WHERE ord__ref <> ''''
        GROUP BY ord__ref
	) AS C ON O.ord__ref = C.ord__ref LEFT JOIN
    (
		SELECT ord__ref, MIN(vrz__dat) AS min_vrz__dat, MAX(vrz__dat) AS max_vrz__dat, 
		CASE WHEN MIN(vrz__dat) = MAX(vrz__dat) THEN 
			CASE WHEN YEAR(MAX(vrz__dat)) = 1980 THEN 
				NULL 
            ELSE 
				CONVERT(nvarchar(MAX), MIN(vrz__dat), 101) 
			END 
		ELSE 
			CONVERT(nvarchar(MAX), MIN(vrz__dat), 101) + '' - '' + CONVERT(nvarchar(MAX), MAX(vrz__dat), 101) 
		END AS RealShipDates
        FROM bstlyn__
		WHERE YEAR(vrz__dat) <> 1980
        GROUP BY ord__ref
	) AS RS ON O.ord__ref = RS.ord__ref LEFT JOIN
    (
		SELECT ord__ref, MIN(vrzv_dat) AS min_vrzv_dat, MAX(vrzv_dat) AS max_vrzv_dat, 
		CASE WHEN MIN(vrzv_dat) = MAX(vrzv_dat) THEN 
			CONVERT(nvarchar(MAX), MIN(vrzv_dat), 101) 
        ELSE 
			CONVERT(nvarchar(MAX), MIN(vrzv_dat), 101) + '' - '' + CONVERT(nvarchar(MAX), MAX(vrzv_dat), 101) 
		END AS ExpectedShipDates
        FROM bstlyn__ 
        GROUP BY ord__ref
	) AS ES ON O.ord__ref = ES.ord__ref LEFT JOIN
    (
		SELECT hlfvrd__.ord__ref, SUM(hlfvrd__.aant__in) AS Labels, SUM(hlfvrd__.totam_in) AS SFG_Total_Feet
        FROM hlfvrd__ INNER JOIN
        werkpo__ ON dbo.hlfvrd__.wp___ref = dbo.werkpo__.wp___ref AND dbo.werkpo__.kenmerk_ IN (''Press'', ''Cohesio'')
        GROUP BY dbo.hlfvrd__.ord__ref
	) AS P ON P.ord__ref = O.ord__ref LEFT JOIN
    (
		SELECT ord__ref, SUM(goodLabels) AS Labels
        FROM stlST_RewindBrick
        GROUP BY ord__ref
	) AS R ON R.ord__ref = O.ord__ref LEFT JOIN
    (
		SELECT spoolJob.ord__ref, SUM(dbo.spool.Qty) AS Labels
        FROM spoolJob INNER JOIN
        spool ON dbo.spoolJob.spoolJobID = dbo.spool.spoolJobID
        GROUP BY dbo.spoolJob.ord__ref
	) AS S ON S.ord__ref = O.ord__ref LEFT JOIN
    (
		SELECT ord__ref, SUM(aant__ex) AS Labels
        FROM 
		(
			SELECT ord__ref, aant__ex
            FROM afgsku__
            WHERE toestand IN (''1'', ''3'')
		) AS derivedtbl_1
        GROUP BY ord__ref
	) AS A ON A.ord__ref = O.ord__ref LEFT JOIN
	(
		SELECT ord__ref, SUM(aant__ex) AS Labels
        FROM 
		(
			SELECT ord__ref, aant__ex
            FROM afgsku__ 
            WHERE toestand = ''1''
		) AS Stock
        GROUP BY ord__ref
	) AS Stocked ON Stocked.ord__ref = O.ord__ref LEFT JOIN
	(
		SELECT ord__ref, SUM(aant__ex) AS Labels
		FROM
		(
			SELECT ord__ref, aant__ex
			FROM afgsku__ 
            WHERE toestand = ''3''
		) AS Shipped_1
        GROUP BY ord__ref
	) AS Shipped ON Shipped.ord__ref = O.ord__ref
) AS DEPT_LABEL_MOVEMENTS

' 
