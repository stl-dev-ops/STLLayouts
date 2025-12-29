SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetCoatingMaterialPO]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetCoatingMaterialPO] AS' 
END
--exec [dbo].[SP_STL_GetCoatingMaterialPO] '100237'
ALTER PROCEDURE [dbo].[SP_STL_GetCoatingMaterialPO]
(
   @MaterialId as NVARCHAR(15)
)
AS 
BEGIN

	SELECT grbonref AS POID,
				art__ref AS MaterialID,
				glev_dat AS DeliveryDate,
				gaant___ AS Qty
				FROM grsbon__
				WHERE art__ref = @MaterialId AND glev_dat >= convert(varchar, getdate(), 1)  order by glev_dat Asc
END
