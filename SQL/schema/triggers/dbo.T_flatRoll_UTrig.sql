SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_flatRoll_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_flatRoll_UTrig] ON [dbo].[flatRoll] FOR UPDATE AS
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

/* * CASCADE UPDATES TO ''flatRollSpool'' */
IF UPDATE(flatRollID)
    BEGIN
       UPDATE flatRollSpool
       SET flatRollSpool.flatRollID = inserted.flatRollID
       FROM flatRollSpool, deleted, inserted
       WHERE deleted.flatRollID = flatRollSpool.flatRollID
    END

/* * PREVENT UPDATES IF NO MATCHING KEY IN ''operator'' */
IF UPDATE(operatorID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM operator, inserted WHERE (operator.operatorID = inserted.operatorID))
            BEGIN
                --RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''operator''''.''
                ROLLBACK TRANSACTION
            END
    END

/* * PREVENT UPDATES IF NO MATCHING KEY IN ''spooler'' */
IF UPDATE(spoolerID)
    BEGIN
        IF (SELECT COUNT(*) FROM inserted) !=
           (SELECT COUNT(*) FROM spooler, inserted WHERE (spooler.spoolerID = inserted.spoolerID))
            BEGIN
                --RAISERROR 44446 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spooler''''.''
                ROLLBACK TRANSACTION
            END
    END
 /* update lastModified */
IF NOT UPDATE(lastModified)
	BEGIN
		UPDATE flatRoll SET lastModified = GETDATE() WHERE flatRollID in (SELECT DISTINCT flatRollID FROM inserted)
	END' 
ALTER TABLE [dbo].[flatRoll] ENABLE TRIGGER [T_flatRoll_UTrig]
