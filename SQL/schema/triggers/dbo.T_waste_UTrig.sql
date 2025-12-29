SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_waste_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_waste_UTrig] ON [dbo].[waste] FOR UPDATE AS
SET NOCOUNT ON
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
		UPDATE waste SET lastModified = GETDATE() WHERE wasteID in (SELECT DISTINCT wasteID FROM inserted)
	END' 
ALTER TABLE [dbo].[waste] ENABLE TRIGGER [T_waste_UTrig]
