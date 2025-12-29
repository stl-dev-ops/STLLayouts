SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_spoolJob_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_spoolJob_UTrig] ON [dbo].[spoolJob] FOR UPDATE AS
SET NOCOUNT ON
/* * CASCADE UPDATES TO ''brick'' */
IF UPDATE(spoolJobID)
    BEGIN
       UPDATE brick
       SET brick.spoolJobID = inserted.spoolJobID
       FROM brick, deleted, inserted
       WHERE deleted.spoolJobID = brick.spoolJobID
    END

/* * CASCADE UPDATES TO ''spool'' */
IF UPDATE(spoolJobID)
    BEGIN
       UPDATE spool
       SET spool.spoolJobID = inserted.spoolJobID
       FROM spool, deleted, inserted
       WHERE deleted.spoolJobID = spool.spoolJobID
    END

/* * CASCADE UPDATES TO ''spoolJobQtyCalculation'' */
IF UPDATE(spoolJobID)
    BEGIN
       UPDATE spoolJobQtyCalculation
       SET spoolJobQtyCalculation.spoolJobID = inserted.spoolJobID
       FROM spoolJobQtyCalculation, deleted, inserted
       WHERE deleted.spoolJobID = spoolJobQtyCalculation.spoolJobID
    END

/* * CASCADE UPDATES TO ''waste'' */
IF UPDATE(spoolJobID)
    BEGIN
       UPDATE waste
       SET waste.spoolJobID = inserted.spoolJobID
       FROM waste, deleted, inserted
       WHERE deleted.spoolJobID = waste.spoolJobID
    END
    
 /* update lastModified */
IF NOT UPDATE(lastModified)
	BEGIN
		UPDATE spoolJob SET lastModified = GETDATE() WHERE spoolJobID in (SELECT DISTINCT spoolJobID FROM inserted)
	END' 
ALTER TABLE [dbo].[spoolJob] ENABLE TRIGGER [T_spoolJob_UTrig]
