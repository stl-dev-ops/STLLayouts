SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_stl_bstlyn__ExpectedShipDateChanges]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jeff
-- Create date: 07-10-2024
-- Description:	save history of changes to sales orders expected ship dates, notify Joey if STL R&D exp ship date changed
-- =============================================
CREATE TRIGGER [dbo].[tr_stl_bstlyn__ExpectedShipDateChanges]
   ON  [dbo].[bstlyn__]   AFTER UPDATE, DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Operation CHAR(1);
	DECLARE @kla__ref nvarchar(6);

	SELECT @kla__ref = d.kla__ref
	FROM deleted d;

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
			INSERT INTO stlSnapShot_ExpectedShipDates(lyn__ref, Old_vrzv_dat, Old_levv_dat)

			SELECT d.lyn__ref, d.vrzv_dat, d.levv_dat 
			FROM deleted d  

			IF (@kla__ref = ''100349'' OR @kla__ref = ''100376'' OR @kla__ref = ''100377'' OR @kla__ref = ''100453'' OR @kla__ref = ''100490'')
				BEGIN
					INSERT INTO stlEmails ([Subject], [Body], [RecipientsCSV])
					SELECT ''STL R&D order deleted: '' +  d.afg_oms1 , ''Order ID: '' +  d.bst__ref + '' Line ID: '' + d.lyn__ref + '' Previous expected ship date: '' + CONVERT(NVARCHAR(10), d.vrzv_dat, 101), ''joeyb@stlinc.com''
					FROM deleted d
				END
		END;
	ELSE
		BEGIN
			IF UPDATE(vrzv_dat) OR UPDATE(levv_dat)
			BEGIN
				INSERT INTO stlSnapShot_ExpectedShipDates(lyn__ref, Old_vrzv_dat, New_vrzv_dat, Old_levv_dat, New_levv_dat)

				SELECT i.lyn__ref, d.vrzv_dat, i.vrzv_dat, d.levv_dat, i.levv_dat 

				FROM 
				inserted i INNER JOIN
				deleted d ON i.lyn__ref = d.lyn__ref AND (i.vrzv_dat <> d.vrzv_dat OR i.levv_dat <> d.levv_dat)

				IF (@kla__ref = ''100349'' OR @kla__ref = ''100376'' OR @kla__ref = ''100377'' OR @kla__ref = ''100453'' OR @kla__ref = ''100490'')
					BEGIN
						INSERT INTO stlEmails ([Subject], [Body], [RecipientsCSV])
						SELECT ''STL R&D Expected Ship or Delivery Date Changed: '' +  d.afg_oms1 , ''Order ID: '' + d.bst__ref + '' Line ID: '' + d.lyn__ref + 
						'' Previous expected ship date: '' + CONVERT(NVARCHAR(10), d.vrzv_dat, 101) + '' New expected ship date: '' + CONVERT(NVARCHAR(10), i.vrzv_dat, 101) + 
						'' Previous expected delivery date: '' + CONVERT(NVARCHAR(10), d.levv_dat, 101) + '' New expected delivery date: '' + CONVERT(NVARCHAR(10), i.levv_dat, 101)
						, ''joeyb@stlinc.com''
						FROM 
						inserted i INNER JOIN
						deleted d ON i.lyn__ref = d.lyn__ref AND (i.vrzv_dat <> d.vrzv_dat OR i.levv_dat <> d.levv_dat)
					END
			END;
		END;

END;' 
ALTER TABLE [dbo].[bstlyn__] ENABLE TRIGGER [tr_stl_bstlyn__ExpectedShipDateChanges]
