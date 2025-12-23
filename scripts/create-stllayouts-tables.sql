-- SQL Script: Create STL Layouts tables in sqlb00 database
-- These tables are created in the production CERM database with stlLayouts_ prefix
-- Run this script against: Data Source=STL-SQL1\CRMDB;Initial Catalog=sqlb00

-- ============================================================================
-- stlLayouts_Template table
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.stlLayouts_Template') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.stlLayouts_Template (
        TemplateId UNIQUEIDENTIFIER PRIMARY KEY NOT NULL DEFAULT NEWID(),
        TemplateName NVARCHAR(255) NOT NULL UNIQUE,
        Description NVARCHAR(MAX),
        Category NVARCHAR(100),
        FilePath NVARCHAR(MAX) NOT NULL,
        FileExtension NVARCHAR(10),
        CurrentVersion INT DEFAULT 1,
        IsActive BIT DEFAULT 1,
        UploadedBy NVARCHAR(100) NOT NULL,
        UploadedDate DATETIME2 DEFAULT GETDATE(),
        ModifiedBy NVARCHAR(100),
        ModifiedDate DATETIME2
    )
    CREATE INDEX IX_Template_Category ON dbo.stlLayouts_Template(Category)
    CREATE INDEX IX_Template_IsActive ON dbo.stlLayouts_Template(IsActive)
    PRINT 'Created table: stlLayouts_Template'
END
ELSE
    PRINT 'Table stlLayouts_Template already exists'

-- ============================================================================
-- stlLayouts_TemplateVersion table
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.stlLayouts_TemplateVersion') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.stlLayouts_TemplateVersion (
        TemplateVersionId UNIQUEIDENTIFIER PRIMARY KEY NOT NULL DEFAULT NEWID(),
        TemplateId UNIQUEIDENTIFIER NOT NULL,
        Version INT NOT NULL,
        FilePath NVARCHAR(MAX) NOT NULL,
        ChangeNotes NVARCHAR(MAX),
        ChangedDate DATETIME2 DEFAULT GETDATE(),
        CreatedDate DATETIME2 DEFAULT GETDATE(),
        CONSTRAINT FK_TemplateVersion_Template FOREIGN KEY (TemplateId) 
            REFERENCES dbo.stlLayouts_Template(TemplateId) ON DELETE CASCADE,
        CONSTRAINT UC_TemplateId_Version UNIQUE (TemplateId, Version)
    )
    CREATE INDEX IX_TemplateVersion_TemplateId ON dbo.stlLayouts_TemplateVersion(TemplateId)
    CREATE INDEX IX_TemplateVersion_Version ON dbo.stlLayouts_TemplateVersion(Version)
    PRINT 'Created table: stlLayouts_TemplateVersion'
END
ELSE
    PRINT 'Table stlLayouts_TemplateVersion already exists'

-- ============================================================================
-- stlLayouts_Rule table
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.stlLayouts_Rule') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.stlLayouts_Rule (
        RuleId UNIQUEIDENTIFIER PRIMARY KEY NOT NULL DEFAULT NEWID(),
        RuleName NVARCHAR(255) NOT NULL,
        Description NVARCHAR(MAX),
        Condition NVARCHAR(MAX) NOT NULL,
        TemplateId UNIQUEIDENTIFIER NOT NULL,
        Priority INT DEFAULT 100,
        IsActive BIT DEFAULT 1,
        CreatedBy NVARCHAR(100) NOT NULL,
        CreatedDate DATETIME2 DEFAULT GETDATE(),
        ModifiedBy NVARCHAR(100),
        ModifiedDate DATETIME2,
        CONSTRAINT FK_Rule_Template FOREIGN KEY (TemplateId) 
            REFERENCES dbo.stlLayouts_Template(TemplateId) ON DELETE NO ACTION
    )
    CREATE INDEX IX_Rule_Priority ON dbo.stlLayouts_Rule(Priority)
    CREATE INDEX IX_Rule_TemplateId ON dbo.stlLayouts_Rule(TemplateId)
    CREATE INDEX IX_Rule_IsActive ON dbo.stlLayouts_Rule(IsActive)
    PRINT 'Created table: stlLayouts_Rule'
END
ELSE
    PRINT 'Table stlLayouts_Rule already exists'

-- ============================================================================
-- stlLayouts_VariableMapping table
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.stlLayouts_VariableMapping') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.stlLayouts_VariableMapping (
        VariableMappingId UNIQUEIDENTIFIER PRIMARY KEY NOT NULL DEFAULT NEWID(),
        VariableName NVARCHAR(200) NOT NULL UNIQUE,
        DatabaseField NVARCHAR(200),
        SqlExpression NVARCHAR(MAX),
        DataType NVARCHAR(50),
        Category NVARCHAR(100),
        Description NVARCHAR(1000),
        IsRequired BIT DEFAULT 0,
        DefaultValue NVARCHAR(MAX),
        CreatedBy NVARCHAR(100) NOT NULL,
        CreatedDate DATETIME2 DEFAULT GETDATE()
    )
    CREATE INDEX IX_VariableMapping_VariableName ON dbo.stlLayouts_VariableMapping(VariableName)
    CREATE INDEX IX_VariableMapping_Category ON dbo.stlLayouts_VariableMapping(Category)
    PRINT 'Created table: stlLayouts_VariableMapping'
END
ELSE
    PRINT 'Table stlLayouts_VariableMapping already exists'

-- ============================================================================
-- stlLayouts_AuditEntry table
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.stlLayouts_AuditEntry') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.stlLayouts_AuditEntry (
        AuditEntryId UNIQUEIDENTIFIER PRIMARY KEY NOT NULL DEFAULT NEWID(),
        Timestamp DATETIME2 DEFAULT GETDATE(),
        UserName NVARCHAR(100) NOT NULL,
        EventType NVARCHAR(100) NOT NULL,
        JobId NVARCHAR(50),
        TemplateId UNIQUEIDENTIFIER,
        RuleId UNIQUEIDENTIFIER,
        Details NVARCHAR(MAX),
        VariableValues NVARCHAR(MAX),
        FilePath NVARCHAR(500),
        Duration TIME(7),
        Success BIT DEFAULT 0,
        ErrorMessage NVARCHAR(MAX),
        CreatedDate DATETIME2 DEFAULT GETDATE()
    )
    CREATE INDEX IX_AuditEntry_Timestamp ON dbo.stlLayouts_AuditEntry(Timestamp)
    CREATE INDEX IX_AuditEntry_UserName ON dbo.stlLayouts_AuditEntry(UserName)
    CREATE INDEX IX_AuditEntry_EventType ON dbo.stlLayouts_AuditEntry(EventType)
    PRINT 'Created table: stlLayouts_AuditEntry'
END
ELSE
    PRINT 'Table stlLayouts_AuditEntry already exists'

-- ============================================================================
-- Seed data: Sample templates (optional)
-- ============================================================================
IF NOT EXISTS (SELECT 1 FROM dbo.stlLayouts_Template WHERE TemplateName = 'Default Layout')
BEGIN
    INSERT INTO dbo.stlLayouts_Template (TemplateId, TemplateName, Category, FilePath, Description, IsActive, UploadedBy)
    VALUES (NEWID(), 'Default Layout', 'Standard', '\\network\share\templates\default.docx', 'Default document layout template', 1, 'System')
    PRINT 'Inserted sample template: Default Layout'
END

PRINT '========================================='
PRINT 'STL Layouts tables created successfully'
PRINT '========================================='
