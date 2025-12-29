SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Create_afg__sku_for_flat_roll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Create_afg__sku_for_flat_roll] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Creates the next afg__sku record for spooltrace and returns the new sku,,>

-- NOTE: 3-5-21 THIS STORED PROCEDURE IS FOR CREATING FLAT ROLL SKUS (Not spools)

-- Administration
-- The GS1 company code is used to create GS1 based SSCC codes for the roll, the box and the pallet labels.
-- Remark: in a multi-company environment, the GS1 company code needs to be set in the Definition of companies


-- Prefix
-- Here you can define the prefix number to be used in the composition of the GS1 based SSCC codes for SKU managed finished goods.
-- For each one of the levels you can define a 1 digit prefix (0-9). The default values (see technical info below) are applied automatically. You should only change them if really necessary! E.g. in case you migrate from an other MIS system to Cerm and SKU stock needs to be imported and the existing SSCC numbers with other prefixes need to be kept.

-- The following rules apply:
-- The digit can not be '3' on any of the levels because 3 is the prefix which is globally used by adhesive material suppliers to identify their material rolls via the EPSMA standard.
-- The prefixes for all levels must be different (e.g. you can not have '2' for roll and box)
-- You can only change the prefix for rolls and boxes if there are no records in the table of the SKUs (afgsku__) with a status different from destroyed or deleted. You only can change the prefix for pallets if there are no records in the table of the pallets (palet___). In all other situations, the fields are disabled and can not be changed anymore!

-- Technical:
-- SSCC Serial Shipping Container Code
-- //---------------------------------------------------------------------------
-- - '00' application identifier voor SSCC
-- - algpar__.sscc_rol (1) if it is a roll / algpar__.sscc_box (2) if it is a box / algpar__.sscc_pal (4) if it is a pallet
-- - GS1 company prefix (dosbas__ or algpar__) : if empty then 5400000
-- - number : 6 to 9 length, unique number (16 - GS1Prefix.Length ())
-- - controle digit: length 1

-- String PACKAGE __fastcall CrmCalculateSSCCControlDigit (String Value)
-- {
-- String Result = "0";
-- if (Value.IsEmpty () ) return Result;
-- -- if (Value.Length () < 19 || Value.Length () > 20) return Result;
-- int sscc_factors [17] = { 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3 }; int sscc_digits [17];
-- for (int i = 0; i < 17; i++)
-- sscc_digits [i] = StrToInt(Value [i + 3]);
-- for (int i = 0; i < 17; i++)
-- sscc_digits [i] = sscc_digits [i] * sscc_factors [i];

-- int tmpint = 0;
-- for (int i = 0; i < 17; i++)
-- tmpint = tmpint + sscc_digits [i]; tmpint = tmpint % 10;
-- if (tmpint != 0)
-- tmpint = 10 - tmpint;
-- Result = IntToStr (tmpint);
-- return Result;
-- }


-- =============================================
ALTER PROCEDURE [dbo].[Create_afg__sku_for_flat_roll]
    @sscc_type  nvarchar(1),
    @afg__ref nvarchar(6),
    @ord__ref nvarchar(6),
    @vrs__ref nvarchar(6),
    @crea_usr nvarchar(6),
    @qty float,
    @inhoud01 nvarchar(40),
    @inhoud02 nvarchar(40),
    @inhoud03 nvarchar(40),
    @inhoud04 nvarchar(40),
	@hlf__pos nvarchar(2),
	@badRow integer,
    @newSKU nvarchar(20) out
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @application_id nvarchar(2) = '00' 	-- - '00' application identifier for SSCC is always the first 2 digits
		DECLARE @sscc_rol nvarchar(1)
		DECLARE @gs1_prfx nvarchar(9)
		DECLARE @vlgsscc1 int
		DECLARE @preValue nvarchar(20)
		DECLARE @control_character nvarchar(1)
		DECLARE @i int, @tmpInt int
		DECLARE @factor int
		DECLARE @d0 int, @d1 int, @d2 int, @d3 int, @d4 int, @d5 int, @d6 int, @d7 int, @d8 int, @d9 int
		DECLARE @d10 int, @d11 int, @d12 int, @d13 int, @d14 int, @d15 int, @d16 int, @a int
		DECLARE @insertQty float
		
		
		BEGIN TRY
			-- - algpar__.sscc_rol (1) if it is a roll / algpar__.sscc_box (2) if it is a box / algpar__.sscc_pal (4) if it is a pallet
			SELECT @sscc_rol = (select MAX(sscc_rol) from algpar__)
			
			-- - GS1 company prefix (dosbas__ or algpar__) : if empty then 5400000
			-- This code worked before version 7.23
			--SELECT @gs1_prfx = (select MAX(gs1_prfx) from algpar__)
			--IF @gs1_prfx = '' OR @gs1_prfx is null
			--BEGIN 
			--	SET @gs1_prfx = '5400000'
			--END

			select @gs1_prfx = (select groupval from autnbr__ where tabname_ = 'afgsku__' and colname_ = 'sku__ref')

			--  get the sscc1 number to use vlgsscc1 from autadm__
			-- This code worked before version 7.23
			--SELECT @vlgsscc1 = (select MAX(vlgsscc1) from autadm__)
			select @vlgsscc1 = (select next_nbr from autnbr__ where tabname_ = 'afgsku__' and colname_ = 'sku__ref')

			-- increment the vlgsscc1 in the autadm__ table
			-- This code worked before version 7.23
			--UPDATE autadm__ set vlgsscc1 = @vlgsscc1 + 1
			update autnbr__ set next_nbr = @vlgsscc1 + 1  where tabname_ = 'afgsku__' and colname_ = 'sku__ref'

			--for testing
			--SET @vlgsscc1 = 482273 --should result in '00154000000004822738'
			                                        --'0015400000'
			--SET @vlgsscc1 = 482419 --should result in '00154000000004824190'
			                                        --'0015400000'
			SET @preValue = @application_id + @sscc_rol + @gs1_prfx + RIGHT('000000000000000000' + LTRIM(STR(@vlgsscc1)),9)

			
			-- now calculate the control character
			-- String Result = "0";
			SET @control_character = '0'
			-- -- if (Value.Length () < 19 || Value.Length () > 20) return Result;
			IF LEN(@preValue) < 19 OR LEN(@preValue) > 20
			BEGIN
				SELECT @newSKU = @preValue + @control_character
			END
			ELSE
			BEGIN
				SET @i = 0
				SET @factor = 3
					-- int sscc_factors [17] = { 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3 }; int sscc_digits [17];
					-- sscc_digits [i] = sscc_digits [i] * sscc_factors [i];
					/*Example @prevalue = 0015400000000482273 and we're looking to add to the end 8
					//[1,5,4,0,0,0,0,0,0,0,0,4,8,2,2,7,3].  => after multiplying with the factors from integer array sscc-factors, 
					//sscc_digits will contain [3,5,12,0,0,0,0,0,0,0,0,4,24,2,6,7,9]. 
					//Adding all these values up will make a total of 72. 72%10 = 2    => 10-2 will give you the control number of 8.
					-- prevalue should be '0015400000000482273'
					*/
					
				WHILE @i < 17 
				BEGIN
					IF @i = 0 	SET @d0 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 1 	SET @d1 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 2 	SET @d2 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 3 	SET @d3 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 4 	SET @d4 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 5 	SET @d5 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 6 	SET @d6 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 7 	SET @d7 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 8 	SET @d8 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 9 	SET @d9 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 10 	SET @d10 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 11 	SET @d11 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 12 	SET @d12 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 13 	SET @d13 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 14 	SET @d14 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					IF @i = 15 	SET @d15 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 1
					IF @i = 16 	SET @d16 = CONVERT(int, SUBSTRING(@preValue, @i+3, 1)) * 3
					SET @i = @i + 1
				END
				-- for (int i = 0; i < 17; i++)
					-- tmpint = tmpint + sscc_digits [i]; tmpint = tmpint % 10;
				SET @tmpInt = 0
				SET @i = 0
				WHILE @i < 17 
				BEGIN
					IF @i = 0 SET @tmpInt = @tmpInt + @d0
					IF @i = 1 SET @tmpInt = @tmpInt + @d1
					IF @i = 2 SET @tmpInt = @tmpInt + @d2
					IF @i = 3 SET @tmpInt = @tmpInt + @d3
					IF @i = 4 SET @tmpInt = @tmpInt + @d4
					IF @i = 5 SET @tmpInt = @tmpInt + @d5
					IF @i = 6 SET @tmpInt = @tmpInt + @d6
					IF @i = 7 SET @tmpInt = @tmpInt + @d7
					IF @i = 8 SET @tmpInt = @tmpInt + @d8
					IF @i = 9 SET @tmpInt = @tmpInt + @d9
					IF @i = 10 SET @tmpInt = @tmpInt + @d10
					IF @i = 11 SET @tmpInt = @tmpInt + @d11
					IF @i = 12 SET @tmpInt = @tmpInt + @d12
					IF @i = 13 SET @tmpInt = @tmpInt + @d13
					IF @i = 14 SET @tmpInt = @tmpInt + @d14
					IF @i = 15 SET @tmpInt = @tmpInt + @d15
					IF @i = 16 SET @tmpInt = @tmpInt + @d16
					
					SET @i = @i + 1
				END
				SET @tmpInt = @tmpInt % 10
				IF @tmpInt <> 0 SET @tmpInt = 10 - @tmpInt
				
				SET @control_character = LTRIM(STR(@tmpInt))

				-- Now check if it's a bad row, change the sku
				select @insertQty = @qty
				IF @badRow = 1 
				BEGIN
					--SET @preValue = @application_id + @sscc_rol + @gs1_prfx + RIGHT('000000000000000000' + LTRIM(STR(@vlgsscc1)),9)
					Select @preValue = REPLACE(@preValue, LEFT(@preValue, 8), 'BAD ROW ')
					Select @insertQty = 0
				END

				SELECT @newSKU = @preValue + @control_character
			END

			--Insert the new afgsku__
			DECLARE @Psku__ref nvarchar(20),@Plyn__ref nvarchar(10),@Pvolgnr__ int,@Ptoestand nvarchar(1),@Pcrea_dat datetime2,@Pcrea_uur nvarchar(6),@Pcrea_user nvarchar(6),
					@Pafg__ref nvarchar(6),@Paant__ex float,@Pvpk__ref nvarchar(6),@Pbox__ref nvarchar(20),@Ppal__ref nvarchar(25),@Pvak__ref nvarchar(10),@Pdos__ref nvarchar(2),@Pord__ref nvarchar(6),
					@Pvrs__ref nvarchar(3),@Plevr_vnr nvarchar(6),@Pvrrd_dat datetime2,@Pvrrd_uur nvarchar(6),@Phlf__ref nvarchar(9),
					@Phlf__pos nvarchar(2),@Pvrrd_usr nvarchar(6),@Pvrrd__wn nvarchar(4),@Puit__dat datetime2,@Puit__uur nvarchar(6),@Puit__usr nvarchar(6),@Plev__dat datetime2,
					@Plev__uur nvarchar(6),@Pjobnrlev nvarchar(10),@Ptst__qrt nvarchar(1),
					@Pkomm_qrt nvarchar(50),@Pinhoud01 nvarchar(40),@Pinhoud02 nvarchar(40),@Pinhoud03 nvarchar(40),@Pinhoud04 nvarchar(40),@Psmpl__ex int,
					@Pversiref nvarchar(3),@Pord2_ref nvarchar(6),@Pkom__ref nvarchar(3),@Pkommen__ nvarchar(80)
			
			--',N'00154000000004822738',N'',28,N'0','2018-11-07 00:00:00',N' 10:10',N'100181',N'103475',46500,N'',N'',N'',N'',N'',N'502419',N'001',N'','2049-12-31 00:00:00',N'  0:00',N'',N'01',N'',N'','2049-12-31 00:00:00',N'  0:00',N'','2049-12-31 00:00:00',N'  0:00',N'',N'1',N'',N'31',N'6.570',N'2.830',N'20000',0,N'001',N'',N'',N''
			SET @Psku__ref = @newSKU
			SET @Plyn__ref = N''
			-- get the next sequence number from afgsku for this ord__ref, vrs__ref
			SET @Pvolgnr__ = (select MAX(volgnr__) from afgsku__ where ord__ref = @ord__ref and vrs__ref = @vrs__ref)
			IF (@Pvolgnr__ IS NULL) SET @Pvolgnr__ = 0
			SET @Pvolgnr__ = @Pvolgnr__ + 1
			SET @Ptoestand = N'0'
			SET @Pcrea_dat = (SELECT CONVERT(VARCHAR(10), getdate(), 126) + ' 00:00:00') -- '2018-11-07 00:00:00'
			SET @Pcrea_uur = ' ' + (SELECT CONVERT(VARCHAR(5), GETDATE(), 108)) --N' 10:10'
			SET @Pcrea_user = @crea_usr -- N'100181'
			SET @Pafg__ref = @afg__ref
			SET @Paant__ex = @insertQty --46500
			SET @Pvpk__ref = N''
			SET @Pbox__ref = N''
			SET @Ppal__ref = N''
			SET @Pvak__ref = N''
			SET @Pdos__ref = N''
			SET @Pord__ref = @ord__ref --'502419'
			SET @Pvrs__ref = @vrs__ref --'001'
			SET @Plevr_vnr = N''
			SET @Pvrrd_dat = '2049-12-31 00:00:00'
			SET @Pvrrd_uur = N'  0:00'
			SET @Phlf__ref = N''
			SET @Phlf__pos = @hlf__pos
			SET @Pvrrd_usr = N''
			SET @Pvrrd__wn = N''
			SET @Puit__dat = '2049-12-31 00:00:00'
			SET @Puit__uur = N'  0:00'
			SET @Puit__usr = N''
			SET @Plev__dat = '2049-12-31 00:00:00'
			SET @Plev__uur = N'  0:00'
			SET @Pjobnrlev = N''
			SET @Ptst__qrt = N'1'
			SET @Pkomm_qrt = N''
			SET @Pinhoud01 = @inhoud01
			SET @Pinhoud02 = @inhoud02
			SET @Pinhoud03 = @inhoud03
			SET @Pinhoud04 = @inhoud04
			SET @Psmpl__ex = 0
			SET @Pversiref = N'001'
			SET @Pord2_ref = N''
			SET @Pkom__ref = N''
			SET @Pkommen__ = N''
						
			insert into afgsku__(sku__ref,lyn__ref,volgnr__,toestand,crea_dat,crea_uur,crea_usr, afg__ref,
					aant__ex,vpk__ref,box__ref,pal__ref,vak__ref,dos__ref,ord__ref,vrs__ref,			
					levr_vnr,vrrd_dat,vrrd_uur,hlf__ref,hlf__pos,
					vrrd_usr,vrrd__wn,uit__dat,uit__uur,uit__usr,lev__dat,lev__uur,
					jobnrlev,tst__qrt,komm_qrt,			
					inhoud01,inhoud02,inhoud03,inhoud04,smpl__ex,versiref,
					ord2_ref,kom__ref,kommen__) 					
					values (@Psku__ref,@Plyn__ref,@Pvolgnr__,@Ptoestand,@Pcrea_dat,@Pcrea_uur, @Pcrea_user, @Pafg__ref,
					@Paant__ex,@Pvpk__ref,@Pbox__ref,@Ppal__ref,@Pvak__ref,@Pdos__ref,@Pord__ref,@Pvrs__ref,
					@Plevr_vnr,@Pvrrd_dat,@Pvrrd_uur,@Phlf__ref,@Phlf__pos,
					@Pvrrd_usr,@Pvrrd__wn,@Puit__dat,@Puit__uur,@Puit__usr,@Plev__dat,@Plev__uur,
					@Pjobnrlev,@Ptst__qrt,@Pkomm_qrt,
					@Pinhoud01,@Pinhoud02,@Pinhoud03,@Pinhoud04,@Psmpl__ex,@Pversiref,
					@Pord2_ref,@Pkom__ref,@Pkommen__);
			
			SET @i=0;
		END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

