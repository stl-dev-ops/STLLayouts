SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[RESGRD__trigger_after_update_]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[RESGRD__trigger_after_update_]
   ON  [dbo].[resgrd__]
   AFTER UPDATE
AS  
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
declare @kla__ref char (6);  
declare @res__ref char (6);   
    
declare @newvalue_dat_resv date;
declare @oldvalue_dat_resv date;

declare @newvalue_uur_resv char(6);
declare @oldvalue_uur_resv char(6);

declare @newvalue_ord__ref char(6);
declare @oldvalue_ord__ref char(6);

declare @newvalue_art__ref char(6);
declare @oldvalue_art__ref char(6);

declare @newvalue_reserve_ float;
declare @oldvalue_reserve_ float;

select 
@kla__ref = kla__ref,
@res__ref = res__ref,

@oldvalue_dat_resv = dat_resv, 
@oldvalue_uur_resv = uur_resv, 
@oldvalue_ord__ref = ord__ref,
@oldvalue_art__ref = art__ref,
@oldvalue_art__ref = art__ref,
@oldvalue_reserve_ = reserve_
from deleted

select
@newvalue_dat_resv = dat_resv, 
@newvalue_uur_resv = uur_resv, 
@newvalue_ord__ref = ord__ref,
@newvalue_art__ref = art__ref,
@newvalue_art__ref = art__ref,
@newvalue_reserve_ = reserve_
from inserted

insert into triggeronresgrd 
values(
SYSTEM_USER, 
GETDATE(), 

@kla__ref,
@res__ref,

@oldvalue_dat_resv,
@newvalue_dat_resv,

@oldvalue_uur_resv,
@newvalue_uur_resv,

@oldvalue_ord__ref,
@newvalue_ord__ref,

@oldvalue_art__ref,
@newvalue_art__ref,

@oldvalue_reserve_,
@newvalue_reserve_)


END' 
ALTER TABLE [dbo].[resgrd__] ENABLE TRIGGER [RESGRD__trigger_after_update_]
