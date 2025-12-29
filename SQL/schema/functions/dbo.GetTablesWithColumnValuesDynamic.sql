SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTablesWithColumnValuesDynamic]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION dbo.GetTablesWithColumnValuesDynamic
(
    @ColumnNames NVARCHAR(MAX),  -- Comma-separated list of column names (e.g., ''col1, col2'')
    @ColumnValues NVARCHAR(MAX)  -- Comma-separated list of values corresponding to the columns (e.g., ''val1, val2'')
)
RETURNS @ResultTables TABLE (TableName NVARCHAR(255))
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX) = N'''';
    DECLARE @crlf NVARCHAR(2) = CHAR(13) + CHAR(10);
    DECLARE @ColumnList NVARCHAR(MAX);
    DECLARE @ValueList NVARCHAR(MAX);
    DECLARE @ParamDefinition NVARCHAR(MAX);
    
    -- Split the column names and values into temporary tables or variables
    DECLARE @Columns TABLE (ColumnName NVARCHAR(128), Position INT);
    DECLARE @Values TABLE (Value NVARCHAR(255), Position INT);

    -- Insert column names and values into temporary tables with an additional "Position" to maintain order
    INSERT INTO @Columns (ColumnName, Position)
    SELECT value, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) 
    FROM STRING_SPLIT(@ColumnNames, '','');

    INSERT INTO @Values (Value, Position)
    SELECT value, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) 
    FROM STRING_SPLIT(@ColumnValues, '','');

    -- Build the dynamic SQL to find tables with matching column names and values
    DECLARE @Counter INT = 1;
    DECLARE @ColumnName NVARCHAR(128);
    DECLARE @ColumnValue NVARCHAR(255);

    -- Iterate over columns and build dynamic WHERE clause
    DECLARE @WhereClause NVARCHAR(MAX) = '''';
    DECLARE column_cursor CURSOR FOR
    SELECT ColumnName, Position 
    FROM @Columns;

    OPEN column_cursor;
    FETCH NEXT FROM column_cursor INTO @ColumnName, @Counter;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT @ColumnValue = Value 
        FROM @Values
        WHERE Position = @Counter;

        IF @Counter > 1
            SET @WhereClause = @WhereClause + '' AND '';
        
        SET @WhereClause = @WhereClause + QUOTENAME(@ColumnName) + '' = @Column'' + CAST(@Counter AS NVARCHAR(10));

        SET @Counter = @Counter + 1;
        FETCH NEXT FROM column_cursor INTO @ColumnName, @Counter;
    END

    CLOSE column_cursor;
    DEALLOCATE column_cursor;

    -- Build dynamic SQL for checking the tables
    SELECT @sql = @sql + 
        ''IF EXISTS (SELECT 1 FROM '' + QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME) + 
        '' WHERE '' + @WhereClause + '')
        -- If the condition is met, select the table name
        INSERT INTO @ResultTables (TableName) VALUES ('''''' + QUOTENAME(TABLE_SCHEMA) + ''.'' + QUOTENAME(TABLE_NAME) + '''''');'' + @crlf
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE COLUMN_NAME IN (SELECT ColumnName FROM @Columns)
    GROUP BY TABLE_SCHEMA, TABLE_NAME
    HAVING COUNT(DISTINCT COLUMN_NAME) = (SELECT COUNT(*) FROM @Columns);

    -- Execute the dynamic SQL
    EXEC sp_executesql @sql, @ParamDefinition;

    RETURN;
END;
' 
END

