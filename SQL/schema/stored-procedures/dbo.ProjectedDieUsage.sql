SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectedDieUsage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ProjectedDieUsage] AS' 
END
-- =============================================
-- Author:		<Author,,Jon Dragt>
-- Create date: <Create Date,,7/28/19>
-- Description:	<Description,, Returns a rows of data depicting die usage based on the current schedule>
-- REM: create a view for this with:
-- CREATE VIEW dbo.vw_STL_ProjectedDieUsage AS SELECT * FROM OPENQUERY([SQLSERVER], 'EXEC sqlb00.dbo.ProjectedDieUsage')
-- and it needs to be re-created every time the output is changed.
-- and need to execute EXEC sp_serveroption 'SQLSERVER', 'DATA ACCESS', TRUE
-- for it to work
-- =============================================
ALTER PROCEDURE [dbo].[ProjectedDieUsage]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--gets the jobs and dies and die skus NOTE: Max Counter = 700,000
	DECLARE @MaxCounter int;
	SET @MaxCounter = 700000;
	--need to convert counter to count to feet used,
	--NOTE: CASE statement needed for divide by 0
	DECLARE @datum___ datetime;
	DECLARE	@start___ nvarchar(6);
	DECLARE @plpl_ref nvarchar(15);
	DECLARE @ord__ref nvarchar(6);
	DECLARE @aantal__ float;
	DECLARE @stns_ref nvarchar(6);
	DECLARE @stns_rpn nvarchar(15);
	DECLARE @sku nvarchar(8);
	DECLARE @usedCounter int;
	DECLARE @circumference float;
	DECLARE @jobCounterNeeded float;
	DECLARE @RemainingOnSkuCounter float;
	DECLARE @expectedMaxCount int;
	DECLARE @endofLife nvarchar(1);
	DECLARE @location nvarchar(10);
	DECLARE @DieCheck nvarchar(50);
	
	DECLARE @lstOrd__ref nvarchar(6);
	SET @lstOrd__ref = '';
	DECLARE @inSkuUsage int;
	DECLARE @tremainingCounter int;
	DECLARE @tusedCounter int;
	DECLARE @tjobCounterNeeded int;
	
	DECLARE @batch Datetime; --used to batch these records 
	
	SET @batch = GetDate();
	--Tried to use these at # and ## temp tables, but the view can't cope with that, so conver them to permanent tables
	--CREATE TABLE stlTmpSkuUsage (batch datetime
	--						,stns_ref nvarchar(6) 
	--						,sku nvarchar(8)
	--						, usedCounter int
	--						, remainingCounter int
	--						);
	--CREATE TABLE stlTmpOutTable (batch datetime
	--						,datum___ datetime
	--						, plpl_ref nvarchar(15)
	--						, ord__ref nvarchar(6)
	--						, jobCounterNeeded int
	--						, jobCounterRemaining int
	--						, stns_ref nvarchar(6)
	--						, sku nvarchar(8)
	--						, currentSkuCounter int
	--						, remainingBeforeJobSkuCounter int
	--						, remainingAfterJobSkuCounter int
	--						, dieCheck nvarchar(1) 
	--						);
	
	DECLARE cursor1 CURSOR FOR
		select p.datum___, p.start___, p.plpl_ref, p.ord__ref, p.aantal__, v4e.stns_ref, s.stns_rpn, a.arthdref sku, a.teller__ usedCounter,
				s.omtrek__ circumference, CASE WHEN(s.omtrek__ = 0 OR s.omtrek__ = null) THEN 0 ELSE (v4e.tedrkdto * 12) / s.omtrek__ END jobCounterNeeded, (700000 - a.teller__) RemainingOnSkuCounter,
				a.tellermx expectedMaxCount, a.uitgeput, a.vak__ref, 
				(select omschr__ from tstval__ where tabname_ = 'order___' and fldname_ = 'tstval04' and tstd_ref = o.tstval04 ) DieCheck
		from plandv__ p join v4eti___ v4e on p.ord__ref = v4e.off__ref join stnspr__ s on v4e.stns_ref = s.stns_ref
			join order___ o on v4e.off__ref = o.ord__ref
			left join arthld__ a on v4e.stns_ref = a.arth_ref
		where toestand != '3' and p.plpl_ref in ('A10', 'B2', 'F16', 'AZTEC') and p.datum___ >= GETDATE() and  a.uitgeput <> 'Y' and a.vak__ref <> 'DELETED' 
		order by p.datum___, p.start___, p.plpl_ref, a.teller__ DESC;
	
	OPEN cursor1;
	FETCH NEXT FROM cursor1 INTO 
		@datum___,
		@start___,
		@plpl_ref,
		@ord__ref,
		@aantal__,
		@stns_ref,
		@stns_rpn,
		@sku,
		@usedCounter,
		@circumference,
		@jobCounterNeeded,
		@RemainingOnSkuCounter,
		@expectedMaxCount,
		@endofLife,
		@location,
		@DieCheck;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @lstOrd__ref = '' BEGIN --we're doing the first record
			SET @lstOrd__ref = @ord__ref;
			SET @tjobCounterNeeded = @jobCounterNeeded;
		END;
		
		IF @ord__ref <> @lstOrd__ref BEGIN -- we're done with this job
			SET @lstOrd__ref = @ord__ref;
			SET @tjobCounterNeeded = @jobCounterNeeded;
		END;
		
		SET @inSkuUsage = (SELECT COUNT(sku) FROM stlTmpSkuUsage WHERE batch = @batch and stns_ref = @stns_ref and sku = @sku); --see if this sku is in the usage table
		IF @inSkuUsage >= 1 BEGIN -- it's in the sku usage table, use those numbers
			SET @tremainingCounter = (SELECT remainingCounter  from stlTmpSkuUsage WHERE batch = @batch and stns_ref = @stns_ref and sku = @sku);
			SET @tusedCounter = (SELECT usedCounter from stlTmpSkuUsage WHERE batch = @batch and stns_ref = @stns_ref and sku = @sku);
		END
		ELSE BEGIN  --we haven't seen this sku before, so use the stuff in the cursor and insert it into the usage table
			SET @tremainingCounter = @MaxCounter - @usedCounter;
			SET @tusedCounter = @usedCounter;
			INSERT INTO stlTmpSkuUsage (batch, stns_ref, sku, usedCounter, remainingCounter) VALUES (@batch, @stns_ref, @sku, @usedCounter, @tremainingCounter);
		END;
		-- having negative remain screws up the math, so if it's negative, set it to 0
		IF @tremainingCounter < 0 BEGIN
			SET @tremainingCounter = 0;
		END;
		-- If the @tjobCounterNeeded is 0 then this job is done line 124
		IF @tjobCounterNeeded > 0 BEGIN
			-- if this sku's got enough life left then...
			IF @tjobCounterNeeded <= @tremainingCounter BEGIN 
				UPDATE stlTmpSkuUsage SET remainingCounter = @tremainingCounter - @tjobCounterNeeded, usedCounter = usedCounter + @tjobCounterNeeded WHERE batch = @batch and stns_ref = @stns_ref and sku = @sku;
				INSERT INTO stlTmpOutTable (batch
										, datum___
										, plpl_ref
										, ord__ref
										, jobCounterNeeded
										, jobCounterRemaining
										, stns_ref
										, stns_rpn
										, sku
										, currentSkuCounter
										, remainingBeforeJobSkuCounter
										, remainingAfterJobSkuCounter
										, dieCheck ) 
									VALUES (@batch
										, @datum___
										, @plpl_ref
										, @ord__ref
										, @jobCounterNeeded
										, 0
										, @stns_ref
										, @stns_rpn
										, @sku
										, @tusedCounter
										, @tremainingCounter
										, @tremainingCounter - @tjobCounterNeeded
										, @DieCheck);
				SET @tjobCounterNeeded = 0;
			END
			ELSE BEGIN
				-- use as much of the sku as you can, inserting into the output table the result
					--and insert/update the stlTmpSkuUsage
				UPDATE stlTmpSkuUsage SET remainingCounter = @tremainingCounter - @tjobCounterNeeded, usedCounter = usedCounter + (@tremainingCounter - @tjobCounterNeeded) WHERE batch = @batch and stns_ref = @stns_ref and sku = @sku;
				SET @tjobCounterNeeded = @tjobCounterNeeded - @tremainingCounter;
				
				INSERT INTO stlTmpOutTable (batch
										, datum___
										, plpl_ref
										, ord__ref
										, jobCounterNeeded
										, jobCounterRemaining
										, stns_ref
										, stns_rpn
										, sku
										, currentSkuCounter
										, remainingBeforeJobSkuCounter
										, remainingAfterJobSkuCounter
										, dieCheck ) 
									VALUES (@batch
										, @datum___
										, @plpl_ref
										, @ord__ref
										, @jobCounterNeeded
										, @tjobCounterNeeded
										, @stns_ref
										, @stns_rpn
										, @sku
										, @tusedCounter
										, @tremainingCounter
										, 0
										, @DieCheck);
			END;
		END;
		
	
		FETCH NEXT FROM cursor1 INTO 
			@datum___,
			@start___,
			@plpl_ref,
			@ord__ref,
			@aantal__,
			@stns_ref,
			@stns_rpn,
			@sku,
			@usedCounter,
			@circumference,
			@jobCounterNeeded,
			@RemainingOnSkuCounter,
			@expectedMaxCount,
			@endofLife,
			@location,
			@DieCheck;
	END;
	
	
	CLOSE cursor1;
	DEALLOCATE cursor1;
	select * from stlTmpOutTable where batch = @batch;
	
	DELETE FROM stlTmpOutTable WHERE batch = @batch;
	DELETE FROM stlTmpSkuUsage WHERE batch = @batch;
	
	--converted to permanent tables, so don't drop them
	--DROP TABLE stlTmpOutTable;
	--DROP TABLE stlTmpSkuUsage;
END;

