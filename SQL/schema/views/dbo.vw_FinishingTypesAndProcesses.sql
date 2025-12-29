SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_FinishingTypesAndProcesses]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_FinishingTypesAndProcesses
AS
SELECT     dbo.v1off___.bon__ref, FinishingProcessesInlineOffline, FinishingTypes
FROM         dbo.v1off___ INNER JOIN
                          (SELECT LFMain.bon__ref,
       LEFT(LFMain.EstimatesLabelFinishing,Len(LFMain.EstimatesLabelFinishing)-1) As "FinishingProcessesInlineOffline"
FROM
    (
        SELECT DISTINCT LF2.bon__ref, 
            (
                SELECT LF1.omschr__ + '', '' AS [text()]
                FROM (SELECT     dbo.v1off___.bon__ref, dbo.stdeap__.omschr__
                       FROM          dbo.v1etaf__ INNER JOIN
                                              dbo.v1off___ ON dbo.v1etaf__.off__ref = dbo.v1off___.off__ref INNER JOIN
                                              dbo.stdeap__ ON dbo.v1etaf__.etap_ref = dbo.stdeap__.etap_ref
                       WHERE      (LEN(stdeap__.omschr__) > 0)) LF1
                WHERE LF1.bon__ref = LF2.bon__ref
                FOR XML PATH ('''')
            ) [EstimatesLabelFinishing]
        FROM (SELECT     dbo.v1off___.bon__ref, stdeap__.omschr__
                       FROM          dbo.v1etaf__ INNER JOIN
                                              dbo.v1off___ ON dbo.v1etaf__.off__ref = dbo.v1off___.off__ref INNER JOIN
                                              dbo.stdeap__ ON dbo.v1etaf__.etap_ref = dbo.stdeap__.etap_ref
                       WHERE      (LEN(dbo.stdeap__.omschr__) > 0)) LF2
    ) [LFMain]                ) AS FinishingProcessesInlineOffline on dbo.v1off___.bon__ref = FinishingProcessesInlineOffline.bon__ref INNER JOIN
(SELECT FTMain.bon__ref,
       LEFT(FTMain.EstimateslFinishingTypes,Len(FTMain.EstimateslFinishingTypes)-1) As "FinishingTypes"
FROM
    (
        SELECT DISTINCT FT2.bon__ref, 
            (
                SELECT FT1.omschr__ + '', '' AS [text()]
                FROM (SELECT     dbo.v1off___.bon__ref, dbo.stdeas__.omschr__
                       FROM          dbo.v1etaf__ INNER JOIN
                                              dbo.v1off___ ON dbo.v1etaf__.off__ref = dbo.v1off___.off__ref INNER JOIN
                                              dbo.stdeas__ ON dbo.v1etaf__.etas_ref = dbo.stdeas__.etas_ref
                       WHERE      (LEN(stdeas__.omschr__) > 0)) FT1
                WHERE FT1.bon__ref = FT2.bon__ref
                FOR XML PATH ('''')
            ) [EstimateslFinishingTypes]
        FROM (SELECT     dbo.v1off___.bon__ref, stdeas__.omschr__
                       FROM          dbo.v1etaf__ INNER JOIN
                                              dbo.v1off___ ON dbo.v1etaf__.off__ref = dbo.v1off___.off__ref INNER JOIN
                                              dbo.stdeas__ ON dbo.v1etaf__.etas_ref = dbo.stdeas__.etas_ref
                       WHERE      (LEN(dbo.stdeas__.omschr__) > 0)) FT2
    ) [FTMain]    
) AS FinishingTypes ON dbo.v1off___.bon__ref = FinishingTypes.bon__ref
' 
