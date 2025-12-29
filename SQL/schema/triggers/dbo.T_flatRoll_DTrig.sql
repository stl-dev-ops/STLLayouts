SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_flatRoll_DTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER T_flatRoll_DTrig ON [flatRoll] FOR DELETE AS
SET NOCOUNT ON
/* * CASCADE DELETES TO ''flatRollSpool'' */
DELETE flatRollSpool FROM deleted, flatRollSpool WHERE deleted.flatRollID = flatRollSpool.flatRollID' 
ALTER TABLE [dbo].[flatRoll] ENABLE TRIGGER [T_flatRoll_DTrig]
