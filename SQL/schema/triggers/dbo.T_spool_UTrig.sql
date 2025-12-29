SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_spool_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_spool_UTrig] ON [dbo].[spool] FOR UPDATE AS
SET NOCOUNT ON
/* * CASCADE UPDATES TO ''flatRollSpool'' */
IF UPDATE(spoolID)
    BEGIN
       UPDATE flatRollSpool
       SET flatRollSpool.spoolID = inserted.spoolID
       FROM flatRollSpool, deleted, inserted
       WHERE deleted.spoolID = flatRollSpool.spoolID
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
		UPDATE spool SET lastModified = GETDATE() WHERE spoolID in (SELECT DISTINCT spoolID FROM inserted)
	END' 
ALTER TABLE [dbo].[spool] ENABLE TRIGGER [T_spool_UTrig]
