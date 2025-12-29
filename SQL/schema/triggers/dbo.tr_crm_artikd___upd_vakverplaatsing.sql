SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_crm_artikd___upd_vakverplaatsing]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tr_crm_artikd___upd_vakverplaatsing]
   ON  [dbo].[artikd__]
   AFTER UPDATE
AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   SET NOCOUNT ON;
   
   IF UPDATE (vak__ref)
      BEGIN
	
         DECLARE @datum___ datetime,
                 @uur_____ nvarchar(6),
                 @wuser___ nvarchar(50),
                 @soort___ nvarchar(1)
           
         -- Datum zonder het uur
         SET @datum___ = DateAdd(day, DateDiff(day, 0, getdate()), 0)
         -- Enkel het uur zonder de datum, met een spatie ervoor
         SET @uur_____ = '' '' + SUBSTRING(CONVERT(varchar(24), getdate(), 114),1,5)
         -- Soort voor sku grondstoffen
         SET @soort___ = ''1''
         
         -- User
         IF OBJECT_ID(''tempdb..#CrmSession'') IS NOT NULL
            SET @wuser___ = (SELECT username FROM #CrmSession)
         ELSE
            SET @wuser___ = SYSTEM_USER
   	
         -- Insert statements for trigger here
         INSERT INTO dbo.hisvak__ (soort___, ref_____, sku__ref, datum___, uur_____, wuser___ , vak__old, vak__new, jobnr_archive)
            SELECT @soort___, Inserted.art__ref, Inserted.artd_ref, @datum___, @uur_____, @wuser___, Deleted.vak__ref, Inserted.vak__ref, ''''
            FROM Inserted JOIN Deleted on Inserted.artd_ref = Deleted.artd_ref
            WHERE Inserted.vak__ref <> Deleted.vak__ref
      END   
END' 
ALTER TABLE [dbo].[artikd__] ENABLE TRIGGER [tr_crm_artikd___upd_vakverplaatsing]
