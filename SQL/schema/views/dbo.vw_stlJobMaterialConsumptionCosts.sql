SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJobMaterialConsumptionCosts]'))
EXEC dbo.sp_executesql @statement = N'
/* This comment precedes the view definition*/
CREATE VIEW [dbo].[vw_stlJobMaterialConsumptionCosts]
AS

SELECT ord__ref, MIN(datum___) FirstConsumptionDate, SUM(kost____) JOB_MATERIAL_COST    
FROM stobew__ 
WHERE ord__ref <> ''N'' AND 
art__ref <> '''' AND 
(
   soort___ = ''3'' OR 
   soort___ = ''5'' OR 
   soort___ = ''6'' OR 
   soort___ = ''C''
)
GROUP BY ord__ref 

' 
