SELECT DISTINCT
        sup.lev__ref AS SupplierID,
        sup.lev__rpn AS SupplierKeyword,
        mat1.art__ref AS materialID,
        mat1.art__rpn AS materialKeyword,
        mat1.art_oms1 AS materialDescription,
        cons1.ord__ref AS JobID1,
        prod1.afg__ref AS ProductID1,
        prod1.afg_oms1 AS ProductDescription1,
        CASE 
            WHEN CHARINDEX('MAT-', prod1.afg_oms1) > 0 THEN 
                CASE 
                    WHEN CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) > 0 THEN
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), CHARINDEX(')', prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1)) - CHARINDEX('MAT-', prod1.afg_oms1))
                    ELSE
                        SUBSTRING(prod1.afg_oms1, CHARINDEX('MAT-', prod1.afg_oms1), LEN(prod1.afg_oms1) - CHARINDEX('MAT-', prod1.afg_oms1) + 1)
                END
            ELSE '' 
        END AS ExtractedMaterial,
        prod1.kla__ref AS CustomerID1,
        prod1.kla__rpn AS CustomerKeyword1

    FROM levbas__ sup

    LEFT JOIN artiky__ mat1
        ON sup.lev__ref = mat1.lev__ref

    LEFT JOIN stobew__ cons1
        ON mat1.art__ref = cons1.art__ref
        AND cons1.soort___ = '3'

    LEFT JOIN bstlyn__ prod1
        ON cons1.ord__ref = prod1.ord__ref

    WHERE (sup.lev__rpn LIKE '%HANI%'
    OR sup.lev__rpn LIKE '%POLYM%')
    AND mat1.art__rpn LIKE 'mat%'
    AND (cons1.ord__ref <> 'N' AND cons1.ord__ref <> '')
    AND prod1.kla__ref = '100109'

    ORDER BY cons1.ord__ref DESC;