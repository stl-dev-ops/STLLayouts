USE [sqlb00];
GO

/***************** TRACE SPOOLS X PALLET/BOX WITH MIL VALUE *****************/
SELECT DISTINCT
    pRoll.ord__ref AS [JID],
    pRoll.hlf__ref AS [PR_SFG],
    pRoll.inh__oms AS [PressRoll],
    pRollXrBrick.stlST_PressRollID AS [PressRollID],
    pRollXrBrick.stlST_RewindBrickID AS [RewindBrickID],
    rBrick.created_hlf__ref AS [BrickSKU],
    b.brickID AS [BrickID],

    --  Spool Details
    sP.spoolID AS [SpoolID],
    sP.spoolNo AS [SpoolNumber],          --  restored
    sP.sku__ref AS [SpoolSKU],
    spoolSKU.pal__ref AS [SpoolPallet],
    spoolSKU.box__ref AS [SpoolBox],

    --  Flat Roll Details
    sku.sku__ref AS [FlatRollSKU],
    flatSKU.pal__ref AS [FlatRollPallet],
    flatSKU.box__ref AS [FlatRollBox],
    sku.volgnr__ AS [FlatRollSeq],

    --  Material Thickness Mapping
    CASE pRoll.hlf__ref
        -- Job 510621
        WHEN '000286162' THEN 0.45
        WHEN '000286329' THEN 0.40
        WHEN '000286437' THEN 0.45
        WHEN '000286451' THEN 0.45

        -- Job 510620
        WHEN '000281942' THEN 0.45
        WHEN '000281947' THEN 0.45
        WHEN '000282517' THEN 0.45
        WHEN '000282632' THEN 0.45

        -- Job 511566
        WHEN '000300876' THEN 0.45
        WHEN '000300927' THEN 0.40

        -- Job 511567
        WHEN '000300859' THEN 0.55

        ELSE NULL
    END AS [MilThickness]

FROM [dbo].[stlST_PressRoll] AS pRoll
LEFT JOIN [dbo].[stlST_PressRollXstlST_RewindBrick] AS pRollXrBrick
    ON pRollXrBrick.stlST_PressRollID = pRoll.stlST_PressRollID
LEFT JOIN [dbo].[stlST_RewindBrick] AS rBrick
    ON rBrick.stlST_RewindBrickID = pRollXrBrick.stlST_RewindBrickID
LEFT JOIN [dbo].[brick] AS b
    ON b.sku__ref = rBrick.created_hlf__ref
LEFT JOIN [dbo].[flatRollSpool] AS fRS
    ON fRS.brickID = b.brickID
LEFT JOIN [dbo].[spool] AS sP
    ON sP.spoolID = fRS.spoolID
LEFT JOIN [dbo].[stlST_RewindBrickSKU] AS rbSKU
    ON rbSKU.stlST_RewindBrickID = pRollXrBrick.stlST_RewindBrickID
LEFT JOIN [dbo].[afgsku__] AS sku
    ON sku.sku__ref = rbSKU.sku__ref        -- flat roll SKU
LEFT JOIN [dbo].[afgsku__] AS flatSKU
    ON flatSKU.sku__ref = sku.sku__ref      -- flat roll pallet/box
LEFT JOIN [dbo].[afgsku__] AS spoolSKU
    ON spoolSKU.sku__ref = sP.sku__ref      -- spool pallet/box

WHERE pRoll.hlf__ref IN (
    '000286162','000286329','000286437','000286451',
    '000281942','000281947','000282517','000282632',
    '000300876','000300927','000300859'
)
ORDER BY pRoll.hlf__ref, sP.spoolNo;
