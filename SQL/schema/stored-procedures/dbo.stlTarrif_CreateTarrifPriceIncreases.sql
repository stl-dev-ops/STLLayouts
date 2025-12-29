SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTarrif_CreateTarrifPriceIncreases]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlTarrif_CreateTarrifPriceIncreases] AS' 
END

-- =============================================

-- =============================================
ALTER PROCEDURE [dbo].[stlTarrif_CreateTarrifPriceIncreases]
    @bon__ref nvarchar(6),
	@ExcludePastIncreases as tinyint,
	@ExcludeSpoolSurcharge as tinyint
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		
		DECLARE @StartDate date
		DECLARE @EndDate date
		DECLARE @Comment varchar(255) 
		DECLARE @IncreaseRatio float

		BEGIN TRY
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*          Delete all tarrifs except for BASE. BASE = Sales Prices           */
/*                                                                            */
		delete from v1tar___ where tar_def_ref <> '000001' AND bon__ref = @bon__ref
		delete from v1tar_definition__ where tar_def_ref <> '000001' AND bon__ref = @bon__ref
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*         Set BASE tariffs to end before the first Jun 2021 increase         */
/*                                                                            */
		SET @Comment = 'BASE'
		SET @StartDate = '1/1/1980'
		SET @EndDate = '5/31/2021'
		UPDATE v1tar_definition__ 
		SET beg__dat = @StartDate, end__dat = @EndDate, comment = @Comment
		WHERE tar_def_ref = '000001' AND bon__ref = @bon__ref


if (@ExcludePastIncreases = 0)
BEGIN
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*            June 2021 6.00% increase                                        */
/*                                                                            */
		SET @Comment = 'Jun 2021 6.00%'
		SET @StartDate = '6/1/2021'
		SET @EndDate = '10/31/2021'
		SET @IncreaseRatio = 6.00

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE bon__ref LIKE '1%' AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE bon__ref LIKE '1%' AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                Nov 2021 7.45%                                              */
/*                                                                            */
		SET @Comment = 'Nov 2021 7.45%'
		SET @StartDate = '11/1/2021'
		SET @EndDate = '5/31/2022'
		SET @IncreaseRatio = 7.45

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                Jun 2022 5.00%                                              */
/*                                                                            */
		SET @Comment = 'Jun 2022 5.00%'
		SET @StartDate = '6/1/2022'
		SET @EndDate = '10/29/2023'
		SET @IncreaseRatio = 5.00

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                Nov 2023 2.00%     non-Spool                                */
/*                                                                            */
		SET @Comment = 'Nov 2023 2.00%'
		SET @StartDate = '11/1/2023'
		SET @EndDate = '1/1/2050'
		SET @IncreaseRatio = 2.00

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE bon__ref NOT IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE bon__ref NOT IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                Nov 2023 2.00%      Spool                                   */
/*                                                                            */
		SET @Comment = 'Nov 2023 2.00%'
		SET @StartDate = '10/30/2023'
		SET @EndDate = '10/31/2023'
		SET @IncreaseRatio = 2.00

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE bon__ref IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE bon__ref IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND (bon__ref LIKE '1%' OR left(bon__ref, 3) LIKE '200%' OR left(bon__ref, 3) LIKE '210%') AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)

/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                Nov 2025 2.65%                                              */
/*                                                                            */
		SET @Comment = 'Nov 2025 2.65%'
		SET @StartDate = '11/1/2025'
		SET @EndDate = '1/1/2050'
		SET @IncreaseRatio = 2.65

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)


END

IF (@ExcludeSpoolSurcharge = 0)
BEGIN
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                                                                            */
/*                SPOOLING SURCHARE 2.8%                                      */
/*                                                                            */
		SET @Comment = 'Nov 2023 2.80% Spool surcharge'
		SET @StartDate = '11/1/2023'
		SET @EndDate = '1/1/2050'
		SET @IncreaseRatio = 2.80

		INSERT INTO v1tar_definition__ (bon__ref, tar_def_ref, beg__dat, end__dat, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, comment, orig_tar_def_ref, orig_end__dat, creation_time, crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr,  orig_off__ref)
		SELECT TOP 1 WITH TIES bon__ref, REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		@StartDate, @EndDate, fixed_end__dat, munt_ref, koersvkp, fixed_vm, mx___opl, @Comment, tar_def_ref, orig_end__dat, GETDATE(), crea_usr, crea_jobnr_vw, last_edit_time, last_edit_usr, orig_off__ref
		FROM v1tar_definition__ 
		WHERE bon__ref IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref ORDER BY tar_def_ref DESC)

		INSERT INTO v1tar___ ( tar__ref, bon__ref, oplage__, vast__pr, var___pr, afgw__pr, tar_def_ref, vast__pr_vm, var___pr_vm, afgw__pr_vm)
		SELECT TOP 1 WITH TIES  tar__ref, bon__ref, oplage__, 
		ROUND(vast__pr * (1.0 + @IncreaseRatio / 100.0), 2),
		ROUND(var___pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr * (1.0 + @IncreaseRatio / 100.0), 2), 
		REPLICATE('0', 6 - LEN(CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar))) + CAST(CAST( tar_def_ref AS INT) + 1 AS nvarchar), 
		ROUND(vast__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(var___pr_vm * (1.0 + @IncreaseRatio / 100.0), 2), 
		ROUND(afgw__pr_vm * (1.0 + @IncreaseRatio / 100.0), 2)
		FROM v1tar___
		WHERE bon__ref IN
		(
			SELECT bon__ref 
			FROM v1bon___
			WHERE omschr__ LIKE '%spool%'
		) AND bon__ref = @bon__ref
		ORDER BY ROW_NUMBER() OVER (PARTITION BY bon__ref, oplage__ ORDER BY tar_def_ref DESC)


END
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
		END CATCH
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS


