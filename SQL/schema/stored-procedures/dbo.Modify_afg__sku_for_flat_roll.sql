SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modify_afg__sku_for_flat_roll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Modify_afg__sku_for_flat_roll] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Creates the next afg__sku record for spooltrace and returns the new sku,,>

-- NOTE: 3-5-21 THIS STORED PROCEDURE IS FOR Fixing BAD ROW FLAT ROLL SKUS (Not spools)

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
ALTER PROCEDURE [dbo].[Modify_afg__sku_for_flat_roll]
    @sku__ref nvarchar(20),
    @ord__ref nvarchar(6),
    @qty float,
	@newSKU nvarchar(20) out

AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @application_id nvarchar(2) = '00' 	-- - '00' application identifier for SSCC is always the first 2 digits
		DECLARE @sscc_rol nvarchar(1)
		DECLARE @gs1_prfx nvarchar(9)
		DECLARE @vlgsscc1 int
		DECLARE @fixedSKU nvarchar(20)
		DECLARE @preValue nvarchar(20)
		DECLARE @control_character nvarchar(1)
		DECLARE @i int, @tmpInt int
		DECLARE @factor int
		DECLARE @d0 int, @d1 int, @d2 int, @d3 int, @d4 int, @d5 int, @d6 int, @d7 int, @d8 int, @d9 int
		DECLARE @d10 int, @d11 int, @d12 int, @d13 int, @d14 int, @d15 int, @d16 int, @a int
		DECLARE @insertQty float
		
		
		BEGIN TRY

			IF LEFT(@sku__ref,3) = 'BAD'
			BEGIN
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


				Select @fixedSKU = REPLACE(@sku__ref, 'BAD ROW ', LEFT(@preValue, 8))
			END
			ELSE
			BEGIN
				Select @fixedSKU = REPLACE(@sku__ref, LEFT(@sku__ref, 8), 'BAD ROW ')
			END

			UPDATE afgsku__ set sku__ref = @fixedSKU, aant__ex = @qty where sku__ref = @sku__ref;
			SELECT @newSKU = @fixedSKU
			print 'afg__sku = ' + @sku__ref
			print 'fixesku = ' + @fixedSKU;
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

