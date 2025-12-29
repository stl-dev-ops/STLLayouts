SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlElevatedMaterials]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlElevatedMaterials]
AS
SELECT 
m.uitgeput, mfsal.art__ref MaterialID, m.art__rpn MaterialKeyword, m.art_oms1 MaterialDescription,
mfsal.FaceSheetID, fs.art__rpn FaceSheetKeyword, fs.art_oms1 FacesheetDescription, fss.lev__rpn FaceSheetSupplier,
mfsal.AdhesiveID, ad.art__rpn AdhesiveKeyword, ad.art_oms1 AdhesiveDescription, ads.lev__rpn AdhesiveSupplier,
mfsal.LinerID, li.art__rpn LinerKeyword, li.art_oms1 LinerDescription, lis.lev__rpn LinerSupplier 

FROM 
stlMaterialsFaceSheetAdhesiveLinerIDs mfsal JOIN 
artiky__ m ON mfsal.art__ref = m.art__ref LEFT JOIN 
levbas__ ms ON m.lev__ref = ms.lev__ref LEFT JOIN 
artiky__ fs ON mfsal.FaceSheetID = fs.art__ref LEFT JOIN 
levbas__ fss ON fs.lev__ref = fss.lev__ref LEFT JOIN 
artiky__ ad ON mfsal.AdhesiveID = ad.art__ref LEFT JOIN 
levbas__ ads ON ad.lev__ref = ads.lev__ref LEFT JOIN 
artiky__ li ON mfsal.LinerID = li.art__ref LEFT JOIN 
levbas__ lis ON li.lev__ref = lis.lev__ref  
WHERE m.lev__ref = ''200003'' 
' 
