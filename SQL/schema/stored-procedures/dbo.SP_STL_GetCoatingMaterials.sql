SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetCoatingMaterials]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetCoatingMaterials] AS' 
END
--exec [dbo].[SP_STL_GetCoatingMaterials] '507056'
ALTER PROCEDURE [dbo].[SP_STL_GetCoatingMaterials]
(
   @JobId as NVARCHAR(6)
)
AS 
BEGIN    
    
 SELECT Art.art__ref AS MaterialID,     
 Art.in_stock AS InStock,     
 Art.reserve_ AS Reserved,     
 Art.in_stock - Art.reserve_ AS Available,    
 Mat.artc_ref MaterialType ,    
 Mat.art__rpn MaterialKW,  
 res.reserve_ as JobReserved    
 FROM artikn__ AS Art WITH(NOLOCK)    
 LEFT JOIN artiky__  AS Mat WITH(NOLOCK) ON Mat.art__ref = Art.art__ref    
 LEFT JOIN resgrd__ as res WITH(NOLOCK) on res.art__ref = Art.art__ref  
 WHERE Art.art__ref IN (    
  -- This will get the MaterialID of the primary material (Face Sheet):    
  SELECT art__ref AS MaterialID FROM v4eti___ WHERE off__ref = @JobId    
  UNION    
  -- This one will get the MaterialID of the adhesive    
   SELECT klpmsref FROM v4edg___ ve JOIN v4kkl___ vk ON ve.kpn__ref = vk.kpn__ref AND ve.dg___ref = vk.dg___ref WHERE off__ref = @JobId AND vk.ink__ref = 'ADH' --result MaterialID = '100130'    
   UNION    
   -- This will get the MaterialID of the secondary material (Liner):    
   SELECT art__ref  FROM v4etaf__ WHERE off__ref = @JobId AND art__ref <> ''    
 ) and res.ord__ref =@JobId  
END
