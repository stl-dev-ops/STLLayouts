SELECT job.leverdat			AS Delivery
	  ,job.ord__ref			AS JID
	  ,prod.afg__ref		AS PID
	  ,job.omschr__			AS Description
	  ,mat.art__ref			AS MAT_ID
	  ,mat2.art__rpn		AS MAT_Keyword
	  ,const.FaceSheetID	AS Facesheet_ID
	  ,matFace.art__rpn		AS Facesheet_Keyword
	  ,const.AdhesiveID		AS Adhesive_ID
	  ,matAdh.art__rpn		AS Adhesive_Keyword
	  ,const.LinerID		AS Liner_ID
	  ,matLiner.art__rpn	AS Liner_Keyword
	  ,mat.stns_ref			AS Die_ID
	  ,die.stns_rpn			AS Die_Keyword
  FROM [sqlb00].[dbo].[order___] job
  JOIN v4vrs___ prod
	ON prod.off__ref = job.ord__ref
  JOIN v4eti___ mat
	ON mat.off__ref = job.ord__ref
  JOIN artiky__ mat2
	ON mat2.art__ref = mat.art__ref
  JOIN stlMaterialsFaceSheetAdhesiveLinerIDs const
	ON mat.art__ref = const.art__ref
  LEFT JOIN artiky__ matFace
	ON matFace.art__ref = const.FaceSheetID
  LEFT JOIN artiky__ matAdh
	ON matAdh.art__ref = const.AdhesiveID
  LEFT JOIN artiky__ matLiner
	ON matLiner.art__ref = const.LinerID
  LEFT JOIN v4etaf__ mat3
	ON mat3.off__ref = job.ord__ref
  JOIN stnspr__ die
	ON die.stns_ref = mat3.stns_ref
	AND ISNULL(die.stns_rpn, '') LIKE '%S-%'
  WHERE job.kla__rpn = 'CARDS UNLI'
	AND job.omschr__ LIKE '%chameleon%'