# Architecture Overview

## System Architecture

STL Layouts follows a layered architecture pattern with clear separation of concerns, enabling maintainability, testability, and future extensibility to API-based deployments.

## High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                     Presentation Layer                       │
│  ┌─────────────────────────────────────────────────────┐   │
│  │           WPF Application (MVVM)                     │   │
│  │  ┌──────────┐  ┌──────────┐  ┌─────────────────┐   │   │
│  │  │  Views   │  │ViewModels│  │  UI Services     │   │   │
│  │  └──────────┘  └──────────┘  └─────────────────┘   │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
                           ▼
┌─────────────────────────────────────────────────────────────┐
│                   Application Services Layer                 │
│  ┌────────────┐ ┌──────────────┐ ┌──────────────────┐      │
│  │  Template  │ │     Rule     │ │    Document      │      │
│  │  Service   │ │    Engine    │ │   Generation     │      │
│  └────────────┘ └──────────────┘ └──────────────────┘      │
│  ┌────────────┐ ┌──────────────┐ ┌──────────────────┐      │
│  │   Audit    │ │   Variable   │ │      Job         │      │
│  │  Service   │ │   Mapping    │ │    Service       │      │
│  └────────────┘ └──────────────┘ └──────────────────┘      │
└─────────────────────────────────────────────────────────────┘
                           ▼
┌─────────────────────────────────────────────────────────────┐
│                      Core Domain Layer                       │
│  ┌────────────┐ ┌──────────────┐ ┌──────────────────┐      │
│  │  Entities  │ │  Interfaces  │ │  Domain Logic    │      │
│  └────────────┘ └──────────────┘ └──────────────────┘      │
└─────────────────────────────────────────────────────────────┘
                           ▼
┌─────────────────────────────────────────────────────────────┐
│                    Data Access Layer                         │
│  ┌────────────┐ ┌──────────────┐ ┌──────────────────┐      │
│  │ Repository │ │  EF Core /   │ │   SQL Client     │      │
│  │  Pattern   │ │  Dapper      │ │                  │      │
│  └────────────┘ └──────────────┘ └──────────────────┘      │
└─────────────────────────────────────────────────────────────┘
                           ▼
┌─────────────────────────────────────────────────────────────┐
│                  Infrastructure & External                   │
│  ┌────────────┐ ┌──────────────┐ ┌──────────────────┐      │
│  │ SQL Server │ │  Open XML    │ │  Network Share   │      │
│  │  (CRMDB)   │ │    SDK       │ │    Storage       │      │
│  └────────────┘ └──────────────┘ └──────────────────┘      │
└─────────────────────────────────────────────────────────────┘
```

## Layer Details

### 1. Presentation Layer (WPF MVVM)

**Purpose**: User interface and interaction

**Components**:
- **Views**: XAML-defined UI screens
- **ViewModels**: Business logic coordination, data binding
- **Commands**: ICommand implementations for user actions
- **Converters**: Data transformation for UI binding
- **Behaviors**: Reusable UI behaviors

**Key Views**:
- `JobSelectionView`: Browse and select jobs
- `TemplatePreviewView`: Preview selected templates
- `RuleConfigurationView`: Configure layout selection rules
- `VariableMappingView`: Map database fields to template variables
- `AuditLogView`: View audit trails
- `TemplateManagementView`: Upload and manage templates

**Patterns**:
- MVVM (Model-View-ViewModel)
- Dependency Injection (DI)
- Command Pattern
- Observer Pattern (INotifyPropertyChanged)

### 2. Application Services Layer

**Purpose**: Business logic orchestration and application-specific operations

**Services**:

#### TemplateService
- Template CRUD operations
- Template versioning and history
- Template validation
- Template metadata management

#### RuleEngineService
- Rule parsing (SQL-like, C#-like expressions)
- Rule evaluation against job context
- Rule priority and conflict resolution
- Rule validation and testing

#### DocumentGenerationService
- Open XML document population
- Variable substitution
- Multi-format support (docx, xlsx, pptx)
- PDF conversion
- Batch generation

#### AuditService
- Event logging
- User action tracking
- Rule evaluation logging
- Document generation history
- Performance metrics

#### VariableMappingService
- Database field discovery
- Variable definition management
- Mapping CRUD operations
- Variable validation

#### JobService
- Job querying and filtering
- Job metadata retrieval
- Job-specific data aggregation

### 3. Core Domain Layer

**Purpose**: Business entities, interfaces, and domain logic

**Key Entities**:
- `Template`: Office template metadata
- `TemplateVersion`: Version history
- `Rule`: Layout selection rule definition
- `VariableMapping`: Database field to variable mapping
- `Job`: Production job representation
- `AuditEntry`: Audit log entry
- `DocumentGenerationRequest`: Generation request context
- `GeneratedDocument`: Result of generation

**Interfaces**:
- `ITemplateRepository`
- `IRuleRepository`
- `IVariableMappingRepository`
- `IJobRepository`
- `IAuditRepository`
- `IDocumentGenerator`
- `IRuleEvaluator`

### 4. Data Access Layer

**Purpose**: Database operations and persistence

**Components**:
- **Repositories**: Data access abstraction
- **DbContext**: Entity Framework Core context
- **Migrations**: Database schema versioning
- **Query Optimization**: Performance tuning

**Database Strategy**:
- **Application Database**: Store templates, rules, mappings, audit logs
- **CRMDB (Read-Only)**: Source database for job and production data

**ORM Options**:
- Entity Framework Core for application database
- Dapper for high-performance CRMDB queries

### 5. Infrastructure Layer

**Components**:

#### SQL Server Integration
- Connection pooling
- Windows Authentication
- Read-only access to CRMDB
- Application database for metadata

#### Open XML SDK
- Document parsing
- Content replacement
- Style preservation
- Relationship management

#### Network Share Storage
- File I/O operations
- Path validation
- Access control verification
- Failure retry logic

## Cross-Cutting Concerns

### Logging
- **Framework**: Serilog or NLog
- **Targets**: File, Database, Windows Event Log
- **Levels**: Trace, Debug, Info, Warning, Error, Fatal

### Security
- **Authentication**: Windows Authentication (Active Directory)
- **Authorization**: Role-based access control (RBAC)
- **Data Protection**: Sensitive data encryption at rest
- **Connection Security**: Encrypted SQL connections

### Configuration
- **appsettings.json**: Environment-specific settings
- **User Settings**: Per-user preferences
- **Database Configuration**: Rules, mappings stored in DB

### Caching
- **In-Memory Cache**: Template metadata, rule definitions
- **Cache Invalidation**: Event-based invalidation on updates

### Error Handling
- **Global Exception Handler**: Catch unhandled exceptions
- **User-Friendly Messages**: Transform technical errors
- **Automatic Retry**: Network and transient failures
- **Diagnostic Information**: Detailed logs for support

## Design Patterns

### Creational Patterns
- **Dependency Injection**: Constructor injection throughout
- **Factory Pattern**: Document generator factory (docx, xlsx, pptx)
- **Builder Pattern**: Rule builder, query builder

### Structural Patterns
- **Repository Pattern**: Data access abstraction
- **Adapter Pattern**: Open XML SDK adapters
- **Facade Pattern**: Service layer facades

### Behavioral Patterns
- **Strategy Pattern**: Rule evaluation strategies
- **Chain of Responsibility**: Rule evaluation pipeline
- **Command Pattern**: User actions in UI
- **Observer Pattern**: Data binding, event aggregation

## Performance Considerations

### Document Generation
- **Parallel Processing**: Generate multiple documents concurrently
- **Memory Management**: Stream-based processing for large files
- **Template Caching**: Cache parsed templates in memory
- **Connection Pooling**: Reuse database connections

### Rule Engine
- **Expression Compilation**: Compile rules to IL for speed
- **Rule Indexing**: Index rules by priority and criteria
- **Short-Circuit Evaluation**: Stop on first match when appropriate

### Database Access
- **Query Optimization**: Proper indexing on CRMDB views
- **Batch Operations**: Bulk inserts for audit logs
- **Read-Only Connections**: Use read-only intent for CRMDB

## Scalability & Future Extensibility

### Desktop to API Migration Path
Current desktop architecture supports future API extraction:

1. **Service Layer Abstraction**: Services can be hosted in ASP.NET Core API
2. **Stateless Design**: Services don't rely on UI state
3. **Authentication**: Windows Auth translates to JWT/OAuth
4. **Shared Core**: Core and Services projects reusable in API

### Horizontal Scaling (Future)
- Load-balanced API servers
- Distributed caching (Redis)
- Queue-based document generation (RabbitMQ, Azure Service Bus)

## Deployment Architecture

### Desktop Deployment
```
┌───────────────────────┐
│   User Workstation    │
│  ┌─────────────────┐  │
│  │  WPF App        │  │
│  │  (.NET 8)       │  │
│  └────────┬────────┘  │
│           │           │
└───────────┼───────────┘
            │
    ┌───────┼───────┐
    ▼               ▼
┌────────┐    ┌──────────┐
│SQL     │    │ Network  │
│Server  │    │ Share    │
│(CRMDB) │    │ Storage  │
└────────┘    └──────────┘
```

### Future API Architecture (Optional)
```
┌──────────────┐      ┌──────────────┐
│ WPF Client   │      │ Web Client   │
└──────┬───────┘      └──────┬───────┘
       │                     │
       └──────────┬──────────┘
                  ▼
          ┌──────────────┐
          │  API Gateway │
          └──────┬───────┘
                 ▼
      ┌──────────────────────┐
      │  ASP.NET Core API    │
      │  (Services Layer)    │
      └──────┬──────┬────────┘
             │      │
         ┌───┘      └───┐
         ▼              ▼
    ┌────────┐    ┌──────────┐
    │SQL     │    │ Network  │
    │Server  │    │ Share    │
    └────────┘    └──────────┘
```

## Technology Decisions

| Aspect | Technology | Rationale |
|--------|-----------|-----------|
| UI Framework | WPF | Rich desktop UI, mature MVVM support |
| Application Framework | .NET 8+ | Modern, high-performance, long-term support |
| Document Generation | Open XML SDK | No Office dependency, fast, reliable |
| Database ORM | EF Core + Dapper | EF for app DB, Dapper for performance |
| Rule Engine | Custom (C# expressions) | Flexible, SQL-like + C# syntax |
| Authentication | Windows Auth | Enterprise integration, SSO |
| Logging | Serilog | Structured logging, multiple sinks |
| DI Container | Microsoft.Extensions.DI | Built-in, well-supported |
| Testing | xUnit + Moq | Industry standard |

## Security Architecture

### Authentication Flow
1. User launches WPF app
2. App retrieves Windows identity (`WindowsIdentity.GetCurrent()`)
3. SQL connections use Integrated Security
4. Network share access uses Windows credentials

### Authorization Model
- **Admin**: Full access to rules, templates, mappings
- **Power User**: Create/modify templates and rules
- **Operator**: Select jobs and generate documents
- **Read-Only**: View audit logs and reports

### Data Security
- Sensitive mappings encrypted in database
- Audit logs tamper-evident (hash chain)
- Network share permissions enforced by OS

## Monitoring & Observability

### Metrics
- Documents generated per hour
- Rule evaluation time
- Template generation time
- Error rate
- Active users

### Health Checks
- Database connectivity
- Network share availability
- Template repository integrity

### Alerting
- Failed document generation
- Rule evaluation errors
- Database connection failures
- Disk space warnings (network share)

## Code Quality & Governance

### Strict Compilation Standards

To ensure code quality and maintainability, the STL Layouts project treats all compiler warnings as errors across all project files.

**Configuration**:
```xml
<PropertyGroup>
  <TreatWarningsAsErrors>true</TreatWarningsAsErrors>
</PropertyGroup>
```

**Applied to**:
- All source projects (STLLayouts.Core, STLLayouts.Data, STLLayouts.Services, STLLayouts.RuleEngine, STLLayouts.OfficeGen, STLLayouts.WpfApp)
- All test projects (STLLayouts.UnitTests, STLLayouts.IntegrationTests)

**Rationale**:
- **Early Detection**: Prevents potential runtime issues from propagating
- **Code Consistency**: Enforces uniform coding standards
- **Null Safety**: Requires explicit null-handling in nullable contexts
- **Type Safety**: Catches type-related issues at compile time
- **Developer Discipline**: Encourages best practices during development

### Nullable Reference Types

The project uses C# nullable reference types (`<Nullable>enable</Nullable>`) to:
- Explicitly mark nullable and non-nullable references
- Require null checks for operations on potentially null values
- Prevent null reference exceptions at runtime
- Document intent in the code itself

### Enforced Standards

**C# Best Practices**:
- Null-coalescing operators (`??`) for default values
- Null-forgiving operators (`!`) only when justified and documented
- Implicit usings enabled for cleaner code
- Nullable context enabled for type safety

### Development Workflow

**VS Code Tasks & PowerShell Scripts**:
- All build and run operations executed via VS Code tasks
- PowerShell scripts handle background processes (servers, builds, launches)
- Tasks defined in `.vscode/tasks.json` for consistent workflow
- Background execution prevents terminal blocking
- Logs captured for debugging

---

## EXECUTION GOVERNANCE - MANDATORY

### Application Execution Policy

**THIS IS MANDATORY**: The STL Layouts application MUST be executed exclusively through VS Code tasks. This governance is enforced automatically in the run scripts and is essential for consistent, predictable behavior.

### Why This Matters

1. **Process Management**: Previous application instances must be terminated before launching new ones to prevent port conflicts and state corruption
2. **Working Directory**: Correct working directory ensures `appsettings.json` is found and configuration loads properly
3. **Output Capture**: Run scripts capture application output to timestamped log files for debugging
4. **Consistency**: Standardized execution prevents operational errors and ensures repeatable behavior
5. **Auditability**: All application launches are logged with timestamps and process IDs

### REQUIRED: Always Use VS Code Tasks

**✓ CORRECT - How to run the application:**

1. Press `Ctrl+Shift+P` in VS Code
2. Type `Tasks: Run Task` and press Enter
3. Select one of:
   - `Run Application (Release)` - Standard production-like execution
   - `Run Application (Debug)` - Debug with console output visible

**Alternative (If not using VS Code UI):**
```powershell
# From the solution root directory:
pwsh -ExecutionPolicy Bypass -File "./scripts/run.ps1"      # Release mode
pwsh -ExecutionPolicy Bypass -File "./scripts/run-debug.ps1" # Debug mode
```

### ❌ FORBIDDEN: Do NOT use these approaches

**❌ Never use direct dotnet run:**
```powershell
# DO NOT DO THIS:
dotnet run --project src\STLLayouts.WpfApp
```
**Reason**: Does not kill previous instances; appsettings.json may not load

**❌ Never use terminal without scripts:**
```powershell
# DO NOT DO THIS:
cd src\STLLayouts.WpfApp
dotnet run
```
**Reason**: Working directory problems; no process cleanup; no logging

**❌ Never build and run as separate steps:**
```powershell
# DO NOT DO THIS:
dotnet build
cd src\STLLayouts.WpfApp
dotnet run
```
**Reason**: Breaks governance; may use stale assembly; no cleanup

### How The Run Scripts Enforce Governance

Each run script automatically:

1. **Cleans up previous instances** (FIRST):
   ```powershell
   Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*' -or $_.ProcessName -eq 'dotnet'} | Stop-Process -Force
   ```
   This ensures no port or file conflicts from previous runs

2. **Sets correct working directory**:
   ```powershell
   Push-Location $projectDir
   dotnet run --configuration Release
   Pop-Location
   ```
   This ensures `appsettings.json` is found and configuration loads

3. **Captures logs**:
   ```powershell
   -RedirectStandardOutput $logFile -RedirectStandardError "${logFile}.err"
   ```
   Logs are written to `logs/run-YYYYMMDD-HHMMSS.log` for debugging

4. **Reports process information**:
   ```
   [HH:mm:ss] Starting application...
   Application running with PID: ####
   [HH:mm:ss] Application exited successfully
   ```

### Verification

To verify the application is running correctly:

1. **Check process list**:
   ```powershell
   Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*'}
   ```
   Should show the WPF application running

2. **Check log files**:
   ```powershell
   Get-ChildItem logs/ -Recurse | Sort-Object LastWriteTime -Descending | Select-Object -First 5
   ```
   Latest log should show clean startup with no configuration errors

3. **Monitor logs in real-time**:
   ```powershell
   Get-Content logs/run-*.log -Tail 20 -Wait
   ```
   Watch for startup messages and click actions

### Troubleshooting

**If the application doesn't start:**
1. Kill any lingering processes: `taskkill /F /IM dotnet.exe`
2. Check logs: `Get-Content logs/run-*.log -Tail 50`
3. Look for database connection errors: "Cannot open database"
4. Verify appsettings.json exists in the project directory

**If you see "Connection refused" errors:**
1. This means multiple instances are running (previous script termination failed)
2. Kill all dotnet processes: `taskkill /F /IM dotnet.exe`
3. Wait 2 seconds: `Start-Sleep -Seconds 2`
4. Run again via task: `Ctrl+Shift+P` → `Tasks: Run Task`

---

**Next Steps**: See [DESIGN.md](DESIGN.md) for detailed component design.
