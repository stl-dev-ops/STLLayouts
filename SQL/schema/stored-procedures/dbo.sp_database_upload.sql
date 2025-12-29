SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER OFF
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_database_upload]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_database_upload] AS' 
END

ALTER proc [dbo].[sp_database_upload] 
as
begin
  declare @path varchar(1000);
  set @path='\\CERM-ENGINE\Database_Upload\bak\superiort.bak';
  BACKUP DATABASE [sqlb00] to DISK=@path WITH COPY_ONLY, INIT;
end

