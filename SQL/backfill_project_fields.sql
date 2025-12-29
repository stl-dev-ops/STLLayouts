-- Idempotent backfill: populate Project_<field> columns from ProjectDataJson
-- Safety: only updates columns when they are NULL or empty and ProjectDataJson contains the field
-- Run inside the sqlb00 database

SET NOCOUNT ON;

-- Create sanitizer function (idempotent)
IF OBJECT_ID('dbo.SanitizeColumnName', 'FN') IS NULL
BEGIN
    EXEC('CREATE FUNCTION dbo.SanitizeColumnName(@s NVARCHAR(4000)) RETURNS NVARCHAR(4000) AS BEGIN DECLARE @out NVARCHAR(4000) = ''''; DECLARE @i INT = 1; DECLARE @len INT = LEN(@s); DECLARE @c NCHAR(1); WHILE @i <= @len BEGIN SET @c = SUBSTRING(@s, @i, 1); IF ((@c >= ''0'' AND @c <= ''9'') OR (@c >= ''A'' AND @c <= ''Z'') OR (@c >= ''a'' AND @c <= ''z'') OR @c = ''_'') SET @out = @out + @c; ELSE SET @out = @out + ''_''; SET @i = @i + 1; END; IF @out <> '''' AND @out LIKE ''[0-9]%'' SET @out = ''_'' + @out; RETURN @out; END');
END

-- Identify project columns to populate (exclude meta columns)
SELECT COLUMN_NAME
INTO #ProjectCols
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME='stl_GitHubIssues' AND COLUMN_NAME LIKE 'Project_%'
  AND COLUMN_NAME NOT IN ('ProjectCount','ProjectDataJson','ProjectFields','ProjectFieldPairs','ProjectTitles');

-- Cursor through rows with ProjectDataJson not null
DECLARE row_cursor CURSOR LOCAL FAST_FORWARD FOR
SELECT Id, ProjectDataJson
FROM dbo.stl_GitHubIssues
WHERE ProjectDataJson IS NOT NULL AND LTRIM(RTRIM(ProjectDataJson)) <> '';

OPEN row_cursor;
DECLARE @Id BIGINT; DECLARE @json NVARCHAR(MAX);
FETCH NEXT FROM row_cursor INTO @Id, @json;

WHILE @@FETCH_STATUS = 0
BEGIN
    BEGIN TRY
        -- Enumerate project -> field -> value using OPENJSON + CROSS APPLY
        DECLARE @projName NVARCHAR(4000), @fieldName NVARCHAR(4000), @fieldValue NVARCHAR(MAX), @col NVARCHAR(4000), @sql NVARCHAR(MAX);

        -- Use a temp table to store extracted key/value pairs
        IF OBJECT_ID('tempdb..#Pairs') IS NOT NULL DROP TABLE #Pairs;
        CREATE TABLE #Pairs (FieldName NVARCHAR(4000), FieldValue NVARCHAR(MAX));

        INSERT INTO #Pairs (FieldName, FieldValue)
        SELECT f.[key], f.[value]
        FROM OPENJSON(@json) p
        CROSS APPLY OPENJSON(p.[value]) f;

        DECLARE p_cursor CURSOR LOCAL FAST_FORWARD FOR SELECT FieldName, FieldValue FROM #Pairs;
        OPEN p_cursor; FETCH NEXT FROM p_cursor INTO @fieldName, @fieldValue;
        WHILE @@FETCH_STATUS = 0
        BEGIN
            SET @col = 'Project_' + dbo.SanitizeColumnName(@fieldName);
            IF EXISTS(SELECT 1 FROM #ProjectCols WHERE COLUMN_NAME = @col)
            BEGIN
                -- update only when null or empty
                SET @sql = N'UPDATE dbo.stl_GitHubIssues SET [' + @col + N'] = @val WHERE Id = @id AND ([' + @col + N'] IS NULL OR [' + @col + N'] = '''')';
                EXEC sp_executesql @sql, N'@val NVARCHAR(MAX), @id BIGINT', @val = @fieldValue, @id = @Id;
            END
            FETCH NEXT FROM p_cursor INTO @fieldName, @fieldValue;
        END
        CLOSE p_cursor; DEALLOCATE p_cursor;
        DROP TABLE #Pairs;
    END TRY
    BEGIN CATCH
        -- log and continue
        DECLARE @err NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT 'Row backfill error for Id=' + CAST(@Id AS NVARCHAR(50)) + ': ' + @err;
    END CATCH

    FETCH NEXT FROM row_cursor INTO @Id, @json;
END

CLOSE row_cursor; DEALLOCATE row_cursor;

DROP TABLE IF EXISTS #ProjectCols;

PRINT 'Backfill completed';
GO
