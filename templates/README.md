# STL Layouts - Template Files

This directory contains template files used by the STL Layouts document generation system.

## Templates

| Template Name | File | Category | Description |
|--------------|------|----------|-------------|
| PACKING SLIP | PACKING SLIP.docx | General | Customer packing slip template with variable placeholders |
| WorkOrder.xlsx | WorkOrder.xlsx | General | Work order template in Excel format |
| WorkOrderTemplate | WorkOrderTemplate.docx | General | Alternative work order template in Word format |

## Template Variables

Templates use `{{VariableName}}` syntax for placeholders. Available variables include:

### Job Variables
- `{{JobNumber}}` - Job/order number
- `{{JobStatus}}` - Current job status
- `{{OrderDate}}` - Date order was created
- `{{DueDate}}` - Expected delivery date
- `{{Quantity}}` - Order quantity

### Customer Variables
- `{{CustomerName}}` - Customer name
- `{{CustomerNumber}}` - Customer reference number
- `{{CustomerRef}}` - Customer ID
- `{{CustomerStreet}}` - Customer street address
- `{{CustomerCity}}` - Customer city
- `{{CustomerPhone}}` - Customer phone number
- `{{CustomerFax}}` - Customer fax number

### Product Variables
- `{{ProductDescription}}` - Product description
- `{{ProductCode}}` - Product/finish code
- `{{ProductVersion}}` - Product version

### Material Variables
- `{{MaterialKeyword}}` - Material short code
- `{{MaterialDescription1}}` - Material description line 1
- `{{MaterialType}}` - Material type code
- `{{MaterialSupplierID}}` - Material supplier reference

### Delivery Variables
- `{{DeliveryLocation}}` - Delivery location code
- `{{DeliveryTime}}` - Scheduled delivery time
- `{{DeliveryCode}}` - Delivery method code
- `{{DeliveredQuantity}}` - Quantity delivered

## Adding New Templates

1. Create your template file (.docx, .xlsx, etc.)
2. Insert variable placeholders using `{{VariableName}}` syntax
3. Copy the file to this directory
4. Register the template in the application:
   - Open STL Layouts
   - Go to Templates tab
   - Click "Add Template"
   - Browse to the file in this directory
   - Set category and description

## Updating Database Paths

If templates are moved to this directory, update the database paths:

```sql
UPDATE stlLayouts_Template 
SET FilePath = 'C:\dev\STLLayouts\templates\PACKING SLIP.docx'
WHERE TemplateName = 'PACKING SLIP';

UPDATE stlLayouts_Template 
SET FilePath = 'C:\dev\STLLayouts\templates\WorkOrder.xlsx'
WHERE TemplateName = 'WorkOrder.xlsx';

UPDATE stlLayouts_Template 
SET FilePath = 'C:\dev\STLLayouts\templates\WorkOrderTemplate.docx'
WHERE TemplateName = 'WorkOrderTemplate';
```
