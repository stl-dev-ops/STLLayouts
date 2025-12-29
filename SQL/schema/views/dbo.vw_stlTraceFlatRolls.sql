SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlTraceFlatRolls]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlTraceFlatRolls]
AS
/***************** --FLAT ROLLS-- *****************/
SELECT DISTINCT
    pSKU.crea_dat                                      AS [Date],               -- SKU creation date
    pSKU.ord__ref                                      AS [Lot],                -- Order reference for the lot
    pSKU.pal__ref                                      AS [Pallet],             -- Pallet reference for the SKU
    pSKU.box__ref                                      AS [Box],                -- Box reference for the SKU
    pSKU.sku__ref                                      AS [SKU],                -- SKU reference
    pSKU.volgnr__                                      AS [Seq],                -- Sequence number (production or batch)
    rbSKU.lane                                         AS [FR],                 -- Rewind brick SKU lane
    rb.labelsPerRow                                    AS [Labels],             -- Number of labels per row
    rb.labelsPerRow * (p.etiket_h + p.lblgp___) / 12.0 AS [Feet],               -- Total length in feet (label length + gap / 12 for feet conversion)
    rb.rewindBrickNo                                   AS [BR],                 -- Rewind brick number
    pr.inh__oms                                        AS [PR],                 -- Press roll identifier
    pr.hlf__ref                                        AS [PR_SFG],             -- Press roll semi-finished goods reference
    plcrol.artd_ref                                    AS [MAT_SKU],            -- Material SKU reference
    m.art__rpn                                         AS [MAT],                -- Material keyword/reference
    e.wn___rpn                                         AS [Operator]            -- Operator reference (worker ID)

FROM [sqlb00].[dbo].[stlST_RewindBrickSKU] AS rbSKU
JOIN [sqlb00].[dbo].[stlST_RewindBrick] AS rb 
    ON rbSKU.stlST_RewindBrickID = rb.stlST_RewindBrickID        -- Linking rewind brick SKU with rewind brick

LEFT JOIN [sqlb00].[dbo].[werknm__] AS e 
    ON rb.wn___ref = e.wn___ref                                  -- Linking operator reference with worker details

JOIN [sqlb00].[dbo].[afgsku__] AS pSKU 
    ON rbSKU.sku__ref = pSKU.sku__ref                            -- Linking rewind brick SKU with SKU reference

JOIN [sqlb00].[dbo].[stlST_PressRollXstlST_RewindBrick] AS x 
    ON rb.stlST_RewindBrickID = x.stlST_RewindBrickID            -- Linking rewind brick to press roll

JOIN [sqlb00].[dbo].[stlST_PressRoll] AS pr 
    ON x.stlST_PressRollID = pr.stlST_PressRollID                -- Linking press roll to rewind brick

JOIN [sqlb00].[dbo].[hlfvrd__] AS sfg 
    ON pr.hlf__ref = sfg.hlf__ref 
    AND rb.ord__ref = sfg.ord__ref                               -- Linking press roll with flat roll using references

JOIN [sqlb00].[dbo].[plcrol__] AS plcrol 
    ON rb.ord__ref = plcrol.ord__ref 
    AND plcrol.aantlmok <> 0 
    AND plcrol.artd_ref <> '''' 
    AND plcrol.dt___beg <= sfg.dt___end 
    AND plcrol.dt___end >= sfg.dt___beg                          -- Linking material references with order and date constraints

LEFT JOIN (
    SELECT DISTINCT art__ref, artd_ref 
    FROM [sqlb00].[dbo].[stobew__] 
) AS mSku 
    ON plcrol.artd_ref = mSku.artd_ref                           -- Matching material SKU references

JOIN [sqlb00].[dbo].[artiky__] AS m 
    ON mSku.art__ref = m.art__ref                                -- Linking material reference to its keyword

LEFT JOIN [sqlb00].[dbo].[afgart__] AS p 
    ON pSKU.afg__ref = p.afg__ref                                -- Linking SKU with specific art reference

WHERE plcrol.soort___ = ''f''                                      -- Filter for primary material
--  AND pSKU.ord__ref = ''%'';                                     -- Filter for JID

' 
