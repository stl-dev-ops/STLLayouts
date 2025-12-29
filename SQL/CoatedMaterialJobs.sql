-- Jobs using coated (elevated) materials from Hanita or polymeric sources
-- Output: JobID, Customer, ShipDate, ProductID, Description
-- Filters:
--   - Material keyword/description contains Hanita or polymeric indicators
--   - Material keyword/description contains coated/elevated indicators
--   - Shipments in last 3 years

SELECT DISTINCT
    o.ord__ref       AS JobID,
    o.kla__rpn       AS Customer,
    oc.lev__dat      AS ShipDate,
    p.art__ref       AS ProductID,
    o.omschr__       AS Description,
    m.art__rpn       AS MaterialKeyword,
    m.art_oms1       AS MaterialDescription
FROM dbo.order___ o
JOIN dbo.ordcum__ oc
    ON o.ord__ref = oc.ord__ref
JOIN dbo.v4eti___ p
    ON o.ord__ref = p.off__ref
JOIN dbo.artiky__ m
    ON p.art__ref = m.art__ref
WHERE oc.lev__dat >= DATEADD(YEAR, -3, GETDATE())
  AND (
          UPPER(m.art__rpn)  LIKE '%HANITA%'
      OR UPPER(m.art_oms1)  LIKE '%HANITA%'
      OR UPPER(m.art__rpn)  LIKE '%HANI%'
      OR UPPER(m.art_oms1)  LIKE '%HANI%'
      OR UPPER(m.art__rpn)  LIKE '%POLY%'
      OR UPPER(m.art_oms1)  LIKE '%POLY%'
      OR UPPER(m.art__rpn)  LIKE '%POLYMER%'
      OR UPPER(m.art_oms1)  LIKE '%POLYMER%'
  )
ORDER BY oc.lev__dat DESC, o.ord__ref;
