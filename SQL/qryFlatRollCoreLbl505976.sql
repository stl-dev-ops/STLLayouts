SELECT dbo_afgart__.afg_oms1, dbo_afgsku__.sku__ref AS SKU, "Lot#" & " " & [dbo_v4vrs___].[off__ref] AS Lot, "Mfg ref#" & " " & [dbo_afgart__].[afg__ref] AS MFG, "Seq # " & " " & [volgnr__] AS Seq, dbo_afgart__.afg__ref, dbo_afgsku__.lyn__ref, dbo_v4vrs___.off__ref, dbo_afgsku__.volgnr__
FROM (dbo_afgsku__ INNER JOIN dbo_afgart__ ON dbo_afgsku__.afg__ref = dbo_afgart__.afg__ref) INNER JOIN dbo_v4vrs___ ON (dbo_afgart__.afg__ref = dbo_v4vrs___.afg__ref) AND (dbo_afgsku__.ord__ref = dbo_v4vrs___.off__ref)
WHERE (((dbo_v4vrs___.off__ref)="505976") AND ((dbo_afgsku__.volgnr__)>=900 And (dbo_afgsku__.volgnr__)<=2900));

