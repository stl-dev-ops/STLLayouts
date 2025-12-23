-- Insert corrected variable mappings with actual database columns
-- Database schema: dbo.order___ (orders) and dbo.klabas__ (customers)
USE sqlb00;
GO

-- Order/Job table fields (dbo.order___)
INSERT INTO stlLayouts_VariableMapping (VariableMappingId, VariableName, DatabaseField, SqlExpression, DataType, Category, Description, IsRequired, CreatedBy, CreatedDate)
VALUES 
    (NEWID(), 'JobNumber', 'dbo.order___.ord__ref', NULL, 'String', 'Job', 'Order reference number', 1, 'System', GETDATE()),
    (NEWID(), 'OrderDate', 'dbo.order___.best_dat', NULL, 'DateTime', 'Job', 'Best date (order date)', 0, 'System', GETDATE()),
    (NEWID(), 'DueDate', 'dbo.order___.leverdat', NULL, 'DateTime', 'Job', 'Delivery date', 0, 'System', GETDATE()),
    (NEWID(), 'Quantity', 'dbo.order___.oplage__', NULL, 'Integer', 'Job', 'Print quantity/run size', 0, 'System', GETDATE()),
    (NEWID(), 'JobStatus', 'dbo.order___.open____', NULL, 'String', 'Job', 'Job status (0=closed, 1=open)', 0, 'System', GETDATE()),
    (NEWID(), 'Description', 'dbo.order___.omschr__', NULL, 'String', 'Job', 'Order description', 0, 'System', GETDATE()),
    (NEWID(), 'BonRef', 'dbo.order___.bon__ref', NULL, 'String', 'Job', 'Bon reference', 0, 'System', GETDATE()),
    
    -- Customer table fields (dbo.klabas__)
    (NEWID(), 'CustomerName', 'dbo.klabas__.naam____', NULL, 'String', 'Customer', 'Customer name', 0, 'System', GETDATE()),
    (NEWID(), 'CustomerRef', 'dbo.klabas__.kla__ref', NULL, 'String', 'Customer', 'Customer reference', 0, 'System', GETDATE()),
    (NEWID(), 'CustomerNumber', 'dbo.klabas__.kla__rpn', NULL, 'String', 'Customer', 'Customer account number', 0, 'System', GETDATE());

PRINT '=========================================';
PRINT 'Standard variables with correct DB fields created successfully';
PRINT '=========================================';

-- Display what was created
SELECT VariableName, DatabaseField, Category, Description 
FROM stlLayouts_VariableMapping 
ORDER BY Category, VariableName;
GO
