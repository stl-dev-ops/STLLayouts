SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetCoatingJob]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetCoatingJob] AS' 
END
--exec [dbo].[SP_STL_GetCoatingJob] '507047'
ALTER PROCEDURE [dbo].[SP_STL_GetCoatingJob]
(
   @JobId as NVARCHAR(6)
)
AS     
BEGIN   

  DECLARE @Temptable TABLE (
  JobId varchar(50) null,
  MaterialID varchar(50) null,
  MaterialKW varchar(50) null,
  OrderQTY float null,
  Duration int null,
  CompleteDate datetime null,
  MachineId varchar(50) null
  )

 insert into @Temptable EXEC dbo.SP_STL_GetAllCoatingJobs

 SELECT TOP (1) JobId , MachineId, Mac.omschr__ MachineName, MaterialID,MaterialKW,OrderQty,RIGHT('0' + CAST(Duration / 3600 AS VARCHAR),2) + ':' +        
 RIGHT('0' + CAST((Duration / 60) % 60 AS VARCHAR),2) Duration,CompleteDate         
 FROM @Temptable T -- (
--  SELECT Art.off__ref JobId,         
--  Mat.art__ref MaterialID,         
--  Mat.art__rpn MaterialKW,         
--  Ord.oplage__ OrderQty,        
--  Sum(Left(Cal.duur____,3) * 3600 + Right(Cal.duur____,2) * 60) Duration, --add up all the durations, if there are multiple plandv__ records for a job and machine        
--  MAX(CONVERT(DATETIME, CONVERT(CHAR(8), Cal.datumend, 112)       
--  + ' ' + CONVERT(CHAR(8), Cal.stop____, 108))) CompleteDate,   -- Pick the last date, if there are multiple plandv__ records for a job and machine        
--  Cal.plpl_ref MachineId        
--  FROM v4vrs___ AS Art WITH(NOLOCK)         
--  INNER JOIN afgart__ AS Prod WITH(NOLOCK) ON Prod.afg__ref = Art.afg__ref          -- afgart__ is the Product table        
--  INNER JOIN artiky__ AS Mat WITH(NOLOCK) ON Mat.art__rpn = Prod.zynrefkl           -- artiky__ is the Material table        
--  INNER JOIN order___ AS Ord WITH(NOLOCK) ON Ord.ord__ref = Art.off__ref           -- We can get the OrderQty FROM the order__ table        
--  INNER JOIN plandv__ AS Cal WITH(NOLOCK) ON Cal.ord__ref = Art.off__ref AND Cal.plpl_ref = 'MINI_COHESIO'  -- plandv__ is the table that holds the calendar information        
--  WHERE Art.off__ref = @JobId        
--  GROUP BY Mat.art__ref , Mat.art__rpn , Ord.oplage__ , Art.off__ref, Cal.plpl_ref        
        
 --)T        
 INNER JOIN planpl__ AS Mac WITH(NOLOCK) ON Mac.plpl_ref = T.MachineId
 where t.JobId = @JobId
END

