SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_flatRollSpool_ITrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_flatRollSpool_ITrig] ON [dbo].[flatRollSpool] FOR INSERT AS
SET NOCOUNT ON
/* * PREVENT INSERTS IF NO MATCHING KEY IN ''brick'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM brick, inserted WHERE (brick.brickID = inserted.brickID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''brick''''.''
        ROLLBACK TRANSACTION
    END

/* * PREVENT INSERTS IF NO MATCHING KEY IN ''flatRoll'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM flatRoll, inserted WHERE (flatRoll.flatRollID = inserted.flatRollID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''flatRoll''''.''
        ROLLBACK TRANSACTION
    END

/* * PREVENT INSERTS IF NO MATCHING KEY IN ''spool'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM spool, inserted WHERE (spool.spoolID = inserted.spoolID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spool''''.''
        ROLLBACK TRANSACTION
    END' 
ALTER TABLE [dbo].[flatRollSpool] ENABLE TRIGGER [T_flatRollSpool_ITrig]
