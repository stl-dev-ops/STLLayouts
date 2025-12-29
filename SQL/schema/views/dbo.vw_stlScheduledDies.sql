SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledDies]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlScheduledDies]
AS
SELECT off__ref, stns_ref, sch.plpl_ref, sch.StartDate, sch.EndDate, sch.aantal__
FROM v4edg___ LEFT JOIN
epersn__ ON epersn__.prs__ref = v4edg___.prs__ref LEFT JOIN
(
	SELECT 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), CAST(datum___ AS datetime)) AS StartDate, 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), CAST(datumend AS datetime)) AS EndDate,
	plpl_ref, aantal__, ord__ref, komment1, toestand, plpl_cal 
	FROM plandv__
) sch ON sch.ord__ref = off__ref AND (sch.komment1 = epersn__.plpl_ref OR sch.plpl_cal  = epersn__.plpl_ref)  
WHERE stns_ref <> '''' AND off__ref <> '''' AND sch.toestand <> ''3''

UNION

SELECT off__ref, stns_ref, sch.plpl_ref, sch.StartDate, sch.EndDate, sch.aantal__
FROM v4eti___ LEFT JOIN
epersn__ ON epersn__.prs__ref = v4eti___.prs__ref LEFT JOIN
(
	SELECT 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), CAST(datum___ AS datetime)) AS StartDate, 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), CAST(datumend AS datetime)) AS EndDate, 
	plpl_ref, aantal__, ord__ref, komment1, toestand, plpl_cal 
	FROM plandv__
) sch ON sch.ord__ref = off__ref AND (sch.komment1 = epersn__.plpl_ref OR sch.plpl_cal  = epersn__.plpl_ref  )
WHERE stns_ref <> '''' AND off__ref <> '''' AND sch.toestand <> ''3''

UNION

SELECT off__ref, stns_ref, sch.plpl_ref, sch.StartDate, sch.EndDate, sch.aantal__
FROM v4etaf__ LEFT JOIN
stdeap__ ON stdeap__.etap_ref = v4etaf__.etap_ref LEFT JOIN
epersn__ ON epersn__.prs__ref = stdeap__.prs__ref LEFT JOIN
(
	SELECT 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), CAST(datum___ AS datetime)) AS StartDate, 
	DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), CAST(datumend AS datetime)) AS EndDate, 
	plpl_ref, aantal__, ord__ref, komment1, toestand, plpl_cal 
	FROM plandv__
) sch ON sch.ord__ref = off__ref AND (sch.komment1 = epersn__.plpl_ref OR sch.plpl_cal = epersn__.plpl_ref  )
WHERE stns_ref <> '''' AND off__ref <> '''' AND sch.toestand <> ''3''
' 
