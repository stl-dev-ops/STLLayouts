SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_RptData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlMRS_RptData] AS' 
END
-- =============================================
-- Author:		Jon Dragt
-- Create date: 8/1/22
-- Description:	creates the data for the MRS Access report for a Job #
-- =============================================
ALTER PROCEDURE [dbo].[stlMRS_RptData]
    @off__ref nvarchar(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- populate the stlMRS_FootageData table first
	exec [dbo].[stlMRS_FootageData] @off__ref = @off__ref;

	-- First delete the records in the tables for this job # (can't cascade because the table structure doesn't allow for a unique key combination)
	delete from stlMRS_Rpt where off__ref = @off__ref;
	delete from stlMRS_Tools where off__ref = @off__ref;
	delete from stlMRS_Materials where off__ref = @off__ref;
	delete from stlMRS_Coatings where off__ref = @off__ref;
	delete from stlMRS_Packaging where off__ref = @off__ref;
	delete from stlMRS_Cylinders where off__ref = @off__ref;


	-- insert the preliminary records into the table for this job #
	insert into stlMRS_Rpt (off__ref, dg___ref, dg___vnr, tedrkdto, omschr__, vpak_oms, pass)
		select v.off__ref, v.dg___ref, dg___vnr, ftNeeded, omschr__, case when vpak_oms is null then '' else vpak_oms end, pass 
			from vw_stlMRSRpt v join stlMRS_Footage mr on v.dg___ref = mr.dg___ref and v.off__ref = mr.off__ref
			where v.off__ref = @off__ref;
	
	insert into stlMRS_Tools (off__ref, stns_ref, stns_rpn, stns_oms, tanden__, cylinderType) 
		select off__ref, stns_ref, stns_rpn, stns_oms,teeth, cylinderType from vw_stlMRSTools where off__ref = @off__ref;

	insert into stlMRS_Materials (dg___vnr, FaceOrLiner, art__ref, art__rpn, art_oms1, Footage, off__ref, pass) 
		select dg___vnr, FaceOrLiner, art__ref, art__rpn, art_oms1, Footage, off__ref, pass from vw_stlMRSMaterials where off__ref = @off__ref;

--	insert into stlMRS_Coatings (off__ref, art__ref, art_oms1, reserve_, dg___vnr, klr___nr, pass) 
--		select off__ref, art__ref, art_oms1, case when reserve_ is null then 0 else reserve_ END, dg___vnr, klr___nr, pass from vw_stlMRSCoatings where off__ref = @off__ref;

	insert into stlMRS_Coatings (off__ref, art__ref, art_oms1, reserve_, dg___vnr, klr___nr, pass) 
		select off__ref, art__ref, art_oms1, case when reserve_ is null then 0 else reserve_ / (select count(*) from vw_stlMRSCoatings tv where  vc.art__ref = tv.art__ref
													and vc.pass = tv.pass)  END, dg___vnr, klr___nr, pass from vw_stlMRSCoatings vc where off__ref = @off__ref;



	----------------------------------------------------
	-- Do The Leaders Trailers
	DECLARE @leader_art__ref as nvarchar(15)
	DECLARE @trailer_art__ref as nvarchar(15)
	DECLARE @goodFt as float
	DECLARE @FtOnRoll as float
	DECLARE @tWidth as float
	DECLARE @ResvQty as int
	
	--get the leader material
	SELECT @leader_art__ref =  lm.art__ref, @trailer_art__ref = tm.art__ref
            FROM  v4vrs___ v4 LEFT JOIN 
            vw_stlProductsCustomFields pcf ON v4.afg__ref = pcf.afg__ref LEFT JOIN 
            vw_stlMaterialCustomFields lm  ON lm.LeaderTrailer = pcf.LeaderMaterial  AND lm.LeaderTrailer <> 'None' LEFT JOIN
            vw_stlMaterialCustomFields tm  ON tm.LeaderTrailer = pcf.TrailerMaterial AND tm.LeaderTrailer <> 'None' 
            WHERE v4.off__ref = @off__ref

	--Use this to get the Good Ft.
	SELECT @goodFt = tedrk___ from v4edg___ where off__ref = @off__ref
	IF @goodFt is null
		SET @goodFt = 0

	--Use this to calculate feet on a roll
	SELECT @FtOnRoll =  meter_mx from v4vpak__ where off__ref = @off__ref
	IF @FtOnRoll is null
		SET @FtOnRoll = 0

	--use this to find the width of the material
	SELECT @tWidth = ve.breedte_ from v4eti___ ve  where off__ref = @off__ref
	IF @tWidth is null
		SET @tWidth = 0

	--(GoodFt / feet on a roll) * (width of material / 12) = feet needed of leader/trailer to reserve
--        lngResvQty = 0
--        If sngFtOnARoll <> 0 Then
--            lngResvQty = CLng((sngGoodFt / sngFtOnARoll) * (sngWidth / 12)) + 1 'Plus one just to sloppy round up, it's not that critical
--        End If
	If @FtOnRoll > 0
		SET @ResvQty = CONVERT(int, (@goodFt / @FtOnRoll) * (@tWidth / 12) + 1) --Plus one just to sloppy round up, it's not that critical
	ELSE
		SET @ResvQty = 0;
PRINT 'HEY l_ref= ' + @leader_art__ref + ' Q = ' + CONVERT(nvarchar(10), @ResvQty) + ' gf = ' + Convert(nvarchar(10), @goodFt) + ' FOR = ' + Convert(nvarchar(10), @FtOnRoll) + ' tW = ' + CONVERT(nvarchar(10), @tWidth)

	--if there are any leaders do something   
	IF @leader_art__ref IS NOT NULL
	BEGIN
PRINT 'l_ref= ' + @leader_art__ref + ' Q = ' + CONVERT(nvarchar(10), @ResvQty) + ' gf = ' + Convert(nvarchar(10), @goodFt) + ' FOR = ' + Convert(nvarchar(10), @FtOnRoll) + ' tW = ' + CONVERT(nvarchar(10), @tWidth)
		insert into stlMRS_Materials (dg___vnr, FaceOrLiner, art__ref, art__rpn, art_oms1, Footage, off__ref, pass) 
			select '001', 2, @leader_art__ref, art__rpn, art_oms1, @ResvQty, @off__ref, @off__ref + '_001'  from artiky__ where art__ref = @leader_art__ref;
	END

	--if there are any trailers, do something   
	IF @trailer_art__ref IS NOT NULL
	BEGIN
		insert into stlMRS_Materials (dg___vnr, FaceOrLiner, art__ref, art__rpn, art_oms1, Footage, off__ref, pass) 
			select '001', 2, @trailer_art__ref, art__rpn, art_oms1, @ResvQty, @off__ref, @off__ref + '_001'  from artiky__ where art__ref = @trailer_art__ref;
	END
        
--        If (Not IsNull(rsRecordset.Fields("LeaderMaterialID")) And IsNumeric(rsRecordset.Fields("LeaderMaterialID"))) Then 'we need a leader
--            lngLastRow = lngLastRow + 1
--            Cells(lngLastRow, 1).Value = rsRecordset.Fields("LeaderMaterialID")
--            Cells(lngLastRow, 2).Value = lngResvQty
--        End If
    
--        If (Not IsNull(rsRecordset.Fields("TrailerMaterialID")) And IsNumeric(rsRecordset.Fields("TrailerMaterialID"))) Then 'we need a Trailer
--            lngLastRow = lngLastRow + 1
--            Cells(lngLastRow, 1).Value = rsRecordset.Fields("TrailerMaterialID")
--            Cells(lngLastRow, 2).Value = lngResvQty
--        End If
    
--    End If
    
--End If

	-- 8/1/24: OK, I'm neutering the following code and just getting the packaging from the reservations because they sometimes just manually reserve stuff and this
	--			cannot calculate manually entered reservations

		insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) -- VALUES (@off__ref, @art__ref, @qty * @lngProductCount, @art__rpn, @art_oms1);
			select r.ord__ref, a.art__ref, r.reserve_, a.art__rpn, a.art_oms1 from resgrd__ r join artiky__ a on r.art__ref = a.art__ref where ord__ref = @off__ref and a.art__srt in ('a','9', '7')

	----------------------------------------------------------------------------------------------------------------------------------------------------
	-- Do The packaging
	------------------------

	DECLARE @vpak_ref nvarchar(6);
	DECLARE @lngProductCount  int
	DECLARE @lngProductsPerBox  int
	DECLARE @lngStacksPerBox  int
	DECLARE @lngProductsPerLayer  int
	DECLARE @lngBoxCount  int
	DECLARE @dblBoxht  float
	DECLARE @dblBoxWidth  float
	DECLARE @dblBoxLength  float
	DECLARE @dblProductHt  float
	DECLARE @dblBoxMaterialsHt  float
	DECLARE @dblProductMaterialsHt  float
	DECLARE @dblProductOD  float
	DECLARE @intProductsPerLength  Integer
	DECLARE @intProductsPerWidth  Integer
	DECLARE @strBox_art__ref  nvarchar(6)
	DECLARE @strArt__ref  nvarchar(6)
	DECLARE @dblCoreDiameter  float
	DECLARE @strCoreArt__ref  nvarchar(6)
	DECLARE @sngMMMin  float
	DECLARE @blGotIt  int
	DECLARE @oplage__ float
	DECLARE @aantalmx float
	DECLARE @diamt_mx float
	DECLARE @kern____ float
	DECLARE @stlPP_ProductUnitID int
	DECLARE @spoolWidth float
	DECLARE @spoolOD float
	DECLARE @rol____b float
	DECLARE @stlPP_NumPerStyleID int
	DECLARE @fixedQty int
	DECLARE @box_art__ref nvarchar(6)
	DECLARE @art__ref nvarchar(15)
	DECLARE @breedte_ float
	DECLARE @hoogte__ float
	DECLARE @lengte__ float
	DECLARE @stlPP_PackingProcedureID int
	DECLARE @stlPP_PackingMaterialTypeID int
	DECLARE @stlPP_ProcedureMaterialPerID int
	DECLARE @qty int
	DECLARE @art__rpn nvarchar(17)
	DECLARE @art_oms1 nvarchar(250)
	DECLARE @MM1 float = 0.0393701 -- '1MM in inches
--	DECLARE @MM2 float = 0.0787402 --'2MM in inches
	DECLARE @MM2 float = 0.0984252 --'2MM in inches changed to 2.5MM 9/29/23
	DECLARE @MM3 float = 0.1181103 --'3MM in inches
	DECLARE @MM3A float = 0.125 --'3MM + for > 4 inch product in inches
	DECLARE @stlPP_PackingUnitID int
	DECLARE @dikte___ float

/*


	select @vpak_ref = vpak_ref from v4vpak__ where off__ref = @off__ref;

	--if @vpak_ref <> '006' -- we're testing the new packing procedures, but only for 001, after that we'll check the stlPP_PackingProcedure table
	--BEGIN
		-- This packing procedure is not cleared to use the new packing procedures, so do it the old way
		if EXISTS(select off__ref, art__ref, case when aantale_ is null then 0 else aantale_ end, art__rpn, art_oms1 from vw_stlMRSPackaging where off__ref = @off__ref)
		BEGIN
			insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) 
				select off__ref, art__ref, case when aantale_ is null then 0 else aantale_ end, art__rpn, art_oms1 from vw_stlMRSPackaging where off__ref = @off__ref;
		END
	--END
	--ELSE
	--BEGIN
		---*****************************************************************************************************************************
		--- Calculate using the new packing procedures we created
   
		--default the products per box and stack to 0, and products per layer to 1, etc.
		SET @lngProductsPerBox = 0
		SET @lngStacksPerBox = 0
		SET @lngProductsPerLayer = 1
		SET @lngBoxCount = 0
		SET @dblBoxMaterialsHt = 0
		SET @dblProductMaterialsHt = 0
		SET @dblBoxht = 0
		SET @dblBoxWidth = 0
		SET @dblBoxLength = 0
		SET @dblProductHt = 0
		SET @dblProductOD = 0 -- 'this is only needed in those cases when the packing procedure is by layer rather than by box
    
    		PRINT'HERE'

		--'I'm calling "Stack" the height of the product plus the height of anything else done per product, like dividers.
		--'Anything that's "per box" reduces the space within the box, or in other words, the height of the box
    
		--'Lookup the packing procedure for the job
		--'Let's get the number of products
		SET @lngProductCount = 0
		select @vpak_ref = vpak_ref, @oplage__ = oplage__, @aantalmx = aantalmx, @diamt_mx = diamt_mx, @kern____ = kern____ from v4vpak__ where off__ref = @off__ref -- ' --oplage = qty to pack, aantalmx = max on roll

		If @@ROWCOUNT > 0
		BEGIN
			SET @dblProductOD = @diamt_mx;
			SET @dblCoreDiameter = @kern____;
			If @dblCoreDiameter = 3.033 --there's some garbage data out there
				SET @dblCoreDiameter = 3.0;
        
        
    
			If @aantalmx > 0 --this int stuff does the rounding up
				SET @lngProductCount = FLOOR((@oplage__ / @aantalmx) * -1) * -1
        
		END
        		PRINT'HERE 1'

PRINT 'vpak_ref ' + @vpak_ref

		--'Get the current stl packing procedure supplemental record, which will be used a lot.
		select @stlPP_PackingProcedureID = stlPP_PackingProcedureID, @stlPP_ProductUnitID = stlPP_ProductUnitID, @spoolWidth = spoolWidth, @spoolOD = spoolOD, @stlPP_NumPerStyleID = stlPP_NumPerStyleID,
					@fixedQty = fixedQty, @box_art__ref = box_art__ref, @stlPP_PackingUnitID = stlPP_PackingUnitID
			from stlPP_PackingProcedure where vpak_ref= @vpak_ref;

		If @@ROWCOUNT = 0	
			RETURN

		--'Let's get the height of the product we're packing
		If @stlPP_ProductUnitID = 2 -- Then 'it's a spool
		BEGIN
			SET @dblProductHt = @spoolWidth
			SET @dblProductOD = @spoolOD -- 'This was set above for flat rolls, by default, when we got the v4vpak record
		END
		Else -- 'it's a flat roll, we have to look at the product to figure out it's width / height
		BEGIN
			--'WE HAVE TO FIND THE PRODUCT WIDTh which rol____b from afgart
			select @rol____b = rol____b from v4vrs___ v join afgart__ a on v.afg__ref = a.afg__ref where v.off__ref = @off__ref
			If @@ROWCOUNT > 0
				SET @dblProductHt = @rol____b;
		END
    
    
		--'Let's get the number of products per box
		--'Check the Number Per style, if it's 2 then it's fixed and easy
PRINT 'HEY @stlPP_NumPerStyleID = ' + CAST(@stlPP_NumPerStyleID as nvarchar(10))
PRINT '0000000000000000000000000000000000000000'
		SET @strBox_art__ref = @box_art__ref
		If @stlPP_NumPerStyleID = 2 
		BEGIN
PRINT 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
PRINT '@art__refa ' + @art__ref
			SET @lngProductsPerBox = @fixedQty
			SET @strBox_art__ref = @box_art__ref
			select @art__ref = art__ref, @breedte_ = breedte_, @hoogte__ = hoogte__, @lengte__ = lengte__ from artiky__ where art__ref = @strBox_art__ref
		END
		Else --'it's calculated, so we have to calculate it by looking at all the dimensions
		BEGIN
PRINT 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
PRINT '@box_art__ref ' + @box_art__ref
        
			--'GET THE BOX, so we can get the box height
			select @art__ref = art__ref, @breedte_ = breedte_, @hoogte__ = hoogte__, @lengte__ = lengte__ from artiky__ where art__ref = @box_art__ref
			IF @@ROWCOUNT >= 1
			BEGIN
				SET @strBox_art__ref = @box_art__ref;
				SET @dblBoxht = @hoogte__;
				SET @dblBoxWidth = @breedte_;
				SET @dblBoxLength = @lengte__;
			END
			Else -- ' we might need to calculate it
			BEGIN
				--'Check if we need to calculate the box
				If @box_art__ref = '000000' -- Then 'we calculate it
				BEGIN
					--'The logic:
					--'This gets the boxes, small to large
					SET @blGotIt = 0;
					--12/22/23 make the sorting of the cursor based on productht
					IF @dblProductHt > 1.5
					BEGIN
PRINT 'A @dblProductHt ' + CAST(@dblProductHt as nvarchar(10))

						DECLARE sr_box CURSOR
						FOR SELECT artiky__.art__ref, artiky__.lengte__, artiky__.breedte_, artiky__.hoogte__ 
									FROM artiky__ INNER JOIN stlPP_FlatRollMaterial ON artiky__.art__ref = stlPP_FlatRollMaterial.art__ref 
									WHERE (((artiky__.uitgeput)='N') AND ((artiky__.art__srt)='9')) 
									ORDER BY artiky__.breedte_, artiky__.hoogte__ DESC ;
					END
					ELSE
					BEGIN
PRINT 'B @dblProductHt ' + CAST(@dblProductHt as nvarchar(10))
						DECLARE sr_box CURSOR
						FOR SELECT artiky__.art__ref, artiky__.lengte__, artiky__.breedte_, artiky__.hoogte__ 
									FROM artiky__ INNER JOIN stlPP_FlatRollMaterial ON artiky__.art__ref = stlPP_FlatRollMaterial.art__ref 
									WHERE (((artiky__.uitgeput)='N') AND ((artiky__.art__srt)='9')) 
									ORDER BY artiky__.breedte_, artiky__.hoogte__ ;
					END
					OPEN sr_box;
					FETCH NEXT FROM sr_box INTO @art__ref, @lengte__, @breedte_, @hoogte__
					WHILE @@FETCH_STATUS = 0
					BEGIN
						--9-13-23: Allow the box to be a shosh bigger
						If @dblProductOD <= 14.1 And @dblProductOD <= (@lengte__ + 0.1) And @dblProductOD <= (@breedte_ + 0.1)
						BEGIN
							--12/22/23: we conditionally sort it, so if we got here, we got it
							--If @dblProductHt < 1 And @hoogte__ <= 6 --Then   'we have the box because it's sorted to the smallest
							--	SET @blGotIt = 1 -- 'else it's still false
							--Else
							--	If @hoogte__ > 6
							--		SET @blGotIt = 1
							SET @blGotIt = 1
                        
						END
						Else -- ' OD > 16"
						BEGIN
							If @dblProductOD <= @lengte__ And @dblProductOD <= @breedte_  -- Then 'check if this box works (there's only 1 that will)
								SET @blGotIt = 1
                        
						END
                        
						If @blGotIt = 1
						BEGIN
							SET @strBox_art__ref = @art__ref;
							SET @dblBoxht = @hoogte__;
							SET @dblBoxWidth = @breedte_;
							SET @dblBoxLength = @lengte__;
                        
							BREAK;
						End
						FETCH NEXT FROM sr_box INTO @art__ref, @lengte__, @breedte_, @hoogte__
					END
					CLOSE sr_box;
					DEALLOCATE sr_box;

					If @blGotIt = 0
						PRINT 'Could not calculate a box!'
				END 
			END

			--'We already have the product height, let's figure out how thick all the materials are, be them per box or per product
    	PRINT'Going'

			DECLARE sr_PM CURSOR FOR
				select art__ref,stlPP_PackingMaterialTypeID, stlPP_ProcedureMaterialPerID, qty  
				from stlPP_ProcedureMaterial 
				where stlPP_PackingProcedureID = @stlPP_PackingProcedureID;
			OPEN sr_PM;
			FETCH NEXT FROM sr_PM INTO @art__ref, @stlPP_PackingMaterialTypeID, @stlPP_ProcedureMaterialPerID, @qty;
			WHILE @@FETCH_STATUS = 0
			BEGIN
    	PRINT' @stlPP_PackingMaterialTypeID = ' + cast(@stlPP_PackingMaterialTypeID as nvarchar(10))

				--'check if this is a rewind core, which are skipped here because they are IN the product and do not add to product height
				If @stlPP_PackingMaterialTypeID <> 2 --Then 'it's not a rewind core, so continue
				BEGIN
					--'CHECK IF WE HAVE TO CALCULATE DIVIDERS... (art__srt <> 9, i.e. not a box)
					SET @strArt__ref = '';
					If @art__ref = '000000' And @stlPP_PackingMaterialTypeID = 3 -- Then 'type 3 = divider
					BEGIN
						DECLARE sr_Divs CURSOR FOR
						SELECT artiky__.art__ref, artiky__.lengte__, artiky__.breedte_, artiky__.hoogte__, artiky__.art__rpn, artiky__.art_oms1 
									FROM artiky__ INNER JOIN stlPP_FlatRollMaterial ON artiky__.art__ref = stlPP_FlatRollMaterial.art__ref 
									WHERE (((artiky__.uitgeput)='N') AND ((artiky__.art__srt)<>'9')) 
									ORDER BY artiky__.breedte_, artiky__.hoogte__;
						OPEN sr_Divs;
						FETCH NEXT FROM sr_Divs INTO @art__ref, @lengte__, @breedte_, @hoogte__, @art__rpn, @art_oms1;
						WHILE @@FETCH_STATUS = 0
						BEGIN
							If @lengte__ <= @dblBoxLength And @breedte_ <= @dblBoxWidth AND (@breedte_ + 0.1) >=  @dblProductOD
							BEGIN
								SET @strArt__ref = @art__ref
    		PRINT'HERE 2'

								--'If we've calculated this and FOUND the divider, then we need to reserve it while we still have it
								insert into stlMRS_PAckaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) VALUES (@off__ref, @art__ref, CAST(@lngProductCount AS float), @art__rpn, @art_oms1)
								BREAK;
							End
							FETCH NEXT FROM sr_Divs INTO @art__ref, @lengte__, @breedte_, @hoogte__, @art__rpn, @art_oms1;
						END
						CLOSE sr_Divs;
						DEALLOCATE sr_Divs;
					END    
					ELSE
						SET @strArt__ref = @art__ref;
                
            
            
					--'look up height of the art__ref
        PRINT ' strArt__ref = ' + @strArt__ref

					select @art__ref = art__ref, @breedte_ = breedte_, @hoogte__ = hoogte__, @lengte__ = lengte__ from artiky__ where art__ref = @strArt__ref
					IF @@ROWCOUNT > 0
					BEGIN
						--'stlPP_ProcedureMaterialPerID = 1 then per box, stlPP_ProcedureMaterialPerID = 2 then product
						IF @stlPP_ProcedureMaterialPerID = 1 --Then 'it's by box
							SET @dblBoxMaterialsHt = @dblBoxMaterialsHt + (@hoogte__ * @qty);
						Else -- 'figure it's by product
							SET @dblProductMaterialsHt = @dblProductMaterialsHt + (@hoogte__ * @qty);
					END
				END
				ELSE
				BEGIN
					--'Process Rewind Cores
					--'We have the core diameter size from above dblCoreDiameter
					--'lngProductCount has the number of flat rolls
                
					--'We have the product height (dblProductHt), so let's look for a core that's got the right
					--'hole size AND fits the width tolerance of smaller than the product height but within 1mm to 2mm of it
					--'1MM = 0.0393701 inches
					DECLARE sr_cores CURSOR FOR
					SELECT vw_stlPP_qrycmb_artiky__Core.art__ref, breedte_, dikte___ 
								FROM vw_stlPP_qrycmb_artiky__Core 
								WHERE (((vw_stlPP_qrycmb_artiky__Core.diameter) = @dblCoreDiameter))  and art_oms1 not like '%plastic%'  and art__ref <> '103598' 
								ORDER BY vw_stlPP_qrycmb_artiky__Core.breedte_ DESC;
					SET @strCoreArt__ref = '';
					OPEN sr_cores;
					FETCH NEXT FROM sr_cores INTO @art__ref, @breedte_, @dikte___;
					WHILE @@FETCH_STATUS = 0
					BEGIN
						--'if the dblProductHt >= 2" then core min is 3MM, else it's a skinny product, so only 2MM tolerance for the core min width
						-- 
						If @dblProductHt >= 4 
							SET @sngMMMin = @MM3A;
						ELSE If @dblProductHt >= 2
							SET @sngMMMin = @MM3;
						ELSE
							SET @sngMMMin = @MM2
						-- 10/18/23: comment this out to Match Excel calculation
						--Else IF @dblProductHt < 2 and @dblProductHt >= 1
						--	SET @sngMMMin = @MM2
						--ELSE
							--SET @sngMMMin = @MM1

						If @art__ref = '105617' 
							SET @sngMMMin = @sngMMMin;
						--3-31-22: Dustin changed from 1MM to > 0
						--If @dblProductHt - @breedte_ >= @MM1 And @dblProductHt - @breedte_ <= @sngMMMin 
						If @dblProductHt - @breedte_ > 0.0 And @dblProductHt - @breedte_ <= @sngMMMin 
						BEGIN
							IF @stlPP_ProductUnitID = 1 --then it's a flatroll, get the right core thickness
							BEGIN
								IF @dikte___ < 0.26
								BEGIN
									SET @strCoreArt__ref = @art__ref;
									BREAK;
								END
							END
							ELSE --it's a spool, go with a thicker core
							BEGIN
								IF @dikte___ > 0.26
								BEGIN
									SET @strCoreArt__ref = @art__ref;
									BREAK;
								END
							END
						END
						FETCH NEXT FROM sr_cores INTO @art__ref, @breedte_, @dikte___;
					END

					CLOSE sr_cores
					DEALLOCATE sr_cores;
                
					If @strCoreArt__ref <> '' -- Then 'we found one
					BEGIN
    		PRINT'HERE 3'

						--Reserve strCoreArt__ref, lngProductCount
						SET @art__rpn = '';
						SET @art_oms1 = '';
						select @art__rpn = art__rpn, @art_oms1 = art_oms1 from artiky__ where art__ref = @strCoreArt__ref
						insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) VALUES (@off__ref, @strCoreArt__ref, CAST(@lngProductCount AS float), @art__rpn, @art_oms1)
    		PRINT'HERE 3a'
					END
				END
				FETCH NEXT FROM sr_PM INTO @art__ref, @stlPP_PackingMaterialTypeID, @stlPP_ProcedureMaterialPerID, @qty;
			END
			CLOSE sr_PM
			DEALLOCATE sr_PM
        
			--'We subtract out the Box Materials ht to get the functional box height
			SET @dblBoxht = @dblBoxht - @dblBoxMaterialsHt;
        
			--'the Int function on a positive number rounds closer to 0, on a negative number it rounds away from 0
        PRINT 'Boxht = ' + CAST(@dblBoxht as nvarchar(10)) + ' MatHt = ' + CAST(@dblProductMaterialsHt as nvarchar(10)) + ' prodht ' + CAST(@dblProductHt as nvarchar(10))
		PRINT  CAST(@dblBoxht / (@dblProductMaterialsHt + @dblProductHt) AS INT)

			If (@dblProductMaterialsHt + @dblProductHt) > 0 --Then
				SET @lngStacksPerBox = CAST(@dblBoxht / (@dblProductMaterialsHt + @dblProductHt) AS INT)
        
        
			--'if the packing unit for the procedure is 2 (layer) there are multiple products in a stack
			--'figure out how many products will fit on a layer, (otherwise it's defaulted to 1)
			If @stlPP_PackingUnitID = 2 
			BEGIN
				If @dblProductOD > 0
				BEGIN
					If @dblProductOD > 0
					BEGIN
						SET @intProductsPerLength = CAST(@dblBoxLength / @dblProductOD AS INT);
						SET @intProductsPerWidth = CAST(@dblBoxWidth / @dblProductOD AS INT);
						SET @lngProductsPerLayer = @intProductsPerLength * @intProductsPerWidth;
						If @lngProductsPerLayer = 0 
							SET @lngProductsPerLayer = 1 -- 'just in case something went wonky
					END
					Else -- 'something's amiss, default it to 1
						SET @lngProductsPerLayer = 1
				END
			END
        PRINT ' stack = ' + CAST(@lngStacksPerBox as nvarchar(10)) + ' per ' + CAST(@lngProductsPerLayer as nvarchar(10))
			SET @lngProductsPerBox = @lngStacksPerBox * @lngProductsPerLayer;
		END
    
    		PRINT'HERE 4a'
    
		SET @lngBoxCount = FLOOR((CAST(@lngProductCount as float) / CAST(@lngProductsPerBox as float) * -1)) * -1
    		PRINT'HERE 4b'
    
		--'reserve the boxes
		--Reserve strBox_art__ref, lngBoxCount

    		PRINT'HERE 4'

		SET @art__rpn = '';
		SET @art_oms1 = '';

		PRINT '@strBox_art__ref ' + CAST(@strBox_art__ref as nvarchar(10))
		select @art__rpn = art__rpn, @art_oms1 = art_oms1 from artiky__ where art__ref = @strBox_art__ref
		insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) VALUES (@off__ref, @strBox_art__ref, CAST(@lngBoxCount AS float), @art__rpn, @art_oms1)

		--'loop through the packing procedure materials and reserve them
		DECLARE sr_Other CURSOR FOR
			select art__ref, stlPP_ProcedureMaterialPerID, qty, art__rpn, art_oms1  from stlPP_ProcedureMaterial where stlPP_PackingProcedureID = @stlPP_PackingProcedureID;
		OPEN sr_Other;
		FETCH NEXT FROM sr_Other INTO @art__ref, @stlPP_ProcedureMaterialPerID, @qty, @art__rpn, @art_oms1;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			--'Check that it's not a rewind core or a calculated thing, as those have already been reserved, so it's ok to reserve this thing
			If @art__ref <> '000000' --we've already done all the '000000's
			BEGIN
				SET @art__rpn = '';
				SET @art_oms1 = '';
				select @art__rpn = art__rpn, @art_oms1 = art_oms1 from artiky__ where art__ref = @art__ref
				--'check the material per value, 1 = box, 2 = product
				If @stlPP_ProcedureMaterialPerID = 1
					--Reserve rsTmp.Fields("art__ref"), rsTmp.Fields("qty") * lngBoxCount
					insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) VALUES (@off__ref, @art__ref, @qty * @lngBoxCount, @art__rpn, @art_oms1);
				ELSE --  'assume it's per product
					--Reserve rsTmp.Fields("art__ref"), rsTmp.Fields("qty") * lngProductCount
					insert into stlMRS_Packaging (off__ref, art__ref, aantale_, art__rpn, art_oms1) VALUES (@off__ref, @art__ref, @qty * @lngProductCount, @art__rpn, @art_oms1);
			END
    
			FETCH NEXT FROM sr_Other INTO @art__ref, @stlPP_ProcedureMaterialPerID, @qty, @art__rpn, @art_oms1;
		END
		CLOSE sr_Other
		DEALLOCATE sr_Other
*/
	END
	    		PRINT'HERE 6'

	--- DONE Calculating the packaging


	-----------------------------------------------------------------------------------------------------------------------------------------------------
	-- Do the Cylinders
	-------------------------
	-- This is the print cylinder
	insert into stlMRS_Cylinders (off__ref, prs__oms, dg___vnr, omwentel, pass, toolKW, teethID)
		select off__ref, prs__oms, dg___vnr, omwentel, pass, toolKW, teethID from vw_stlMRSCylinders where off__ref = @off__ref;

	-- This is the die cylinder
--	insert into stlMRS_Cylinders (off__ref, prs__oms, dg___vnr, omwentel, pass, toolKW, teethID)
--		--select off__ref, prs__oms, dg___vnr, omwentel, pass, size, mag from vw_stlMRSCylinders where off__ref = @off__ref;
--		select   v.off__ref, s.stns_rpn, v.dg___vnr, s.tanden__ omwentel,  v.off__ref + '_' + v.dg___vnr AS pass, 
--			CASE WHEN s.tandmaat = '2' THEN '1/16 inch' WHEN s.tandmaat = '1' THEN '1/8 inch' ELSE 'UNKNOWN' END size,
--			CASE WHEN s.materie_ = '1' THEN '' WHEN s.materie_ = '2' THEN 'Mag Cyl' ELSE 'UNKNOWN' END Mag
--		from stnspr__ s join v4edg___ v on v.stns_ref = s.stns_ref  where v.off__ref = @off__ref;


--	insert into stlMRS_Cylinders (off__ref, prs__oms, dg___vnr, omwentel, pass, toolKW, teethID)
--		select   v.off__ref, CASE WHEN s.materie_ = '1' THEN 'Die Cylinder' WHEN s.materie_ = '2' THEN 'Mag Cylinder' ELSE 'UNKNOWN' END Mag,
				--v.dg___vnr, s.tanden__ omwentel, v.off__ref + '_' + v.dg___vnr AS pass, s.stns_rpn, s.tanden__
--		from stnspr__ s join v4edg___ v on v.stns_ref = s.stns_ref  where v.off__ref = @off__ref;






	--------------------------------------------------
	-- Do the Coatings because Cohesio products do not get reserved, but DO need to have those quantities show up on the report
	DECLARE @afg__ref nvarchar(6);
	DECLARE @minimum int, @fixedConsumption int, @ozPerMSI float
	DECLARE @percentNeeded int, @ftNeeded float, @width float
	DECLARE @amtToReserve float;

	--Get the afg__ref for this order
	select @afg__ref = afg__ref from v4vrs___ where off__ref = @off__ref

	-- Check if this afg___ref is an cohesio product
	select afg__ref from stlCJ_Product where afg__ref = @afg__ref
	-- if that returned some values then we have more work to do
	if @@ROWCOUNT > 0
	BEGIN
		-- cursor through the silicone recipes products
		DECLARE sr_art__refs CURSOR
			FOR select art__ref, minimum, fixedConsumption, ozPerMSI from stlCJ_Product cjProd 
				join stlCJ_ProductCoating cjCoat on cjProd.stlCJ_ProductID = cjCoat.stlCJ_ProductID 
				join stlSR_SiliconeRecipe sr on sr.klpmsref = cjCoat.art__ref
			where afg__ref = @afg__ref;
		OPEN sr_art__refs
		
		FETCH NEXT FROM sr_art__refs INTO
			@art__ref, @minimum, @fixedConsumption, @ozPerMSI;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			-- we got the product specs for the coating, now we need to look at this job's needs:
			select @percentNeeded = Max(inkvrbpc), @ftNeeded = MAX(mr.tedrkdto), @width = MAX(ve.breedte_)
                        from v4eti___ ve join v4kkl___ vk on ve.kpn__ref = vk.kpn__ref join artiky__ a on vk.klpmsref = a.art__ref left 
                        join v4edg___ v4e on vk.kpn__ref = v4e.kpn__ref and v4e.dg___ref = vk.dg___ref
						join stlMRS_Rpt mr on mr.off__ref = v4e.off__ref and mr.dg___ref = v4e.dg___ref
                        where ve.off__ref = @off__ref and klpmsref = @art__ref
                        group by klpmsref 
                        order by vk.klpmsref
			if @@ROWCOUNT <> 0
			BEGIN
				-- calculate amount they would reserve IF they reserved these types coatings
				set @amtToReserve = Ceiling((((@ftNeeded * 12 * @width / 1000) * @ozPerMSI / 16) * (@percentNeeded / 100))) + @fixedConsumption;
--PRINT '->' + @amtToReserve + '<-' + @off__ref + '->' + @art__ref + '<-'
				update stlMRS_Coatings set reserve_ = @amtToReserve where off__ref = @off__ref and art__ref = @art__ref
			END

			FETCH NEXT FROM sr_art__refs INTO
				@art__ref, @minimum, @fixedConsumption, @ozPerMSI;

		END


		CLOSE sr_art__refs;
		DEALLOCATE sr_art__refs;

	--END
	

END

