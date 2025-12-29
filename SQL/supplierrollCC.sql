SELECT
      cc.LinerManufacturerRollNumber
    , cc.LinerSKU AS [Liner_SKU]
    , cc.SKU AS [Material_SKU]
    , mKEY.art__rpn AS Material_Keyword
	, mKEY2.art__rpn AS Material_Keyword_2
    , mGRS.ord__ref AS Delivery_JID
    , mCON.ord__ref AS Consumption_JID
FROM [sqlb00].[dbo].[stlCC_CoatingCardRolls] AS cc

LEFT JOIN [sqlb00].[dbo].[artikd__] AS mSKU
  ON cc.SKU = mSKU.artd_ref

LEFT JOIN artiky__ mKEY2
	ON mSKU.art__ref = mKEY2.art__ref

LEFT JOIN [sqlb00].[dbo].[stobew__] AS mDEL
  ON cc.SKU = mDEL.artd_ref AND mDEL.soort___ = '2'

LEFT JOIN [sqlb00].[dbo].[grsbon__] AS mGRS
  ON mDEL.grbonref = mGRS.grbonref
  AND mDEL.lev__ref = mGRS.lev__ref

LEFT JOIN [sqlb00].[dbo].[stobew__] AS mCON
  ON cc.SKU = mCON.artd_ref AND mCON.soort___ = '3'

LEFT JOIN [sqlb00].[dbo].[artiky__] AS mKEY
  ON mCON.art__ref = mKEY.art__ref

WHERE 
    LinerManufacturerRollNumber LIKE '%17971165%' OR
    LinerManufacturerRollNumber LIKE '%17971173%' OR
    LinerManufacturerRollNumber LIKE '%17971206%' OR
    LinerManufacturerRollNumber LIKE '%17971316%' OR
    LinerManufacturerRollNumber LIKE '%17971328%' OR
    LinerManufacturerRollNumber LIKE '%17983952%' OR
    LinerManufacturerRollNumber LIKE '%17984030%' OR
    LinerManufacturerRollNumber LIKE '%17984049%' OR
    LinerManufacturerRollNumber LIKE '%17984064%' OR
    LinerManufacturerRollNumber LIKE '%17984258%'


SELECT *
FROM stlCC_CoatingCardRolls
WHERE SKU = '389346'

SELECT *
FROM artiky__
WHERE art__ref = '104676'

SELECT mMOV.artd_ref,
		mKEY.art__ref,
		mKEY.art__rpn
FROM stobew__ mMOV
LEFT JOIN artiky__ mKEY
	ON mMOV.art__ref = mKEY.art__ref
WHERE mMOV.artd_ref = '389344'