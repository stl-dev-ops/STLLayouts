SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udtf_crm_search_programmability]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'--
-- Searches for a specific string in Triggers, Functions, Stored procedures, ...
-- Wildcards in the search strings are allowed. 
--
CREATE FUNCTION [dbo].[udtf_crm_search_programmability] (@SearchString NVARCHAR (255))
RETURNS @ResultTable TABLE (ObjectType NVARCHAR (20),
                            ObjectName NVARCHAR (128),
                            SchemaName NVARCHAR (128),
                            Definition NVARCHAR (MAX))
AS
BEGIN
   DECLARE @WildCard NVARCHAR (257)
   SET @Wildcard = ''%'' + @SearchString + ''%''    

   -- Functions, Stored procedures, View
   INSERT INTO @ResultTable (ObjectType, ObjectName, SchemaName, Definition)
      SELECT CASE sys.objects.type 
                WHEN ''FN'' THEN ''Function''
                WHEN ''IF'' THEN ''Function''
                WHEN ''TF'' THEN ''Function''
                WHEN ''P''  THEN ''Stored Procedure''
                WHEN ''TR'' THEN ''Trigger''
                WHEN ''V''  THEN ''View''
                ELSE sys.objects.type
             END,
             sys.objects.name,
             sys.schemas.name,
             sys.sql_modules.definition                                                               
        FROM sys.sql_modules JOIN sys.objects                                                    
                               ON sys.sql_modules.object_id = sys.objects.object_id              
                             JOIN sys.schemas                                                    
                               ON sys.objects.schema_id  = sys.schemas.schema_id                 
       WHERE sys.objects.is_ms_shipped = 0                                                            
         AND sys.sql_modules.definition LIKE @Wildcard
         AND NOT EXISTS (SELECT 1                                                                     
                           FROM sys.extended_properties                                               
                          WHERE sys.extended_properties.major_id = sys.sql_modules.object_id          
                            AND sys.extended_properties.minor_id = 0                                  
                            AND sys.extended_properties.name     = ''microsoft_database_tools_support'' 
                            AND sys.extended_properties.value    = 1)                                 

   RETURN
END


' 
END

