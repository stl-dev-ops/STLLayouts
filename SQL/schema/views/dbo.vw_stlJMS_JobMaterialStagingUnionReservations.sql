SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlJMS_JobMaterialStagingUnionReservations]'))
EXEC dbo.sp_executesql @statement = N'


/* This comment precedes the view definition*/
CREATE VIEW [dbo].[vw_stlJMS_JobMaterialStagingUnionReservations]
AS
 SELECT ord__ref, art__ref 
 FROM stlJMS_JobMaterialStaging 
 UNION 
 SELECT ord__ref, art__ref 
 FROM resgrd__ 
 UNION 
 SELECT ord__ref, art__ref 
 FROM stobew__ 
 WHERE ord__ref <> '''' AND art__ref <> '''' 
' 
