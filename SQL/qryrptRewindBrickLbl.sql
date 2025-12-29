SELECT Code39([rewindBrickID]) AS ID, rewindBrick.rewindBrickID AS rwID, rewindBrick.ord__ref, rewindBrick.qtyFt, rewindBrick.rewindBrickNo, IIf([spoolJob],[qtyLabels],[grossQtyLabels]) AS Labels, dbo_v4vrs___.afg__ref, dbo_klabas__.naam____, IIf(([aantal_b]=0 Or [grossQtyLabels]=0),0,[grossQtyLabels]/[aantal_b]) AS LabelsPerRow
FROM tblDupeFourRecordsForLabels, (dbo_klabas__ INNER JOIN ((rewindBrick INNER JOIN dbo_v4vrs___ ON rewindBrick.ord__ref = dbo_v4vrs___.off__ref) INNER JOIN dbo_order___ ON rewindBrick.ord__ref = dbo_order___.ord__ref) ON dbo_klabas__.kla__ref = dbo_order___.kla__ref) INNER JOIN dbo_v4eti___ ON rewindBrick.ord__ref = dbo_v4eti___.off__ref
WHERE (((rewindBrick.rewindBrickID)=[Forms]![frmRewindBrick].[Form].[rewindBrickID]));

