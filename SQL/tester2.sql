WITH SupplierID AS (
    SELECT DISTINCT lev__ref
    FROM levbas__
    WHERE lev__rpn LIKE '%HANI%'
       OR lev__rpn LIKE '%POLYM%'
),
Material AS (
    SELECT DISTINCT artiky__.art__ref, artiky__.lev__ref
    FROM SupplierID
    JOIN artiky__ ON artiky__.lev__ref = SupplierID.lev__ref
)

    SELECT DISTINCT stobew__.ord__ref, Material.lev__ref AS supplierID
    FROM Material
    JOIN stobew__ ON stobew__.art__ref = Material.art__ref
    JOIN bstlyn__ ON bstlyn__.ord__ref = stobew__.ord__ref
    JOIN afgart__ ON afgart__.afg__ref = bstlyn__.afg__ref
    WHERE stobew__.soort___ = '3'
      AND stobew__.ord__ref NOT IN ('', 'N')
      AND stobew__.art__ref = afgart__.art__ref