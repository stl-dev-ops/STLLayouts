SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMessedUpRollSizes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMessedUpRollSizes
AS
SELECT        dbo.afgart__.afg__ref, dbo.afgart__.afg_oms1, dbo.afgsku__.sku__ref, dbo.afgsku__.aant__ex, CASE WHEN dbo.afgart__.aant__e2 = 0 THEN 1 ELSE dbo.afgart__.aant__e2 END AS LabelsPerRoll
FROM            dbo.afgsku__ INNER JOIN
                         dbo.afgart__ ON dbo.afgsku__.afg__ref = dbo.afgart__.afg__ref
WHERE        (dbo.afgart__.afg_oms1 LIKE ''%[0-9]k%'') AND (dbo.afgsku__.toestand = N''1'') AND ({ fn MOD(CAST(dbo.afgsku__.aant__ex AS int), CASE WHEN dbo.afgart__.aant__e2 = 0 THEN 1 ELSE CAST(dbo.afgart__.aant__e2 AS int) END) 
                         } <> 0) OR
                         (dbo.afgart__.afg_oms1 LIKE ''%[0-9],[0-9]%'') AND (dbo.afgsku__.toestand = N''1'') AND ({ fn MOD(CAST(dbo.afgsku__.aant__ex AS int), CASE WHEN dbo.afgart__.aant__e2 = 0 THEN 1 ELSE CAST(dbo.afgart__.aant__e2 AS int) 
                         END) } <> 0)
' 
