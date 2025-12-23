# Template Guidelines

## Overview

This document provides best practices and guidelines for creating Office templates for the STL Layouts system.

---

## General Principles

### 1. Use Standard Office Applications

- Design templates in Microsoft Word, Excel, or PowerPoint
- Use native Office features (styles, themes, formatting)
- Test templates in Office before uploading to STL Layouts

### 2. Keep Templates Simple

- Avoid overly complex layouts
- Minimize use of macros (macros may not execute during generation)
- Use tables and structured content over free-form text boxes

### 3. Variable-Driven Content

- Replace all dynamic content with variables
- Use clear, descriptive variable names
- Document variable usage within template (comments, notes)

---

## Variable Syntax

### Standard Variable Format

Use curly braces to denote variables:

```
{VariableName}
```

**Examples**:
- `{JobNumber}`
- `{ProductDescription}`
- `{CustomerName}`
- `{InspectionDate}`

### Alternate Format (Optional)

Double curly braces for compatibility with other template systems:

```
{{VariableName}}
```

**Note**: STL Layouts supports both formats.

### Variable Placement Rules

1. **Inline**: Variables can be placed inline with text
   ```
   The product {ProductDescription} has been inspected.
   ```

2. **Standalone**: Variables can stand alone in a cell/paragraph
   ```
   Product: {ProductDescription}
   ```

3. **Inside Tables**: Variables can be placed in table cells
   ```
   | Job Number | Product       | Quantity       |
   |------------|---------------|----------------|
   | {JobNumber}| {ProductDesc} | {OrderQuantity}|
   ```

4. **Headers/Footers**: Variables work in headers and footers
   ```
   Document Date: {CurrentDate}        Page {PageNumber} of {PageCount}
   ```

---

## Word Document Templates (.docx)

### Best Practices

1. **Use Styles**: Apply built-in styles (Heading 1, Normal, etc.) for consistent formatting
2. **Tables Over Text Boxes**: Use tables for structured layouts (easier variable replacement)
3. **Avoid Complex Formatting**: Minimize manual spacing, tabs, and positioning
4. **Test with Sample Data**: Preview template with realistic variable values before upload

### Conditional Content

Use Content Controls to show/hide sections based on conditions:

**Setup**:
1. Insert > Quick Parts > Content Control
2. Set tag to variable name (e.g., `ShowIfRushOrder`)
3. Configure rule to show control only when condition is true

**Rule Example**:
```
IF {RushOrder} = true THEN show content control "RushOrderSection"
```

### Repeating Sections

For lists or tables with dynamic rows:

1. Mark a table row as "repeating"
2. Place variables in row cells: `{ItemDescription}`, `{ItemQuantity}`, `{ItemPrice}`
3. System will clone row for each data item

**Example Table**:
```
| Item Description       | Quantity         | Price          |
|------------------------|------------------|----------------|
| {ItemDescription}      | {ItemQuantity}   | {ItemPrice}    | ← This row repeats
```

### Images

**Static Images**: Embed images directly in template

**Dynamic Images**: Use variable for image path or byte array
- Variable format: `{Image:ProductPhoto}`
- System replaces with image from file path or database

### Page Setup

- Set appropriate page size, margins, orientation
- Test printing before deploying to production
- Consider standard paper sizes (Letter, A4, Legal)

---

## Excel Spreadsheet Templates (.xlsx)

### Best Practices

1. **Use Named Ranges**: Name important cells/ranges for easier reference
2. **Formulas**: Use Excel formulas; they will be preserved and recalculated
3. **Conditional Formatting**: Use Excel conditional formatting rules
4. **Charts**: Charts can be included; data source should be variable-driven

### Variable Placement in Cells

Place variables in cells like regular text:

```
Cell A1: Job Number
Cell B1: {JobNumber}

Cell A2: Product
Cell B2: {ProductDescription}
```

### Dynamic Tables

Use Excel Tables for repeating data:

1. Create an Excel Table (Insert > Table)
2. Place variables in header row
3. System will populate table with rows of data

**Example**:
```
| Item      | Quantity        | Price         | Total           |
|-----------|-----------------|---------------|-----------------|
| {Item}    | {Quantity}      | {Price}       | {Total}         | ← Data rows repeat
```

### Formulas with Variables

Combine variables with Excel formulas:

```
Cell A1: {UnitPrice}
Cell A2: {Quantity}
Cell A3: =A1*A2  (calculated in Excel)
```

**Note**: Variables are replaced first, then formulas execute.

### Multi-Sheet Templates

- Use multiple sheets for complex templates
- Each sheet can have its own variables
- Reference sheets in formulas: `=Sheet2!A1`

---

## PowerPoint Templates (.pptx)

### Best Practices

1. **Slide Masters**: Define master layouts for consistency
2. **Placeholders**: Use text boxes as variable placeholders
3. **Images**: Embed images or use dynamic image variables
4. **Animations**: Animations are preserved but may not execute in exported PDFs

### Variable Placement in Slides

Place variables in text boxes:

```
Slide Title: {ProjectName}

Slide Content:
- Customer: {CustomerName}
- Job Number: {JobNumber}
- Status: {JobStatus}
```

### Dynamic Slides

For presentations with variable slide count:

1. Mark a slide as "repeating"
2. Place variables in slide elements
3. System clones slide for each data item

**Example**: Generate one slide per product
```
Slide Template:
  Title: {ProductName}
  Content: {ProductDescription}
  Image: {ProductImage}
```

### Charts and Graphs

- Embed charts with data tables
- Use variables in data table cells
- Charts update automatically after variable replacement

---

## PDF Output

### Considerations

- Templates are generated as Office files first, then optionally converted to PDF
- PDF conversion preserves formatting but may have minor differences
- Test PDF output for critical templates

### PDF-Specific Settings

**Page Breaks**: Ensure proper page breaks for multi-page templates

**Fonts**: Use standard fonts for best PDF compatibility
- Recommended: Arial, Calibri, Times New Roman

**Colors**: Use standard RGB colors (avoid custom color profiles)

---

## Variable Documentation

### Document Variables in Template

Include a reference page/sheet/slide listing all variables:

**Word Example**:
```
Variable Reference (delete before finalizing template)

{JobNumber} - Job identifier
{ProductDescription} - Product name and description
{CustomerName} - Customer company name
{OrderQuantity} - Number of units ordered
{InspectionDate} - Date of QA inspection
```

**Excel Example**:
```
Sheet: Variable_Reference
| Variable Name       | Description                    | Data Type |
|---------------------|--------------------------------|-----------|
| JobNumber           | Job identifier                 | String    |
| ProductDescription  | Product name and description   | String    |
| CustomerName        | Customer company name          | String    |
```

**Note**: Keep reference sheet/page for documentation; hide it in final output.

---

## Testing Templates

### Before Uploading

1. **Syntax Check**: Verify all variables use correct syntax `{VariableName}`
2. **Spelling**: Check variable names for typos
3. **Formatting**: Apply consistent formatting (fonts, sizes, colors)
4. **Sample Data**: Replace variables manually with sample data to preview
5. **Print Test**: Print template to verify page layout

### After Uploading

1. Use "Preview" feature in STL Layouts to see populated template
2. Select a real job and generate test document
3. Review generated document for formatting issues
4. Iterate and re-upload if needed

---

## Common Pitfalls

### ❌ Avoid: Hardcoded Data

Don't mix hardcoded data with variables:

```
❌ Job Number: 12345 (should be {JobNumber})
```

### ❌ Avoid: Inconsistent Variable Names

Use consistent naming across templates:

```
❌ Template1: {ProdDesc}
❌ Template2: {ProductDescription}
✅ Use: {ProductDescription} everywhere
```

### ❌ Avoid: Special Characters in Variables

Don't use spaces, hyphens, or symbols:

```
❌ {Product Name}
❌ {Product-Desc}
✅ {ProductName}
```

### ❌ Avoid: Overly Complex Layouts

Don't use nested tables, text boxes within text boxes, or intricate positioning:

```
❌ Text box inside a cell inside a table inside another table
✅ Simple table with cells containing variables
```

---

## Template Versioning

### When to Create a New Version

- Template content changes (add/remove variables)
- Layout changes (reformat, add sections)
- Fix errors in existing template

### Version Naming Convention

**In Template Management UI**:
- Template Name: "QA Signoff Sheet"
- Version: 1, 2, 3, ...

**File Naming** (system-managed):
- `QA_Signoff_Sheet_v1.docx`
- `QA_Signoff_Sheet_v2.docx`

### Backward Compatibility

- When adding new variables, provide default values
- When removing variables, audit existing rules using those variables
- Test new version with sample jobs before activating

---

## Template Categories

Organize templates into logical categories:

- **QA Forms**: Quality assurance and inspection sheets
- **Order Forms**: Order confirmation, packing slips
- **Job Documents**: Job tickets, work orders
- **Compliance**: Regulatory and compliance documentation
- **Reports**: Summary reports, analytics
- **Certificates**: Certificates of completion, conformance

---

## Accessibility

### Design for Accessibility

1. **Alt Text**: Add alt text to images for screen readers
2. **Headings**: Use heading styles (Heading 1, 2, 3) for document structure
3. **Color Contrast**: Ensure sufficient contrast for readability
4. **Tables**: Use proper table headers for data tables

---

## Localization

### Multi-Language Templates

For templates in multiple languages:

1. Create separate template for each language
2. Use same variable names across languages
3. Apply naming convention: `QA_Signoff_EN.docx`, `QA_Signoff_FR.docx`

**Rule Example**:
```
IF {UserLanguage} = 'French' THEN use_template = 'QA_Signoff_FR.docx'
ELSE use_template = 'QA_Signoff_EN.docx'
```

---

## Advanced Techniques

### Conditional Formatting (Excel)

Use Excel conditional formatting with variable-driven rules:

**Example**: Highlight cells based on QA result
```
Rule: If {QAResult} = "FAIL", apply red background
```

### Charts with Dynamic Data (Excel)

Create charts that update based on variable data:

1. Create data table with variables
2. Create chart from data table
3. Variables populate data table → chart updates automatically

### Mail Merge Alternatives (Word)

While STL Layouts doesn't use Word mail merge directly, you can achieve similar results:

- Use repeating tables for lists of items
- Use conditional content controls for optional sections

---

## Template Storage

### File Organization

Templates stored in network share or database:

**Recommended Structure**:
```
\\fileserver\templates\
  ├── QA_Forms\
  │   ├── QA_Signoff_v1.docx
  │   ├── QA_Inspection_v1.docx
  ├── Order_Forms\
  │   ├── Order_Confirmation_v1.docx
  │   ├── Packing_Slip_v2.xlsx
  ├── Job_Documents\
      ├── Work_Order_v3.docx
```

### Backup & Version Control

- System automatically maintains version history
- Manual backups recommended for critical templates
- Consider external version control (Git, SharePoint)

---

## Performance Considerations

### Template Size

- Keep template file size under 5MB for best performance
- Compress images before embedding
- Remove unused styles and formatting

### Variable Count

- No hard limit on variable count
- Recommend <100 variables per template for readability
- Group related variables logically

### Complex Templates

- Test generation time for complex templates
- Optimize if generation takes >5 seconds
- Consider splitting into multiple simpler templates

---

## Quality Checklist

Before deploying a template to production:

- [ ] All variables use correct syntax `{VariableName}`
- [ ] Variable names are consistent with existing mappings
- [ ] Template formatting is clean and professional
- [ ] Sample data has been tested in template
- [ ] Generated document reviewed and approved
- [ ] Template uploaded to STL Layouts
- [ ] Rules created for layout selection
- [ ] Test document generated successfully
- [ ] Stakeholders have reviewed and approved
- [ ] Documentation updated (variable reference, usage notes)

---

## Examples

### Example 1: Simple QA Form (Word)

**Template**: [Download QA_Signoff_Simple.docx](examples/QA_Signoff_Simple.docx)

**Variables Used**:
- `{JobNumber}`
- `{ProductDescription}`
- `{InspectorName}`
- `{InspectionDate}`
- `{OverallResult}`

### Example 2: Order Summary (Excel)

**Template**: [Download Order_Summary.xlsx](examples/Order_Summary.xlsx)

**Variables Used**:
- `{OrderNumber}`
- `{CustomerName}`
- `{OrderDate}`
- Repeating table: `{ItemDescription}`, `{ItemQuantity}`, `{ItemPrice}`

### Example 3: Job Status Presentation (PowerPoint)

**Template**: [Download Job_Status.pptx](examples/Job_Status.pptx)

**Variables Used**:
- `{ProjectName}`
- `{JobNumber}`
- `{CustomerName}`
- `{CompletionPercentage}`
- Repeating slides for each milestone

---

**Next Steps**: See [WPF_MVVM_GUIDE.md](WPF_MVVM_GUIDE.md) for application development guidelines.
