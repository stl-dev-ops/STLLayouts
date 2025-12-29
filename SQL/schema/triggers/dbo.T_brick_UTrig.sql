SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_brick_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_brick_UTrig] ON [dbo].[brick] FOR UPDATE AS
SET NOCOUNT ON
/* * CASCADE UPDATES TO ''flatRoll'' */
IF UPDATE(brickID)
    BEGIN
       UPDATE flatRoll
       SET flatRoll.brickID = inserted.brickID
       FROM flatRoll, deleted, inserted
       WHERE deleted.brickID = flatRoll.brickID
    END

/* * CASCADE UPDATES TO ''flatRollSpool'' */
IF UPDATE(brickID)
    BEGIN
       UPDATE flatRollSpool
       SET flatRollSpool.brickID = inserted.brickID
       FROM flatRollSpool, deleted, inserted
       WHERE deleted.brickID = flatRollSpool.brickID
    END

/* * PREVENT UPDATES IF NO MATCHING KEY IN ''spoolJob'' */
IF UPDATE(spoolJobID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM spoolJob, inserted WHERE (spoolJob.spoolJobID = inserted.spoolJobID))
            BEGIN
                --RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spoolJob''''.''
                ROLLBACK TRANSACTION
            END
    END
 /* update lastModified */
IF NOT UPDATE(lastModified)
	BEGIN
		UPDATE brick SET lastModified = GETDATE() WHERE brickID in (SELECT DISTINCT brickID FROM inserted)
	END' 
ALTER TABLE [dbo].[brick] ENABLE TRIGGER [T_brick_UTrig]
