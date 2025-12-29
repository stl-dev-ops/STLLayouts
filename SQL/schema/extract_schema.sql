-- Schema extraction script for sqlb00 database
-- Generates CREATE scripts for all database objects
-- Run in SSMS with Results to Text mode (Ctrl+T) and set max characters to 8192

SET NOCOUNT ON;

DECLARE @SchemaPath nvarchar(500) = 'S:\SoftwareDevelopment\Projects\SQL\schema\';

-- =============================================
-- Export Table Definitions
-- =============================================
PRINT '-- =============================================';
PRINT '-- TABLES';
PRINT '-- =============================================';

DECLARE @TableName nvarchar(256), @SchemaName nvarchar(128);
DECLARE table_cursor CURSOR FOR
SELECT s.name AS schema_name, t.name AS table_name
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
WHERE t.is_ms_shipped = 0
ORDER BY s.name, t.name;

OPEN table_cursor;
FETCH NEXT FROM table_cursor INTO @SchemaName, @TableName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '';
    PRINT '-- File: tables/' + @SchemaName + '.' + @TableName + '.sql';
    PRINT '-- =============================================';
    
    -- Get table definition using sp_helptext equivalent
    DECLARE @Sql nvarchar(max);
    SET @Sql = 'CREATE TABLE [' + @SchemaName + '].[' + @TableName + '] (';
    
    -- Get columns
    SELECT @Sql = @Sql + CHAR(13) + CHAR(10) + '    [' + c.name + '] ' + 
        t.name + 
        CASE 
            WHEN t.name IN ('char', 'varchar', 'nchar', 'nvarchar') 
            THEN '(' + CASE WHEN c.max_length = -1 THEN 'MAX' ELSE CAST(c.max_length AS varchar) END + ')'
            WHEN t.name IN ('decimal', 'numeric')
            THEN '(' + CAST(c.precision AS varchar) + ',' + CAST(c.scale AS varchar) + ')'
            ELSE ''
        END +
        CASE WHEN c.is_nullable = 0 THEN ' NOT NULL' ELSE ' NULL' END +
        CASE WHEN c.is_identity = 1 THEN ' IDENTITY(' + CAST(IDENT_SEED(@SchemaName + '.' + @TableName) AS varchar) + ',' + CAST(IDENT_INCR(@SchemaName + '.' + @TableName) AS varchar) + ')' ELSE '' END +
        ','
    FROM sys.columns c
    INNER JOIN sys.types t ON c.user_type_id = t.user_type_id
    WHERE c.object_id = OBJECT_ID(@SchemaName + '.' + @TableName)
    ORDER BY c.column_id;
    
    -- Remove trailing comma
    SET @Sql = LEFT(@Sql, LEN(@Sql) - 1);
    SET @Sql = @Sql + CHAR(13) + CHAR(10) + ');';
    
    PRINT @Sql;
    PRINT 'GO';
    
    FETCH NEXT FROM table_cursor INTO @SchemaName, @TableName;
END;

CLOSE table_cursor;
DEALLOCATE table_cursor;

-- =============================================
-- Export Views
-- =============================================
PRINT '';
PRINT '-- =============================================';
PRINT '-- VIEWS';
PRINT '-- =============================================';

DECLARE @ViewName nvarchar(256);
DECLARE view_cursor CURSOR FOR
SELECT s.name AS schema_name, v.name AS view_name
FROM sys.views v
INNER JOIN sys.schemas s ON v.schema_id = s.schema_id
WHERE v.is_ms_shipped = 0
ORDER BY s.name, v.name;

OPEN view_cursor;
FETCH NEXT FROM view_cursor INTO @SchemaName, @ViewName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '';
    PRINT '-- File: views/' + @SchemaName + '.' + @ViewName + '.sql';
    PRINT '-- =============================================';
    
    DECLARE @ViewDef nvarchar(max);
    SELECT @ViewDef = OBJECT_DEFINITION(OBJECT_ID(@SchemaName + '.' + @ViewName));
    
    IF @ViewDef IS NOT NULL
    BEGIN
        PRINT @ViewDef;
        PRINT 'GO';
    END
    ELSE
    BEGIN
        PRINT '-- Unable to retrieve view definition';
    END
    
    FETCH NEXT FROM view_cursor INTO @SchemaName, @ViewName;
END;

CLOSE view_cursor;
DEALLOCATE view_cursor;

-- =============================================
-- Export Stored Procedures
-- =============================================
PRINT '';
PRINT '-- =============================================';
PRINT '-- STORED PROCEDURES';
PRINT '-- =============================================';

DECLARE @ProcName nvarchar(256);
DECLARE proc_cursor CURSOR FOR
SELECT s.name AS schema_name, p.name AS proc_name
FROM sys.procedures p
INNER JOIN sys.schemas s ON p.schema_id = s.schema_id
WHERE p.is_ms_shipped = 0
ORDER BY s.name, p.name;

OPEN proc_cursor;
FETCH NEXT FROM proc_cursor INTO @SchemaName, @ProcName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '';
    PRINT '-- File: stored-procedures/' + @SchemaName + '.' + @ProcName + '.sql';
    PRINT '-- =============================================';
    
    DECLARE @ProcDef nvarchar(max);
    SELECT @ProcDef = OBJECT_DEFINITION(OBJECT_ID(@SchemaName + '.' + @ProcName));
    
    IF @ProcDef IS NOT NULL
    BEGIN
        PRINT @ProcDef;
        PRINT 'GO';
    END
    ELSE
    BEGIN
        PRINT '-- Unable to retrieve procedure definition';
    END
    
    FETCH NEXT FROM proc_cursor INTO @SchemaName, @ProcName;
END;

CLOSE proc_cursor;
DEALLOCATE proc_cursor;

-- =============================================
-- Export Functions
-- =============================================
PRINT '';
PRINT '-- =============================================';
PRINT '-- FUNCTIONS';
PRINT '-- =============================================';

DECLARE @FuncName nvarchar(256);
DECLARE func_cursor CURSOR FOR
SELECT s.name AS schema_name, o.name AS func_name
FROM sys.objects o
INNER JOIN sys.schemas s ON o.schema_id = s.schema_id
WHERE o.type IN ('FN', 'IF', 'TF') -- Scalar, Inline Table-Valued, Table-Valued
  AND o.is_ms_shipped = 0
ORDER BY s.name, o.name;

OPEN func_cursor;
FETCH NEXT FROM func_cursor INTO @SchemaName, @FuncName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '';
    PRINT '-- File: functions/' + @SchemaName + '.' + @FuncName + '.sql';
    PRINT '-- =============================================';
    
    DECLARE @FuncDef nvarchar(max);
    SELECT @FuncDef = OBJECT_DEFINITION(OBJECT_ID(@SchemaName + '.' + @FuncName));
    
    IF @FuncDef IS NOT NULL
    BEGIN
        PRINT @FuncDef;
        PRINT 'GO';
    END
    ELSE
    BEGIN
        PRINT '-- Unable to retrieve function definition';
    END
    
    FETCH NEXT FROM func_cursor INTO @SchemaName, @FuncName;
END;

CLOSE func_cursor;
DEALLOCATE func_cursor;

-- =============================================
-- Export Triggers
-- =============================================
PRINT '';
PRINT '-- =============================================';
PRINT '-- TRIGGERS';
PRINT '-- =============================================';

DECLARE @TriggerName nvarchar(256), @ParentTable nvarchar(256);
DECLARE trigger_cursor CURSOR FOR
SELECT s.name AS schema_name, tr.name AS trigger_name, OBJECT_NAME(tr.parent_id) AS parent_table
FROM sys.triggers tr
INNER JOIN sys.objects o ON tr.object_id = o.object_id
INNER JOIN sys.schemas s ON o.schema_id = s.schema_id
WHERE tr.is_ms_shipped = 0
  AND tr.parent_class = 1  -- Object or column triggers
ORDER BY s.name, tr.name;

OPEN trigger_cursor;
FETCH NEXT FROM trigger_cursor INTO @SchemaName, @TriggerName, @ParentTable;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '';
    PRINT '-- File: triggers/' + @SchemaName + '.' + @TriggerName + '.sql';
    PRINT '-- Parent Table: ' + @ParentTable;
    PRINT '-- =============================================';
    
    DECLARE @TriggerDef nvarchar(max);
    SELECT @TriggerDef = OBJECT_DEFINITION(OBJECT_ID(@SchemaName + '.' + @TriggerName));
    
    IF @TriggerDef IS NOT NULL
    BEGIN
        PRINT @TriggerDef;
        PRINT 'GO';
    END
    ELSE
    BEGIN
        PRINT '-- Unable to retrieve trigger definition';
    END
    
    FETCH NEXT FROM trigger_cursor INTO @SchemaName, @TriggerName, @ParentTable;
END;

CLOSE trigger_cursor;
DEALLOCATE trigger_cursor;

PRINT '';
PRINT '-- =============================================';
PRINT '-- Schema extraction complete';
PRINT '-- =============================================';
