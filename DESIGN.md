# Design Document

## Component Design

This document provides detailed design specifications for each major component in the STL Layouts system.

---

## 1. Rule Engine

### 1.1 Overview

The Rule Engine evaluates layout selection rules against job context data to determine which templates should be suggested for document generation.

### 1.2 Rule Definition Model

```csharp
public class Rule
{
    public Guid RuleId { get; set; }
    public string RuleName { get; set; }
    public string Description { get; set; }
    public string Condition { get; set; } // SQL-like or C#-like expression
    public Guid TemplateId { get; set; }
    public int Priority { get; set; } // Higher = evaluated first
    public bool IsActive { get; set; }
    public string CreatedBy { get; set; }
    public DateTime CreatedDate { get; set; }
    public string ModifiedBy { get; set; }
    public DateTime? ModifiedDate { get; set; }
    
    // Navigation
    public Template Template { get; set; }
}
```

### 1.3 Rule Syntax

**SQL-Like Syntax**:
```
sales_order_product_desc LIKE '%Widget%'
operation_step = 'final_qa'
customer_name IN ('ACME Corp', 'XYZ Industries')
job_quantity > 100
order_date BETWEEN '2025-01-01' AND '2025-12-31'
```

**C#-Like Syntax**:
```csharp
salesOrderProductDesc.Contains("Widget")
operationStep == "final_qa"
new[] {"ACME Corp", "XYZ Industries"}.Contains(customerName)
jobQuantity > 100
orderDate >= DateTime.Parse("2025-01-01") && orderDate <= DateTime.Parse("2025-12-31")
```

**Logical Operators**:
```
(condition1 AND condition2) OR (condition3 AND NOT condition4)
```

### 1.4 Rule Evaluation Algorithm

```
Input: JobContext, List<Rule>
Output: List<RuleMatch>

1. Filter active rules
2. Sort rules by Priority (descending)
3. For each rule:
   a. Parse condition expression
   b. Compile expression to delegate (cached)
   c. Evaluate expression against JobContext
   d. If true, add RuleMatch(Rule, Template, EvaluationTime)
4. Return all matches ordered by Priority
```

### 1.5 Expression Parsing & Compilation

**Library**: `System.Linq.Dynamic.Core` or custom parser

**Process**:
1. Parse condition string → AST (Abstract Syntax Tree)
2. Validate: referenced variables exist in JobContext
3. Compile AST → `Func<JobContext, bool>`
4. Cache compiled delegate by RuleId + Condition hash

**Performance Target**: <1ms per rule evaluation (after compilation)

### 1.6 Rule Validation

Before saving a rule, validate:
- [ ] Syntax is correct (parseable)
- [ ] Referenced variables exist in VariableMappings
- [ ] Template exists and is active
- [ ] Priority is unique (warn if duplicate)
- [ ] Test evaluation against sample JobContext

---

## 2. Document Generation Service

### 2.1 Overview

Responsible for populating Office templates with job-specific data using Open XML SDK.

### 2.2 Document Generator Interface

```csharp
public interface IDocumentGenerator
{
    Task<GeneratedDocument> GenerateAsync(
        Template template, 
        Dictionary<string, object> variables, 
        DocumentGenerationOptions options);
    
    bool SupportsFormat(string fileExtension);
}

public class DocumentGenerationOptions
{
    public bool ConvertToPdf { get; set; }
    public string OutputPath { get; set; }
    public bool PreserveFormatting { get; set; } = true;
    public bool FailOnMissingVariable { get; set; } = false;
    public string MissingVariablePlaceholder { get; set; } = "[NOT FOUND]";
}

public class GeneratedDocument
{
    public string FilePath { get; set; }
    public string FileName { get; set; }
    public long FileSizeBytes { get; set; }
    public TimeSpan GenerationDuration { get; set; }
    public List<string> Warnings { get; set; }
    public Dictionary<string, object> PopulatedVariables { get; set; }
}
```

### 2.3 Implementation Strategy

**Factory Pattern**: Select generator based on file extension

```csharp
public class DocumentGeneratorFactory
{
    public IDocumentGenerator CreateGenerator(string fileExtension)
    {
        return fileExtension.ToLower() switch
        {
            ".docx" => new WordDocumentGenerator(),
            ".xlsx" => new ExcelDocumentGenerator(),
            ".pptx" => new PowerPointDocumentGenerator(),
            _ => throw new NotSupportedException($"Format {fileExtension} not supported")
        };
    }
}
```

### 2.4 Word Document Generation (Open XML SDK)

**Variable Placeholder Format**: `{VariableName}` or `{{VariableName}}`

**Algorithm**:
```
1. Load template file into memory stream
2. Open with WordprocessingDocument.Open()
3. For each variable in template:
   a. Find all instances of {VariableName} in document body, headers, footers, tables
   b. Replace with actual value
   c. Preserve text formatting (bold, italic, font, color)
4. Handle conditional content:
   a. Find content controls with conditions
   b. Evaluate conditions
   c. Show/hide content controls
5. Handle repeating sections:
   a. Find table rows marked as repeating
   b. Clone row for each data item
   c. Populate each row with data
6. Save to output path
7. Optionally convert to PDF
```

**Performance Optimizations**:
- Use `OpenSettings` with `AutoSave = false` for speed
- Process large documents in streams, not in-memory
- Cache template structure (paragraph locations, style info)

### 2.5 Excel Document Generation

**Variable Placement**: Cells contain `{VariableName}` text

**Algorithm**:
```
1. Load template file
2. Open with SpreadsheetDocument.Open()
3. For each worksheet:
   a. For each cell:
      - If cell contains {VariableName}, replace with value
      - Preserve cell formatting (number format, borders, colors)
4. Handle repeating rows:
   a. Identify row with repeating marker
   b. Insert rows and populate with data
5. Recalculate formulas (if needed)
6. Save to output path
```

### 2.6 PowerPoint Document Generation

**Variable Placement**: Text boxes and shapes contain `{VariableName}`

**Algorithm**:
```
1. Load template file
2. Open with PresentationDocument.Open()
3. For each slide:
   a. For each shape/text box:
      - If text contains {VariableName}, replace with value
      - Preserve formatting
4. Handle image placeholders:
   a. If {ImageVariableName}, replace with image from path or byte array
5. Save to output path
```

### 2.7 PDF Conversion

**Options**:
1. **Office Interop** (requires Office installed): Not preferred
2. **Third-Party Libraries**: Syncfusion, Aspose, GemBox (licensing cost)
3. **External Tools**: LibreOffice headless, Pandoc (deployment complexity)
4. **Open XML to PDF Libraries**: iText, PdfSharp (complex)

**Recommended**: Evaluate Syncfusion DocIO for Word → PDF, postpone Excel/PPT to PDF for v1.0.

---

## 3. Variable Mapping Service

### 3.1 Overview

Manages the mapping between database fields and template variables.

### 3.2 Variable Mapping Model

```csharp
public class VariableMapping
{
    public Guid VariableMappingId { get; set; }
    public string VariableName { get; set; } // e.g., "ProductDescription"
    public string DatabaseField { get; set; } // e.g., "bstlyn__.afg_oms1"
    public string SqlExpression { get; set; } // e.g., "CONCAT(FirstName, ' ', LastName)"
    public string DataType { get; set; } // String, Integer, Decimal, DateTime, Boolean
    public string Category { get; set; } // Job Info, Product Info, QA Data, Customer Info
    public string Description { get; set; }
    public bool IsRequired { get; set; }
    public string DefaultValue { get; set; }
    public string CreatedBy { get; set; }
    public DateTime CreatedDate { get; set; }
}
```

### 3.3 Variable Resolution Algorithm

```
Input: JobId, List<VariableMapping>
Output: Dictionary<string, object>

1. Build SQL query:
   SELECT 
     vm1.SqlExpression AS VariableName1,
     vm2.SqlExpression AS VariableName2,
     ...
   FROM Jobs j
   JOIN [other tables] ON ...
   WHERE j.JobId = @JobId

2. Execute query against CRMDB
3. Map result columns to variable names
4. Type conversion (string → int, decimal, DateTime, etc.)
5. Apply default values for missing data
6. Return dictionary
```

### 3.4 Database Schema Discovery

**UI Feature**: Browse CRMDB schema to select fields

```csharp
public class SchemaService
{
    public async Task<List<TableInfo>> GetTablesAsync()
    {
        // Query INFORMATION_SCHEMA.TABLES
    }
    
    public async Task<List<ColumnInfo>> GetColumnsAsync(string tableName)
    {
        // Query INFORMATION_SCHEMA.COLUMNS
    }
}

public class TableInfo
{
    public string SchemaName { get; set; }
    public string TableName { get; set; }
    public string Description { get; set; }
}

public class ColumnInfo
{
    public string ColumnName { get; set; }
    public string DataType { get; set; }
    public bool IsNullable { get; set; }
    public string Description { get; set; }
}
```

### 3.5 Testing Variable Mappings

**UI Feature**: Test pane with sample job selection

```csharp
public class VariableMappingTestResult
{
    public string VariableName { get; set; }
    public object ResolvedValue { get; set; }
    public bool Success { get; set; }
    public string ErrorMessage { get; set; }
    public TimeSpan ExecutionTime { get; set; }
}
```

---

## 4. Template Management Service

### 4.1 Overview

Handles template CRUD operations, versioning, and validation.

### 4.2 Template Model

```csharp
public class Template
{
    public Guid TemplateId { get; set; }
    public string TemplateName { get; set; }
    public string Description { get; set; }
    public string Category { get; set; } // QA Forms, Order Forms, Job Documents
    public string FileExtension { get; set; } // .docx, .xlsx, .pptx
    public string FilePath { get; set; } // Network or local path to template file
    public int CurrentVersion { get; set; }
    public bool IsActive { get; set; }
    public string UploadedBy { get; set; }
    public DateTime UploadedDate { get; set; }
    public string ModifiedBy { get; set; }
    public DateTime? ModifiedDate { get; set; }
    
    // Navigation
    public List<TemplateVersion> Versions { get; set; }
    public List<string> Variables { get; set; } // Detected variables in template
}

public class TemplateVersion
{
    public Guid TemplateVersionId { get; set; }
    public Guid TemplateId { get; set; }
    public int VersionNumber { get; set; }
    public string FilePath { get; set; }
    public string ChangeNotes { get; set; }
    public string ChangedBy { get; set; }
    public DateTime ChangedDate { get; set; }
    
    // Navigation
    public Template Template { get; set; }
}
```

### 4.3 Template Upload Workflow

```
1. User selects Office file
2. Validate file:
   - File extension is supported (.docx, .xlsx, .pptx)
   - File is valid Open XML format
   - File size < 50MB
3. Parse template to detect variables:
   - Scan for {VariableName} patterns
   - Return list of detected variables
4. User enters metadata:
   - Template Name
   - Description
   - Category
5. Save template file to storage:
   - Option A: Database (varbinary column) - simple, backup included
   - Option B: Network share - separate from app DB
   - Recommended: Network share (faster, easier to manage)
6. Create Template record in database
7. Create TemplateVersion record (version 1)
```

### 4.4 Template Versioning Workflow

```
1. User selects existing template
2. User uploads new version of template file
3. Validate file (same as upload)
4. Increment CurrentVersion
5. Save new file with version suffix: TemplateName_v{Version}.docx
6. Create new TemplateVersion record
7. Keep previous versions for rollback
```

### 4.5 Variable Detection Algorithm

**For Word (.docx)**:
```csharp
public List<string> DetectVariables(string docxPath)
{
    var variables = new HashSet<string>();
    using (var doc = WordprocessingDocument.Open(docxPath, false))
    {
        var body = doc.MainDocumentPart.Document.Body;
        var text = body.InnerText;
        
        // Regex: \{([a-zA-Z0-9_]+)\}
        var matches = Regex.Matches(text, @"\{([a-zA-Z0-9_]+)\}");
        foreach (Match match in matches)
        {
            variables.Add(match.Groups[1].Value);
        }
        
        // Also check headers, footers, tables, text boxes
        // ...
    }
    return variables.ToList();
}
```

**For Excel (.xlsx)**:
```csharp
public List<string> DetectVariables(string xlsxPath)
{
    var variables = new HashSet<string>();
    using (var doc = SpreadsheetDocument.Open(xlsxPath, false))
    {
        foreach (var worksheetPart in doc.WorkbookPart.WorksheetParts)
        {
            var sheetData = worksheetPart.Worksheet.Elements<SheetData>().First();
            foreach (var row in sheetData.Elements<Row>())
            {
                foreach (var cell in row.Elements<Cell>())
                {
                    var cellValue = GetCellValue(doc, cell);
                    var matches = Regex.Matches(cellValue, @"\{([a-zA-Z0-9_]+)\}");
                    foreach (Match match in matches)
                    {
                        variables.Add(match.Groups[1].Value);
                    }
                }
            }
        }
    }
    return variables.ToList();
}
```

---

## 5. Audit Service

### 5.1 Overview

Logs all user actions and system events for compliance, troubleshooting, and analytics.

### 5.2 Audit Entry Model

```csharp
public class AuditEntry
{
    public Guid AuditEntryId { get; set; }
    public DateTime Timestamp { get; set; }
    public string UserName { get; set; } // Windows identity
    public string EventType { get; set; } // Enum: LayoutSelected, DocumentGenerated, RuleEvaluated, etc.
    public Guid? JobId { get; set; }
    public Guid? TemplateId { get; set; }
    public Guid? RuleId { get; set; }
    public string Details { get; set; } // JSON or formatted text
    public string VariableValues { get; set; } // JSON: Dictionary<string, object>
    public string FilePath { get; set; } // Generated document path
    public TimeSpan? Duration { get; set; } // Operation duration
    public bool Success { get; set; }
    public string ErrorMessage { get; set; }
}
```

### 5.3 Event Types

```csharp
public enum AuditEventType
{
    // User Actions
    LayoutSelected,
    DocumentGenerated,
    DocumentExported,
    
    // Rule Engine
    RuleEvaluated,
    RuleCreated,
    RuleModified,
    RuleDeleted,
    RuleActivated,
    RuleDeactivated,
    
    // Template Management
    TemplateUploaded,
    TemplateModified,
    TemplateDeleted,
    TemplateActivated,
    TemplateDeactivated,
    
    // Variable Mapping
    VariableMappingCreated,
    VariableMappingModified,
    VariableMappingDeleted,
    
    // System Events
    ApplicationStarted,
    ApplicationStopped,
    DatabaseConnectionFailed,
    NetworkShareUnavailable,
    
    // Errors
    DocumentGenerationFailed,
    RuleEvaluationError,
    TemplateParsingError
}
```

### 5.4 Audit Log Writing Strategy

**Asynchronous Logging**: Don't block UI/operations

```csharp
public class AuditService : IAuditService
{
    private readonly IAuditRepository _repository;
    private readonly ILogger<AuditService> _logger;
    
    public async Task LogAsync(AuditEntry entry)
    {
        try
        {
            // Fire-and-forget (with error handling)
            await Task.Run(() => _repository.AddAsync(entry));
        }
        catch (Exception ex)
        {
            // Fallback: log to file if database insert fails
            _logger.LogError(ex, "Failed to write audit entry to database");
        }
    }
}
```

**Batch Writes**: Buffer entries and write in batches for performance

```csharp
private readonly BlockingCollection<AuditEntry> _auditQueue = new();

public void StartBackgroundWriter()
{
    Task.Run(async () =>
    {
        var batch = new List<AuditEntry>();
        while (!_cancellationToken.IsCancellationRequested)
        {
            if (_auditQueue.TryTake(out var entry, TimeSpan.FromSeconds(1)))
            {
                batch.Add(entry);
            }
            
            if (batch.Count >= 100 || (_auditQueue.Count == 0 && batch.Any()))
            {
                await _repository.BulkAddAsync(batch);
                batch.Clear();
            }
        }
    });
}
```

### 5.5 Audit Log Retention & Archiving

**Strategy**:
- Active logs: Last 90 days (indexed, fast queries)
- Archived logs: 90 days - 1 year (compressed, slower queries)
- Purge: Older than 1 year (configurable)

**Implementation**:
- Scheduled job runs daily
- Move old entries to archive table
- Create compressed CSV exports for long-term storage

---

## 6. Job Service

### 6.1 Overview

Retrieves job information from CRMDB for user selection and context building.

### 6.2 Job Model

```csharp
public class Job
{
    public string JobId { get; set; }
    public string JobNumber { get; set; }
    public string ProductDescription { get; set; }
    public string CustomerName { get; set; }
    public string OrderNumber { get; set; }
    public DateTime? OrderDate { get; set; }
    public string JobStatus { get; set; }
    public string OperationStep { get; set; }
    public decimal Quantity { get; set; }
    public string Notes { get; set; }
    
    // Extended properties (loaded on-demand)
    public Dictionary<string, object> ExtendedProperties { get; set; }
}
```

### 6.3 Job Querying

```csharp
public interface IJobService
{
    Task<List<Job>> SearchJobsAsync(JobSearchCriteria criteria);
    Task<Job> GetJobByIdAsync(string jobId);
    Task<Dictionary<string, object>> GetJobContextAsync(string jobId);
}

public class JobSearchCriteria
{
    public string JobNumber { get; set; }
    public string CustomerName { get; set; }
    public string ProductDescription { get; set; }
    public DateTime? OrderDateFrom { get; set; }
    public DateTime? OrderDateTo { get; set; }
    public string JobStatus { get; set; }
    public int PageSize { get; set; } = 50;
    public int PageNumber { get; set; } = 1;
}
```

### 6.4 Job Context Building

**JobContext**: Dictionary of all variables for rule evaluation and template population

```csharp
public async Task<Dictionary<string, object>> GetJobContextAsync(string jobId)
{
    var job = await GetJobByIdAsync(jobId);
    var mappings = await _variableMappingService.GetAllAsync();
    
    var context = new Dictionary<string, object>();
    
    // Build dynamic SQL query
    var query = BuildJobContextQuery(jobId, mappings);
    var results = await _database.QueryAsync(query);
    
    foreach (var mapping in mappings)
    {
        var value = results[mapping.VariableName];
        context[mapping.VariableName] = value ?? mapping.DefaultValue;
    }
    
    return context;
}
```

---

## 7. WPF MVVM Implementation

See [WPF_MVVM_GUIDE.md](WPF_MVVM_GUIDE.md) for detailed MVVM patterns and implementation.

### 7.1 Key ViewModels

```csharp
public class MainViewModel : ViewModelBase
{
    public JobSelectionViewModel JobSelection { get; }
    public TemplatePreviewViewModel TemplatePreview { get; }
    public ICommand GenerateDocumentCommand { get; }
}

public class JobSelectionViewModel : ViewModelBase
{
    public ObservableCollection<Job> Jobs { get; set; }
    public Job SelectedJob { get; set; }
    public ICommand SearchCommand { get; }
}

public class RuleConfigurationViewModel : ViewModelBase
{
    public ObservableCollection<Rule> Rules { get; set; }
    public Rule SelectedRule { get; set; }
    public ICommand SaveRuleCommand { get; }
    public ICommand TestRuleCommand { get; }
}
```

---

## 8. Data Access Layer

### 8.1 Repository Pattern

```csharp
public interface IRepository<T> where T : class
{
    Task<T> GetByIdAsync(Guid id);
    Task<List<T>> GetAllAsync();
    Task AddAsync(T entity);
    Task UpdateAsync(T entity);
    Task DeleteAsync(Guid id);
}

public class TemplateRepository : IRepository<Template>
{
    private readonly ApplicationDbContext _context;
    
    public TemplateRepository(ApplicationDbContext context)
    {
        _context = context;
    }
    
    public async Task<Template> GetByIdAsync(Guid id)
    {
        return await _context.Templates
            .Include(t => t.Versions)
            .FirstOrDefaultAsync(t => t.TemplateId == id);
    }
    
    // ... other methods
}
```

### 8.2 Entity Framework Core Configuration

```csharp
public class ApplicationDbContext : DbContext
{
    public DbSet<Template> Templates { get; set; }
    public DbSet<TemplateVersion> TemplateVersions { get; set; }
    public DbSet<Rule> Rules { get; set; }
    public DbSet<VariableMapping> VariableMappings { get; set; }
    public DbSet<AuditEntry> AuditEntries { get; set; }
    
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Template>()
            .HasKey(t => t.TemplateId);
        
        modelBuilder.Entity<Template>()
            .HasMany(t => t.Versions)
            .WithOne(v => v.Template)
            .HasForeignKey(v => v.TemplateId);
        
        // ... other configurations
    }
}
```

---

## 9. Error Handling & Logging

### 9.1 Global Exception Handling

```csharp
public partial class App : Application
{
    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);
        
        AppDomain.CurrentDomain.UnhandledException += OnUnhandledException;
        DispatcherUnhandledException += OnDispatcherUnhandledException;
    }
    
    private void OnUnhandledException(object sender, UnhandledExceptionEventArgs e)
    {
        var ex = e.ExceptionObject as Exception;
        _logger.LogCritical(ex, "Unhandled exception");
        MessageBox.Show($"Critical error: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
    }
}
```

### 9.2 Logging Configuration

**Serilog Configuration**:
```csharp
Log.Logger = new LoggerConfiguration()
    .MinimumLevel.Information()
    .WriteTo.File("logs/stllayouts-.log", rollingInterval: RollingInterval.Day)
    .WriteTo.Console()
    .WriteTo.MSSqlServer(connectionString, tableName: "AppLogs")
    .CreateLogger();
```

---

**Next Steps**: See [WPF_MVVM_GUIDE.md](WPF_MVVM_GUIDE.md) for MVVM implementation details.
