-- Trace jobs consuming extracted materials back to actual facesheet via stlCC SKU linkage (Coating + Cohesio)
;WITH JobsConsumingHaniPolyMaterials AS (
    SELECT DISTINCT
        movement.ord__ref AS JobID,
        material.art__rpn AS ConsumedMaterialKeyword
    FROM stobew__ movement
    JOIN artiky__ material ON movement.art__ref = material.art__ref
    JOIN levbas__ supplier ON material.lev__ref = supplier.lev__ref
    JOIN bstlyn__ sale ON movement.ord__ref = sale.ord__ref
        AND sale.kla__ref = '100109'
    WHERE movement.soort___ = '3'
        AND material.art__rpn IN (
            'MAT-00471',
            'MAT-00754',
            'MAT-00781',
            'MAT-00859',
            'MAT-00875',
            'MAT-00876',
            'MAT-00878',
            'MAT-00899',
            'MAT-00900',
            'MAT-00912',
            'MAT-00934',
            'MAT-00940',
            'MAT-01021',
            'MAT-01039',
            'MAT-01044',
            'MAT-01051',
            'MAT-01206',
            'MAT-01208',
            'MAT-01218',
            'MAT-01266',
            'MAT-01357',
            'MAT-01376',
            'MAT-01421',
            'MAT-01480',
            'MAT-00162DL'
        )
        AND movement.ord__ref NOT IN ('', 'N')
),
ExtractedMaterials AS (
    SELECT DISTINCT
        jc.JobID,
        jc.ConsumedMaterialKeyword,
        prod.afg_oms1 AS ProductDescription,
        CASE 
            WHEN CHARINDEX('MAT-', prod.afg_oms1) > 0 THEN 
                CASE 
                    WHEN CHARINDEX(')', prod.afg_oms1, CHARINDEX('MAT-', prod.afg_oms1)) > 0 THEN
                        SUBSTRING(prod.afg_oms1, CHARINDEX('MAT-', prod.afg_oms1), CHARINDEX(')', prod.afg_oms1, CHARINDEX('MAT-', prod.afg_oms1)) - CHARINDEX('MAT-', prod.afg_oms1))
                    ELSE
                        SUBSTRING(prod.afg_oms1, CHARINDEX('MAT-', prod.afg_oms1), LEN(prod.afg_oms1) - CHARINDEX('MAT-', prod.afg_oms1) + 1)
                END
            ELSE '' 
        END AS ExtractedMaterial
    FROM JobsConsumingHaniPolyMaterials jc
    LEFT JOIN bstlyn__ prod ON jc.JobID = prod.ord__ref
    WHERE CHARINDEX('MAT-', prod.afg_oms1) > 0
),
-- Jobs consuming materials matching extracted codes
ConsumedJobs AS (
    SELECT DISTINCT
        ord.ord__ref AS JobID,
        ord.kla__rpn AS CustomerKeyword,
        ord.leverdat AS ShipDate,
        prod.afg__ref AS ProductID,
        prod.afg_oms1 AS ProductDescription,
        c.artd_ref AS ConsumedSKU,
        m.art__ref AS ConsumedMaterialID,
        m.art__rpn AS ConsumedMaterialKeyword,
        em.ExtractedMaterial
    FROM order___ ord
    LEFT JOIN bstlyn__ prod ON ord.ord__ref = prod.ord__ref
    INNER JOIN stobew__ c ON ord.ord__ref = c.ord__ref AND c.soort___ = '3'
    INNER JOIN artiky__ m ON c.art__ref = m.art__ref
    INNER JOIN ExtractedMaterials em ON m.art__rpn = em.ExtractedMaterial
    WHERE ord.ord__ref NOT IN ('', 'N')
      AND c.artd_ref <> ''
),
-- Link consumed SKUs to the jobs that created them via stobew delivery records
SKUCreationJobs AS (
    SELECT DISTINCT
        cj.JobID,
        cj.ConsumedSKU,
        grs.ord__ref AS MaterialCreationJobID,
        'Delivery' AS ProcessType
    FROM ConsumedJobs cj
    INNER JOIN stobew__ del ON cj.ConsumedSKU = del.artd_ref AND del.soort___ = '2'
    INNER JOIN grsbon__ grs ON del.grbonref = grs.grbonref AND del.lev__ref = grs.lev__ref
    WHERE grs.ord__ref IS NOT NULL AND grs.ord__ref NOT IN ('', 'N')
),
-- Facesheets consumed in the material-creation jobs
OriginFacesheets AS (
    SELECT DISTINCT
        scj.JobID,
        scj.MaterialCreationJobID,
        scj.ProcessType,
        mf.art__ref AS ActualFacesheetID,
        mf.art__rpn AS ActualFacesheetKeyword,
        mf.art_oms1 AS ActualFacesheetDescription,
        sf.lev__rpn AS ActualFacesheetSupplier
    FROM SKUCreationJobs scj
    INNER JOIN stobew__ cf ON scj.MaterialCreationJobID = cf.ord__ref AND cf.soort___ = '3'
    INNER JOIN artiky__ mf ON cf.art__ref = mf.art__ref AND mf.art__rpn LIKE 'mat%'
    LEFT JOIN levbas__ sf ON mf.lev__ref = sf.lev__ref
    WHERE (sf.lev__rpn LIKE '%HANI%' OR sf.lev__rpn LIKE '%POLYM%')
)
SELECT DISTINCT
    cj.ShipDate,
    cj.JobID,
    cj.CustomerKeyword,
    cj.ProductID,
    cj.ProductDescription,
    cj.ConsumedMaterialID,
    cj.ConsumedMaterialKeyword,
    ofa.ActualFacesheetID AS FaceSheetID,
    ofa.ActualFacesheetKeyword AS FaceSheetKeyword,
    ofa.ActualFacesheetDescription AS FaceSheetDescription,
    ofa.ActualFacesheetSupplier
FROM ConsumedJobs cj
LEFT JOIN OriginFacesheets ofa ON cj.JobID = ofa.JobID
WHERE cj.CustomerKeyword <> 'ZZ TOP'
AND cj.ConsumedMaterialKeyword <> 'MAT-00949'
AND ofa.ActualFacesheetKeyword <> 'MAT-00162DL'
AND cj.ShipDate >= '2017-01-01'
ORDER BY cj.ShipDate DESC;
