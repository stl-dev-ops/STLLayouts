# Data Mapping Guide

## Overview

This document describes how to map database fields from CRMDB to template variables in STL Layouts.

---

## Variable Mapping Concepts

### What is a Variable?

A **variable** is a placeholder in an Office template that gets replaced with actual data during document generation.

**Example**: In a Word template, `{ProductDescription}` is a variable that will be replaced with the actual product description from the database.

### What is a Mapping?

A **mapping** defines the relationship between a variable name and a database field or SQL expression.

**Example Mapping**:
- Variable Name: `ProductDescription`
- Database Field: `bstlyn__.afg_oms1.product_desc`
- Data Type: `String`

---

## Creating Variable Mappings

### Step 1: Identify Template Variables

1. Open your Office template
2. Identify all placeholders in the format `{VariableName}`
3. List all unique variable names

**Example Template (Word)**:
```
Quality Assurance Signoff Sheet

Job Number: {JobNumber}
Product: {ProductDescription}
Customer: {CustomerName}
Quantity: {OrderQuantity}
Inspector: {InspectorName}
Date: {InspectionDate}

QA Results:
- Dimension Check: {DimensionCheckResult}
- Visual Inspection: {VisualInspectionResult}
- Final Approval: {FinalApprovalStatus}
```

**Variables Identified**:
- JobNumber
- ProductDescription
- CustomerName
- OrderQuantity
- InspectorName
- InspectionDate
- DimensionCheckResult
- VisualInspectionResult
- FinalApprovalStatus

### Step 2: Explore CRMDB Schema

Use the Variable Mapping UI to browse available database tables and fields.

**CRMDB Connection**:
```
Data Source=STL-SQL1\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True
```

**Example Tables** (hypothetical - actual schema TBD):
```
Tables:
- Jobs (job_id, job_number, product_id, customer_id, order_quantity, status)
- Products (product_id, product_desc, product_code, category)
- Customers (customer_id, customer_name, customer_code, address)
- QA_Results (qa_id, job_id, inspector_name, inspection_date, dimension_check, visual_inspection, final_approval)
- Orders (order_id, job_id, order_date, order_quantity)
```

### Step 3: Create Mappings

For each variable, create a mapping:

| Variable Name | Database Field / Expression | Data Type | Category |
|---------------|----------------------------|-----------|----------|
| JobNumber | Jobs.job_number | String | Job Info |
| ProductDescription | Products.product_desc | String | Product Info |
| CustomerName | Customers.customer_name | String | Customer Info |
| OrderQuantity | Orders.order_quantity | Integer | Order Info |
| InspectorName | QA_Results.inspector_name | String | QA Data |
| InspectionDate | QA_Results.inspection_date | DateTime | QA Data |
| DimensionCheckResult | QA_Results.dimension_check | String | QA Data |
| VisualInspectionResult | QA_Results.visual_inspection | String | QA Data |
| FinalApprovalStatus | QA_Results.final_approval | String | QA Data |

### Step 4: Use SQL Expressions (Advanced)

For complex mappings, use SQL expressions:

**Example 1: Concatenate Fields**
- Variable: `FullCustomerAddress`
- SQL Expression: `CONCAT(Customers.address, ', ', Customers.city, ', ', Customers.state, ' ', Customers.zip)`
- Data Type: `String`

**Example 2: Conditional Logic**
- Variable: `OrderPriority`
- SQL Expression: `CASE WHEN Orders.rush_order = 1 THEN 'RUSH' ELSE 'Standard' END`
- Data Type: `String`

**Example 3: Date Formatting**
- Variable: `FormattedOrderDate`
- SQL Expression: `FORMAT(Orders.order_date, 'yyyy-MM-dd')`
- Data Type: `String`

**Example 4: Calculations**
- Variable: `TotalCost`
- SQL Expression: `Orders.order_quantity * Products.unit_price`
- Data Type: `Decimal`

---

## Data Types

Supported data types for variables:

| Data Type | Description | Example Values |
|-----------|-------------|----------------|
| String | Text data | "Widget ABC", "ACME Corp" |
| Integer | Whole numbers | 100, 42, -5 |
| Decimal | Numbers with decimals | 123.45, 99.99, 0.5 |
| DateTime | Date and time | 2025-12-15, 2025-12-15 14:30:00 |
| Boolean | True/False | true, false, 1, 0 |
| Date | Date only (no time) | 2025-12-15 |
| Time | Time only (no date) | 14:30:00 |

**Type Conversion**: System automatically converts database values to appropriate types.

---

## Mapping Categories

Organize variables into categories for easier management:

- **Job Info**: Job number, status, dates
- **Product Info**: Product description, code, category
- **Customer Info**: Customer name, address, contact
- **Order Info**: Order quantity, date, priority
- **QA Data**: Inspection results, approvals, notes
- **System Info**: Current date/time, user name, version

---

## Testing Mappings

Before using mappings in production:

1. Select a sample job in the Variable Mapping UI
2. Click "Test Mappings"
3. Review resolved values:

**Example Test Result**:
```
Variable: ProductDescription
Database Field: Products.product_desc
Query: SELECT Products.product_desc FROM Products JOIN Jobs ON ...
Resolved Value: "Widget ABC - Model 123"
Execution Time: 15ms
Status: ✅ Success
```

4. Verify values are correct
5. Fix any errors (missing fields, incorrect joins, etc.)

---

## Advanced Mapping Scenarios

### Scenario 1: Multiple Tables Join

**Goal**: Get customer name from a nested relationship

**Mapping**:
- Variable: `CustomerName`
- SQL Expression:
```sql
SELECT c.customer_name
FROM Jobs j
JOIN Orders o ON j.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
WHERE j.job_id = @JobId
```

**Note**: Full SQL queries are supported for complex scenarios.

### Scenario 2: Aggregated Data

**Goal**: Calculate total quantity across multiple orders

**Mapping**:
- Variable: `TotalOrderQuantity`
- SQL Expression:
```sql
SELECT SUM(order_quantity)
FROM Orders
WHERE job_id = @JobId
```

### Scenario 3: Subquery

**Goal**: Get most recent QA inspection date

**Mapping**:
- Variable: `LastInspectionDate`
- SQL Expression:
```sql
SELECT MAX(inspection_date)
FROM QA_Results
WHERE job_id = @JobId
```

### Scenario 4: Conditional Formatting

**Goal**: Display "PASS" or "FAIL" based on QA result

**Mapping**:
- Variable: `QAStatusFormatted`
- SQL Expression:
```sql
CASE 
  WHEN qa_result >= 90 THEN 'PASS - Excellent'
  WHEN qa_result >= 70 THEN 'PASS - Good'
  WHEN qa_result >= 50 THEN 'MARGINAL'
  ELSE 'FAIL'
END
```

### Scenario 5: Null Handling

**Goal**: Provide default value if field is null

**Mapping**:
- Variable: `InspectorName`
- SQL Expression: `ISNULL(inspector_name, 'Not Assigned')`
- Default Value: `Not Assigned` (fallback in app code)

---

## Variable Naming Conventions

**Best Practices**:

1. **Use PascalCase**: `ProductDescription`, not `product_description` or `productDescription`
2. **Be Descriptive**: `CustomerFullAddress` better than `CustAddr`
3. **Avoid Abbreviations**: `InspectionDate` better than `InspDt`
4. **Consistent Prefixes**: Use prefixes for grouping (e.g., `QA_*`, `Customer_*`)
5. **No Special Characters**: Avoid spaces, hyphens, or symbols in variable names

**Examples**:
- ✅ `JobNumber`
- ✅ `ProductDescription`
- ✅ `QA_InspectionDate`
- ✅ `Customer_BillingAddress`
- ❌ `job number` (space)
- ❌ `Product-Desc` (hyphen)
- ❌ `QA Result!` (special char)

---

## Variable Mapping Import/Export

### Export Mappings (JSON)

```json
{
  "variableMappings": [
    {
      "variableName": "ProductDescription",
      "databaseField": "Products.product_desc",
      "sqlExpression": null,
      "dataType": "String",
      "category": "Product Info",
      "description": "Product description from products table",
      "isRequired": true,
      "defaultValue": "Unknown Product"
    },
    {
      "variableName": "TotalCost",
      "databaseField": null,
      "sqlExpression": "Orders.order_quantity * Products.unit_price",
      "dataType": "Decimal",
      "category": "Order Info",
      "description": "Calculated total cost",
      "isRequired": false,
      "defaultValue": "0.00"
    }
  ]
}
```

### Import Mappings

1. Prepare JSON file with mappings
2. Click "Import" in Variable Mapping UI
3. Select JSON file
4. Review imported mappings
5. Click "Save" to persist

**Use Case**: Share mappings between environments (dev, test, prod)

---

## Common Mapping Patterns

### Pattern 1: Direct Field Mapping

Simplest mapping: one variable → one database field

```
Variable: JobNumber
Database Field: Jobs.job_number
```

### Pattern 2: Join Across Tables

Variable requires data from related tables

```
Variable: CustomerName
SQL Expression:
  SELECT c.customer_name
  FROM Jobs j
  JOIN Customers c ON j.customer_id = c.customer_id
  WHERE j.job_id = @JobId
```

### Pattern 3: Calculated Field

Variable is derived from multiple fields

```
Variable: OrderTotal
SQL Expression: quantity * unit_price * (1 + tax_rate)
```

### Pattern 4: Formatted Output

Variable requires specific formatting

```
Variable: FormattedPhoneNumber
SQL Expression: 
  FORMAT(phone_number, '(###) ###-####')
```

### Pattern 5: Lookup from Reference Table

Variable maps to a code/description lookup

```
Variable: ProductCategoryName
SQL Expression:
  SELECT category_name
  FROM ProductCategories
  WHERE category_code = (SELECT category_code FROM Products WHERE product_id = @ProductId)
```

---

## Troubleshooting

### Problem: Variable Not Resolving

**Symptoms**: Template shows `{VariableName}` instead of actual value

**Solutions**:
1. Verify mapping exists for variable
2. Check database field name is correct
3. Test mapping with sample job
4. Verify job has data for that field

### Problem: Incorrect Data Type

**Symptoms**: Number displayed as text, date format incorrect

**Solutions**:
1. Check data type setting in mapping
2. Verify database field type matches mapping type
3. Use SQL `CAST` or `CONVERT` for type conversion

### Problem: Null Values

**Symptoms**: Variable shows `[NOT FOUND]` or blank

**Solutions**:
1. Set default value in mapping
2. Use SQL `ISNULL()` or `COALESCE()` in expression
3. Check if job has related data (joins may return null)

### Problem: Performance Issues

**Symptoms**: Variable resolution is slow

**Solutions**:
1. Optimize SQL query (add indexes)
2. Avoid complex subqueries if possible
3. Use database views for frequently used joins
4. Cache variable values for repeated access

---

## Database Schema Discovery

### How to Browse CRMDB Schema

1. Open Variable Mapping UI
2. Click "Browse Database Schema"
3. Expand tables to see columns
4. Right-click column → "Create Mapping" to auto-create

**Schema Browser Features**:
- View table names and descriptions
- View column names, data types, nullability
- Search for tables/columns by name
- Preview sample data from table
- Copy field name to clipboard

---

## Example: Complete Mapping Workflow

### Goal: Create QA Signoff Sheet Template

**Step 1: Design Template (Word)**

Create `QA_Signoff_Template.docx` with placeholders:
```
STL Manufacturing - Quality Assurance Signoff Sheet

Job Number: {JobNumber}
Product: {ProductDescription}
Customer: {CustomerName}
Order Quantity: {OrderQuantity}
Inspector: {InspectorName}
Inspection Date: {InspectionDate}

QA Checklist:
- Dimensions: {DimensionCheck} 
- Visual: {VisualInspection}
- Function Test: {FunctionTest}

Overall Result: {OverallResult}

Approved By: ___________________  Date: _________
```

**Step 2: Create Variable Mappings**

| Variable | SQL Expression | Type |
|----------|----------------|------|
| JobNumber | `Jobs.job_number` | String |
| ProductDescription | `Products.product_desc` | String |
| CustomerName | `SELECT customer_name FROM Customers WHERE customer_id = Jobs.customer_id` | String |
| OrderQuantity | `Orders.order_quantity` | Integer |
| InspectorName | `QA_Results.inspector_name` | String |
| InspectionDate | `FORMAT(QA_Results.inspection_date, 'yyyy-MM-dd')` | String |
| DimensionCheck | `CASE WHEN QA_Results.dimension_check = 1 THEN 'PASS' ELSE 'FAIL' END` | String |
| VisualInspection | `CASE WHEN QA_Results.visual_inspection = 1 THEN 'PASS' ELSE 'FAIL' END` | String |
| FunctionTest | `CASE WHEN QA_Results.function_test = 1 THEN 'PASS' ELSE 'FAIL' END` | String |
| OverallResult | `CASE WHEN QA_Results.overall_result = 1 THEN 'APPROVED' ELSE 'REJECTED' END` | String |

**Step 3: Upload Template**

1. Go to Template Management
2. Upload `QA_Signoff_Template.docx`
3. System detects variables automatically
4. Assign template name: "QA Signoff Sheet"
5. Assign category: "QA Forms"

**Step 4: Create Layout Selection Rule**

```
Rule: QA Signoff for All Jobs
Condition: job_type = 'Production'
Template: QA Signoff Sheet
Priority: 100
```

**Step 5: Test**

1. Select a sample production job
2. System suggests "QA Signoff Sheet" template
3. Click "Generate"
4. Review populated document
5. Verify all variables filled correctly

---

**Next Steps**: See [TEMPLATE_GUIDELINES.md](TEMPLATE_GUIDELINES.md) for template design best practices.
