-- Seed/ensure OrderLines list mappings exist for common repeating-row tokens
-- Idempotent: only inserts missing rows.
--
-- NOTE: This seeds *list* mappings so `VariableMappingService.ResolveVariablesAsync` will load the `OrderLines` collection.
--
-- Target DB: sqlb00 (same as other schema scripts)

USE sqlb00;
GO

-- Ensure list-mapping schema exists (safe/no-op if already applied)
IF COL_LENGTH('dbo.stlLayouts_VariableMapping', 'MappingKind') IS NULL
BEGIN
    RAISERROR('stlLayouts_VariableMapping.MappingKind is missing. Run scripts/fix-variablemapping-list-schema.sql first.', 16, 1);
    RETURN;
END
GO

DECLARE @CreatedBy NVARCHAR(128) = SUSER_SNAME();
DECLARE @Now DATETIME2(0) = SYSUTCDATETIME();

DECLARE @Mappings TABLE (
    VariableName   NVARCHAR(200) NOT NULL,
    FieldKey       NVARCHAR(200) NOT NULL,
    DatabaseField  NVARCHAR(400) NULL,
    DataType       NVARCHAR(50)  NOT NULL,
    Category       NVARCHAR(200) NOT NULL,
    Description    NVARCHAR(500) NOT NULL
);

-- These FieldKey values should match tokens used in templates: {{OrderLines.<FieldKey>}}
-- DatabaseField keys correspond to columns exposed by dbo.vw_STLLayouts_OrderLines (including the friendly aliases).
INSERT INTO @Mappings (VariableName, FieldKey, DatabaseField, DataType, Category, Description)
VALUES
    ('OrderLines.LineNumber',      'LineNumber',      'LineNumber',      'Integer',  'OrderLines', 'Order line sequence number'),
    ('OrderLines.ProductCode',     'ProductCode',     'ProductCode',     'String',   'OrderLines', 'Product code'),
    ('OrderLines.ProductKeyword',  'ProductKeyword',  'ProductKeyword',  'String',   'OrderLines', 'Product keyword'),
    ('OrderLines.ProductVersion',  'ProductVersion',  'ProductVersion',  'String',   'OrderLines', 'Product version'),
    ('OrderLines.Description1',    'Description1',    'Description1',    'String',   'OrderLines', 'Line description 1'),
    ('OrderLines.Description2',    'Description2',    'Description2',    'String',   'OrderLines', 'Line description 2'),
    ('OrderLines.Quantity',        'Quantity',        'Quantity',        'Decimal',  'OrderLines', 'Line quantity'),
    ('OrderLines.QuantityOrdered', 'QuantityOrdered', 'QuantityOrdered', 'Decimal',  'OrderLines', 'Quantity ordered'),
    ('OrderLines.QuantityDelivered','QuantityDelivered','QuantityDelivered','Decimal','OrderLines', 'Quantity delivered'),
    ('OrderLines.QuantityInvoiced','QuantityInvoiced','QuantityInvoiced','Decimal',  'OrderLines', 'Quantity invoiced');

-- Insert any missing mapping rows (MappingKind=List, CollectionName='OrderLines')
INSERT INTO dbo.stlLayouts_VariableMapping (
    VariableMappingId,
    VariableName,
    DatabaseField,
    SqlExpression,
    MappingKind,
    CollectionName,
    FieldKey,
    DataType,
    Category,
    Description,
    IsRequired,
    DefaultValue,
    CreatedBy,
    CreatedDate
)
SELECT
    NEWID() AS VariableMappingId,
    m.VariableName,
    m.DatabaseField,
    NULL AS SqlExpression,
    1 AS MappingKind,
    'OrderLines' AS CollectionName,
    m.FieldKey,
    m.DataType,
    m.Category,
    m.Description,
    0 AS IsRequired,
    NULL AS DefaultValue,
    @CreatedBy,
    @Now
FROM @Mappings m
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.stlLayouts_VariableMapping vm
    WHERE vm.MappingKind = 1
      AND vm.CollectionName = 'OrderLines'
      AND vm.FieldKey = m.FieldKey
);

PRINT '=========================================';
PRINT 'OrderLines list mappings ensured (missing rows inserted).';
PRINT '=========================================';
GO
