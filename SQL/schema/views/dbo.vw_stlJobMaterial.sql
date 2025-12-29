SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJobMaterial]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlJobMaterial]
AS
SELECT o.ord__ref, v4eti.art__ref, v4eti.art__ref AS FACESHEET_ID, ADH.art__ref AS ADH_ID, v4etaf.art__ref AS LINER_ID
FROM order___ AS o INNER JOIN
v4eti___ AS v4eti ON o.ord__ref = v4eti.off__ref LEFT JOIN
(
	SELECT r.ord__ref, r.art__ref
    FROM vw_stlJMS_JobMaterialStagingUnionReservations r INNER JOIN
	artiky__ m ON r.art__ref = m.art__ref
    WHERE m.art__rpn LIKE ''ADH%''
) AS ADH ON o.ord__ref = ADH.ord__ref LEFT JOIN
v4etaf__ AS v4etaf ON v4etaf.off__ref = o.ord__ref AND v4etaf.art__ref <> ''''

' 
