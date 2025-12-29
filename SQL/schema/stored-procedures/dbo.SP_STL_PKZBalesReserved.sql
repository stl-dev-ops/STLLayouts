SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STL_PKZBalesReserved]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_STL_PKZBalesReserved] AS' 
END
ALTER PROCEDURE [dbo].[SP_STL_PKZBalesReserved] 
 
  As
  BEGIN
  	DECLARE @art__ref nvarchar(15) 
  	DECLARE @bales_art__ref nvarchar(15) 
  	DECLARE @pkg_art__ref nvarchar(15) 
	DECLARE @balesUsed float
	DECLARE @res_art__ref nvarchar(15)
	DECLARE @dat_resv datetime
	DECLARE @reserve_ float
	DECLARE @tiling int 
	DECLARE @packagingLength float
	DECLARE @lengte__ float
	DECLARE @qoh_len float
	DECLARE @reserve_len float
	DECLARE @matInStock float

	--This is the output table for this SP
	DECLARE @TempOutput TABLE (
		art__ref nvarchar(15) default '',
		art__rpn nvarchar(17) default '',
		art_oms1 nvarchar(250) default '',
		runOutDt datetime null,
		inStock float default 0.0,
		reserved float default 0.0,
		balesUsed float default 0.0,
		rowid int default 0,
		lastDeliveryDt datetime null,
		nextDeliveryDt datetime null,
		nextDeliveryQty float default 0.0
	  )

	--insert the bales into TempOutput
	insert into @TempOutput 
	  					select a.art__ref, a.art__rpn, a.art_oms1, null, k.in_stock, 0, 0, 0, null, null, 0
						from artiky__ a join artikn__ k on a.art__ref = k.art__ref 
						where a.art__ref in (select bale_art__ref from stlPKZ_PkgsPerBale)

	DECLARE @TempInStock TABLE(
		art__ref nvarchar(15) default '',
		inStock float default 0.0
	)

	--update with the last delivery date
	-- This method uses the purchase order
	--MERGE @TempOutput as T
	--USING (select art__ref, max(levr_dat) ldat from grsbon__ where art__ref in (select art__ref from @TempOutput) group by art__ref) AS G
	--ON G.art__ref = T.art__ref
	--WHEN MATCHED THEN
	--UPDATE SET
	--T.lastDeliveryDat = G.ldat;

	-- Update the last previous delivery date using the consumption table
	MERGE @TempOutput as T
	USING (select art__ref, max(datum___) ldat, max(rowid) Mrowid from stobew__ where soort___ = '2' and art__ref in (select art__ref from @TempOutput) group by art__ref) AS G
	ON G.art__ref = T.art__ref
	WHEN MATCHED THEN
	UPDATE SET
	T.lastDeliveryDt = G.ldat,
	t.rowid = G.Mrowid;

	-- see what's on order  (it's expected there will only ever be one order outstanding
	--po status: lev__tst = 0:Canceled, 1:Not Yet,2: Partial, 3: Done
	MERGE @TempOutput as T
	USING (select art__ref, (gaant___ - laant___) QOO, gvrz_dat from grsbon__ where art__ref in (select art__ref from @TempOutput) and lev__tst in ('1', '2')) AS G
	ON G.art__ref = T.art__ref
	WHEN MATCHED THEN
	UPDATE SET
	T.nextDeliveryDt = G.gvrz_dat,
	T.nextDeliveryQty = G.QOO;

	-- calculate the bales used since the last delivery
	--Setup CURSOR / LOOP through all the bales
	DECLARE bales_art__ref_CURSOR CURSOR FOR select art__ref from @TempOutput
	OPEN bales_art__ref_CURSOR
	FETCH NEXT FROM bales_art__ref_CURSOR INTO @bales_art__ref
	WHILE(@@FETCH_STATUS = 0)
	BEGIN
		--update the bales used for each bale
		SET @balesUsed = (select sum(aantal__) from stobew__ s join @TempOutput t on s.art__ref = t.art__ref where s.art__ref = @bales_art__ref and s.rowid > t.rowid)
		if @balesUsed <> null
			update @TempOutput set balesUsed = @balesUsed where art__ref = @bales_art__ref
		--Capture the current in_stock for each art__ref reserved that uses this bale
		DELETE @TempInStock
		INSERT INTO @TempInStock select r.art__ref, in_stock
			from resgrd__ r join stlPKZ_PkgsPerBale pkz on r.art__ref = pkz.pkg_art__ref 
				join artiky__ a on r.art__ref = a.art__ref
				join artikn__ n on a.art__ref = n.art__ref
				where pkz.bale_art__ref = @bales_art__ref and r.dat_resv <= DATEADD(month, 3, GETDATE())
				group by r.art__ref, in_stock


		-- START Calculating the runoutDt and bales reserved
		--Get the reservations for all the MATERIALS for the next 3 months that use THIS Bale to LOOP through
		SET @reserve_len = 0.0
		SET @qoh_len = (select (a.lengte__ * n.in_stock) from artiky__ a join artikn__ n on a.art__ref = n.art__ref where a.art__ref = @bales_art__ref)
		SET @lengte__ = (select lengte__ from artiky__ where art__ref = @bales_art__ref)
		DECLARE resgrd_CURSOR CURSOR FOR select r.art__ref, r.dat_resv,r.reserve_, pkz.tiling, pkz.packagingLength
			from resgrd__ r join stlPKZ_PkgsPerBale pkz on r.art__ref = pkz.pkg_art__ref 
				join artiky__ a on r.art__ref = a.art__ref
				where pkz.bale_art__ref = @bales_art__ref and r.dat_resv <= DATEADD(month, 3, GETDATE())
				order by dat_resv, r.rowid;

		OPEN resgrd_CURSOR
		FETCH NEXT FROM resgrd_CURSOR INTO @res_art__ref, @dat_resv, @reserve_, @tiling, @packagingLength
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			-- Get the in_Stock for this material, especially because maybe we already have enough made
			SET @matInStock = (select inStock from @TempInStock where art__ref = @res_art__ref)
			SET @matInStock = @matInStock - @reserve_
			update @TempInStock set inStock = @matInStock where art__ref = @res_art__ref

			--
			if @matInStock < 0
			BEGIN
				SET @reserve_len = @reserve_len + ((@reserve_ / @tiling) * @packagingLength)
				SET @qoh_len = @qoh_len - ((@reserve_ / @tiling) * @packagingLength)
				IF @qoh_len <= 0.0
				BEGIN
					--We've runout of stock, set the runoutDt
					update @TempOutput set runOutDt = @dat_resv where art__ref = @bales_art__ref
				END
			END

			FETCH NEXT FROM resgrd_CURSOR INTO @res_art__ref, @dat_resv, @reserve_, @tiling, @packagingLength
		END
		--We've exited the loop for this bale, update the reserved
		IF @lengte__ = 0
			update @TempOutput set reserved = 0 where art__ref = @bales_art__ref
		ELSE
			update @TempOutput set reserved = (@reserve_len / @lengte__) where art__ref = @bales_art__ref

		CLOSE resgrd_CURSOR
		DEALLOCATE resgrd_CURSOR


		FETCH NEXT FROM bales_art__ref_CURSOR INTO @bales_art__ref
	END
	CLOSE bales_art__ref_CURSOR
	DEALLOCATE bales_art__ref_CURSOR


	-- output the results
	select * from @TempOutput 




END

