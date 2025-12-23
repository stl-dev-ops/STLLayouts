# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Planned
- API layer for external integrations
- Web-based UI (Blazor)
- Advanced analytics dashboard
- Machine learning for rule suggestions

---

## [1.0.0] - 2025-12-15

### Added
- Initial release of STL Layouts desktop application
- Job selection and search functionality
- Template management (upload, version, activate/deactivate)
- Variable mapping configuration
- Rule configuration with SQL-like and C#-like syntax
- Rule engine for layout selection
- Document generation using Open XML SDK
  - Word (.docx) support
  - Excel (.xlsx) support
  - PowerPoint (.pptx) support
- Template preview functionality
- Document export to network share
- Comprehensive audit logging
- Windows Authentication integration
- MVVM architecture with WPF
- Dependency injection support
- Comprehensive error handling and logging

### Features
- **Job Selection**: Search and filter jobs from CRMDB
- **Template Management**: Upload and manage Office templates with versioning
- **Variable Mapping**: Map database fields to template variables
- **Rule Engine**: Configure conditional logic for automatic template selection
- **Document Generation**: Populate templates with job-specific data
- **Audit Trail**: Log all user actions and system events

### Technical
- .NET 8 WPF desktop application
- Open XML SDK for document manipulation
- Entity Framework Core for data access
- Serilog for structured logging
- xUnit for unit testing
- SQL Server integration

### Documentation
- README.md with project overview
- ARCHITECTURE.md with system architecture
- REQUIREMENTS.md with detailed requirements
- DESIGN.md with component design specifications
- DATA_MAPPING.md with mapping guidelines
- TEMPLATE_GUIDELINES.md with template best practices
- WPF_MVVM_GUIDE.md with MVVM patterns
- API.md with future API design
- DEPLOYMENT.md with deployment instructions
- TESTING.md with testing strategy
- OPERATIONS.md with operational procedures
- CONTRIBUTING.md with contribution guidelines
- SECURITY.md with security policy
- ROADMAP.md with future enhancements

---

## [0.1.0] - 2025-11-01 (Internal Beta)

### Added
- Proof of concept implementation
- Basic job selection
- Simple template upload
- Hardcoded variable mappings
- Manual template selection

### Known Issues
- No rule engine (manual template selection only)
- Limited error handling
- No audit logging
- Hard-coded connection strings

---

## Version History

- **1.0.0** (2025-12-15): Initial production release
- **0.1.0** (2025-11-01): Internal beta/proof of concept

---

## Upgrade Notes

### From 0.1.0 to 1.0.0

**Database**:
- Run migrations: `dotnet ef database update`
- Migrate hardcoded mappings to VariableMappings table
- Create initial rules for existing templates

**Configuration**:
- Update `appsettings.json` with new structure
- Configure network share path
- Configure audit log retention

**Templates**:
- Re-upload templates to new template management system
- Define variables in each template
- Create rules for automatic template selection

**Testing**:
- Test document generation with new rule engine
- Verify audit logging is working
- Validate variable mappings

---

**Format**: YYYY-MM-DD
