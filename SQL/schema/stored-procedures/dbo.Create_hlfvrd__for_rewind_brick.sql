SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Create_hlfvrd__for_rewind_brick]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Create_hlfvrd__for_rewind_brick] AS' 
END

-- =============================================
ALTER PROCEDURE [dbo].[Create_hlfvrd__for_rewind_brick]
    @ord__ref nvarchar(6),
    @sub__ref nvarchar(3),
    @vrs__ref nvarchar(3),
	@vrs__oms nvarchar(50),
	@kpn__ref nvarchar(6),
	@kla__ref nvarchar(6),
	@inh__oms nvarchar(50),
	@wp___ref nvarchar(4),
	@wn___ref nvarchar(4),
	@vpak_ref nvarchar(3),
	@vpk__ref nvarchar(6),
	@dt___beg datetime,
	@plc__beg float,
	@plc__end float,
	@aant__in float,
	@aantm_in float,
    @newSKU nvarchar(9) out
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @vlg__ref nvarchar(6)
		DECLARE @hlf__ref nvarchar(9)

		BEGIN TRY
			--get the next hlf__ref from number table and increment the next number table
			select @vlg__ref = (select vlg__hlf from autlog__)
			UPDATE autlog__   SET vlg__hlf = vlg__hlf + 1
			SET @hlf__ref = RIGHT('000000000' + LTRIM(STR(@vlg__ref)),9)


			DECLARE @Phlf__ref nvarchar(9), @Phlff_ref nvarchar(9),
					@Pord__ref nvarchar(6), @Psub__ref nvarchar(3), @Pvrs__ref nvarchar(3),	@Pvrs__oms nvarchar(50),
					@Pkpn__ref nvarchar(6),	@Pvrm__ref nvarchar(10),
					@Pkla__ref nvarchar(6),	@Ptrnd_ref nvarchar(10),
					@Pinh__oms nvarchar(50), @Ptoestand nvarchar(1), @Ptst__qrt nvarchar(1), @Pdatum_in datetime, @Puur___in nvarchar(6),
					@Pwp___ref nvarchar(6),	@Pwn___ref nvarchar(4),	@Pdatumuit datetime, @Puur__uit nvarchar(6), @Pwp___uit nvarchar(4), @Pwn___uit nvarchar(4),
					@Paant_uit float, @Paantmuit float, @Paant__in float, @Pgew___in float, @Paantm_in float, @Ptotam_in float, @Pin___qrt float,
					@Pvpak_ref nvarchar(3),	@Pvpk__ref nvarchar(6),	@Pinh_e1e2 float, @Pinh_e2e3 float, @Pinh_e3e4 float, @Pinh_e4e5 float,
					@Paantale2 float, @Paantale3 float, @Paantale4 float, @Paantale5 float,
					@Pdt___beg datetime, @Pdt___end datetime,
					@Pplc__beg float, @Pplc__end float, @Pvlgnrpal int, @Paant_pal int, @Pvak__ref varchar(10),
					@Pkomment1 nvarchar(50), @Pkomment2 nvarchar(50), @Pkomment3 nvarchar(50), @Pkomment4 nvarchar(50), @Pkomment5 nvarchar(50),
					@Pkomm_qrt nvarchar(50)


			SET @Phlf__ref = @hlf__ref
			SET @Phlff_ref = @hlf__ref
			SET @Pord__ref = @ord__ref
			SET @Psub__ref = @sub__ref
			SET @Pvrs__ref = @vrs__ref
			SET @Pvrs__oms = @vrs__oms
			SET @Pkpn__ref = @kpn__ref
			SET @Pvrm__ref = N''
			SET @Pkla__ref = @kla__ref
			SET @Ptrnd_ref = N''
			SET @Pinh__oms = @inh__oms -- BR #1
			SET @Ptoestand = N'0'
			SET @Ptst__qrt = N'1'
			SET @Pdatum_in = '1980-01-01 00:00:00'
			SET @Puur___in = N'  0:00'
			SET @Pwp___ref = @wp___ref
			SET @Pwn___ref = @wn___ref
			SET @Pdatumuit = '1980-01-01 00:00:00'
			SET @Puur__uit = N'  0:00'
			SET @Pwp___uit = N''
			SET @Pwn___uit = N''
			SET @Paant_uit = 0
			SET @Paantmuit = 0
			SET @Paant__in = @aant__in
			SET @Pgew___in = 0
			SET @Paantm_in = @aantm_in
			SET @Ptotam_in = @aantm_in --these gots the same value
			SET @Pin___qrt = 0
			SET @Pvpak_ref = @vpak_ref
			SET @Pvpk__ref = @vpk__ref
			SET @Pinh_e1e2 = @aant__in
			SET @Pinh_e2e3 = 0
			SET @Pinh_e3e4 = 0
			SET @Pinh_e4e5 = 0
			SET @Paantale2 = 0
			SET @Paantale3 = 0
			SET @Paantale4 = 0
			SET @Paantale5 = 0
			SET @Pdt___beg = @dt___beg
			SET @Pdt___end = '1980-01-01 00:00:00'
			SET @Pplc__beg = @plc__beg
			SET @Pplc__end = @plc__end
			SET @Pvlgnrpal = 0
			SET @Paant_pal = 0
			SET @Pvak__ref = N''
			SET @Pkomment1 = N''
			SET @Pkomment2 = N''
			SET @Pkomment3 = N''
			SET @Pkomment4 = N''
			SET @Pkomment5 = N''
			SET @Pkomm_qrt = N''

			insert into hlfvrd__ (hlf__ref, hlff_ref, ord__ref,	sub__ref, vrs__ref, vrs__oms, kpn__ref,
									vrm__ref,kla__ref, trnd_ref, inh__oms, toestand, tst__qrt, datum_in,
									uur___in, wp___ref, wn___ref, datumuit, uur__uit, wp___uit, wn___uit,
									aant_uit, aantmuit, aant__in, gew___in, aantm_in, totam_in, in___qrt, 
									vpak_ref, vpk__ref, inh_e1e2, inh_e2e3, inh_e3e4, inh_e4e5, aantale2,
									aantale3, aantale4, aantale5, dt___beg, dt___end, plc__beg, plc__end,
									vlgnrpal, aant_pal, vak__ref, komment1, komment2, komment3, komment4, komment5, komm_qrt)

								values (@Phlf__ref, @Phlff_ref, @Pord__ref,	@Psub__ref, @Pvrs__ref, @Pvrs__oms, @Pkpn__ref,
									@Pvrm__ref,@Pkla__ref, @Ptrnd_ref, @Pinh__oms, @Ptoestand, @Ptst__qrt, @Pdatum_in,
									@Puur___in, @Pwp___ref, @Pwn___ref, @Pdatumuit, @Puur__uit, @Pwp___uit, @Pwn___uit,
									@Paant_uit, @Paantmuit, @Paant__in, @Pgew___in, @Paantm_in, @Ptotam_in, @Pin___qrt, 
									@Pvpak_ref, @Pvpk__ref, @Pinh_e1e2, @Pinh_e2e3, @Pinh_e3e4, @Pinh_e4e5, @Paantale2,
									@Paantale3, @Paantale4, @Paantale5, @Pdt___beg, @Pdt___end, @Pplc__beg, @Pplc__end,
									@Pvlgnrpal, @Paant_pal, @Pvak__ref, @Pkomment1, @Pkomment2, @Pkomment3, @Pkomment4, @Pkomment5, @Pkomm_qrt)

			SET @newSKU = @hlf__ref
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

