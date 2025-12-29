SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_stl_bstlyn__PriceChanges]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jeff
-- Create date: 01-10-2025
-- Description:	save history of changes to sales orders prices
-- =============================================
CREATE TRIGGER [dbo].[tr_stl_bstlyn__PriceChanges]
   ON  [dbo].[bstlyn__]   AFTER UPDATE, DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Operation CHAR(1);

	IF (EXISTS(SELECT * FROM inserted))
		BEGIN

		   IF (EXISTS(SELECT * FROM deleted))
			   BEGIN
				  -- rows in both has to be an UPDATE
				  SET @Operation = ''U'';
			   END;
		   ELSE
			   BEGIN
				  -- no rows in "deleted" has to be an INSERT
				  SET @Operation = ''I'';
			   END;

		END;
	ELSE
		BEGIN
		   -- no rows in "inserted" has to be a DELETE
		   SET @Operation = ''D'';
		END;

	
	IF (@Operation = ''D'')
		BEGIN
			INSERT INTO stl_bstlyn__PriceChanges(bst__ref, lyn__ref, kla__rpn, afg_oms1, Operation, pr_excl_OLD, preexcl_OLD, preexclvOLD, pr_incl_OLD, proexcl_OLD, proexclvOLD, pr_exclvOLD, pr_inclvOLD)
			SELECT d.bst__ref, d.lyn__ref, d.kla__rpn, d.afg_oms1, @Operation, d.pr_excl_, d.preexcl_, d.preexclv, d.pr_incl_, d.proexcl_, d.proexclv, d.pr_exclv, d.pr_inclv 
			FROM deleted d 


		END;
	ELSE
		BEGIN
			IF (UPDATE(pr_excl_) OR UPDATE(preexcl_) OR UPDATE(preexclv) OR UPDATE(pr_incl_) OR UPDATE(proexcl_) OR UPDATE(proexclv) OR UPDATE(pr_exclv) OR UPDATE(pr_inclv))
			BEGIN
				INSERT INTO stl_bstlyn__PriceChanges(bst__ref, lyn__ref, kla__rpn, afg_oms1, Operation, pr_excl_OLD, preexcl_OLD, preexclvOLD, pr_incl_OLD, proexcl_OLD, proexclvOLD, pr_exclvOLD, pr_inclvOLD, pr_excl_NEW, preexcl_NEW, preexclvNEW, pr_incl_NEW, proexcl_NEW, proexclvNEW, pr_exclvNEW, pr_inclvNEW)
				SELECT i.bst__ref, i.lyn__ref, i.kla__rpn, i.afg_oms1, @Operation, d.pr_excl_, d.preexcl_, d.preexclv, d.pr_incl_, d.proexcl_, d.proexclv, d.pr_exclv, d.pr_inclv, i.pr_excl_, i.preexcl_, i.preexclv, i.pr_incl_, i.proexcl_, i.proexclv, i.pr_exclv, i.pr_inclv 
				FROM inserted i INNER JOIN
				deleted d ON i.lyn__ref = d.lyn__ref AND (i.pr_excl_ <> d.pr_excl_ OR i.preexcl_ <> d.preexcl_ OR i.preexclv <> d.preexclv OR i.pr_incl_ <> d.pr_incl_ OR i.proexcl_ <> d.proexcl_ OR i.proexclv <> d.proexclv OR i.pr_exclv <> d.pr_exclv OR i.pr_inclv <> d.pr_inclv)

			END;
		END;

END;' 
ALTER TABLE [dbo].[bstlyn__] ENABLE TRIGGER [tr_stl_bstlyn__PriceChanges]
