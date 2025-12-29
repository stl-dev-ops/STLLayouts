SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[T_spoolJob_DTrig]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER T_spoolJob_DTrig ON [spoolJob] FOR DELETE AS
SET NOCOUNT ON
/* * CASCADE DELETES TO ''brick'' */
DELETE brick FROM deleted, brick WHERE deleted.spoolJobID = brick.spoolJobID

/* * CASCADE DELETES TO ''spool'' */
DELETE spool FROM deleted, spool WHERE deleted.spoolJobID = spool.spoolJobID

/* * CASCADE DELETES TO ''spoolJobQtyCalculation'' */
DELETE spoolJobQtyCalculation FROM deleted, spoolJobQtyCalculation WHERE deleted.spoolJobID = spoolJobQtyCalculation.spoolJobID

/* * CASCADE DELETES TO ''waste'' */
DELETE waste FROM deleted, waste WHERE deleted.spoolJobID = waste.spoolJobID' 
ALTER TABLE [dbo].[spoolJob] ENABLE TRIGGER [T_spoolJob_DTrig]
