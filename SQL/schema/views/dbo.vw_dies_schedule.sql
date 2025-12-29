SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_dies_schedule]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_dies_schedule
AS
SELECT     v4eti___.off__ref, v4eti___.stns_ref, v4eti___.tedrkdto, min(plandv__.datum___) AS datum, ''Primary Die'' AS itype, plandv__.plpl_ref as ''Press''
FROM         v4eti___ LEFT JOIN
                      plandv__ ON v4eti___.off__ref = plandv__.ord__ref
WHERE     v4eti___.off__ref IN
                          (SELECT     ord__ref
                            FROM          plandv__
                            WHERE      plandv__.aktie___ = ''21'' AND plandv__.toestand <> ''3'') AND v4eti___.stns_ref <> ''''
GROUP BY v4eti___.off__ref, v4eti___.stns_ref, v4eti___.tedrkdto, plandv__.plpl_ref
UNION ALL
SELECT     v4etaf__.off__ref, v4etaf__.stns_ref, v4eti___.tedrkdto, min(plandv__.datum___) AS datum, ''Other Die'' AS itype, plandv__.plpl_ref as ''Press''
FROM         v4etaf__ LEFT JOIN
                      v4eti___ ON v4etaf__.off__ref = v4eti___.off__ref LEFT JOIN
                      plandv__ ON v4etaf__.off__ref = plandv__.ord__ref
WHERE     v4etaf__.off__ref IN
                          (SELECT     ord__ref
                            FROM          plandv__
                            WHERE      plandv__.aktie___ = ''21'' AND plandv__.toestand <> ''3'') AND v4etaf__.stns_ref <> ''''
GROUP BY v4etaf__.off__ref, v4etaf__.stns_ref, v4eti___.tedrkdto, plandv__.plpl_ref
' 
