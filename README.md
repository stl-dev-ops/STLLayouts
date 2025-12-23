# STL Layouts - Dynamic Document Generation System

## Overview

STL Layouts is a modern .NET 8 WPF MVVM application that replaces legacy CERM layout systems with a flexible, rule-based document generation platform. The system enables QA operators, order entry, job management, and DevOps teams to automatically generate signoff sheets and quality assurance documentation by selecting jobs and dynamically populating Microsoft Office templates with database-driven content.

## Key Features

- **Dynamic Layout Selection**: Rule-based engine configures which templates auto-select based on configurable database criteria
- **Office Template Automation**: Uses Open XML SDK to populate Word, Excel, PowerPoint, and PDF templates without Office installation
- **Configurable Variable Mapping**: Map any database field to template variables through intuitive UI
- **Advanced Rule Engine**: SQL-like and C#-like conditional logic for layout selection (e.g., `if sales_order_product_desc like '%Widget%'`)
- **Audit & Logging**: Complete audit trail of user actions, template selections, rule evaluations, and document generation
- **Multi-User Support**: Concurrent user support with Windows Authentication
- **Template Versioning**: Maintain historical versions of templates with backlog
- **Network Storage**: Generated documents saved to configurable network shares
- **High Performance**: Optimized for generating 100+ templates with sub-second performance

## Architecture

### Technology Stack

- **.NET 8+** (Windows Desktop)
- **WPF with MVVM** pattern
- **Open XML SDK** for Office document manipulation
- **SQL Server** (CRMDB connection)
- **Windows Authentication**
- **Network Share** storage

### Core Components

1. **Template Management**: Upload, version, and manage Office templates
2. **Variable Mapping Engine**: Configure database field → template variable mappings
3. **Rule Configuration UI**: Visual rule builder for layout selection logic
4. **Document Generation Service**: High-speed Open XML processing
5. **Audit Service**: Comprehensive logging and tracking
6. **Job Selection Interface**: User-friendly job browsing and template preview

## Development Workflow

Important: This repository mandates builds and runs via VS Code tasks that call scripts under `scripts/`. See [docs/governance.md](docs/governance.md) and [.github/copilot-instructions.md](.github/copilot-instructions.md).

This project uses **VS Code tasks with PowerShell scripts** for a structured development workflow. This approach prevents terminal blocking and provides proper logging and background execution.

### Available Tasks

Run tasks from VS Code using `Ctrl+Shift+P` > `Tasks: Run Task`

1. **Build Solution** - Builds the entire solution with logging (runs `scripts/build.ps1`)
2. **Rebuild Solution** - Clean, restore, build with pre-run cleanup (runs `scripts/rebuild.ps1`)
3. **Run Application** - Runs the WPF app (runs `scripts/run.ps1`)
4. **Run Application (Debug)** - Debug run if configured
5. **Clean Build** - Removes build artifacts
6. **Dev Cycle** - Runs Rebuild → Run in sequence using the tasks above

### PowerShell Scripts

Located in `scripts/` directory:

- **build.ps1** - Builds the solution and logs output to `logs/build-*.log`
- **run.ps1** - Runs the application with background execution (kills prior processes)
- **rebuild.ps1** - Clean rebuild with process cleanup and logging
- **run-debug.ps1** - Runs the application in Debug mode with console output visible
- **clean.ps1** - Cleans build artifacts from all projects
- **reset-database.ps1** - Drops the LocalDB database (requires confirmation)

All logs are written to the `logs/` directory with timestamps for easy troubleshooting.

## Quick Start

### Prerequisites

- Windows 10/11 or Windows Server 2019+
- .NET 8 SDK
- SQL Server LocalDB (for development)
- Network access to `STL-SQL1\CRMDB` SQL Server (for production)
- Read/Write permissions to network document share

### Development Setup

```powershell
# Build the solution
.\scripts\build.ps1

# Run the application (will create database and seed data)
.\scripts\run-debug.ps1

# Or use VS Code tasks: Ctrl+Shift+P > Tasks: Run Task > Run Application (Debug)
```

The application will:
1. Create the LocalDB database if it doesn't exist
2. Seed with sample data (5 jobs, 3 templates, 7 variable mappings, 2 rules)
3. Launch the WPF window with Job Selection, Templates, Variable Mappings, Document Preview, and Settings tabs
```

### Configuration

Update `appsettings.json` with environment-specific settings:

```json
{
  "ConnectionStrings": {
    "CrmDatabase": "Data Source=STL-SQL1\\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True"
  },
  "DocumentStorage": {
    "NetworkSharePath": "\\\\fileserver\\qa-documents"
  }
}
```

## Usage

1. **Select Job**: Browse and select a job from the job management interface
2. **Preview Layouts**: System automatically suggests layouts based on configured rules
3. **Generate Document**: Click generate to populate template with database variables
4. **Save to Network**: Document automatically saved to configured network share
5. **Audit Trail**: All actions logged for compliance and troubleshooting

## Documentation

- [Architecture Overview](ARCHITECTURE.md)
- [Requirements Specification](REQUIREMENTS.md)
- [Design Document](DESIGN.md)
- [Data Mapping Guide](DATA_MAPPING.md)
- [Template Guidelines](TEMPLATE_GUIDELINES.md)
- [WPF MVVM Guide](WPF_MVVM_GUIDE.md)
- [API Documentation](API.md)
- [Deployment Guide](DEPLOYMENT.md)
- [Testing Strategy](TESTING.md)
- [Operations Manual](OPERATIONS.md)
- [Contributing Guidelines](.github/CONTRIBUTING.md)
- [Security Policy](.github/SECURITY.md)
- [Changelog](.github/CHANGELOG.md)
- [Roadmap](ROADMAP.md)

## Project Structure

```
STLLayouts/
├── src/
│   ├── STLLayouts.WpfApp/          # WPF Desktop Application
│   ├── STLLayouts.Core/            # Core business logic
│   ├── STLLayouts.Data/            # Data access layer
│   ├── STLLayouts.Services/        # Application services
│   ├── STLLayouts.RuleEngine/      # Rule evaluation engine
│   └── STLLayouts.OfficeGen/       # Open XML document generation
├── tests/
│   ├── STLLayouts.UnitTests/
│   └── STLLayouts.IntegrationTests/
├── docs/                            # Additional documentation
├── templates/                       # Sample Office templates
└── scripts/                         # Deployment & utility scripts
```

## Support & Contact

For issues, questions, or feature requests:
- Create an issue in the repository
- Contact DevOps team
- Refer to [Operations Manual](OPERATIONS.md)

## License

[Specify License] - See [LICENSE.md](LICENSE.md)

---

**Version**: 1.0.0-alpha  
**Last Updated**: December 15, 2025
