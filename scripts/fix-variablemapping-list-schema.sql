-- Fix VariableMapping schema for list/collection mappings (idempotent)
USE sqlb00;
GO

-- Add MappingKind to stlLayouts_VariableMapping
IF NOT EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping')
      AND name = 'MappingKind'
)
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping
        ADD MappingKind INT NOT NULL CONSTRAINT DF_stlLayouts_VariableMapping_MappingKind DEFAULT (0);
    PRINT 'Added MappingKind column';
END

-- Add CollectionName to stlLayouts_VariableMapping
IF NOT EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping')
      AND name = 'CollectionName'
)
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping
        ADD CollectionName NVARCHAR(200) NULL;
    PRINT 'Added CollectionName column';
END

-- Add FieldKey to stlLayouts_VariableMapping
IF NOT EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping')
      AND name = 'FieldKey'
)
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping
        ADD FieldKey NVARCHAR(200) NULL;
    PRINT 'Added FieldKey column';
END

PRINT '=========================================';
PRINT 'VariableMapping list/collection schema updated successfully';
PRINT '=========================================';
GO
