SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_flatRollSpool_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_flatRollSpool_UTrig] ON [dbo].[flatRollSpool] FOR UPDATE AS
SET NOCOUNT ON
/* * PREVENT UPDATES IF NO MATCHING KEY IN ''brick'' */
IF UPDATE(brickID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM brick, inserted WHERE (brick.brickID = inserted.brickID))
            BEGIN
               -- RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''brick''''.''
                ROLLBACK TRANSACTION
            END
    END

/* * PREVENT UPDATES IF NO MATCHING KEY IN ''flatRoll'' */
IF UPDATE(flatRollID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM flatRoll, inserted WHERE (flatRoll.flatRollID = inserted.flatRollID))
            BEGIN
                --RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''flatRoll''''.''
                ROLLBACK TRANSACTION
            END
    END

/* * PREVENT UPDATES IF NO MATCHING KEY IN ''spool'' */
IF UPDATE(spoolID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM spool, inserted WHERE (spool.spoolID = inserted.spoolID))
            BEGIN
                --RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spool''''.''
                ROLLBACK TRANSACTION
            END
    END
 /* update lastModified */
IF NOT UPDATE(lastModified)
	BEGIN
		UPDATE flatRollSpool SET lastModified = GETDATE() WHERE flatRollSpoolID in (SELECT DISTINCT flatRollSpoolID FROM inserted)
	END' 
ALTER TABLE [dbo].[flatRollSpool] ENABLE TRIGGER [T_flatRollSpool_UTrig]
