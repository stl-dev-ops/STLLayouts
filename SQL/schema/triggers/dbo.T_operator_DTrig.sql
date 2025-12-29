SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_operator_DTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[T_operator_DTrig] ON [dbo].[operator] FOR DELETE AS
SET NOCOUNT ON
/* * PREVENT DELETES IF DEPENDENT RECORDS IN ''flatRoll'' */
IF (SELECT COUNT(*) FROM deleted, flatRoll WHERE (deleted.operatorID = flatRoll.operatorID)) > 0
    BEGIN
        --RAISERROR 44445 ''The record can''''t be deleted or changed. Since related records exist in table ''''flatRoll'''', referential integrity rules would be violated.''
        ROLLBACK TRANSACTION
    END' 
ALTER TABLE [dbo].[operator] ENABLE TRIGGER [T_operator_DTrig]
