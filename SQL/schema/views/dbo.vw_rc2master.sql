SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_rc2master]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW vw_rc2master AS
-- ...existing view definition...
SELECT DISTINCT
    mSM.grbonref AS [PO],
    hMM.artd_ref AS [SKU],
    mAT.art__rpn as [KEYWORD],
    LEFT(REPLACE(hMM.komment_, '' '', ''''),9) AS [RC],
    r2m.Master_roll AS [Master_Roll],
    ROUND(r2m.Hanita_AVG, 3) AS [Hanita_AVG],
    ROUND(r2m.STL_AVG, 3) AS [STL_AVG]
    
FROM [hisgl2__] hMM

JOIN [stobew__] mSM
    ON mSM.artd_ref = hMM.artd_ref

JOIN [artiky__] mAT
    ON mAT.art__ref = hMM.art__ref

LEFT JOIN [rc2master] r2m
    ON r2m.Roll_ID = LEFT(REPLACE(hMM.komment_, '' '', ''''),9)

WHERE hMM.art__ref LIKE ''%'' 
    AND mSM.grbonref <> ''''
    AND hMM.komment_ LIKE ''RC%''
    AND hMM.artd_ref LIKE ''%''

--ORDER BY hMM.artd_ref DESC;' 
