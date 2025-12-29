SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER OFF
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanitizeColumnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION dbo.SanitizeColumnName(@s NVARCHAR(4000)) RETURNS NVARCHAR(4000) AS BEGIN DECLARE @out NVARCHAR(4000) = ''''; DECLARE @i INT = 1; DECLARE @len INT = LEN(@s); DECLARE @c NCHAR(1); WHILE @i <= @len BEGIN SET @c = SUBSTRING(@s, @i, 1); IF ((@c >= ''0'' AND @c <= ''9'') OR (@c >= ''A'' AND @c <= ''Z'') OR (@c >= ''a'' AND @c <= ''z'') OR @c = ''_'') SET @out = @out + @c; ELSE SET @out = @out + ''_''; SET @i = @i + 1; END; IF @out <> '''' AND @out LIKE ''[0-9]%'' SET @out = ''_'' + @out; RETURN @out; END' 
END

