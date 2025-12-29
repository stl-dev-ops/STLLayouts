WITH BaseJobs AS (
    SELECT DISTINCT
        o.ord__ref AS JobID,
        o.kla__rpn AS Customer,
        oc.lev__dat AS DeliveryDate,
        o.omschr__ AS Description,
        oc.aant_prd AS DeliveredQuantity,
        p.art__ref AS MaterialID,
        m.art__rpn AS MaterialKeyword
    FROM dbo.order___ o
    JOIN dbo.ordcum__ oc
        ON o.ord__ref = oc.ord__ref
    JOIN dbo.v4eti___ p
        ON o.ord__ref = p.off__ref
    JOIN dbo.artiky__ m
        ON p.art__ref = m.art__ref
    WHERE oc.lev__dat >= DATEADD(YEAR, -1, GETDATE())
)
SELECT 
    b.JobID,
    b.Customer,
    b.DeliveredQuantity,
    b.DeliveryDate,
    b.Description,
    b.MaterialID,
    b.MaterialKeyword,
    fs.Facesheet
FROM BaseJobs b
OUTER APPLY (
    SELECT TOP 1 mk.art__rpn AS Facesheet
    FROM dbo.order___ o2
    JOIN dbo.v4eti___ p2
        ON o2.ord__ref = p2.off__ref
    JOIN dbo.artiky__ mk
        ON p2.art__ref = mk.art__ref
    WHERE o2.omschr__ LIKE '%' + ISNULL(b.MaterialKeyword,'')
      AND mk.art__rpn LIKE '%389%' 
      AND mk.art__rpn NOT LIKE '%1389%'
) fs
WHERE fs.Facesheet IS NOT NULL
ORDER BY b.DeliveryDate DESC;