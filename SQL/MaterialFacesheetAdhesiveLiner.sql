
;WITH Material AS (
    SELECT DISTINCT
		m.art__ref   AS MaterialID,
		m.art__rpn   AS MaterialKeyword,
		m.art_oms1   AS MaterialDescription,
		m.lev__ref   AS SupplierID,
		lb.lev__rpn  AS SupplierKeyword
	FROM dbo.artiky__ m
	LEFT JOIN dbo.levbas__ lb ON lb.lev__ref = m.lev__ref
	WHERE UPPER(ISNULL(lb.lev__rpn, '')) LIKE '%HANI%'
	   OR UPPER(ISNULL(lb.lev__rpn, '')) LIKE '%POLYM%'
),
JobsConsumingMaterial AS (
	-- stobew__ consumptions (soort=3) where art__ref is one of the supplier materials
	SELECT DISTINCT
		c.ord__ref AS JobID,
		c.art__ref AS ConsumedMaterialID
	FROM dbo.stobew__ c
	WHERE c.soort___ = '3'
	  AND c.art__ref IN (SELECT MaterialID FROM Material)
),
ProducedMaterial AS (
	-- material each first-tier job produced/delivered (soort=2), using art__ref directly
	SELECT DISTINCT
		d.ord__ref AS JobID,
		d.art__ref AS ProducedMaterialID
	FROM dbo.stobew__ d
	WHERE d.soort___ = '2'
	  AND d.ord__ref IN (SELECT JobID FROM JobsConsumingMaterial)
)
SELECT DISTINCT
	pm.JobID,
	jcm.ConsumedMaterialID,
	pm.ProducedMaterialID,
	a.art__rpn  AS ProducedMaterialKeyword,
	a.art_oms1  AS ProducedMaterialDescription
FROM ProducedMaterial pm
JOIN JobsConsumingMaterial jcm ON jcm.JobID = pm.JobID
LEFT JOIN dbo.artiky__ a ON a.art__ref = pm.ProducedMaterialID
ORDER BY pm.JobID;
