SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPackingSlipTrackingNumbers]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlPackingSlipTrackingNumbers]
AS

SELECT lbn__ref, 
CAST
(
	STUFF
	(
		(
			SELECT '', '' + tekst_02
			FROM 
			(
				SELECT DISTINCT lbn__ref, tekst_02
				FROM bstext__ bs INNER JOIN
				bstlyn__ b ON b.lyn__ref = bs.lyn__ref 
				WHERE tekst_02 <> ''''
			) Tracking
			WHERE bstlyn__.lbn__ref = Tracking.lbn__ref
			ORDER BY tekst_02 FOR XML PATH('''')
		), 1, 2, ''''
	) AS NVARCHAR(255)
) TrackingNumbers
FROM bstlyn__
--WHERE lbn__ref = ''2082440'' 
GROUP BY lbn__ref


' 
