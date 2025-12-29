SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_flatRoll_ITrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_flatRoll_ITrig] ON [dbo].[flatRoll] FOR INSERT AS
SET NOCOUNT ON
/* * PREVENT INSERTS IF NO MATCHING KEY IN ''brick'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM brick, inserted WHERE (brick.brickID = inserted.brickID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''brick''''.''
        ROLLBACK TRANSACTION
    END

/* * PREVENT INSERTS IF NO MATCHING KEY IN ''operator'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM operator, inserted WHERE (operator.operatorID = inserted.operatorID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''operator''''.''
        ROLLBACK TRANSACTION
    END

/* * PREVENT INSERTS IF NO MATCHING KEY IN ''spooler'' */
IF (SELECT COUNT(*) FROM inserted) !=
   (SELECT COUNT(*) FROM spooler, inserted WHERE (spooler.spoolerID = inserted.spoolerID))
    BEGIN
        --RAISERROR 44447 ''The record can''''t be added or changed. Referential integrity rules require a related record in table ''''spooler''''.''
        ROLLBACK TRANSACTION
    END' 
ALTER TABLE [dbo].[flatRoll] ENABLE TRIGGER [T_flatRoll_ITrig]
