-- Jobs consuming materials (soort=3) where material keyword matches ExtractedMaterial from HanitaPolyJobs
;WITH ExtractedMaterials AS (
    SELECT DISTINCT
        CASE 
            WHEN CHARINDEX('MAT-', prod1.afg_oms1) > 0 THEN 
                CASE 
                    WHEN CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) > 0 THEN
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) - CHARINDEX('MAT-', prod1.afg_oms1))
                    ELSE
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), LEN(prod1.afg_oms1))
                END
            ELSE '' 
        END AS ExtractedMaterial
    FROM bstlyn__ prod1
    LEFT JOIN stobew__ cons1 ON prod1.ord__ref = cons1.ord__ref
    LEFT JOIN artiky__ mat1 ON cons1.art__ref = mat1.art__ref
    LEFT JOIN levbas__ sup ON mat1.lev__ref = sup.lev__ref
    WHERE (sup.lev__rpn LIKE '%HANI%' OR sup.lev__rpn LIKE '%POLYM%')
    AND mat1.art__rpn LIKE 'mat%'
    AND (cons1.ord__ref <> 'N' AND cons1.ord__ref <> '')
    AND prod1.kla__ref = '100109'
    AND CHARINDEX('MAT-', prod1.afg_oms1) > 0
)
SELECT DISTINCT
    c.ord__ref AS JobID,
    c.art__ref AS ElevatedMaterialID,
    m.art__rpn AS ElevatedMaterialKeyword,
    m.art_oms1 AS ElevatedMaterialDescription,
    sup.lev__rpn AS ElevatedMaterialSupplier,
    em.ExtractedMaterial,
    -- HANI/POLYM material that was consumed to create the elevated material
    cons_hani.art__ref AS HaniPolyMaterialID,
    mat_hani.art__rpn AS HaniPolyMaterialKeyword,
    mat_hani.art_oms1 AS HaniPolyMaterialDescription,
    sup_hani.lev__rpn AS HaniPolyMaterialSupplier
FROM stobew__ c
JOIN artiky__ m ON c.art__ref = m.art__ref
LEFT JOIN levbas__ sup ON m.lev__ref = sup.lev__ref
CROSS JOIN ExtractedMaterials em
LEFT JOIN stobew__ cons_hani ON c.ord__ref = cons_hani.ord__ref AND cons_hani.soort___ = '3'
LEFT JOIN artiky__ mat_hani ON cons_hani.art__ref = mat_hani.art__ref
LEFT JOIN levbas__ sup_hani ON mat_hani.lev__ref = sup_hani.lev__ref
WHERE c.soort___ = '3'
    AND m.art__rpn LIKE '%' + em.ExtractedMaterial + '%'
    AND (sup.lev__rpn IS NOT NULL AND sup.lev__rpn LIKE '%ELEV%')
    AND c.ord__ref NOT IN ('', 'N')
    AND (sup_hani.lev__rpn LIKE '%HANI%' OR sup_hani.lev__rpn LIKE '%POLYM%')
ORDER BY c.ord__ref DESC, m.art__rpn;
