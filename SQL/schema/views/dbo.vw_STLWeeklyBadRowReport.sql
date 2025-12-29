SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLWeeklyBadRowReport]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].vw_STLWeeklyBadRowReport
AS

SELECT DISTINCT
    rBR.ord__ref                                        AS [JID],
--  sO.afg__ref                                         AS [PID],
    pROD.afg_oms1                                       AS [Description],
    rBR.rewindBrickNo                                   AS [BR],
    pBR.flatRollNo                                      AS [ROW],
--  x.goodCount                                         AS [prXbr goodCount],
--  rBR.goodCount                                       AS [BR goodCount],
--  rbr.labelsPerRow                                    AS [Labels per row],
    CAST(
        CAST(CAST(x.goodCount AS FLOAT)
        /CAST(rBR.goodCount AS FLOAT) AS FLOAT) 
        *CAST(rBR.labelsPerRow AS FLOAT) AS INT
        )                                               AS [Labels],
    pBR.reason                                          AS [Reason],
    pBR.comment                                         AS [Comment],
--  rBR.lastModified                                    AS [Date/Time],
    pR.inh__oms                                         AS [PR],
    (pNAME.wn_vnaam + '' '' + pNAME.wn_naam_)             AS [Operator],
    pR.lastModified                                     AS [PRDateTime],
	pR.lastModified                                     AS [PRDateTimeFrom],
	pR.lastModified                                     AS [PRDateTimeTo]
    
FROM 
    [stlST_pressRollBadRow] pBR
JOIN 
    [stlST_RewindBrick] rBR
    ON pBR.stlST_RewindBrickID = rBR.stlST_RewindBrickID
JOIN
    [bstlyn__] sO
    ON rBR.ord__ref = sO.ord__ref
JOIN
    [afgart__] pROD
    ON sO.afg__ref = pROD.afg__ref
JOIN
    [stlST_PressRollxstlST_RewindBrick] x
    ON rBR.stlST_RewindBrickID = x.stlST_RewindBrickID
JOIN
    [stlST_PressRoll] pR
    ON x.stlST_PressRollID = pR.stlST_PressRollID
JOIN
    [hlfvrd__] pSFG
    ON pR.hlf__ref = pSFG.hlf__ref
JOIN
    [werknm__] pNAME
    ON pSFG.wn___ref = pNAME.wn___ref
--WHERE 
--    pR.lastModified >= DATEADD(DAY, -9, GETDATE())
--    AND pR.lastModified < GETDATE()
-- ORDER BY 
--    pR.lastModified;
' 
