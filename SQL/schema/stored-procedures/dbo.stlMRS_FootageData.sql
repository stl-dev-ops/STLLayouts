SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_FootageData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlMRS_FootageData] AS' 
END
-- =============================================
-- Author:		Jon Dragt
-- Create date: 8/3/22
-- Description:	Creates the data for the stlMRS_Footage table, in which each step has the correct starting footage needed
-- =============================================
ALTER PROCEDURE [dbo].[stlMRS_FootageData]
    @off__ref nvarchar(6)
AS
BEGIN
	SET NOCOUNT ON;

	-- First delete the records in the tables for this job # (can't cascade because the table structure doesn't allow for a unique key combination)
	delete from stlMRS_Footage where off__ref = @off__ref;


	-- insert the preliminary records into the table for this job #
	insert into stlMRS_Footage(off__ref, dg___ref, ftNeeded)
		select off__ref, dg___ref, tedrkdto from vw_stlMRSRpt where off__ref = @off__ref; 
	
	-- we have to fix the material needed on the second pass of a two pass job because the correct amount is not stored in the database anywhere
	
	DECLARE 
		@i INT, 
		@prev_tedrk FLOAT,
		@prev_prcinsvo FLOAT,
		@waste FLOAT;

	DECLARE 
		@c_off__ref VARCHAR(6),
		@c_dg___ref VARCHAR(6), 
		@c_dg___vnr VARCHAR(3), 
		@c_tedrk_to FLOAT, 
		@c_prcinsvo FLOAT, 
		@c_tedrk___ FLOAT;

	DECLARE cursor_v4edg CURSOR
		FOR select off__ref, dg___ref, dg___vnr, tedrk_to, prcinsvo, tedrk___ from v4edg___ where off__ref = @off__ref order by dg___vnr;

	OPEN cursor_v4edg;
	FETCH NEXT FROM cursor_v4edg INTO
		@c_off__ref,
		@c_dg___ref, 
		@c_dg___vnr, 
		@c_tedrk_to, 
		@c_prcinsvo, 
		@c_tedrk___;

	SET @i = 1;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		--PRINT @i
		--PRINT 'c_tedrk_to'
		--PRINT @c_tedrk_to
		IF @i > 1
		BEGIN
			--Have to use the prev variable to update the stlMRS_Rpt table tedrkdto value
			IF @prev_prcinsvo <> 0
			BEGIN
				SET @waste = (@prev_tedrk * (@prev_prcinsvo * 0.01))
				--PRINT 'waste = ' + CAST(@waste as nvarchar(10))
				UPDATE stlMRS_Footage set ftNeeded = @c_tedrk_to + @waste where off__ref = @c_off__ref and dg___ref = @c_dg___ref
			END
		END

		SET @prev_prcinsvo = @c_prcinsvo;
		SET @prev_tedrk = @c_tedrk___;
		--PRINT 'prev_prcinsvo '
		--PRINT  @prev_prcinsvo;
		--PRINT 'prev_tedrk '
		--PRINT @prev_tedrk;

		FETCH NEXT FROM cursor_v4edg INTO
			@c_off__ref,
			@c_dg___ref, 
			@c_dg___vnr, 
			@c_tedrk_to, 
			@c_prcinsvo, 
			@c_tedrk___;

		SET @i = @i + 1
	END;
	CLOSE cursor_v4edg;
	DEALLOCATE cursor_v4edg;
    
END

