WITH SupplierID AS (
    SELECT DISTINCT lev__ref
    FROM levbas__
    WHERE lev__rpn LIKE '%HANI%'
       OR lev__rpn LIKE '%POLYM%'
),
Material AS (
    SELECT DISTINCT
        artiky__.art__ref,
        artiky__.lev__ref,
        artiky__.art__rpn
    FROM SupplierID
    JOIN artiky__
        ON artiky__.lev__ref = SupplierID.lev__ref
),
DeliveryJIDs AS (        
    SELECT DISTINCT
        stobew__.ord__ref,
        Material.lev__ref AS supplierID,
        Material.art__rpn AS materialKeyword
    FROM Material
    JOIN stobew__
        ON stobew__.art__ref = Material.art__ref
    JOIN bstlyn__
        ON bstlyn__.ord__ref = stobew__.ord__ref
    JOIN afgart__
        ON afgart__.afg__ref = bstlyn__.afg__ref
    WHERE stobew__.soort___ = '3'
        AND stobew__.ord__ref NOT IN ('', 'N')
        AND stobew__.art__ref = afgart__.art__ref
),
RelevantOrders AS (
    SELECT DISTINCT 
        grsbon__.ord__ref,
        grsbon__.grbonref,
        grsbon__.lev__ref,
        DeliveryJIDs.supplierID,
        DeliveryJIDs.materialKeyword
    FROM DeliveryJIDs 
    JOIN grsbon__
        ON grsbon__.ord__ref = DeliveryJIDs.ord__ref
),
DeliveredSKUs AS (
    SELECT DISTINCT 
        delivered.artd_ref,
        delivered.grbonref,
        delivered.lev__ref,
        RelevantOrders.supplierID,
        RelevantOrders.materialKeyword
    FROM RelevantOrders
    JOIN stobew__ delivered
        ON delivered.grbonref = RelevantOrders.grbonref 
        AND delivered.lev__ref = RelevantOrders.lev__ref
        AND delivered.soort___ = '2'
        AND delivered.artd_ref IS NOT NULL
),
ConsumptionJIDs AS (
    SELECT DISTINCT
        stobew__.ord__ref,
        DeliveredSKUs.supplierID,
        DeliveredSKUs.materialKeyword
    FROM DeliveredSKUs
    JOIN stobew__
        ON stobew__.artd_ref = DeliveredSKUs.artd_ref
        AND stobew__.soort___ = '3'
),
JIDDetails AS (
    SELECT DISTINCT 
        bstlyn__.vrz__dat AS shipDate,
        bstlyn__.ord__ref AS JobID,
        bstlyn__.kla__ref AS CustomerID,
        bstlyn__.kla__rpn AS CustomerKeyword,
        bstlyn__.afg__ref AS ProductID,
        bstlyn__.afg_oms1 AS ProductDescription,
        artiky__.art__ref AS MaterialID,
        artiky__.art__rpn AS MaterialKeyword,
        ConsumptionJIDs.materialKeyword AS FacesheetKeyword,
        levbas__.lev__rpn AS FacesheetSupplierKeyword
    FROM ConsumptionJIDs
    LEFT JOIN bstlyn__
        ON bstlyn__.ord__ref = ConsumptionJIDs.ord__ref
    JOIN levbas__
        ON levbas__.lev__ref = ConsumptionJIDs.supplierID
    JOIN afgart__
        ON afgart__.afg__ref = bstlyn__.afg__ref
    JOIN artiky__
        ON artiky__.art__ref = afgart__.art__ref
)
SELECT *
FROM JIDDetails
WHERE shipDate >= '2017-01-01'
ORDER BY shipDate DESC;