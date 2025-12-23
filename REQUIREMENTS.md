# Requirements Specification

## Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-12-15 | DevOps | Initial requirements |

## Executive Summary

STL Layouts replaces the legacy CERM layout system with a modern, flexible document generation platform. The system enables QA operators, order entry staff, job management, and DevOps to automatically generate production signoff sheets and QA documentation by selecting jobs and populating Microsoft Office templates with database-driven content.

## Business Objectives

1. **Replace CERM Limitations**: Eliminate restrictions of legacy CERM designer and narrow layout assignment logic
2. **Template Flexibility**: Use Microsoft Office applications for template design instead of proprietary tools
3. **Dynamic Layout Selection**: Support unlimited, configurable criteria for automatic layout selection
4. **Auditability**: Comprehensive audit trail for regulatory compliance
5. **Scalability**: Support 100+ templates and concurrent users
6. **Performance**: Sub-second document generation
7. **Maintainability**: Intuitive configuration UI for non-developers

## Stakeholders

| Role | Responsibility | Count |
|------|----------------|-------|
| QA Operators | Generate QA signoff sheets | 10-20 |
| Order Entry | Print order-related forms | 5-10 |
| Job Management | Generate job documentation | 5-10 |
| DevOps | System administration, rule configuration | 2-5 |
| IT Operations | Infrastructure, deployment | 2-3 |

## Functional Requirements

### FR-1: Job Selection

**Priority**: P0 (Critical)

**Description**: Users must be able to browse and select jobs from the production database.

**Acceptance Criteria**:
- [ ] Display list of active jobs with key identifiers (job number, product, customer)
- [ ] Search and filter jobs by job number, product type, date range, customer
- [ ] Show job details (product description, order info, QA requirements)
- [ ] Support multi-select for batch document generation (future)
- [ ] Display job status and stage in production workflow

**User Stories**:
- As a QA operator, I want to search for jobs by job number so I can quickly find the job I'm working on
- As an order entry user, I want to filter jobs by customer so I can print customer-specific documentation

### FR-2: Template Management

**Priority**: P0 (Critical)

**Description**: Administrators must be able to upload, version, and manage Office document templates.

**Acceptance Criteria**:
- [ ] Upload Word (.docx), Excel (.xlsx), PowerPoint (.pptx) templates
- [ ] Assign template name, description, category
- [ ] Version control: maintain history of template changes
- [ ] Activate/deactivate templates
- [ ] Preview template content
- [ ] Define template variables (placeholders)
- [ ] Bulk import templates from network share
- [ ] Template validation (ensure variables are defined)

**User Stories**:
- As a DevOps admin, I want to upload a new QA signoff template so operators can use the updated form
- As a power user, I want to see previous versions of a template so I can roll back if needed

### FR-3: Variable Mapping Configuration

**Priority**: P0 (Critical)

**Description**: Administrators must be able to map database fields to template variables through a configuration UI.

**Acceptance Criteria**:
- [ ] Browse available database fields from CRMDB (schema discovery)
- [ ] Create variable definitions (name, data type, description)
- [ ] Map database field to variable (e.g., `sales_order_product_desc` → `bstlyn__.afg_oms1`)
- [ ] Support SQL expressions for complex mappings (e.g., `CONCAT(field1, ' - ', field2)`)
- [ ] Test mappings with sample job data
- [ ] Validate mappings (field exists, data type compatible)
- [ ] Import/export mapping definitions (JSON, CSV)
- [ ] Group variables by category (job info, product info, QA data, customer info)

**User Stories**:
- As a DevOps admin, I want to map the product description field to the {ProductDesc} variable so it populates in templates
- As a power user, I want to test my variable mappings to ensure they return the correct data

### FR-4: Rule Configuration UI

**Priority**: P0 (Critical)

**Description**: Administrators must be able to configure layout selection rules through an intuitive visual interface.

**Acceptance Criteria**:
- [ ] Visual rule builder (drag-and-drop or form-based)
- [ ] Define conditions using SQL-like syntax (e.g., `variable LIKE '%Widget%'`)
- [ ] Define conditions using C#-like syntax (e.g., `variable.Contains("Widget")`)
- [ ] Support operators: `=`, `!=`, `<`, `>`, `<=`, `>=`, `LIKE`, `IN`, `BETWEEN`
- [ ] Logical operators: `AND`, `OR`, `NOT`, parentheses for grouping
- [ ] Assign template to rule
- [ ] Set rule priority (for conflict resolution)
- [ ] Enable/disable rules
- [ ] Test rules against sample jobs (validation)
- [ ] Copy/duplicate rules
- [ ] Rule templates for common scenarios

**User Stories**:
- As a DevOps admin, I want to create a rule that selects the "Widget Final QA" template when product description contains "Widget" so the correct form auto-populates
- As a power user, I want to test my rules before activating them to ensure they work correctly

**Example Rules**:
```
Rule 1 (Priority: 100):
  IF sales_order_product_desc LIKE '%Widget%' 
  AND operation_step = 'final_qa'
  THEN use_template = 'QA_Final_Widget_v2.docx'

Rule 2 (Priority: 90):
  IF customer_name IN ('ACME Corp', 'XYZ Industries')
  AND product_category = 'Custom'
  THEN use_template = 'Custom_Product_QA_v1.docx'

Rule 3 (Priority: 80):
  IF job_type = 'Production' 
  AND (qa_required = true OR customer_name.StartsWith("ABC"))
  THEN use_template = 'Standard_Production_QA_v3.docx'
```

### FR-5: Layout Selection

**Priority**: P0 (Critical)

**Description**: System must automatically suggest appropriate templates based on configured rules when a job is selected.

**Acceptance Criteria**:
- [ ] Evaluate all active rules against selected job
- [ ] Return matching templates ordered by rule priority
- [ ] Display reason for each template match (which rule triggered)
- [ ] Allow user to override automatic selection
- [ ] Handle no-match scenario (default template or user prompt)
- [ ] Handle multiple-match scenario (prioritize by rule priority)
- [ ] Log rule evaluation results to audit trail
- [ ] Performance: evaluate 100+ rules in <100ms

**User Stories**:
- As a QA operator, when I select a job, I want to see the recommended templates so I can quickly generate the correct forms
- As a supervisor, I want to see why a template was recommended so I can verify the rule logic is correct

### FR-6: Document Generation

**Priority**: P0 (Critical)

**Description**: System must populate Office templates with job-specific data and generate final documents.

**Acceptance Criteria**:
- [ ] Replace template variables with database values
- [ ] Support Word (.docx), Excel (.xlsx), PowerPoint (.pptx) generation
- [ ] Preserve template formatting (fonts, styles, colors, layouts)
- [ ] Handle missing data (display placeholder or empty string)
- [ ] Support conditional content (show/hide sections based on data)
- [ ] Support repeating sections (tables, lists populated from query results)
- [ ] Generate multiple documents in one operation
- [ ] Performance: generate single document in <3 seconds
- [ ] Support PDF export (convert from Office format)

**User Stories**:
- As a QA operator, I want to generate a signoff sheet with all job details pre-filled so I don't have to manually enter data
- As an order entry user, I want to generate multiple order forms at once to save time

### FR-7: Document Storage

**Priority**: P0 (Critical)

**Description**: Generated documents must be saved to a configurable network share.

**Acceptance Criteria**:
- [ ] Save documents to network share (configurable path)
- [ ] Organize documents by job number, date, template type (configurable folder structure)
- [ ] Naming convention: configurable with variables (e.g., `{JobNumber}_{TemplateName}_{DateTime}.docx`)
- [ ] Verify network share availability before generation
- [ ] Retry failed saves (transient network errors)
- [ ] Open generated document in default application (optional)
- [ ] Open network folder containing document (optional)
- [ ] Track document path in audit log

**User Stories**:
- As a QA operator, I want generated documents automatically saved to the network share so I can access them later
- As a supervisor, I want documents organized by job number so I can easily find job-related documentation

### FR-8: Audit Logging

**Priority**: P0 (Critical)

**Description**: System must log all user actions and system events for compliance and troubleshooting.

**Acceptance Criteria**:
- [ ] Log: User selected layout X for job Y (timestamp, user, job, template)
- [ ] Log: Template Y was generated with variables [list] (variable values at generation time)
- [ ] Log: Rule evaluation for layout selection (rules evaluated, match results)
- [ ] Log: User modified layout rules (before/after values)
- [ ] Log: Documents exported to network share (file path, timestamp)
- [ ] Log: Template uploaded/modified/deleted
- [ ] Log: Variable mapping created/modified/deleted
- [ ] Log: System errors and exceptions
- [ ] Audit log UI: search, filter, export
- [ ] Retention policy: configurable (default 1 year)
- [ ] Tamper-evident logs (hash chain or immutable storage)

**User Stories**:
- As a supervisor, I want to see who generated a document and when so I can verify compliance
- As a DevOps admin, I want to see all rule changes to troubleshoot layout selection issues

### FR-9: Template Preview

**Priority**: P1 (High)

**Description**: Users must be able to preview selected templates before generating final documents.

**Acceptance Criteria**:
- [ ] Display template preview with sample data
- [ ] Show which variables will be populated
- [ ] Preview multiple templates side-by-side
- [ ] Zoom, pan, navigate multi-page templates
- [ ] Refresh preview after changing job selection

**User Stories**:
- As a QA operator, I want to preview the template before generating to ensure it's the correct form

### FR-10: Batch Generation (Future)

**Priority**: P2 (Medium)

**Description**: Support generating documents for multiple jobs in a single operation.

**Acceptance Criteria**:
- [ ] Select multiple jobs
- [ ] Generate same template for all jobs
- [ ] Progress indicator for batch operations
- [ ] Error handling: continue on failure, report errors
- [ ] Summary report: success count, failure count, file paths

### FR-11: Export to PDF

**Priority**: P1 (High)

**Description**: Support exporting generated documents to PDF format.

**Acceptance Criteria**:
- [ ] Convert Word, Excel, PowerPoint to PDF
- [ ] Preserve formatting in PDF
- [ ] Configurable PDF settings (page size, orientation, quality)

### FR-12: Template Variable Discovery

**Priority**: P1 (High)

**Description**: Automatically detect variables used in templates.

**Acceptance Criteria**:
- [ ] Parse template files to extract variable placeholders (e.g., `{VariableName}`)
- [ ] Display list of variables in template
- [ ] Warn if template uses unmapped variables
- [ ] Suggest mappings based on variable names

## Non-Functional Requirements

### NFR-1: Performance

| Metric | Target | Method |
|--------|--------|--------|
| Document Generation | <3 seconds per document | Open XML SDK optimization |
| Rule Evaluation | <100ms for 100+ rules | Expression compilation, indexing |
| Job Search | <500ms | Database indexing, query optimization |
| Application Startup | <5 seconds | Lazy loading, caching |
| Concurrent Users | 20+ simultaneous | Connection pooling, stateless services |

### NFR-2: Scalability

- Support 100+ templates without performance degradation
- Support 1000+ rules in rule engine
- Handle 500+ document generations per day
- Database size: plan for 1M+ audit log entries

### NFR-3: Reliability

- **Uptime**: 99.5% during business hours
- **Data Integrity**: Zero data loss in audit logs
- **Error Recovery**: Automatic retry for transient failures (network, database)
- **Graceful Degradation**: Read-only mode if CRMDB unavailable

### NFR-4: Usability

- **Learnability**: New users productive within 30 minutes
- **Efficiency**: Common tasks (select job, generate document) in <5 clicks
- **Error Prevention**: Validate user input before submission
- **Help System**: Context-sensitive help and tooltips

### NFR-5: Security

- **Authentication**: Windows Authentication (Active Directory)
- **Authorization**: Role-based access control (Admin, Power User, Operator, Read-Only)
- **Data Protection**: Encrypt sensitive configuration data at rest
- **Audit Trail**: Immutable audit logs for compliance
- **Connection Security**: SQL connections use encrypted channels

### NFR-6: Maintainability

- **Code Quality**: Follow .NET coding standards, SOLID principles
- **Documentation**: Inline comments, XML doc comments, architecture docs
- **Testing**: 80%+ unit test coverage, integration tests
- **Modularity**: Loosely coupled components via dependency injection

### NFR-7: Compatibility

- **Operating Systems**: Windows 10, Windows 11, Windows Server 2019+
- **.NET Version**: .NET 8+
- **Office Formats**: Word 2013+, Excel 2013+, PowerPoint 2013+ (Open XML)
- **Database**: SQL Server 2016+

### NFR-8: Deployment

- **Installation**: ClickOnce or MSI installer
- **Updates**: Automatic update check and download
- **Configuration**: appsettings.json + database configuration
- **No Office Required**: Use Open XML SDK (no Office installation needed)

## Data Requirements

### Application Database Schema (Metadata)

**Tables**:
- `Templates`: Template metadata (ID, Name, Version, FilePath, IsActive, Category, UploadedBy, UploadedDate)
- `TemplateVersions`: Version history (VersionID, TemplateID, VersionNumber, FilePath, ChangedBy, ChangedDate)
- `VariableMappings`: Variable definitions and mappings (VariableID, VariableName, DatabaseField, SqlExpression, DataType, Category, Description)
- `Rules`: Layout selection rules (RuleID, RuleName, Condition, TemplateID, Priority, IsActive, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
- `AuditLog`: Audit entries (LogID, Timestamp, UserName, EventType, JobID, TemplateID, RuleID, Details, VariableValues)
- `Users`: User roles and permissions (UserID, WindowsIdentity, Role, IsActive)

### CRMDB Database (Read-Only)

**Connection**: `Data Source=STL-SQL1\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True`

**Access Pattern**: Read-only queries to retrieve job data, product information, customer details, QA requirements.

**Note**: Schema discovery required to identify available tables and fields for variable mapping.

## User Interface Requirements

### UI-1: Main Window

- Ribbon or menu bar (File, Edit, View, Tools, Help)
- Job selection panel (left side or top)
- Template preview panel (center)
- Properties/details panel (right side)
- Status bar (bottom)

### UI-2: Rule Configuration UI

- Rule list (grid or tree view)
- Rule editor (condition builder, template selector, priority)
- Test rule panel (select sample job, view evaluation result)

### UI-3: Variable Mapping UI

- Variable list (grid with columns: Variable Name, Database Field, Data Type)
- Mapping editor (field selector, SQL expression editor, test panel)
- Database schema browser

### UI-4: Audit Log UI

- Log entry grid (timestamp, user, event type, details)
- Search and filter controls
- Export to CSV/Excel

### UI-5: Template Management UI

- Template list (grid or tile view)
- Upload template dialog
- Version history view
- Template preview

## Acceptance Criteria (System-Level)

- [ ] QA operator can select a job, view recommended templates, generate document, and save to network share in <30 seconds
- [ ] DevOps admin can create a new rule with 5+ conditions in <5 minutes
- [ ] Power user can upload a new template, define variables, and create mappings in <10 minutes
- [ ] System generates 100 documents per hour without performance degradation
- [ ] Audit logs capture 100% of user actions and system events
- [ ] System supports 20 concurrent users without errors
- [ ] Template generation success rate >99%

## Out of Scope (Version 1.0)

- ❌ Web-based UI (desktop WPF only)
- ❌ Mobile app support
- ❌ Real-time collaboration on templates
- ❌ Advanced analytics and reporting dashboards
- ❌ Integration with external systems (ERP, CRM) beyond CRMDB
- ❌ Custom scripting language for rules (use SQL-like/C#-like only)
- ❌ Template design tools (use Microsoft Office)

## Future Enhancements (Roadmap)

- 🔮 API layer for integration with other systems
- 🔮 Web-based UI (Blazor or React)
- 🔮 Advanced analytics (document generation trends, template usage)
- 🔮 Machine learning for rule suggestions
- 🔮 Template marketplace (share templates across departments)
- 🔮 E-signature integration for digital signoffs
- 🔮 Barcode/QR code generation in templates
- 🔮 Integration with printing services (auto-print on generation)

## Risks & Mitigation

| Risk | Impact | Probability | Mitigation |
|------|--------|-------------|------------|
| CRMDB schema changes break mappings | High | Medium | Schema versioning, mapping validation, automated tests |
| Network share unavailable | High | Low | Local cache, retry logic, fallback to local save |
| Open XML SDK limitations | Medium | Medium | Prototype complex templates early, alternative libraries (Syncfusion, Aspose) |
| Rule engine performance with 1000+ rules | Medium | Medium | Expression compilation, rule indexing, caching |
| User adoption resistance | High | Medium | Training, intuitive UI, phased rollout |
| Data security concerns | High | Low | Windows Auth, role-based access, audit logs, encrypted storage |

## Success Metrics

- **Adoption**: 90% of QA operators use new system within 3 months
- **Efficiency**: 50% reduction in time to generate signoff sheets
- **Accuracy**: 95% of documents generated without manual corrections
- **Satisfaction**: User satisfaction score >4/5
- **Reliability**: <5 support tickets per week after stabilization period

---

**Approval**:

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Product Owner | [Name] | _________ | _____ |
| DevOps Lead | [Name] | _________ | _____ |
| QA Manager | [Name] | _________ | _____ |

**Next Steps**: Review [DESIGN.md](DESIGN.md) for detailed design specifications.
