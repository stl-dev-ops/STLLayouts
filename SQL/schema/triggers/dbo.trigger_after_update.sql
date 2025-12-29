SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trigger_after_update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER trigger_after_update
   ON  drgers__
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
declare @newvalue_fr varchar(6);
declare @oldvalue_fr varchar(6);

declare @newvalue_lm varchar(6);
declare @oldvalue_lm varchar(6);

declare @newvalue_rg varchar(6);
declare @oldvalue_rg varchar(6);

declare @drg__ref varchar(6);
declare @old_description varchar(50);
declare @new_description varchar(50);



select 
@oldvalue_fr = srtfrref, 
@oldvalue_lm = srtlmref, 
@oldvalue_rg = srtrgref, 

@old_description = drg__oms 
from deleted

select 
@newvalue_fr = srtfrref, 
@newvalue_lm = srtlmref, 
@newvalue_rg = srtrgref, 

@drg__ref = drg__ref, 
@new_description = drg__oms 

from inserted

insert into triggerondrgers 
values(
SYSTEM_USER, 
GETDATE(), 

@oldvalue_fr, 
@newvalue_fr, 

@oldvalue_lm, 
@newvalue_lm, 

@oldvalue_rg, 
@newvalue_rg, 

@drg__ref, 
@old_description, 
@new_description)


END' 
ALTER TABLE [dbo].[drgers__] ENABLE TRIGGER [trigger_after_update]
