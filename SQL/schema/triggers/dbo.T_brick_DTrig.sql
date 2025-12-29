SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_brick_DTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER T_brick_DTrig ON [brick] FOR DELETE AS
SET NOCOUNT ON
/* * CASCADE DELETES TO ''flatRoll'' */
DELETE flatRoll FROM deleted, flatRoll WHERE deleted.brickID = flatRoll.brickID

/* * CASCADE DELETES TO ''flatRollSpool'' */
DELETE flatRollSpool FROM deleted, flatRollSpool WHERE deleted.brickID = flatRollSpool.brickID' 
ALTER TABLE [dbo].[brick] ENABLE TRIGGER [T_brick_DTrig]
