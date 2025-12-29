SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetAllJobsWithCoatingMaterial]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetAllJobsWithCoatingMaterial] AS' 
END
--Exec [SP_STL_GetAllJobsWithCoatingMaterial] '2022-08-15', '2022-09-06', '200003'
ALTER PROCEDURE [dbo].[SP_STL_GetAllJobsWithCoatingMaterial] 
  (
   @Start as varchar(10),
   @End as varchar(10),
   @SupplID as varchar(10)
  )
  As
  Begin

  -- create a Temporary table to hold the outstanding PO information to be delivered during the period
  DECLARE @TemptableCoatingJobs TABLE (
  JobId varchar(50) null,
  MaterialID varchar(50) null,
  MaterialKW varchar(50) null,
  OrderQTY float null,
  Duration int null,
  CompleteDate datetime null,
  MachineId varchar(50) null
  )
  insert into @TemptableCoatingJobs EXEC dbo.SP_STL_GetAllCoatingJobs

  -- This temp table holds all the Coating Jobs that get used during the cursor actions
  DECLARE @TemptableCoatingJobsNOTUsed TABLE (
	JobId varchar(50) null
  )
  insert into @TemptableCoatingJobsNOTUsed select JobId from @TemptableCoatingJobs

  DECLARE @Temptable TABLE (
  id int identity(1,1) primary key not null,
  JobId varchar(50) null,
  off__ref varchar(50) null,
  StartDate datetime null,
  EndDate datetime null,
  ShipDate datetime null,
  MachineID varchar(50) null,
  MachineName varchar(50) null,
  CoatingJobID nvarchar(6) null,
  MaterialKW varchar(50) null,
  MaterialID varchar(50) null,
  OrderQTY float null,
  InStockQTY float null,
  CoatingDeliv float null 
  )
  
  INSERT INTO @Temptable (
  JobId
  ,off__ref
  ,StartDate
  ,EndDate
  ,Shipdate
  ,MachineID
  ,MachineName
  ,MaterialKW 
  ,MaterialID 
  ,OrderQTY 
  ,InStockQTY
  )
  SELECT                       
 Cal.ord__ref JobId,                          
 vt.off__ref,      
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
 artikn__.in_stock AS InStock                          
 FROM plandv__ AS Cal WITH(NOLOCK)                          
 LEFT JOIN order___ AS Odr WITH(NOLOCK) ON Odr.ord__ref = Cal.ord__ref                          
 LEFT JOIN planpl__ AS Mac WITH(NOLOCK) ON Mac.plpl_ref = Cal.plpl_ref                          
 LEFT JOIN v4eti___ v WITH(NOLOCK) ON v.off__ref = Cal.ord__ref                          
 LEFT JOIN artiky__ a WITH(NOLOCK) ON v.art__ref = a.art__ref                          
 LEFT JOIN artikn__ WITH(NOLOCK) ON artikn__.art__ref = v.art__ref         
 Left JOIN v4vrs___ vt WITH(NOLOCK) ON Cal.ord__ref = vt.off__ref      
WHERE Cal.ord__ref IN(                        
       SELECT off__ref AS JobID FROM v4eti___ WHERE off__ref IN (                        
         SELECT ord__ref FROM plandv__                        
         JOIN planpl__ ON planpl__.plpl_ref = plandv__.plpl_ref                        
         WHERE toestand <> '3' AND ord__ref <> '' AND                         
         (planpl__.priorite = 0 OR planpl__.priorite =1 ))                        
         AND art__ref IN (                        
                  select art__ref from artiky__ where lev__ref = @SupplID)      
      )       
	  and (Cal.datum___ <= (SELECT CONVERT(DATE,@End)))     
 AND (Mac.priorite =1)  and Cal.toestand <> '3'  order by StartDate, ShipDate, JobId ASC
--	  and (Cal.datum___ between (SELECT CONVERT(DATE,@Start)) and (SELECT CONVERT(DATE,@End)))     
 -- AND (Mac.priorite = 0 OR Mac.priorite =1) order by StartDate, ShipDate, JobId ASC
  --NOTE: Mac.priorite = 0 are the Z/Scheduling machines, and they don't want those for this
  --NOTE: Added Cal.toestand <> '3' condition because they were doubling up if there were records in plandv__ with toestand = 1 AND 3 for the same ord__ref 
  --NOTE:	We have to ignore the Start Date and look up all active schedule records prior to the End Date
  --		in order to account for the consumptions prior to the Start Date
  --		we will implement the Start Date in the final SELECT * from @Temptable query

 --select * from @Temptable
 DECLARE @id int= 0, @StartDate datetime = null,@MaterialKW varchar(50) = null
 DECLARE @EndDate datetime = null, @MaterialID varchar(50) = null
 DECLARE @CoatingJobId varchar(50) = null, @CoatingJobOrderQTY float = 0
 DECLARE @InStockQty float = null, @CoatingDeliv float = null, @t_InStockQTY float = null, @OrderQTY float = null, @t_id int = null
 DECLARE @ConsumedOnJob float = null, @JobId varchar(6) = null
 DECLARE MAIN_CURSOR CURSOR FOR
  --select id, StartDate,MaterialKW from @Temptable
  select id, StartDate,MaterialKW, EndDate, MaterialID from @Temptable
  OPEN MAIN_CURSOR
  FETCH NEXT FROM MAIN_CURSOR INTO @id,@StartDate, @MaterialKW, @EndDate, @MaterialID
  WHILE(@@FETCH_STATUS = 0)
  BEGIN

	-- search for delivery where the CoatingJob EndDate is < the job's end date for this art__ref
	SELECT @CoatingJobId = JobId, @CoatingJobOrderQTY = OrderQTY 
		from @TemptableCoatingJobs 
		where MaterialID = @MaterialID and CompleteDate < @EndDate and JobId in (select JobId from @TemptableCoatingJobsNOTUsed)
	IF @CoatingJobId IS NOT NULL
	BEGIN
		-- Update the Temptable with the Coating Job Qty and Job Id
		UPDATE @Temptable SET CoatingJobID = @CoatingJobId, CoatingDeliv = @CoatingJobOrderQTY WHERE id = @id
		-- Take the Coating Job out of consideration
		DELETE @TemptableCoatingJobsNOTUsed WHERE JobId = @CoatingJobId
		SET @CoatingJobId = NULL
	END
  
--  FETCH NEXT FROM MAIN_CURSOR INTO @id, @StartDate, @MaterialKW
  FETCH NEXT FROM MAIN_CURSOR INTO @id,@StartDate, @MaterialKW, @EndDate, @MaterialID

  END
  CLOSE MAIN_CURSOR
  DEALLOCATE MAIN_CURSOR
  -----------------------------------------------------------------------------
  
  --Go through the TempTable and correct the InStockQty based on previous jobs
  DECLARE INSTOCK_CURSOR CURSOR FOR
  select id, StartDate, MaterialID, InStockQTY, CoatingDeliv, JobId from @Temptable order by StartDate
  OPEN INSTOCK_CURSOR
  FETCH NEXT FROM INSTOCK_CURSOR INTO @id,@StartDate, @MaterialID, @InStockQty, @CoatingDeliv, @JobId
  WHILE(@@FETCH_STATUS = 0)
  BEGIN
	--Check if there are any previous jobs for this material in the TempTable
	SET @t_id = NULL
	SET @t_InStockQTY = NULL
	SET @OrderQTY = NULL
	SELECT top(1) @t_id = id, @t_InStockQTY = InStockQTY, @OrderQTY = OrderQTY FROM @Temptable WHERE MaterialID = @MaterialID AND StartDate < @StartDate ORDER BY StartDate DESC
	IF @t_id IS NOT NULL
	BEGIN
		-- set the InStockQty to the previous one
		UPDATE @Temptable set InStockQTY = @t_InStockQTY - @OrderQTY where id = @id
	END

	--Check if this line has a Coating Delivery that needs to be added to the InStockQty
	IF @CoatingDeliv IS NOT NULL and @CoatingDeliv > 0
	BEGIN
		UPDATE @Temptable set InStockQTY = InStockQTY + @CoatingDeliv where id = @id		
	END

	--Check if there are any Consumptions already done for this ord__ref
	SET @ConsumedOnJob = 0
	select @ConsumedOnJob = sum(aantal__) from stobew__ where ord__ref = @JobId and art__ref = @MaterialID

	IF @ConsumedOnJob IS NOT NULL
	BEGIN
		--NOTE: @ConsumedOnJob is negative. Ex: They consume 50, then @ConsumedOnJob = -50
		UPDATE @Temptable set OrderQTY = OrderQTY + @ConsumedOnJob where id = @id		
	END		

  FETCH NEXT FROM INSTOCK_CURSOR INTO @id,@StartDate, @MaterialID, @InStockQty, @CoatingDeliv, @JobId

  END
  CLOSE INSTOCK_CURSOR
  DEALLOCATE INSTOCK_CURSOR
 

  select * from @Temptable WHERE StartDate >= (SELECT CONVERT(DATE,@Start)) order by id
End 
--*** Result Set ***-----
--id          JobId                                              off__ref                                           StartDate               EndDate                 ShipDate                MachineID                                          MachineName                                        CoatingJobID MaterialKW                                         MaterialID                                         OrderQTY               InStockQTY             CoatingDeliv
------------- -------------------------------------------------- -------------------------------------------------- ----------------------- ----------------------- ----------------------- -------------------------------------------------- -------------------------------------------------- ------------ -------------------------------------------------- -------------------------------------------------- ---------------------- ---------------------- ----------------------
--1           507180                                             507180                                             2022-08-15 06:00:00.000 2022-08-15 08:33:00.000 2022-08-17 00:00:00.000 F16                                                F16                                                507193       MAT-01106                                          105794                                             8701                   0                      10000
--2           507239                                             507239                                             2022-08-15 13:31:00.000 2022-08-15 19:17:00.000 2022-08-19 00:00:00.000 A10                                                A10                                                507195       MAT-00949                                          105114                                             5222                   9248                   25000
--3           507238                                             507238                                             2022-08-15 19:19:00.000 2022-08-16 19:37:00.000 2022-08-23 00:00:00.000 A10                                                A10                                                507198       MAT-00162YN                                        104676                                             54904                  41463.3                8000
--4           506349                                             506349                                             2022-08-17 08:29:00.000 2022-08-19 12:03:00.000 2022-09-01 00:00:00.000 A10                                                A10                                                507244       MAT-00162UA                                        103878                                             71819                  83654                  30000
--5           506355                                             506355                                             2022-08-22 06:00:00.000 2022-08-29 07:27:00.000 2022-09-01 00:00:00.000 A10                                                A10                                                507244       MAT-00162UA                                        103878                                             176717                 83654                  30000
--6           507070                                             507070                                             2022-09-06 10:24:00.000 2022-09-12 17:05:00.000 2022-10-04 00:00:00.000 AZTEC                                              Aztec                                              NULL         MAT-00943                                          105095                                             178406                 975                    NULL


