SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udtf_crm_CustomerSearch]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION dbo.udtf_crm_CustomerSearch (@SearchString NVARCHAR(100))
RETURNS @Result TABLE (kla__ref NVARCHAR(6))
BEGIN
   SET @SearchString = ''%'' + @SearchString + ''%'';

   INSERT INTO @Result
   SELECT kla__ref
     FROM klabas__
	WHERE naam____ LIKE @SearchString
   UNION
   SELECT kla__ref
     FROM konpkl__
	WHERE in_gebr_ = ''Y''
	  AND (knp__vnm LIKE @SearchString OR knp__nam LIKE @SearchString);

   RETURN
END' 
END

