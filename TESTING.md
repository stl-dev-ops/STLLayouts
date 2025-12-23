# Testing Strategy

## Overview

This document outlines the testing strategy for STL Layouts, including unit tests, integration tests, UI tests, and manual testing procedures.

---

## Testing Pyramid

```
           ┌───────────┐
           │  Manual   │  ← Exploratory, UAT
           │  Testing  │
           └───────────┘
         ┌─────────────────┐
         │   UI Tests       │  ← End-to-end, UI automation
         └─────────────────┘
     ┌───────────────────────────┐
     │  Integration Tests         │  ← Service layer, database
     └───────────────────────────┘
┌──────────────────────────────────────┐
│         Unit Tests                    │  ← Business logic, ViewModels
└──────────────────────────────────────┘
```

**Target Coverage**:
- Unit Tests: 80%+ code coverage
- Integration Tests: All critical paths
- UI Tests: Key user workflows
- Manual Tests: Exploratory and edge cases

---

## Unit Testing

### Framework

- **xUnit**: Test framework
- **Moq**: Mocking library
- **FluentAssertions**: Assertion library

### Unit Test Structure

```csharp
using Xunit;
using Moq;
using FluentAssertions;

public class RuleEvaluatorTests
{
    [Fact]
    public void EvaluateRule_WithMatchingCondition_ReturnsTrue()
    {
        // Arrange
        var rule = new Rule
        {
            Condition = "ProductDescription LIKE '%Widget%'"
        };
        var jobContext = new Dictionary<string, object>
        {
            ["ProductDescription"] = "Widget ABC"
        };
        var evaluator = new RuleEvaluator();

        // Act
        var result = evaluator.Evaluate(rule, jobContext);

        // Assert
        result.Should().BeTrue();
    }

    [Fact]
    public void EvaluateRule_WithNonMatchingCondition_ReturnsFalse()
    {
        // Arrange
        var rule = new Rule
        {
            Condition = "ProductDescription LIKE '%Widget%'"
        };
        var jobContext = new Dictionary<string, object>
        {
            ["ProductDescription"] = "Gadget XYZ"
        };
        var evaluator = new RuleEvaluator();

        // Act
        var result = evaluator.Evaluate(rule, jobContext);

        // Assert
        result.Should().BeFalse();
    }
}
```

### ViewModel Testing

```csharp
public class JobSelectionViewModelTests
{
    private readonly Mock<IJobService> _mockJobService;
    private readonly Mock<IRuleEngineService> _mockRuleEngine;
    private readonly JobSelectionViewModel _viewModel;

    public JobSelectionViewModelTests()
    {
        _mockJobService = new Mock<IJobService>();
        _mockRuleEngine = new Mock<IRuleEngineService>();
        _viewModel = new JobSelectionViewModel(_mockJobService.Object, null, _mockRuleEngine.Object);
    }

    [Fact]
    public async Task SearchCommand_WithValidJobNumber_LoadsJobs()
    {
        // Arrange
        var expectedJobs = new List<Job>
        {
            new Job { JobNumber = "JOB-001", ProductDescription = "Widget" }
        };
        _mockJobService.Setup(s => s.SearchJobsAsync(It.IsAny<JobSearchCriteria>()))
            .ReturnsAsync(expectedJobs);
        _viewModel.SearchText = "JOB-001";

        // Act
        await _viewModel.SearchCommand.ExecuteAsync(null);

        // Assert
        _viewModel.Jobs.Should().HaveCount(1);
        _viewModel.Jobs[0].JobNumber.Should().Be("JOB-001");
    }

    [Fact]
    public async Task SelectedJob_Changed_LoadsSuggestedTemplates()
    {
        // Arrange
        var job = new Job { JobId = "123" };
        var expectedTemplates = new List<Template>
        {
            new Template { TemplateName = "QA Signoff" }
        };
        _mockRuleEngine.Setup(r => r.EvaluateRulesAsync(It.IsAny<Job>()))
            .ReturnsAsync(expectedTemplates);

        // Act
        _viewModel.SelectedJob = job;
        await Task.Delay(100); // Allow async operation to complete

        // Assert
        _viewModel.SuggestedTemplates.Should().HaveCount(1);
        _viewModel.SuggestedTemplates[0].TemplateName.Should().Be("QA Signoff");
    }
}
```

### Service Testing

```csharp
public class DocumentGenerationServiceTests
{
    [Fact]
    public async Task GenerateAsync_WithValidTemplate_CreatesDocument()
    {
        // Arrange
        var mockGenerator = new Mock<IDocumentGenerator>();
        mockGenerator.Setup(g => g.GenerateAsync(It.IsAny<Template>(), It.IsAny<Dictionary<string, object>>(), It.IsAny<DocumentGenerationOptions>()))
            .ReturnsAsync(new GeneratedDocument { FilePath = "test.docx" });

        var service = new DocumentGenerationService(mockGenerator.Object);
        var template = new Template { TemplateId = Guid.NewGuid() };
        var variables = new Dictionary<string, object> { ["JobNumber"] = "JOB-001" };

        // Act
        var result = await service.GenerateAsync(template, variables, new DocumentGenerationOptions());

        // Assert
        result.Should().NotBeNull();
        result.FilePath.Should().Be("test.docx");
    }
}
```

---

## Integration Testing

### Database Integration Tests

```csharp
using Microsoft.EntityFrameworkCore;
using Xunit;

public class TemplateRepositoryIntegrationTests : IDisposable
{
    private readonly ApplicationDbContext _context;
    private readonly TemplateRepository _repository;

    public TemplateRepositoryIntegrationTests()
    {
        var options = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString())
            .Options;
        _context = new ApplicationDbContext(options);
        _repository = new TemplateRepository(_context);
    }

    [Fact]
    public async Task AddAsync_WithValidTemplate_SavesToDatabase()
    {
        // Arrange
        var template = new Template
        {
            TemplateId = Guid.NewGuid(),
            TemplateName = "Test Template",
            IsActive = true
        };

        // Act
        await _repository.AddAsync(template);
        var saved = await _repository.GetByIdAsync(template.TemplateId);

        // Assert
        saved.Should().NotBeNull();
        saved.TemplateName.Should().Be("Test Template");
    }

    public void Dispose()
    {
        _context.Dispose();
    }
}
```

### Service Integration Tests

```csharp
public class RuleEngineIntegrationTests
{
    [Fact]
    public async Task EvaluateRulesAsync_WithMultipleRules_ReturnsInPriorityOrder()
    {
        // Arrange
        var mockRuleRepo = new Mock<IRuleRepository>();
        mockRuleRepo.Setup(r => r.GetAllActiveAsync())
            .ReturnsAsync(new List<Rule>
            {
                new Rule { Priority = 100, Condition = "true" },
                new Rule { Priority = 50, Condition = "true" }
            });

        var service = new RuleEngineService(mockRuleRepo.Object);
        var job = new Job { JobId = "123" };

        // Act
        var results = await service.EvaluateRulesAsync(job);

        // Assert
        results.Should().HaveCount(2);
        results[0].Priority.Should().Be(100);
        results[1].Priority.Should().Be(50);
    }
}
```

---

## UI Testing

### Framework

- **Appium.WebDriver** or **FlaUI**: WPF UI automation
- **xUnit**: Test runner

### UI Test Example

```csharp
using FlaUI.Core;
using FlaUI.Core.AutomationElements;
using FlaUI.UIA3;
using Xunit;

public class JobSelectionUITests : IDisposable
{
    private readonly Application _application;
    private readonly AutomationBase _automation;

    public JobSelectionUITests()
    {
        _application = Application.Launch("STLLayouts.WpfApp.exe");
        _automation = new UIA3Automation();
    }

    [Fact]
    public void SearchJobs_WithJobNumber_DisplaysResults()
    {
        // Arrange
        var mainWindow = _application.GetMainWindow(_automation);
        var searchBox = mainWindow.FindFirstDescendant(cf => cf.ByAutomationId("SearchTextBox"))
            .AsTextBox();
        var searchButton = mainWindow.FindFirstDescendant(cf => cf.ByAutomationId("SearchButton"))
            .AsButton();

        // Act
        searchBox.Text = "JOB-001";
        searchButton.Click();
        Thread.Sleep(2000); // Wait for results

        // Assert
        var resultsGrid = mainWindow.FindFirstDescendant(cf => cf.ByAutomationId("JobsDataGrid"));
        resultsGrid.Should().NotBeNull();
    }

    public void Dispose()
    {
        _application?.Close();
        _automation?.Dispose();
    }
}
```

---

## End-to-End Testing

### Scenario: Generate QA Signoff Sheet

```
Given a user is logged into STL Layouts
When the user searches for job "JOB-001"
And selects the job from the results
And the system suggests "QA Signoff Sheet" template
And the user clicks "Generate Document"
Then a document is created at "\\fileserver\qa-documents\JOB-001_QA_Signoff_20251215.docx"
And the document contains populated variables
And an audit log entry is created
```

**Automated Test**:
```csharp
[Fact]
public async Task EndToEnd_GenerateQASignoffSheet_Success()
{
    // Arrange
    var app = new TestApplication();
    await app.StartAsync();

    // Act
    await app.SearchJobsAsync("JOB-001");
    await app.SelectJobAsync("JOB-001");
    var suggestedTemplates = await app.GetSuggestedTemplatesAsync();
    await app.GenerateDocumentAsync(suggestedTemplates.First());

    // Assert
    var documentPath = $"\\\\fileserver\\qa-documents\\JOB-001_QA_Signoff_{DateTime.Now:yyyyMMdd}*.docx";
    File.Exists(documentPath).Should().BeTrue();

    var auditLog = await app.GetAuditLogsAsync();
    auditLog.Should().Contain(entry => entry.EventType == "DocumentGenerated");
}
```

---

## Performance Testing

### Load Testing

**Goal**: Verify application handles 20 concurrent users

```csharp
[Fact]
public async Task LoadTest_20ConcurrentUsers_GenerateDocuments()
{
    // Arrange
    var tasks = new List<Task>();
    var service = new DocumentGenerationService();

    // Act
    for (int i = 0; i < 20; i++)
    {
        tasks.Add(service.GenerateAsync(template, variables, options));
    }
    await Task.WhenAll(tasks);

    // Assert
    tasks.All(t => t.IsCompletedSuccessfully).Should().BeTrue();
}
```

### Performance Benchmarks

Use **BenchmarkDotNet** for micro-benchmarks:

```csharp
using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Running;

[MemoryDiagnoser]
public class RuleEvaluationBenchmarks
{
    private RuleEvaluator _evaluator;
    private Rule _rule;
    private Dictionary<string, object> _jobContext;

    [GlobalSetup]
    public void Setup()
    {
        _evaluator = new RuleEvaluator();
        _rule = new Rule { Condition = "ProductDescription LIKE '%Widget%'" };
        _jobContext = new Dictionary<string, object>
        {
            ["ProductDescription"] = "Widget ABC"
        };
    }

    [Benchmark]
    public bool EvaluateRule()
    {
        return _evaluator.Evaluate(_rule, _jobContext);
    }
}
```

**Run Benchmarks**:
```powershell
dotnet run -c Release --project tests/STLLayouts.Benchmarks
```

---

## Manual Testing

### Test Cases

#### TC-001: Job Selection
1. Launch application
2. Enter job number "JOB-001" in search box
3. Click "Search"
4. **Expected**: Job appears in results grid
5. Select job
6. **Expected**: Job details displayed, suggested templates loaded

#### TC-002: Document Generation
1. Complete TC-001
2. Select suggested template "QA Signoff Sheet"
3. Click "Preview" (optional)
4. Click "Generate Document"
5. **Expected**: Progress indicator shown
6. **Expected**: Success message displayed
7. **Expected**: Document saved to network share
8. Open generated document
9. **Expected**: All variables populated correctly

#### TC-003: Rule Configuration
1. Navigate to Rule Configuration
2. Click "New Rule"
3. Enter rule name "Test Rule"
4. Enter condition "ProductDescription LIKE '%Widget%'"
5. Select template "QA Signoff Sheet"
6. Set priority 100
7. Click "Save"
8. **Expected**: Rule saved successfully
9. Click "Test Rule"
10. Select sample job
11. **Expected**: Rule evaluation result shown

---

## Test Data

### Sample Jobs

```sql
INSERT INTO Jobs (JobId, JobNumber, ProductDescription, CustomerName, OrderQuantity)
VALUES 
  ('123', 'JOB-001', 'Widget ABC', 'ACME Corp', 100),
  ('456', 'JOB-002', 'Gadget XYZ', 'XYZ Industries', 50),
  ('789', 'JOB-003', 'Widget DEF', 'ABC Company', 200);
```

### Sample Templates

- `QA_Signoff_Template.docx`: Standard QA form
- `Order_Confirmation.xlsx`: Order summary
- `Job_Status.pptx`: Status presentation

---

## Continuous Integration (CI)

### Build Pipeline

```yaml
# azure-pipelines.yml
trigger:
  - main
  - develop

pool:
  vmImage: 'windows-latest'

steps:
- task: UseDotNet@2
  inputs:
    packageType: 'sdk'
    version: '8.x'

- task: DotNetCoreCLI@2
  displayName: 'Restore NuGet packages'
  inputs:
    command: 'restore'
    projects: '**/*.csproj'

- task: DotNetCoreCLI@2
  displayName: 'Build solution'
  inputs:
    command: 'build'
    projects: '**/*.csproj'
    arguments: '--configuration Release'

- task: DotNetCoreCLI@2
  displayName: 'Run unit tests'
  inputs:
    command: 'test'
    projects: '**/STLLayouts.UnitTests.csproj'
    arguments: '--configuration Release --collect:"XPlat Code Coverage"'

- task: PublishCodeCoverageResults@1
  inputs:
    codeCoverageTool: 'Cobertura'
    summaryFileLocation: '$(Agent.TempDirectory)/**/coverage.cobertura.xml'
```

---

## Test Reporting

### Coverage Report

Generate code coverage report:
```powershell
dotnet test --collect:"XPlat Code Coverage"
reportgenerator -reports:**/coverage.cobertura.xml -targetdir:./coverage-report -reporttypes:Html
```

### Test Results Dashboard

- Display pass/fail counts
- Trend analysis (over time)
- Coverage metrics
- Performance metrics

---

## Acceptance Testing

### User Acceptance Testing (UAT)

**Process**:
1. Deploy to UAT environment
2. Provide test scenarios to stakeholders
3. Stakeholders execute tests
4. Document issues and feedback
5. Fix issues and retest
6. Sign-off for production deployment

**UAT Test Scenarios**:
- QA operator generates daily signoff sheets
- Order entry prints customer order forms
- DevOps configures new template and rules
- Supervisor reviews audit logs

---

## Test Automation Strategy

### Priority

1. **High Priority** (automate first):
   - Document generation (core functionality)
   - Rule evaluation
   - Variable mapping resolution

2. **Medium Priority**:
   - Template upload and management
   - Job selection and search
   - Audit logging

3. **Low Priority** (manual testing acceptable):
   - UI layout and styling
   - Error message text
   - Help documentation

---

**Next Steps**: See [OPERATIONS.md](OPERATIONS.md) for operational procedures.
