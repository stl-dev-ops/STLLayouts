SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchAllTablesForNon-ASCIIcharacters]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SearchAllTablesForNon-ASCIIcharacters] AS' 
END
ALTER PROC [dbo].[SearchAllTablesForNon-ASCIIcharacters]
--(
	--@SearchStr nvarchar(100)
--)
AS
BEGIN
    -- I modified Narayana's search script to find all non-ASCII characters
	-- using patindex as suggested by Gerhard Weiss here: https://stackoverflow.com/questions/3891331/find-non-ascii-characters-in-varchar-columns-using-sql-server
	-- Copyright © 2002 Narayana Vyas Kondreddi. All rights reserved.
	-- Purpose: To search all columns of all tables for a given search string
	-- Written by: Narayana Vyas Kondreddi
	-- Site: http://vyaskn.tripod.com
	-- Tested on: SQL Server 7.0 and SQL Server 2000
	-- Date modified: 28th July 2002 22:50 GMT


	CREATE TABLE #Results (ColumnName nvarchar(370), ColumnValue nvarchar(3630), Position int, Invalid_Character nvarchar(10), ASCII_Code nvarchar(10))

	SET NOCOUNT ON

	DECLARE @TableName nvarchar(256), @ColumnName nvarchar(128)--, @SearchStr2 nvarchar(110)
	SET  @TableName = ''
	--SET @SearchStr2 = QUOTENAME('%' + @SearchStr + '%','''')

	WHILE @TableName IS NOT NULL
	BEGIN
		SET @ColumnName = ''
		SET @TableName = 
		(
			SELECT MIN(QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME))
			FROM 	INFORMATION_SCHEMA.TABLES
			WHERE 		TABLE_TYPE = 'BASE TABLE'
				AND	QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME) > @TableName
				AND	OBJECTPROPERTY(
						OBJECT_ID(
							QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME)
							 ), 'IsMSShipped'
						       ) = 0
		)

		WHILE (@TableName IS NOT NULL) AND (@ColumnName IS NOT NULL)
		BEGIN
			SET @ColumnName =
			(
				SELECT MIN(QUOTENAME(COLUMN_NAME))
				FROM 	INFORMATION_SCHEMA.COLUMNS
				WHERE 		TABLE_SCHEMA	= PARSENAME(@TableName, 2)
					AND	TABLE_NAME	= PARSENAME(@TableName, 1)
					AND	DATA_TYPE IN ('char', 'varchar', 'nchar', 'nvarchar')
					AND	QUOTENAME(COLUMN_NAME) > @ColumnName
			)
	
			IF @ColumnName IS NOT NULL
			BEGIN
				INSERT INTO #Results
				EXEC
				(
					'SELECT ''' + @TableName + '.' + @ColumnName + ''', 
					LEFT(' + @ColumnName + ', 3630), 
					patindex(''%[^ !-~]%'' COLLATE Latin1_General_BIN,' + @ColumnName + '), 
					substring(' + @ColumnName + ',patindex(''%[^ !-~]%'' COLLATE Latin1_General_BIN,' + @ColumnName + '),1), 
					ascii(substring(' + @ColumnName + ',patindex(''%[^ !-~]%'' COLLATE Latin1_General_BIN,' + @ColumnName + '),1))

					FROM ' + @TableName + ' (NOLOCK) ' +

					' WHERE patindex(''%[^ !-~]%'' COLLATE Latin1_General_BIN,' + @ColumnName + ') > 0'
				)
			END
		END	
	END

	SELECT ColumnName, ColumnValue, Position, Invalid_Character, ASCII_Code FROM #Results
END

