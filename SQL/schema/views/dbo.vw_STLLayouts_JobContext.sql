SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- Provides a single-row job "context" used for variable mappings.
-- This mirrors the columns returned by JobService.GetJobContextAsync so the UI can discover fields
-- and mappings can be validated.
--
-- IMPORTANT: This view should remain stable (column aliases are the mapping keys).

CREATE OR ALTER VIEW dbo.vw_STLLayouts_JobContext
AS
SELECT
    -- Base order fields
    o.*, 

    -- Customer
    k.naam____  AS CustomerName,

    -- Stable aliases used in mappings
    o.ord__ref   AS JobNumber,
    o.ord__rpn   AS JobOrderNumber,
    o.best_dat   AS OrderDate,
    o.omschr__   AS ProductDescription,
    o.open____   AS JobStatus,

    -- Customer fields
    k.kla__ref   AS CustomerRef,
    k.kla__rpn   AS CustomerKeyword,
    k.straat__   AS CustomerStreet,
    k.wijk____   AS CustomerDistrict,
    k.postnaam  AS CustomerCity,
    k.telefoon  AS CustomerPhone,
    k.telefax_  AS CustomerFax,

    -- Sales line: first line by bstvlgnr
    bl.afg_oms1  AS SalesLineProductDesc1,
    bl.afg_oms2  AS SalesLineProductDesc2,
    bl.vrz__dat  AS ShipDate,
    bl.lev__dat  AS ActualDeliveryDate,
    bl.l_aantal  AS DeliveredQuantity,

    -- Reservation: first by dat_resv
    rg.dat_resv  AS ReservationDate,
    rg.reserve_  AS ReservedQuantity,
    rg.kommen_1  AS ReservationComments1,
    rg.kommen_2  AS ReservationComments2,
    rg.kommen_3  AS ReservationComments3,

    -- Product/version
    v.afg__ref   AS ProductCode,
    v.vrs__ref   AS ProductVersion,

    -- Product master
    a.afg_oms1   AS ProductFullDescription1,
    a.afg_oms2   AS ProductFullDescription2,
    a.afg__rpn   AS ProductKeyword,
    a.art__ref   AS ProductMaterialID,

    -- Material
    m.art_oms1   AS MaterialDescription1,
    m.art_oms2   AS MaterialDescription2,
    m.diameter  AS MaterialDiameter,
    m.grammage  AS MaterialGrammage,
    m.hoogte__   AS MaterialHeight,
    m.lengte__   AS MaterialLength,
    m.breedte_   AS MaterialWidth,
    m.art__rpn   AS MaterialKeyword,
    m.lev__ref   AS MaterialSupplierID,
    m.art__srt   AS MaterialType
FROM dbo.order___ o
LEFT JOIN dbo.klabas__ k
    ON o.kla__ref = k.kla__ref

OUTER APPLY (
    SELECT TOP 1
        b.afg_oms1,
        b.afg_oms2,
        b.vrz__dat,
        b.lev__dat,
        b.l_aantal,
        b.afg__ref,
        b.vrs__ref
    FROM dbo.bstlyn__ b
    WHERE b.ord__ref = o.ord__ref
    ORDER BY TRY_CONVERT(int, b.bstvlgnr) ASC, b.lyn__ref ASC
) bl

OUTER APPLY (
    SELECT TOP 1
        r.dat_resv,
        r.reserve_,
        r.kommen_1,
        r.kommen_2,
        r.kommen_3,
        r.art__ref,
        r.art__srt
    FROM dbo.resgrd__ r
    WHERE r.ord__ref = o.ord__ref
    ORDER BY r.dat_resv ASC, r.res__ref ASC
) rg

LEFT JOIN dbo.v4vrs___ v
    ON v.off__ref = o.off__ref
   AND v.vrs__ref = bl.vrs__ref

LEFT JOIN dbo.afgart__ a
    ON a.afg__ref = v.afg__ref

LEFT JOIN dbo.artiky__ m
    ON m.art__ref = a.art__ref;
GO
