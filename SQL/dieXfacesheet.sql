-- Query to find facesheet for a specific die tool number
-- Example die tool: 102679

DECLARE @DieToolNumber NVARCHAR(50) = '102679';

WITH DieJobs AS (
    SELECT DISTINCT
        o.ord__ref AS JobID,
        o.kla__rpn AS Customer,
        oc.lev__dat AS DeliveryDate,
        o.omschr__ AS Description,
        p.art__ref AS MaterialID,
        m.art__rpn AS MaterialKeyword
    FROM dbo.order___ o
    JOIN dbo.ordcum__ oc
        ON o.ord__ref = oc.ord__ref
    JOIN dbo.v4eti___ p
        ON o.ord__ref = p.off__ref
    JOIN dbo.artiky__ m
        ON p.art__ref = m.art__ref
    WHERE o.omschr__ LIKE '%' + @DieToolNumber + '%'
      AND oc.lev__dat >= DATEADD(YEAR, -2, GETDATE())
)
SELECT 
    dj.JobID,
    dj.Customer,
    dj.DeliveryDate,
    dj.Description,
    dj.MaterialID,
    dj.MaterialKeyword,
    fs.Facesheet,
    @DieToolNumber AS DieToolNumber
FROM DieJobs dj
OUTER APPLY (
    SELECT TOP 1 mk.art__rpn AS Facesheet
    FROM dbo.order___ o2
    JOIN dbo.v4eti___ p2
        ON o2.ord__ref = p2.off__ref
    JOIN dbo.artiky__ mk
        ON p2.art__ref = mk.art__ref
    WHERE o2.omschr__ LIKE '%' + ISNULL(dj.MaterialKeyword,'')
      AND mk.art__rpn LIKE '%389%' 
      AND mk.art__rpn NOT LIKE '%1389%'
    ORDER BY o2.ord__ref DESC
) fs
WHERE fs.Facesheet IS NOT NULL
ORDER BY dj.DeliveryDate DESC;
