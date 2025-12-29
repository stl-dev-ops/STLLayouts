SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tr_crm_konpkl___del_sync_cerm8]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tr_crm_konpkl___del_sync_cerm8]
   ON  [dbo].[konpkl__]
   AFTER DELETE
AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   SET NOCOUNT ON;
   
   IF EXISTS (SELECT [rowid] 
                FROM [cerm8_event_hooks__] 
               WHERE [domain__] = ''Customers'' 
                 AND [hook____] = ''SearchIndex'')
   BEGIN
      -- Insert statements for trigger here
      INSERT INTO dbo.w_bus___ (msg_type, det__ref, cerm8_hook , data____)
      SELECT ''Cerm8Event'', Deleted.kla__ref + Deleted.knp__ref, ''Customers/SearchIndex'', ''{"type" : "Contact" , "uuid" : "'' + convert(nvarchar(36), Deleted.uuid) + ''", "kla__ref" : "'' + Deleted.kla__ref + ''", "knp__ref" : "'' + Deleted.knp__ref + ''" }''        
      FROM Deleted
   END
END' 
ALTER TABLE [dbo].[konpkl__] ENABLE TRIGGER [tr_crm_konpkl___del_sync_cerm8]
