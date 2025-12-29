SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_spoolJobQtyCalculation_UTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_spoolJobQtyCalculation_UTrig] ON [dbo].[spoolJobQtyCalculation] FOR UPDATE AS
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
		UPDATE spoolJobQtyCalculation SET lastModified = GETDATE() WHERE spoolJobQtyCalculationID in (SELECT DISTINCT spoolJobQtyCalculationID FROM inserted)
	END
    ' 
ALTER TABLE [dbo].[spoolJobQtyCalculation] ENABLE TRIGGER [T_spoolJobQtyCalculation_UTrig]
