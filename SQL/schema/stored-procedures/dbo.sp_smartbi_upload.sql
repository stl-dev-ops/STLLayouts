SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER OFF
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_smartbi_upload]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_smartbi_upload] AS' 
END

ALTER PROCEDURE [dbo].[sp_smartbi_upload] 
AS
BEGIN
  DECLARE @path varchar(1000);
  SET @path=REPLACE('\\Unknown\SmartBI_Upload\bak\103630@sqlb00.bak','Unknown','CERM-ENGINE');
  BACKUP DATABASE [sqlb00] to DISK=@path WITH COMPRESSION, COPY_ONLY, INIT;
END
