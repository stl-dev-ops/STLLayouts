# Contributing to STL Layouts

Thank you for considering contributing to STL Layouts! This document provides guidelines for contributing to the project.

---

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Provide constructive feedback
- Focus on what is best for the project
- Show empathy towards other contributors

---

## How to Contribute

### Reporting Bugs

**Before submitting a bug report**:
- Check existing issues to avoid duplicates
- Verify the bug exists in the latest version
- Collect relevant information (logs, screenshots, steps to reproduce)

**Bug Report Template**:
```
**Description**: Clear description of the bug

**Steps to Reproduce**:
1. Step 1
2. Step 2
3. Step 3

**Expected Behavior**: What should happen

**Actual Behavior**: What actually happens

**Environment**:
- OS: Windows 10/11
- .NET Version: 8.0.x
- Application Version: 1.0.x

**Logs/Screenshots**: Attach relevant logs or screenshots
```

### Suggesting Enhancements

**Enhancement Request Template**:
```
**Feature Description**: Clear description of the proposed feature

**Use Case**: Why is this feature needed? Who will benefit?

**Proposed Solution**: How should this feature work?

**Alternatives Considered**: Other approaches you've thought about

**Additional Context**: Mockups, examples, references
```

### Pull Requests

**Before submitting a pull request**:
1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Make your changes
4. Add tests for new functionality
5. Use repo scripts for build/run (do not run raw `dotnet build/run`):
   - `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/build.ps1"`
   - `pwsh -NoProfile -ExecutionPolicy Bypass -Command "./scripts/rebuild.ps1"`
6. Update documentation if needed
7. Create/associate a GitHub issue for the change and reference it in every commit.
8. Commit your changes (must reference the issue and include delta time trailers):
   - Include `#<issue>` in the subject/body.
   - Include `Issue: <issue url>` trailer.
   - Include `Delta-Time: hh:mm:ss` trailer.
9. Push to your fork: `git push origin feature/my-feature`
10. Submit a pull request

**Pull Request Template**:
```
**Description**: What does this PR do?

**Related Issue**: Fixes #123

**Issue URL**: https://github.com/stl-dev-ops/STLLayouts/issues/123

**Delta time (hh:mm:ss)**: 00:30:00

**Changes Made**:
- Change 1
- Change 2
- Change 3

**Testing**:
- [ ] Unit tests added/updated
- [ ] Integration tests added/updated
- [ ] Manual testing performed

**Checklist**:
- [ ] Code follows project style guidelines
- [ ] Documentation updated
- [ ] Tests pass
- [ ] No breaking changes (or documented if unavoidable)
```

---

## Development Setup

### Prerequisites

- Visual Studio 2022 or VS Code
- .NET 8 SDK
- SQL Server (LocalDB or full instance)
- Git

### Clone Repository

```powershell
git clone https://github.com/your-org/STLLayouts.git
cd STLLayouts
```

### Build Solution

```powershell
./scripts/build.ps1
```

### Run Tests

```powershell
./scripts/build.ps1
```

### Run Application

```powershell
./scripts/run-debug.ps1
```

---

## Coding Standards

### C# Style Guide

**Follow Microsoft C# Coding Conventions**:
- Use PascalCase for class names, method names, properties
- Use camelCase for local variables, parameters
- Use `_camelCase` for private fields
- Use `async` suffix for async methods: `LoadDataAsync()`
- Use meaningful, descriptive names

**Example**:
```csharp
public class JobService : IJobService
{
    private readonly IJobRepository _jobRepository;
    private readonly ILogger<JobService> _logger;

    public JobService(IJobRepository jobRepository, ILogger<JobService> logger)
    {
        _jobRepository = jobRepository ?? throw new ArgumentNullException(nameof(jobRepository));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    public async Task<List<Job>> SearchJobsAsync(JobSearchCriteria criteria)
    {
        _logger.LogInformation("Searching jobs with criteria: {Criteria}", criteria);
        
        var jobs = await _jobRepository.SearchAsync(criteria);
        
        _logger.LogInformation("Found {Count} jobs", jobs.Count);
        return jobs;
    }
}
```

### XAML Style Guide

- Use proper indentation (4 spaces)
- Order attributes alphabetically (except `x:Name` and `x:Class` first)
- Use meaningful names for controls: `SearchTextBox`, not `textBox1`

**Example**:
```xml
<UserControl x:Class="STLLayouts.WpfApp.Views.JobSelectionView"
             xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
             xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
             xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
             xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
             d:DesignHeight="450"
             d:DesignWidth="800"
             mc:Ignorable="d">
    <Grid>
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto" />
            <RowDefinition Height="*" />
        </Grid.RowDefinitions>

        <TextBox x:Name="SearchTextBox"
                 Grid.Row="0"
                 Margin="10"
                 Text="{Binding SearchText, UpdateSourceTrigger=PropertyChanged}" />

        <DataGrid x:Name="JobsDataGrid"
                  Grid.Row="1"
                  AutoGenerateColumns="False"
                  ItemsSource="{Binding Jobs}"
                  SelectedItem="{Binding SelectedJob}">
            <DataGrid.Columns>
                <DataGridTextColumn Binding="{Binding JobNumber}"
                                    Header="Job Number" />
            </DataGrid.Columns>
        </DataGrid>
    </Grid>
</UserControl>
```

### Git Commit Messages

**Format**:
```
<type>: <subject>

<body>

<footer>
```

**Types**:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, no logic change)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Build process, dependencies, tooling

**Example**:
```
feat: Add rule priority conflict resolution (#42)

Implemented logic to handle multiple rules matching the same job.
Rules are now evaluated in priority order (highest first), and
all matching templates are presented to the user.

Issue: https://github.com/stl-dev-ops/STLLayouts/issues/42
Delta-Time: 00:45:00
Closes #42
```

---

## Testing Guidelines

### Unit Tests

- Write unit tests for all business logic
- Use AAA pattern: Arrange, Act, Assert
- Mock external dependencies
- Use descriptive test names: `MethodName_Scenario_ExpectedResult`

**Example**:
```csharp
[Fact]
public async Task SearchJobsAsync_WithValidCriteria_ReturnsJobs()
{
    // Arrange
    var mockRepository = new Mock<IJobRepository>();
    mockRepository.Setup(r => r.SearchAsync(It.IsAny<JobSearchCriteria>()))
        .ReturnsAsync(new List<Job> { new Job { JobNumber = "JOB-001" } });
    var service = new JobService(mockRepository.Object, Mock.Of<ILogger<JobService>>());

    // Act
    var results = await service.SearchJobsAsync(new JobSearchCriteria { JobNumber = "JOB-001" });

    // Assert
    Assert.Single(results);
    Assert.Equal("JOB-001", results[0].JobNumber);
}
```

### Integration Tests

- Test interactions between components
- Use in-memory database or test database
- Clean up test data after each test

---

## Documentation

### Code Comments

- Use XML documentation comments for public APIs
- Explain "why", not "what" in inline comments
- Keep comments up-to-date with code changes

**Example**:
```csharp
/// <summary>
/// Evaluates all active rules against the specified job to determine which templates should be suggested.
/// </summary>
/// <param name="job">The job to evaluate rules against.</param>
/// <returns>A list of templates that match the job based on rule evaluation, ordered by rule priority.</returns>
public async Task<List<Template>> EvaluateRulesAsync(Job job)
{
    // Implementation
}
```

### Documentation Files

Update relevant documentation when making changes:
- `README.md`: Overview and quick start
- `ARCHITECTURE.md`: Architecture changes
- `DESIGN.md`: Design decisions
- `API.md`: API changes (future)

---

## Review Process

### Code Review Checklist

**Functionality**:
- [ ] Code works as intended
- [ ] Edge cases handled
- [ ] Error handling implemented

**Code Quality**:
- [ ] Follows coding standards
- [ ] No code duplication
- [ ] Clear and concise logic
- [ ] Appropriate use of design patterns

**Testing**:
- [ ] Unit tests added/updated
- [ ] Tests pass
- [ ] Code coverage maintained or improved

**Documentation**:
- [ ] XML doc comments for public APIs
- [ ] README updated if needed
- [ ] Architecture docs updated if needed

**Security**:
- [ ] No hardcoded credentials
- [ ] Input validation implemented
- [ ] No SQL injection vulnerabilities

---

## Release Process

1. **Create Release Branch**:
   ```powershell
   git checkout -b release/v1.1.0
   ```

2. **Update Version Numbers**:
   - Update `*.csproj` files
   - Update `CHANGELOG.md`

3. **Build and Test**:
   ```powershell
   dotnet build -c Release
   dotnet test -c Release
   ```

4. **Merge to Main**:
   ```powershell
   git checkout main
   git merge release/v1.1.0
   ```

5. **Tag Release**:
   ```powershell
   git tag -a v1.1.0 -m "Release version 1.1.0"
   git push origin v1.1.0
   ```

6. **Deploy** (see [DEPLOYMENT.md](../DEPLOYMENT.md))

---

## Questions?

Contact the DevOps team or open a discussion in the repository.

---

**Thank you for contributing to STL Layouts!**
