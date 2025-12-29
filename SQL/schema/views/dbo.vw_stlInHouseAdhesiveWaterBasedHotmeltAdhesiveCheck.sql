SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlInHouseAdhesiveWaterBasedHotmeltAdhesiveCheck]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlInHouseAdhesiveWaterBasedHotmeltAdhesiveCheck]
AS

SELECT drg__ref, drg__rpn, AdhesiveID1, Adh1Description1, InhouseTest1a, InhouseTest1b, Hotmelt1, GlueThickness1, UnitID1, Unit1, AdhesiveID2, Adh2Description1, InhouseTest2a, InhouseTest2b, Hotmelt2, 
                         GlueThickness2, UnitID2, Unit2, Adh1Check, Adh2Check, CASE WHEN Adh1Check = ''OUCH!'' THEN ''OUCH!'' ELSE CASE WHEN Adh2Check = ''OUCH!'' THEN ''OUCH!'' ELSE ''Great!'' END END TOTALCHECK
FROM 
(
SELECT drg__ref, drg__rpn, AdhesiveID1, Adh1Description1, InhouseTest1a, InhouseTest1b, Hotmelt1, GlueThickness1, UnitID1, Unit1, AdhesiveID2, Adh2Description1, InhouseTest2a, InhouseTest2b, Hotmelt2, 
                         GlueThickness2, UnitID2, Unit2, CASE WHEN InhouseTest1a = InhouseTest1b THEN ''Great'' ELSE ''OUCH!'' END AS Adh1Check, CASE WHEN InhouseTest2a = InhouseTest2b THEN ''Great'' ELSE ''OUCH!'' END AS Adh2Check
FROM
(
SELECT cf.[drg__ref]
	   ,s.drg__rpn 
      ,CAST ([AdhesiveID1] AS nvarchar(6)) [AdhesiveID1]
	  ,adh1.art_oms1  Adh1Description1
	  ,CASE WHEN CHARINDEX(''WB'', adh1.art_oms1) > 0 THEN ''WB'' ELSE CASE WHEN CHARINDEX(''HM'', adh1.art_oms1) > 0 THEN ''HM'' ELSE '''' END END InhouseTest1a
      ,CASE WHEN [HotmeltID1] = ''000003'' THEN ''WB'' ELSE CASE WHEN [HotmeltID1] = ''000002'' THEN ''HM'' ELSE '''' END END InhouseTest1b
      ,[Hotmelt1]
      ,[GlueThickness1]
      ,[UnitID1]
      ,[Unit1]
      ,CAST ([AdhesiveID2] AS nvarchar(6)) [AdhesiveID2]
	  ,adh2.art_oms1 Adh2Description1
	  ,CASE WHEN CHARINDEX(''WB'', adh2.art_oms1) > 0 THEN ''WB'' ELSE CASE WHEN CHARINDEX(''HM'', adh2.art_oms1) > 0 THEN ''HM'' ELSE '''' END END InhouseTest2a
      ,CASE WHEN [HotmeltID2] = ''000003'' THEN ''WB'' ELSE CASE WHEN [HotmeltID2] = ''000002'' THEN ''HM'' ELSE '''' END END InhouseTest2b
      ,[Hotmelt2]
      ,[GlueThickness2]
      ,[UnitID2]
      ,[Unit2]
  FROM [sqlb00].[dbo].[vw_stlSubstrateCustomFields] cf
  LEFT JOIN artiky__ adh1 ON cf.AdhesiveID1 = adh1.art__ref  
  LEFT JOIN artiky__ adh2 ON cf.AdhesiveID2 = adh2.art__ref 
  JOIN drgers__ s ON cf.drg__ref = s.drg__ref 

  WHERE AdhesiveID1 IS NOT NULL OR AdhesiveID2 IS NOT NULL
  ) hmwb_i
  ) hmwb
' 
