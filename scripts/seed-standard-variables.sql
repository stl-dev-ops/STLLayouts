-- Insert standard variable mappings for STL Layouts
USE sqlb00;
GO

-- Check if variables already exist, if not insert them
IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'JobNumber')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'JobNumber', 'JobNumber', 'String', 'Job', 'Job number from CRM', 1, 'System', GETDATE());
    PRINT 'Added JobNumber variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'CustomerName')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'CustomerName', 'CustomerName', 'String', 'Customer', 'Customer name', 1, 'System', GETDATE());
    PRINT 'Added CustomerName variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'JobStatus')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'JobStatus', 'JobStatus', 'String', 'Job', 'Current job status', 0, 'System', GETDATE());
    PRINT 'Added JobStatus variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'Quantity')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'Quantity', 'Quantity', 'Integer', 'Job', 'Order quantity', 0, 'System', GETDATE());
    PRINT 'Added Quantity variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'OrderDate')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'OrderDate', 'OrderDate', 'DateTime', 'Job', 'Order date', 0, 'System', GETDATE());
    PRINT 'Added OrderDate variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'DueDate')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'DueDate', 'DueDate', 'DateTime', 'Job', 'Job due date', 0, 'System', GETDATE());
    PRINT 'Added DueDate variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'TotalAmount')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'TotalAmount', 'TotalAmount', 'Decimal', 'Financial', 'Total order amount', 0, 'System', GETDATE());
    PRINT 'Added TotalAmount variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'ProductName')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'ProductName', 'ProductName', 'String', 'Product', 'Product name', 0, 'System', GETDATE());
    PRINT 'Added ProductName variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'SalesRep')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'SalesRep', 'SalesRep', 'String', 'Job', 'Sales representative', 0, 'System', GETDATE());
    PRINT 'Added SalesRep variable';
END

IF NOT EXISTS (SELECT 1 FROM stlLayouts_VariableMapping WHERE VariableName = 'ShipToAddress')
BEGIN
    INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
    VALUES (NEWID(), 'ShipToAddress', 'ShipToAddress', 'String', 'Customer', 'Shipping address', 0, 'System', GETDATE());
    PRINT 'Added ShipToAddress variable';
END

PRINT '=========================================';
PRINT 'Standard variables created successfully';
PRINT '=========================================';

-- Display count
SELECT COUNT(*) AS TotalVariables FROM stlLayouts_VariableMapping;
GO
