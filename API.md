# API Documentation

## Overview

This document outlines the future API architecture for STL Layouts. The initial release is a desktop WPF application, but the service layer is designed to be extracted into a REST API for broader integration.

---

## API Migration Strategy

### Phase 1: Desktop Application (Current)
- WPF application with embedded services
- Direct database access
- Local file I/O

### Phase 2: API Layer (Future)
- ASP.NET Core Web API
- RESTful endpoints
- JWT authentication
- Service layer extracted from WPF app

### Phase 3: Microservices (Optional Future)
- Template Management Service
- Document Generation Service
- Rule Engine Service
- Audit Service

---

## REST API Endpoints (Future)

### Authentication

**POST /api/auth/login**
```json
Request:
{
  "username": "user@domain.com",
  "password": "encrypted_password"
}

Response:
{
  "token": "jwt_token_here",
  "expiresIn": 3600,
  "refreshToken": "refresh_token_here"
}
```

---

### Jobs

**GET /api/jobs**

Query parameters:
- `jobNumber` (string, optional)
- `customerName` (string, optional)
- `productDescription` (string, optional)
- `pageSize` (int, default: 50)
- `pageNumber` (int, default: 1)

Response:
```json
{
  "data": [
    {
      "jobId": "12345",
      "jobNumber": "JOB-001",
      "productDescription": "Widget ABC",
      "customerName": "ACME Corp",
      "orderDate": "2025-12-01",
      "status": "In Progress"
    }
  ],
  "totalCount": 150,
  "pageNumber": 1,
  "pageSize": 50
}
```

**GET /api/jobs/{jobId}**

Response:
```json
{
  "jobId": "12345",
  "jobNumber": "JOB-001",
  "productDescription": "Widget ABC",
  "customerName": "ACME Corp",
  "orderDate": "2025-12-01",
  "status": "In Progress",
  "extendedProperties": {
    "orderQuantity": 100,
    "operationStep": "final_qa"
  }
}
```

**GET /api/jobs/{jobId}/context**

Returns all variable values for the job.

Response:
```json
{
  "JobNumber": "JOB-001",
  "ProductDescription": "Widget ABC",
  "CustomerName": "ACME Corp",
  "OrderQuantity": 100,
  "InspectionDate": "2025-12-15"
}
```

---

### Templates

**GET /api/templates**

Query parameters:
- `category` (string, optional)
- `isActive` (bool, optional)

Response:
```json
{
  "data": [
    {
      "templateId": "guid-here",
      "templateName": "QA Signoff Sheet",
      "description": "Standard QA signoff form",
      "category": "QA Forms",
      "fileExtension": ".docx",
      "currentVersion": 2,
      "isActive": true,
      "uploadedBy": "admin@company.com",
      "uploadedDate": "2025-01-01T10:00:00Z"
    }
  ]
}
```

**GET /api/templates/{templateId}**

Response: Same as above, single object.

**POST /api/templates**

Upload a new template.

Request (multipart/form-data):
- `file` (file)
- `templateName` (string)
- `description` (string)
- `category` (string)

Response:
```json
{
  "templateId": "guid-here",
  "message": "Template uploaded successfully"
}
```

**PUT /api/templates/{templateId}**

Update template metadata.

**DELETE /api/templates/{templateId}**

Soft delete (set IsActive = false).

---

### Rules

**GET /api/rules**

Query parameters:
- `isActive` (bool, optional)

Response:
```json
{
  "data": [
    {
      "ruleId": "guid-here",
      "ruleName": "Widget QA Rule",
      "description": "Select QA signoff for widgets",
      "condition": "ProductDescription LIKE '%Widget%'",
      "templateId": "guid-here",
      "priority": 100,
      "isActive": true
    }
  ]
}
```

**POST /api/rules**

Create a new rule.

Request:
```json
{
  "ruleName": "Widget QA Rule",
  "description": "Select QA signoff for widgets",
  "condition": "ProductDescription LIKE '%Widget%'",
  "templateId": "guid-here",
  "priority": 100
}
```

Response:
```json
{
  "ruleId": "guid-here",
  "message": "Rule created successfully"
}
```

**PUT /api/rules/{ruleId}**

Update rule.

**DELETE /api/rules/{ruleId}**

Delete rule.

**POST /api/rules/{ruleId}/test**

Test rule against a sample job.

Request:
```json
{
  "jobId": "12345"
}
```

Response:
```json
{
  "matches": true,
  "evaluationTime": "5ms",
  "templateId": "guid-here",
  "templateName": "QA Signoff Sheet"
}
```

---

### Rule Engine

**POST /api/rules/evaluate**

Evaluate all rules for a job.

Request:
```json
{
  "jobId": "12345"
}
```

Response:
```json
{
  "matches": [
    {
      "ruleId": "guid-here",
      "ruleName": "Widget QA Rule",
      "templateId": "guid-here",
      "templateName": "QA Signoff Sheet",
      "priority": 100
    }
  ],
  "evaluationTime": "15ms"
}
```

---

### Document Generation

**POST /api/documents/generate**

Generate a document from a template and job.

Request:
```json
{
  "jobId": "12345",
  "templateId": "guid-here",
  "options": {
    "convertToPdf": false,
    "outputPath": "\\\\fileserver\\qa-documents\\",
    "failOnMissingVariable": false
  }
}
```

Response:
```json
{
  "documentId": "guid-here",
  "filePath": "\\\\fileserver\\qa-documents\\JOB-001_QA_Signoff_20251215.docx",
  "fileName": "JOB-001_QA_Signoff_20251215.docx",
  "fileSizeBytes": 45678,
  "generationDuration": "2.5s",
  "warnings": [],
  "populatedVariables": {
    "JobNumber": "JOB-001",
    "ProductDescription": "Widget ABC"
  }
}
```

**GET /api/documents/{documentId}**

Get generated document metadata.

**GET /api/documents/{documentId}/download**

Download generated document.

---

### Variable Mappings

**GET /api/variablemappings**

Query parameters:
- `category` (string, optional)

Response:
```json
{
  "data": [
    {
      "variableMappingId": "guid-here",
      "variableName": "ProductDescription",
      "databaseField": "Products.product_desc",
      "sqlExpression": null,
      "dataType": "String",
      "category": "Product Info",
      "description": "Product description",
      "isRequired": true,
      "defaultValue": "Unknown"
    }
  ]
}
```

**POST /api/variablemappings**

Create variable mapping.

**PUT /api/variablemappings/{variableMappingId}**

Update variable mapping.

**DELETE /api/variablemappings/{variableMappingId}**

Delete variable mapping.

**POST /api/variablemappings/test**

Test variable mappings for a job.

Request:
```json
{
  "jobId": "12345",
  "variableMappingIds": ["guid1", "guid2"]
}
```

Response:
```json
{
  "results": [
    {
      "variableName": "ProductDescription",
      "resolvedValue": "Widget ABC",
      "success": true,
      "executionTime": "10ms"
    }
  ]
}
```

---

### Audit Logs

**GET /api/audit**

Query parameters:
- `eventType` (string, optional)
- `userName` (string, optional)
- `startDate` (datetime, optional)
- `endDate` (datetime, optional)
- `pageSize` (int, default: 100)
- `pageNumber` (int, default: 1)

Response:
```json
{
  "data": [
    {
      "auditEntryId": "guid-here",
      "timestamp": "2025-12-15T14:30:00Z",
      "userName": "user@domain.com",
      "eventType": "DocumentGenerated",
      "jobId": "12345",
      "templateId": "guid-here",
      "details": "Generated QA Signoff Sheet",
      "success": true
    }
  ],
  "totalCount": 5000,
  "pageNumber": 1,
  "pageSize": 100
}
```

**GET /api/audit/{auditEntryId}**

Get single audit entry.

---

## Error Responses

All endpoints return consistent error responses:

```json
{
  "error": {
    "code": "TEMPLATE_NOT_FOUND",
    "message": "Template with ID 'guid-here' not found",
    "details": "The specified template does not exist or has been deleted",
    "timestamp": "2025-12-15T14:30:00Z"
  }
}
```

**HTTP Status Codes**:
- 200: Success
- 201: Created
- 400: Bad Request
- 401: Unauthorized
- 403: Forbidden
- 404: Not Found
- 500: Internal Server Error

---

## Authentication & Authorization

### JWT Token

All API requests (except /api/auth/login) require JWT token in Authorization header:

```
Authorization: Bearer <jwt_token>
```

### Roles

- **Admin**: Full access
- **PowerUser**: Create/modify templates, rules, mappings
- **Operator**: Generate documents, view jobs
- **ReadOnly**: View-only access

---

## Rate Limiting

- 1000 requests per hour per user
- 100 document generations per hour per user

Exceeding limits returns HTTP 429 (Too Many Requests).

---

## Webhooks (Future)

Subscribe to events:

- `document.generated`: Triggered when document is generated
- `rule.evaluated`: Triggered when rules are evaluated
- `template.uploaded`: Triggered when template is uploaded

**Webhook Payload Example**:
```json
{
  "eventType": "document.generated",
  "timestamp": "2025-12-15T14:30:00Z",
  "data": {
    "documentId": "guid-here",
    "jobId": "12345",
    "templateId": "guid-here"
  }
}
```

---

## SDK / Client Libraries (Future)

### C# Client

```csharp
var client = new STLLayoutsClient("https://api.stllayouts.com", "api_key");

var jobs = await client.Jobs.SearchAsync(new JobSearchCriteria { JobNumber = "JOB-001" });

var document = await client.Documents.GenerateAsync(new GenerateDocumentRequest
{
    JobId = "12345",
    TemplateId = "guid-here"
});
```

### JavaScript/TypeScript Client

```typescript
import { STLLayoutsClient } from 'stl-layouts-sdk';

const client = new STLLayoutsClient('https://api.stllayouts.com', 'api_key');

const jobs = await client.jobs.search({ jobNumber: 'JOB-001' });

const document = await client.documents.generate({
    jobId: '12345',
    templateId: 'guid-here'
});
```

---

**Next Steps**: See [DEPLOYMENT.md](DEPLOYMENT.md) for deployment instructions.
