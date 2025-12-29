SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_crm_hlfvrd___del_vakverplaatsing]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tr_crm_hlfvrd___del_vakverplaatsing]
   ON  [dbo].[hlfvrd__]
   AFTER DELETE
AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   SET NOCOUNT ON;
	
   DECLARE @datum___ datetime,
           @uur_____ nvarchar(6),
           @wuser___ nvarchar(50),
           @soort___ nvarchar(1)
           
   -- Datum zonder het uur
   SET @datum___ = DateAdd(day, DateDiff(day, 0, getdate()), 0)
   -- Enkel het uur zonder de datum, met een spatie ervoor
   SET @uur_____ = '' '' + SUBSTRING(CONVERT(varchar(24), getdate(), 114),1,5)
   -- Soort voor halffabrikaten
   SET @soort___ = ''3''
   
   -- User
   IF OBJECT_ID(''tempdb..#CrmSession'') IS NOT NULL
      SET @wuser___ = (SELECT username FROM #CrmSession)
   ELSE
      SET @wuser___ = SYSTEM_USER
	
   -- Insert statements for trigger here
   INSERT INTO dbo.hisvak__ (soort___, ref_____, sku__ref, datum___, uur_____, wuser___ , vak__old, vak__new, jobnr_archive)
      SELECT @soort___, '''', hlf__ref, @datum___, @uur_____, @wuser___, vak__ref, '''', ''''
      FROM Deleted
      WHERE vak__ref <> '''' AND vak__ref IS NOT NULL
END
' 
ALTER TABLE [dbo].[hlfvrd__] ENABLE TRIGGER [tr_crm_hlfvrd___del_vakverplaatsing]
