SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetAllCoatingJobs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetAllCoatingJobs] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_STL_GetAllCoatingJobs]
AS     
BEGIN   
 
  SELECT Art.off__ref JobId,         
  Mat.art__ref MaterialID,         
  Mat.art__rpn MaterialKW,         
  Ord.oplage__ OrderQty,        
  Sum(Left(Cal.duur____,3) * 3600 + Right(Cal.duur____,2) * 60) Duration, --add up all the durations, if there are multiple plandv__ records for a job and machine        
  MAX(CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datumend, 112)       
  + ' ' + CONVERT(CHAR(8), Cal.stop____, 108))) CompleteDate,   -- Pick the last date, if there are multiple plandv__ records for a job and machine        
  Cal.plpl_ref MachineId        
  FROM v4vrs___ AS Art WITH(NOLOCK)         
  INNER JOIN afgart__ AS Prod WITH(NOLOCK) ON Prod.afg__ref = Art.afg__ref          -- afgart__ is the Product table        
  INNER JOIN artiky__ AS Mat WITH(NOLOCK) ON Mat.art__rpn = Prod.zynrefkl           -- artiky__ is the Material table        
  INNER JOIN order___ AS Ord WITH(NOLOCK) ON Ord.ord__ref = Art.off__ref           -- We can get the OrderQty FROM the order__ table        
  INNER JOIN plandv__ AS Cal WITH(NOLOCK) ON Cal.ord__ref = Art.off__ref AND Cal.plpl_ref = 'MINI_COHESIO'  -- plandv__ is the table that holds the calendar information        
  GROUP BY Mat.art__ref , Mat.art__rpn , Ord.oplage__ , Art.off__ref, Cal.plpl_ref        
        
END
