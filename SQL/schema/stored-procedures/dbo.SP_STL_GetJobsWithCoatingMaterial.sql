SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetJobsWithCoatingMaterial]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetJobsWithCoatingMaterial] AS' 
END
--exec [dbo].[SP_STL_GetJobsWithCoatingMaterial] '506940'
--exec [dbo].[SP_STL_GetJobsWithCoatingMaterial_Modified] '506994'
ALTER PROCEDURE [dbo].[SP_STL_GetJobsWithCoatingMaterial]
(
   @JobId as NVARCHAR(6)
)
AS                  
BEGIN                  
 DECLARE @EndDate DATE,@OrderQty FLOAT;                  
 SET @EndDate = (SELECT MAX(CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datumend, 112)     
  + ' ' + CONVERT(CHAR(8), Cal.stop____, 108))) FROM plandv__ AS Cal WHERE Cal.ord__ref = @JobId AND Cal.plpl_ref = 'MINI_COHESIO')                  
 SET @OrderQty = (SELECT Ord.oplage__ FROM order___ AS Ord WHERE Ord.ord__ref = @JobId)                  
                  
                  
 SELECT               
 --ROW_NUMBER() over(order by datum___) as rowNumber,              
 Cal.ord__ref JobId,                  
 CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datum___, 112)     
  + ' ' + CONVERT(CHAR(8), Cal.start___, 108)) AS StartDate,    
 CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datumend, 112)     
  + ' ' + CONVERT(CHAR(8), Cal.stop____, 108)) AS EndDate,      
 Odr.leverdat AS ShipDate,   
 Cal.plpl_ref AS MachineID,                   
 Mac.omschr__ AS MachineName,                  
 a.art__rpn AS MaterialKW,                   
 artikn__.art__ref AS MaterialID,                  
 v.tedrk_to AS OrderQTY,                  
 artikn__.in_stock AS InStock,                  
 --(artikn__.in_stock - v.tedrk_to) AS Balance,                  
 CASE WHEN  CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datumend, 112)     
  + ' ' + CONVERT(CHAR(8), Cal.stop____, 108)) >= @EndDate THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS 'CoatingBeforeJob'                  
 --CASE WHEN Cal.datum___ > @EndDate THEN (artikn__.in_stock - v.tedrk_to) + @OrderQty ELSE (artikn__.in_stock - v.tedrk_to) END 'BalanceAfterCoating'                  
 FROM plandv__ AS Cal WITH(NOLOCK)                  
 LEFT JOIN order___ AS Odr WITH(NOLOCK) ON Odr.ord__ref = Cal.ord__ref                  
 LEFT JOIN planpl__ AS Mac WITH(NOLOCK) ON Mac.plpl_ref = Cal.plpl_ref                  
 LEFT JOIN v4eti___ v WITH(NOLOCK) ON v.off__ref = Cal.ord__ref                  
 LEFT JOIN artiky__ a WITH(NOLOCK) ON v.art__ref = a.art__ref                  
 LEFT JOIN artikn__ WITH(NOLOCK) ON artikn__.art__ref = v.art__ref                  
 WHERE Cal.ord__ref IN(--So, this gets all the JobIDs that depend on the material FROM a given coating job                  
       SELECT off__ref AS JobID FROM v4eti___ WHERE off__ref IN (                  
         SELECT ord__ref FROM plandv__                  
         JOIN planpl__ ON planpl__.plpl_ref = plandv__.plpl_ref                  
         WHERE toestand <> '3' AND ord__ref <> '' AND                   
         --(plpl_ref LIKE '%PRESS%' OR plpl_ref LIKE '%AZTEC%' OR plpl_ref LIKE '%COHESIO%') )                   
         (planpl__.priorite = 0 OR planpl__.priorite =1))                  
         AND art__ref IN (                  
                  
       --This gets the MaterialID for a given JobID (506940)                  
       SELECT art__ref AS MaterialID FROM artiky__ WHERE art__rpn IN (                  
       --This gets all the MaterialKWs FROM the products tables that are produced by the coating jobs                  
       SELECT zynrefkl AS MaterialKW FROM afgart__ WHERE afg__ref IN (                  
       -- This gets all the ProductIDs produced by the coating jobs                  
       SELECT afg__ref FROM v4vrs___ WHERE off__ref = @JobId)) ) )                   
 AND (Mac.priorite = 0 OR Mac.priorite =1) order by StartDate, ShipDate, JobId ASC-- <-- Jon added this line                  
 -- Jon commented out this line: AND (Cal.plpl_ref LIKE '%PRESS%' OR Cal.plpl_ref LIKE '%AZTEC%' OR Cal.plpl_ref LIKE '%COHESIO%')                  
END
