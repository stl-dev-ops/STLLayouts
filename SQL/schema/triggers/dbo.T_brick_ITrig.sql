SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_brick_ITrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_brick_ITrig] ON [dbo].[brick] FOR INSERT AS
SET NOCOUNT ON
/* * PREVENT INSERTS IF NO MATCHING KEY IN ''spoolJob'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM spoolJob, inserted WHERE (spoolJob.spoolJobID = inserted.spoolJobID))
    BEGIN
       -- RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spoolJob''''.''
        ROLLBACK TRANSACTION
    END' 
ALTER TABLE [dbo].[brick] ENABLE TRIGGER [T_brick_ITrig]
