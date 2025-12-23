-- Fix VariableMapping schema
USE sqlb00;
GO

-- Add missing columns to stlLayouts_VariableMapping
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping') AND name = 'SqlExpression')
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping ADD SqlExpression NVARCHAR(MAX);
    PRINT 'Added SqlExpression column';
END

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping') AND name = 'Description')
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping ADD [Description] NVARCHAR(1000);
    PRINT 'Added Description column';
END

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping') AND name = 'CreatedBy')
BEGIN
    -- Add with default value
    ALTER TABLE dbo.stlLayouts_VariableMapping ADD CreatedBy NVARCHAR(100) NOT NULL DEFAULT 'System';
    PRINT 'Added CreatedBy column';
END

-- Drop ModifiedDate column if it exists (not in EF model)
IF EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbo.stlLayouts_VariableMapping') AND name = 'ModifiedDate')
BEGIN
    ALTER TABLE dbo.stlLayouts_VariableMapping DROP COLUMN ModifiedDate;
    PRINT 'Removed ModifiedDate column';
END

PRINT '=========================================';
PRINT 'VariableMapping schema updated successfully';
PRINT '=========================================';
GO
