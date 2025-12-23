# Operations Manual

## Overview

This document provides operational procedures for maintaining and supporting the STL Layouts system.

---

## Daily Operations

### Morning Checklist
- [ ] Verify application database connectivity
- [ ] Check network share availability and disk space
- [ ] Review overnight audit logs for errors
- [ ] Verify automated backups completed successfully

### End-of-Day Checklist
- [ ] Review day's audit logs for anomalies
- [ ] Check document generation success rate (target: >99%)
- [ ] Verify backups initiated
- [ ] Review open support tickets

---

## User Management

### Adding a New User

1. **Add to Active Directory Group**:
   - Add user to `DOMAIN\STLLayoutsUsers` group

2. **Assign Role in Application Database**:
```sql
INSERT INTO Users (UserID, WindowsIdentity, Role, IsActive)
VALUES (NEWID(), 'DOMAIN\username', 'Operator', 1);
```

**Roles**:
- `Admin`: Full access
- `PowerUser`: Template/rule management
- `Operator`: Document generation only
- `ReadOnly`: View audit logs

### Removing a User

```sql
UPDATE Users 
SET IsActive = 0
WHERE WindowsIdentity = 'DOMAIN\username';
```

### Changing User Role

```sql
UPDATE Users
SET Role = 'PowerUser'
WHERE WindowsIdentity = 'DOMAIN\username';
```

---

## Template Management

### Uploading a New Template

1. User uploads template via Template Management UI
2. System validates template (file format, variables)
3. System stores template to network share: `\\fileserver\templates\{TemplateName}_v1.docx`
4. Metadata saved to database
5. Audit log entry created

### Updating an Existing Template

1. User selects template and uploads new version
2. System increments version number
3. Old version retained for rollback
4. Rules using template continue to use active version

### Deactivating a Template

```sql
UPDATE Templates
SET IsActive = 0
WHERE TemplateId = '<guid>';
```

**Impact**: Template no longer suggested by rules, but existing documents unaffected

---

## Rule Management

### Creating a Rule

1. Navigate to Rule Configuration UI
2. Click "New Rule"
3. Enter rule details:
   - Name
   - Description
   - Condition (SQL-like or C#-like)
   - Template selection
   - Priority
4. Test rule with sample jobs
5. Save rule

### Testing a Rule

1. Select rule
2. Click "Test Rule"
3. Select sample job
4. View evaluation result
5. Verify expected template selected

### Rule Priority Conflicts

**Scenario**: Multiple rules match the same job

**Resolution**:
- Rules are evaluated in priority order (highest first)
- User can select from multiple suggestions
- Adjust priorities to control order

### Deactivating a Rule

```sql
UPDATE Rules
SET IsActive = 0
WHERE RuleId = '<guid>';
```

---

## Variable Mapping Management

### Adding a New Variable Mapping

1. Navigate to Variable Mapping UI
2. Click "New Mapping"
3. Enter variable name (e.g., `ProductDescription`)
4. Select database field or enter SQL expression
5. Set data type, category, description
6. Test mapping with sample job
7. Save mapping

### Updating a Mapping

**Caution**: Updating mappings affects all templates using the variable

1. Select mapping
2. Modify database field or SQL expression
3. Test with sample jobs
4. Save changes
5. Audit log entry created

### Mapping Validation

Regularly validate mappings:

```sql
SELECT vm.VariableName, vm.DatabaseField
FROM VariableMappings vm
WHERE vm.IsRequired = 1
  AND NOT EXISTS (
    SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS c
    WHERE c.TABLE_NAME = vm.DatabaseField
  );
```

**Action**: Fix broken mappings (database schema changes)

---

## Document Generation Monitoring

### Success Rate

**Query**:
```sql
SELECT 
  CAST(GenerationDate AS DATE) AS Date,
  COUNT(*) AS TotalDocuments,
  SUM(CASE WHEN Success = 1 THEN 1 ELSE 0 END) AS Successful,
  (SUM(CASE WHEN Success = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS SuccessRate
FROM AuditLog
WHERE EventType = 'DocumentGenerated'
  AND Timestamp >= DATEADD(DAY, -7, GETDATE())
GROUP BY CAST(Timestamp AS DATE)
ORDER BY Date DESC;
```

**Target**: >99% success rate

### Failed Generations

**Query**:
```sql
SELECT 
  Timestamp,
  UserName,
  JobId,
  TemplateId,
  ErrorMessage
FROM AuditLog
WHERE EventType = 'DocumentGenerated'
  AND Success = 0
  AND Timestamp >= DATEADD(DAY, -1, GETDATE())
ORDER BY Timestamp DESC;
```

**Action**: Investigate root cause (network errors, template issues, variable mapping errors)

---

## Network Share Maintenance

### Disk Space Monitoring

**PowerShell Script**:
```powershell
$sharePath = "\\fileserver\qa-documents"
$drive = Get-PSDrive -Name (Split-Path $sharePath -Qualifier).TrimEnd(':')
$freeSpace = [math]::Round($drive.Free / 1GB, 2)
$totalSpace = [math]::Round(($drive.Free + $drive.Used) / 1GB, 2)
$percentFree = [math]::Round(($drive.Free / ($drive.Free + $drive.Used)) * 100, 2)

Write-Host "Network Share: $sharePath"
Write-Host "Total Space: $totalSpace GB"
Write-Host "Free Space: $freeSpace GB ($percentFree%)"

if ($percentFree -lt 10) {
    Write-Host "WARNING: Low disk space!" -ForegroundColor Red
}
```

**Schedule**: Daily via Task Scheduler

**Alert Threshold**: <10% free space

### Document Archiving

**Policy**: Archive documents older than 90 days

**PowerShell Script**:
```powershell
$sharePath = "\\fileserver\qa-documents"
$archivePath = "\\fileserver\qa-documents-archive"
$archiveDate = (Get-Date).AddDays(-90)

Get-ChildItem -Path $sharePath -Recurse -File | Where-Object {
    $_.LastWriteTime -lt $archiveDate
} | ForEach-Object {
    $destination = $_.FullName.Replace($sharePath, $archivePath)
    $destFolder = Split-Path $destination -Parent
    
    if (-not (Test-Path $destFolder)) {
        New-Item -ItemType Directory -Path $destFolder -Force
    }
    
    Move-Item -Path $_.FullName -Destination $destination -Force
    Write-Host "Archived: $($_.FullName)"
}
```

**Schedule**: Monthly

---

## Database Maintenance

### Backup Verification

**Daily**:
```sql
SELECT 
  database_name,
  backup_finish_date,
  DATEDIFF(HOUR, backup_finish_date, GETDATE()) AS HoursSinceBackup
FROM msdb.dbo.backupset
WHERE database_name = 'STLLayoutsApp'
  AND type = 'D' -- Full backup
ORDER BY backup_finish_date DESC;
```

**Alert**: If no backup in last 25 hours

### Index Maintenance

**Weekly**:
```sql
-- Rebuild fragmented indexes
EXEC sp_MSforeachtable 'ALTER INDEX ALL ON ? REBUILD';

-- Update statistics
EXEC sp_MSforeachtable 'UPDATE STATISTICS ?';
```

**Schedule**: Sundays at 2 AM

### Audit Log Cleanup

**Policy**: Retain 1 year, then archive/delete

**Script**:
```sql
-- Archive to separate table
INSERT INTO AuditLog_Archive
SELECT * FROM AuditLog
WHERE Timestamp < DATEADD(YEAR, -1, GETDATE());

-- Delete from main table
DELETE FROM AuditLog
WHERE Timestamp < DATEADD(YEAR, -1, GETDATE());
```

**Schedule**: Quarterly

---

## Performance Monitoring

### Slow Queries

Monitor slow-running queries:

```sql
SELECT TOP 10
  execution_count,
  total_elapsed_time / 1000000 AS total_elapsed_seconds,
  total_elapsed_time / execution_count / 1000000 AS avg_elapsed_seconds,
  SUBSTRING(st.text, (qs.statement_start_offset / 2) + 1,
    ((CASE qs.statement_end_offset
      WHEN -1 THEN DATALENGTH(st.text)
      ELSE qs.statement_end_offset
    END - qs.statement_start_offset) / 2) + 1) AS query_text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) st
ORDER BY avg_elapsed_seconds DESC;
```

**Action**: Optimize slow queries (add indexes, rewrite query)

### Application Response Time

**Target**: <500ms for job search, <3s for document generation

**Monitoring**: Review audit log `Duration` field

**Query**:
```sql
SELECT 
  EventType,
  AVG(DATEDIFF(MILLISECOND, '1970-01-01', Duration)) AS AvgDurationMs
FROM AuditLog
WHERE Timestamp >= DATEADD(DAY, -1, GETDATE())
GROUP BY EventType
ORDER BY AvgDurationMs DESC;
```

---

## Troubleshooting Procedures

### Issue: Application Won't Start

**Steps**:
1. Check .NET Runtime installed: `dotnet --list-runtimes`
2. Verify `appsettings.json` syntax
3. Review application logs in `%LocalAppData%\STLLayouts\logs\`
4. Test database connection
5. Test network share access

### Issue: Document Generation Fails

**Steps**:
1. Review audit log for specific error
2. Verify template file exists and is accessible
3. Test variable mappings
4. Check network share permissions
5. Review application logs for Open XML SDK errors

### Issue: Rules Not Evaluating Correctly

**Steps**:
1. Test rule with sample job in Rule Configuration UI
2. Verify rule condition syntax
3. Check variable mappings for referenced variables
4. Review rule priority (ensure correct order)
5. Check audit log for rule evaluation errors

### Issue: Slow Performance

**Steps**:
1. Check database query performance
2. Verify indexes exist on key tables
3. Monitor network latency to SQL Server and file share
4. Review concurrent user load
5. Check disk I/O on database server

---

## Incident Response

### Severity Levels

- **Critical (P1)**: Application down, no users can access
- **High (P2)**: Major functionality broken (document generation fails)
- **Medium (P3)**: Minor functionality issues (specific template fails)
- **Low (P4)**: Cosmetic issues, feature requests

### Response Times

| Severity | Response Time | Resolution Target |
|----------|---------------|-------------------|
| P1       | 15 minutes    | 2 hours           |
| P2       | 1 hour        | 4 hours           |
| P3       | 4 hours       | 1 business day    |
| P4       | 1 business day| 1 week            |

### Escalation Path

1. **L1 Support**: Help desk (password resets, basic troubleshooting)
2. **L2 Support**: DevOps team (application errors, configuration)
3. **L3 Support**: Development team (code bugs, complex issues)

---

## Change Management

### Change Request Process

1. **Submit Change Request**:
   - Document change description
   - Business justification
   - Impact assessment
   - Rollback plan

2. **Review & Approve**:
   - DevOps Lead reviews
   - Management approval (if high impact)

3. **Implement**:
   - Schedule maintenance window (if needed)
   - Deploy change to test environment
   - Test thoroughly
   - Deploy to production
   - Verify functionality

4. **Document**:
   - Update documentation
   - Update CHANGELOG.md
   - Notify users

### Maintenance Windows

**Standard Maintenance**: Sundays 2-6 AM

**Emergency Maintenance**: As needed (with 1-hour notice if possible)

---

## Reporting

### Weekly Reports

- Document generation volume
- Success/failure rates
- Top templates used
- User activity summary
- Open issues and resolutions

### Monthly Reports

- System uptime
- Performance trends
- Capacity planning (disk space, user growth)
- Security audit review
- Change log summary

---

## Contact Information

| Role | Contact | Email | Phone |
|------|---------|-------|-------|
| DevOps Lead | [Name] | [Email] | [Phone] |
| Database Admin | [Name] | [Email] | [Phone] |
| Network Admin | [Name] | [Email] | [Phone] |
| Help Desk | [Team] | [Email] | [Phone] |

---

**Next Steps**: See [ROADMAP.md](ROADMAP.md) for future enhancements.
