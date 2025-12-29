SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_GetMaterialsForPacksize_DEV]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_GetMaterialsForPacksize_DEV] AS' 
END
--Exec [SP_STL_GetAllJobsWithCoatingMaterial] '2022-08-15', '2022-09-06', '200003'
ALTER PROCEDURE [dbo].[SP_STL_GetMaterialsForPacksize_DEV] 
 
  As
  BEGIN
  	DECLARE @ord__ref nvarchar(6)
	DECLARE @MinRewDate datetime
	DECLARE @in_stock float
	DECLARE @art__ref nvarchar(15) 
	DECLARE @Tart__ref nvarchar(15)
	DECLARE @art__rpn nvarchar(17)
	DECLARE @artc_ref nvarchar(6)
	DECLARE @Tart__rpn nvarchar(17)
	DECLARE @art_oms1 nvarchar(250)
	DECLARE @Tart_oms1 nvarchar(250)
	DECLARE @nextNeedBy datetime
	DECLARE @reserve_ float
	DECLARE @blFirstTime bit
	DECLARE @blGotSome bit
	DECLARE @blFirstWeekTime bit
	DECLARE @TthisWeekNeed float
	DECLARE @TnextWeekNeed float
	DECLARE @TnextNeedBy datetime 
	DECLARE @Tin_stock float
	DECLARE @DebugLoopCount int
	DECLARE @thisWeekNumber int
	DECLARE @nextWeekNumber int
	DECLARE @TnextNeedByWeekNumber int



	DECLARE @TempOutput TABLE (
		art__ref nvarchar(15) null,
		art__rpn nvarchar(17) null,
		art_oms1 nvarchar(250) null,
		thisWeekNeeded float null,
		nextWeekNeeded float null,
		minmax bit
	  )

	  -- 5/9/23: Add those packing materials that are on min/max, separately because they are not reserved
	insert into @TempOutput 
				select a.art__ref, a.art__rpn, a.art_oms1, (max_stoc - in_stock) + COALESCE( (select sum(reserve_) from resgrd__ r where r.art__ref = a.art__ref group by art__ref), 0), 0, 1
								from artiky__ a join artikn__ k on a.art__ref = k.art__ref
								where a.lev__ref in ('200176','200607') and a.uitgeput = 'N' and (a.art__srt in ('a', '9') or a.artc_ref = '11') and a.min_stoc > 0 and k.in_stock < a.min_stoc
								order by art__ref

	  					--select a.art__ref, a.art__rpn, a.art_oms1, max_stoc - in_stock, 0, 1
							--	from artiky__ a join artikn__ k on a.art__ref = k.art__ref
								--where a.lev__ref in ('200176','200607') and a.uitgeput = 'N' and (a.art__srt in ('a', '9') or a.artc_ref = '11') and a.min_stoc > 0 and k.in_stock < a.min_stoc
								--order by art__ref


	--Do the reservations
	  -- create a Temporary table to hold the outstanding packaging materials on reserver
	  DECLARE @TempReservedPacking TABLE (
	  art__ref nvarchar(15) null,
	  art__rpn nvarchar(17) null,
	  artc_ref nvarchar(6) null,
	  art_oms1 nvarchar(250) null,
	  ord__ref nvarchar(6) null,
	  nextNeedBy datetime null,
	  reserve_ float null
	  
	  )
	  -- 3/36/24: Modify the insert to make nextNeedBy null instead of dat_resv so that we can remove all records that have a null next need by date further down the script
	  insert into @TempReservedPacking (art__ref, art__rpn, artc_ref, art_oms1, ord__ref, nextNeedBy, reserve_) 
							select a.art__ref, a.art__rpn, a.artc_ref, a.art_oms1, ord__ref, r.dat_resv, reserve_
										from resgrd__ r join artiky__ a on r.art__ref = a.art__ref 
										where a.lev__ref in ('200176','200607') and (r.art__srt in ('a', '9') or a.artc_ref = '11' )
										order by r.art__ref, r.dat_resv

	  --insert into @TempReservedPacking (art__ref, art__rpn, artc_ref, art_oms1, ord__ref, reserve_) 
	--						select a.art__ref, a.art__rpn, a.artc_ref, a.art_oms1, ord__ref,  reserve_
	--									from resgrd__ r join artiky__ a on r.art__ref = a.art__ref 
	--									where a.lev__ref in ('200176','200607') and (r.art__srt in ('a', '9') or a.artc_ref = '11' )
	--									order by r.art__ref, r.dat_resv

	--cursor through the table updating the records with the minimum date needed for each ord__ref, and then the in_stock (which is the same for all art__refs)
select '-------- HEY! ---------'
select * from @TempReservedPacking

	SET @blFirstTime = 1
	SET @blGotSome = 0

	SELECT @thisWeekNumber = DATEPART(WEEK, GETDATE())
	SET @nextWeekNumber = @thisWeekNumber + 1


	DECLARE ord__ref_CURSOR CURSOR FOR
	--select id, StartDate,MaterialKW from @Temptable
	select ord__ref from @TempReservedPacking
	OPEN ord__ref_CURSOR
	FETCH NEXT FROM ord__ref_CURSOR INTO @ord__ref
	WHILE(@@FETCH_STATUS = 0)
	BEGIN
		-- 4/30/24: Move ALL packaging supplies to be based on first date in Rewind
		--  All COREs are based on the first date they're needed in REWIND
		SET @MinRewDate = (select min(datum___) from plandv__ p join werkpo__ w on p.wp___ref = w.wp___ref where ord__ref = @ord__ref and w.kenmerk_ in ('Rewinding'))
		if @MinRewDate IS NOT null
		BEGIN
			update @TempReservedPacking set nextNeedBy = @MinRewDate where ord__ref = @ord__ref -- and artc_ref = '9'
IF @ord__ref = '509505'
BEGIN
select 'Yep'
END
		END
		ELSE -- It's not scheduled yet, so ignore this one somehow
		BEGIN
			update @TempReservedPacking set nextNeedBy = DATEADD(year, 1, nextNeedBy) where ord__ref = @ord__ref -- and artc_ref = '9'
IF @ord__ref = '509505'
BEGIN
select 'Nope'
END
		END


--		SET @MinRewDate = (select min(datum___) from plandv__ p join werkpo__ w on p.wp___ref = w.wp___ref where ord__ref = @ord__ref and w.kenmerk_ in ('Rewinding'))
--		if @MinRewDate IS NOT null
--		BEGIN
--			update @TempReservedPacking set nextNeedBy = @MinRewDate where ord__ref = @ord__ref and artc_ref = '9'
--		END

--		--  All non-COREs are based on the first Estimated Ship Date of the Sales Order
--		SET @MinRewDate = (select min(b.vrz__dat) from order___ o left join bstlyn__ b  on o.ord__ref = b.ord__ref where o.ord__ref = @ord__ref)
--		if @MinRewDate IS NOT null and @MinRewDate <> '1/1/1980'
--		BEGIN
--			update @TempReservedPacking set nextNeedBy = @MinRewDate where ord__ref = @ord__ref and artc_ref <> '9'
--		END

		FETCH NEXT FROM ord__ref_CURSOR INTO @ord__ref
	END
	CLOSE ord__ref_CURSOR
	DEALLOCATE ord__ref_CURSOR

--	update @TempReservedPacking set in_stock = a.in_stock
--	from @TempReservedPacking t join artikn__ a on t.art__ref = a.art__ref

	--3/26/24: remove records that have a null nextneedby date
	--delete @TempReservedPacking where nextNeedBy is null

	--cursor through the table now and figure out if an art__ref is going to run out and if so, when, and how much they need
	SET @DebugLoopCount = 0
	SET @in_stock = 0
	SELECT @Tart__ref = ''
	DECLARE Main_CURSOR CURSOR FOR
	--select id, StartDate,MaterialKW from @Temptable
	-- WE have to cursor through based on artc_ref, art__ref, nextNeedBy because we have to do COREs separately from non-COREs
	select 	  art__ref, art__rpn, artc_ref, art_oms1, ord__ref, nextNeedBy, reserve_ from @TempReservedPacking order by artc_ref, art__ref, nextNeedBy
	OPEN main_CURSOR
	FETCH NEXT FROM Main_CURSOR INTO @art__ref, @art__rpn, @artc_ref, @art_oms1, @ord__ref, @nextNeedBy, @reserve_
	WHILE(@@FETCH_STATUS = 0)
	BEGIN
		

--IF @art__ref = '103697'
--BEGIN
--		print ' artc_ref = ' + @artc_ref + ' tart = ' + @Tart__ref + ' art__Ref = ' + @art__ref + ' ord__ref = ' + @ord__ref + ' i-r ' + RTRIM(@in_stock - @reserve_) + ' reserve = ' + RTRIM(@reserve_) + ' in_stock = ' + RTRIM(@in_stock) + ' nextNeedBy = ' + Convert(varchar(10), @nextNeedBy, 101)
--END
		IF @Tart__ref <> @art__ref --we have new art__ref
		BEGIN
			SET @DebugLoopCount = @DebugLoopCount + 1
			if @blFirstTime = 0
			BEGIN
			--print 'arf'
				--check if we need to write out the record
				if @in_stock < 0
				BEGIN
					--write it out
					IF @blGotSome = 1
					BEGIN
						--print '1 INSERTING INTO TempOutPut (art__ref, art__rpn, art_oms1, nextNeedBy, nextNeeded, totalNeeded) ' + @Tart__ref + ',' + @Tart__rpn + ',' + @Tart_oms1 + ',' + RTRIM(@TnextNeedBy) + ', ' + RTRIM(@TnextNeed) + ',' + RTRIM( @in_stock * -1)

						INSERT INTO @TempOutput (art__ref, art__rpn, art_oms1, thisWeekNeeded, nextWeekNeeded, minmax) VALUES(@Tart__ref, @Tart__rpn, @Tart_oms1, @TthisWeekNeed, @TnextWeekNeed,0)
						SET @blGotSome = 0
					END
				END
				--reset the in_stock to the new value
			END
			ELSE
			BEGIN --firsttime through, don't check if we need to write our the record
			--print 'arf1'
				SET @blFirstTime = 0
			END

			--Set the new material's values
			select @in_stock = in_stock from artikn__ where art__ref = @art__ref
			SET @Tart__ref = @art__ref
			SET @Tart__rpn = @art__rpn
			SET @Tart_oms1 = @art_oms1
			SET @TthisWeekNeed = 0
			SET @TnextWeekNeed = 0
			SET @blGotSome = 0
			SET @blFirstWeekTime = 1

		END -- end we got a new art__ref
--print 'HEY artc_ref = ' + @artc_ref + ' tart = ' + @Tart__ref + ' art__Ref = ' + @art__ref + ' ord__ref = ' + @ord__ref + ' nextNeedBy = ' + Convert(varchar(10), @nextNeedBy, 101) + ' Datepart = ' + CONVERT(varchar(4), DATEPART(WEEK, @nextNeedBy)) + ' this week number ' + CONVERT(nvarchar(4), @thisWeekNumber)
		--UGH! if the nextNeedBy date is next year we have to add 52 weeks to 
		SET @TnextNeedByWeekNumber =  ((DATEPART(YEAR, @nextNeedBy) - DATEPART(YEAR, GETDATE())) * 52) + DATEPART(WEEK, @nextNeedBy)
--print 'TnextWeekNum = ' + RTRIM(@TnextNeedByWeekNumber) + '  ' + RTRIM(DATEPART(YEAR, @nextNeedBy)) + ' ' + RTRIM(DATEPART(YEAR, GETDATE()))
		IF @TnextNeedByWeekNumber <= @nextWeekNumber --it's a record within this week or next week, so process it, (otherwise, just get the next record
		BEGIN

			SET @in_stock = @in_stock - @reserve_
--print 'Now in_stock = ' + RTRIM(@in_stock)

			if @in_stock < 0
			BEGIN
				IF @TnextNeedByWeekNumber <= @thisWeekNumber --save it to this week's needs
				BEGIN
					SET @TthisWeekNeed = @in_stock * -1
--print 'ARF artc_ref = ' + @artc_ref + 'tart = ' + @Tart__ref + ' art__Ref = ' + @art__ref + ' ord__ref = ' + @ord__ref + ' reserve = ' + RTRIM(@reserve_) + ' in_stock = ' + RTRIM(@in_stock) + ' nextNeedBy = ' + Convert(varchar(10), @nextNeedBy, 101)

				END
				ELSE -- save in next week's need
				BEGIN
					SET @TnextWeekNeed = (@in_stock * -1) - @TthisWeekNeed
---print 'NNARF artc_ref = ' + @artc_ref + ' tart = ' + @Tart__ref + ' art__Ref = ' + @art__ref + ' ord__ref = ' + @ord__ref + ' reserve = ' + RTRIM(@reserve_) + ' in_stock = ' + RTRIM(@in_stock) + ' nextNeedBy = ' + Convert(varchar(10), @nextNeedBy, 101)
				END
				SET @blGotSome = 1

			END
		END

		FETCH NEXT FROM main_CURSOR INTO @art__ref, @art__rpn, @artc_ref, @art_oms1, @ord__ref, @nextNeedBy, @reserve_
--		if @DebugLoopCount > 3
	--		break
	END
	CLOSE main_CURSOR
	DEALLOCATE main_CURSOR


	--get the possible last record
	IF @blGotSome = 1
	BEGIN
	--print '2 INSERTING INTO TempOutPut (art__ref, art__rpn, art_oms1, nextNeedBy, nextNeeded, totalNeeded) ' + @Tart__ref + ',' + @Tart__rpn + ',' + @Tart_oms1 + ',' + RTRIM(@TnextNeedBy) + ', ' + RTRIM(@TnextNeed) + ',' + RTRIM( @in_stock * -1)
		INSERT INTO @TempOutput (art__ref, art__rpn, art_oms1, thisWeekNeeded, nextWeekNeeded, minmax) VALUES(@Tart__ref, @Tart__rpn, @Tart_oms1, @TthisWeekNeed, @TnextWeekNeed, 0)
		SET @blGotSome = 0
	END

	
	

--	select * from @TempOutput order by art__rpn, thisWeekNeeded, nextWeekNeeded




END

