-- Jobs that consumed materials matching the extracted material codes from HanitaPolyJobs
SELECT DISTINCT
    ord.ord__ref AS JobID,
    ord.kla__rpn AS CustomerKeyword,
    ord.leverdat AS ShipDate,
    prod.afg__ref AS ProductID,
    prod.afg_oms1 AS ProductDescription,
    hp.SupplierKeyword,
    hp.materialKeyword AS FacesheetMaterialKeyword,
    hp.ExtractedMaterial as MaterialKeyword
FROM order___ ord
LEFT JOIN bstlyn__ prod ON ord.ord__ref = prod.ord__ref
INNER JOIN (
    SELECT DISTINCT
        sup.lev__rpn AS SupplierKeyword,
        mat1.art__rpn AS materialKeyword,
        CASE 
            WHEN CHARINDEX('MAT-', prod1.afg_oms1) > 0 THEN 
                CASE 
                    WHEN CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) > 0 THEN
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) - CHARINDEX('MAT-', prod1.afg_oms1))
                    ELSE
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), LEN(prod1.afg_oms1) - CHARINDEX('MAT-', prod1.afg_oms1) + 1)
                END
            ELSE '' 
        END AS ExtractedMaterial
    FROM levbas__ sup
    LEFT JOIN artiky__ mat1 ON sup.lev__ref = mat1.lev__ref
    LEFT JOIN stobew__ cons1 ON mat1.art__ref = cons1.art__ref AND cons1.soort___ = '3'
    LEFT JOIN bstlyn__ prod1 ON cons1.ord__ref = prod1.ord__ref
    WHERE (sup.lev__rpn LIKE '%HANI%' OR sup.lev__rpn LIKE '%POLYM%')
    AND mat1.art__rpn LIKE 'mat%'
    AND (cons1.ord__ref <> 'N' AND cons1.ord__ref <> '')
    AND prod1.kla__ref = '100109'
    AND CHARINDEX('MAT-', prod1.afg_oms1) > 0
) hp ON 1=1
INNER JOIN stobew__ c ON ord.ord__ref = c.ord__ref AND c.soort___ = '3'
INNER JOIN artiky__ m ON c.art__ref = m.art__ref AND m.art__rpn LIKE '%' + hp.ExtractedMaterial + '%'
WHERE ord.ord__ref NOT IN ('', 'N')
ORDER BY ord.ord__ref DESC, hp.materialKeyword;
