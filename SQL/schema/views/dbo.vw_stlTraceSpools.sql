SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlTraceSpools]'))
EXEC dbo.sp_executesql @statement = N'




CREATE VIEW [dbo].[vw_stlTraceSpools]
AS
/***************** --SPOOLS-- *****************/
SELECT DISTINCT
    pSKU.crea_dat                        AS [Date],                -- Creation date of the SKU
    pSKU.ord__ref                        AS [Lot],                 -- Order reference for the lot
    pSKU.pal__ref                        AS [Pallet],              -- Pallet reference for the SKU
    pSKU.box__ref                        AS [Box],                 -- Box reference for the SKU
    pSKU.sku__ref                        AS [SKU],                 -- SKU reference
    pSKU.inhoud01                        AS [Spool],                 -- Sequence number (probably a batch or production order sequence)
    fr.flatRollNo                        AS [Flat_Roll],           -- Flat roll number associated with the SKU
    b.rewindBrickNo                      AS [Brick],               -- Rewind brick number for the SKU
    b.sku__ref                           AS [BR_SFG],              -- SKU reference for Brick SFG (Semi-Finished Goods)
    pr.inh__oms                          AS [PR],                  -- Press roll number or identifier
    CAST(sfg.dt___beg AS DATE)           AS [PR_Date],             -- Date of the press roll start
    pr.hlf__ref                          AS [PR_SFG],              -- Press roll Semi-Finished Goods reference
    plcrol.artd_ref                      AS [Material_SKU],        -- Material SKU reference
    m.art__rpn                           AS [Material_Keyword],    -- Material keyword (MAT-000000)
    srb.labelsPerRow                     AS [LabelsPerRow],        -- Number of labels per row on the material
    p.etiket_h                           AS [LENGTH],              -- Length of the label (inches)
    p.lblgp___                           AS [GAP],                 -- Gap between labels (inches)
    (p.etiket_h + p.lblgp___)            AS [REPEAT_AROUND],       -- Total repeat length (label length + gap)
    e.wn___rpn                           AS [Operator]             -- Operator responsible (using a worker reference)

FROM [sqlb00].[dbo].[spool] s
JOIN [sqlb00].[dbo].[afgsku__] pSKU 
    ON s.sku__ref = pSKU.sku__ref                           -- Linking spool with SKU reference

JOIN [sqlb00].[dbo].[flatRollSpool] frs 
    ON s.spoolID = frs.spoolID                              -- Linking spool ID with flat roll spool reference

JOIN [sqlb00].[dbo].[flatRoll] fr 
    ON frs.flatRollID = fr.flatRollID                       -- Linking flat roll spool with flat roll

LEFT JOIN [sqlb00].[dbo].[operator] o 
    ON fr.operatorID = o.operatorID                         -- Linking operator ID with the flat roll

LEFT JOIN [sqlb00].[dbo].[werknm__] e 
    ON o.wn___ref = e.wn___ref                              -- Linking operator reference to the worker

JOIN [sqlb00].[dbo].[brick] b 
    ON fr.brickID = b.brickID                               -- Linking flat roll with brick reference

JOIN [sqlb00].[dbo].[stlST_RewindBrick] srb 
    ON b.sku__ref = srb.created_hlf__ref                    -- Linking brick SKU reference to rewind brick

JOIN [sqlb00].[dbo].[stlST_PressRollXstlST_RewindBrick] x 
    ON srb.stlST_RewindBrickID = x.stlST_RewindBrickID      -- Linking rewind brick to press roll

JOIN [sqlb00].[dbo].[stlST_PressRoll] pr 
    ON x.stlST_PressRollID = pr.stlST_PressRollID           -- Linking press roll to rewind brick

LEFT JOIN [sqlb00].[dbo].[hlfvrd__] sfg 
    ON pr.hlf__ref = sfg.hlf__ref 
    AND pSKU.ord__ref = sfg.ord__ref                        -- Linking press roll to the flat roll using a reference

LEFT JOIN [sqlb00].[dbo].[plcrol__] plcrol 
    ON plcrol.aantlmok <> 0                                 -- Produced Meters Good is not zero
    AND plcrol.artd_ref <> ''''                               -- Material SKU is not empty                     
    AND plcrol.ord__ref = pSKU.ord__ref 
    AND plcrol.dt___beg <= sfg.dt___end 
    AND plcrol.dt___end >= sfg.dt___beg                     -- Linking material references with order and date constraints

LEFT JOIN (
    SELECT DISTINCT art__ref, artd_ref 
    FROM [sqlb00].[dbo].[stobew__]  
) mSku 
    ON plcrol.artd_ref = mSku.artd_ref                      -- Selecting distinct material reference to match with plcrol

JOIN [sqlb00].[dbo].[artiky__] m 
    ON mSku.art__ref = m.art__ref                           -- Linking material reference to the art keyword

LEFT JOIN [sqlb00].[dbo].[afgart__] p 
    ON pSKU.afg__ref = p.afg__ref                           -- Linking SKU with a specific art reference

WHERE plcrol.soort___ = ''f''                                 -- Filter for a specific type of material (likely finished product)
--  AND pSKU.ord__ref = ''%'';                                -- Filter for a specific order reference (JID)


' 
