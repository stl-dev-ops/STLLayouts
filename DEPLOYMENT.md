# Deployment Guide

## Overview

This document provides instructions for deploying the STL Layouts WPF desktop application.

---

## Prerequisites

### System Requirements

**Workstation**:
- Windows 10 (version 1809 or later) or Windows 11
- Windows Server 2019 or later (for server deployment)
- 4 GB RAM minimum (8 GB recommended)
- 500 MB available disk space
- .NET 8 Runtime or SDK

**Network**:
- Access to SQL Server: `STL-SQL1\CRMDB`
- Access to network share for document storage
- Active Directory domain membership (for Windows Authentication)

### Software Dependencies

- .NET 8 Runtime (Desktop): https://dotnet.microsoft.com/download/dotnet/8.0
- SQL Server 2016+ (for application database)
- Network file share (SMB)

---

## Deployment Options

### Option 1: ClickOnce Deployment (Recommended)

**Advantages**:
- Automatic updates
- Simple installation
- No admin rights required
- Rollback capability

**Steps**:

1. **Publish Application**:
```powershell
cd src\STLLayouts.WpfApp
dotnet publish -c Release --runtime win-x64 --self-contained false /p:PublishSingleFile=true
```

2. **Configure ClickOnce** (Visual Studio):
   - Right-click project → Publish
   - Target: Folder
   - Configuration: Release
   - Target Framework: net8.0-windows
   - Deployment Mode: Framework-dependent
   - Target Runtime: win-x64
   - Publish Location: `\\fileserver\deployments\STLLayouts`

3. **User Installation**:
   - Navigate to `\\fileserver\deployments\STLLayouts\setup.exe`
   - Run setup.exe
   - Application installs to user profile
   - Shortcut created on desktop and Start menu

**Update Process**:
- Application checks for updates on startup
- Prompts user to install updates
- Updates install automatically

### Option 2: MSI Installer

**Advantages**:
- Centralized deployment via Group Policy
- Admin-controlled installation
- Machine-wide installation

**Steps**:

1. **Build MSI** (using WiX Toolset):
```xml
<!-- Product.wxs -->
<Product Id="*" Name="STL Layouts" Version="1.0.0" Manufacturer="STL Manufacturing" ...>
  <Package InstallerVersion="200" Compressed="yes" InstallScope="perMachine" />
  
  <Directory Id="TARGETDIR" Name="SourceDir">
    <Directory Id="ProgramFilesFolder">
      <Directory Id="INSTALLFOLDER" Name="STLLayouts" />
    </Directory>
  </Directory>
  
  <ComponentGroup Id="ProductComponents" Directory="INSTALLFOLDER">
    <Component Id="STLLayouts.WpfApp.exe">
      <File Source="$(var.STLLayouts.WpfApp.TargetPath)" />
    </Component>
    <!-- Additional files -->
  </ComponentGroup>
</Product>
```

2. **Build Installer**:
```powershell
dotnet publish -c Release
wix build Product.wxs -out STLLayoutsSetup.msi
```

3. **Deploy via Group Policy**:
   - Copy MSI to network share
   - Create GPO: Computer Configuration → Policies → Software Settings → Software Installation
   - Add MSI package
   - Assign to target OUs

### Option 3: XCOPY Deployment

**Advantages**:
- Simple, no installer needed
- Portable
- Good for testing

**Steps**:

1. **Publish Self-Contained**:
```powershell
dotnet publish -c Release --runtime win-x64 --self-contained true /p:PublishSingleFile=true
```

2. **Copy Files**:
   - Copy `bin\Release\net8.0-windows\win-x64\publish\STLLayouts.WpfApp.exe` to target directory
   - Copy `appsettings.json` and other config files

3. **Run Application**:
   - Double-click `STLLayouts.WpfApp.exe`

---

## Configuration

### appsettings.json

```json
{
  "ConnectionStrings": {
    "CrmDatabase": "Data Source=STL-SQL1\\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True",
    "ApplicationDatabase": "Data Source=STL-SQL1;Initial Catalog=STLLayoutsApp;Integrated Security=True;"
  },
  "DocumentStorage": {
    "NetworkSharePath": "\\\\fileserver\\qa-documents",
    "FileNamePattern": "{JobNumber}_{TemplateName}_{DateTime:yyyyMMdd_HHmmss}.{Extension}"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning"
    },
    "FilePath": "logs\\stllayouts-.log"
  },
  "RuleEngine": {
    "CacheEnabled": true,
    "CacheDurationMinutes": 60
  },
  "Performance": {
    "MaxConcurrentDocumentGenerations": 5,
    "DocumentGenerationTimeoutSeconds": 30
  }
}
```

### Environment-Specific Configuration

**Development**:
```json
{
  "ConnectionStrings": {
    "CrmDatabase": "Data Source=localhost;Initial Catalog=sqlb00_dev;Integrated Security=True;",
    "ApplicationDatabase": "Data Source=localhost;Initial Catalog=STLLayoutsApp_dev;Integrated Security=True;"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Debug"
    }
  }
}
```

**Production**:
```json
{
  "ConnectionStrings": {
    "CrmDatabase": "Data Source=STL-SQL1\\CRMDB;Initial Catalog=sqlb00;Integrated Security=True;Pooling=False;Encrypt=False;Trust Server Certificate=True",
    "ApplicationDatabase": "Data Source=STL-SQL1;Initial Catalog=STLLayoutsApp;Integrated Security=True;"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information"
    }
  }
}
```

---

## Database Setup

### Application Database

1. **Create Database**:
```sql
CREATE DATABASE STLLayoutsApp;
```

2. **Run Migrations**:
```powershell
cd src\STLLayouts.Data
dotnet ef database update --connection "Data Source=STL-SQL1;Initial Catalog=STLLayoutsApp;Integrated Security=True;"
```

3. **Seed Initial Data** (optional):
```sql
-- Create default admin user
INSERT INTO Users (UserID, WindowsIdentity, Role, IsActive) 
VALUES (NEWID(), 'DOMAIN\admin', 'Admin', 1);
```

### CRMDB (Read-Only)

- No changes required
- Verify connection string works
- Verify Windows Authentication permissions

---

## Network Share Setup

1. **Create Share**:
```powershell
New-SmbShare -Name "qa-documents" -Path "D:\QADocuments" -FullAccess "DOMAIN\STLLayoutsUsers"
```

2. **Set Permissions**:
   - Read/Write for STLLayoutsUsers group
   - Read-only for auditors

3. **Test Access**:
```powershell
Test-Path "\\fileserver\qa-documents"
```

---

## Updates & Patching

### ClickOnce Updates

1. Publish new version to deployment location
2. Increment version number
3. Users automatically prompted on next startup

### MSI Updates

1. Build new MSI with incremented version
2. Deploy via Group Policy (updates automatically)
3. Or manually uninstall old version and install new version

### Manual Updates

1. Stop application on target machines
2. Replace executable and DLLs
3. Update `appsettings.json` if needed
4. Restart application

---

## Rollback Procedures

### ClickOnce Rollback

1. Navigate to deployment folder
2. Delete latest version folder
3. Update `STLLayouts.application` manifest to point to previous version
4. Users revert to previous version on next startup

### MSI Rollback

1. Uninstall current version via Add/Remove Programs
2. Install previous MSI version

---

## Monitoring & Health Checks

### Application Logs

**Location**: `C:\Users\{Username}\AppData\Local\STLLayouts\logs\`

**Log Levels**:
- Debug: Detailed diagnostic information
- Information: General informational messages
- Warning: Warning messages (non-critical)
- Error: Error messages
- Critical: Critical failures

### Database Monitoring

Monitor application database for:
- Connection failures
- Slow queries
- Audit log growth

### Network Share Monitoring

Monitor network share for:
- Disk space
- Access errors
- Performance issues

---

## Troubleshooting

### Application Won't Start

**Symptom**: Application crashes on startup

**Solutions**:
1. Verify .NET 8 Runtime installed: `dotnet --list-runtimes`
2. Check `appsettings.json` for syntax errors
3. Review logs in `%LocalAppData%\STLLayouts\logs\`
4. Verify database connectivity: `Test-NetConnection STL-SQL1 -Port 1433`

### Cannot Connect to Database

**Symptom**: "Connection failed" error

**Solutions**:
1. Verify SQL Server is running
2. Test connection string with SQL Server Management Studio
3. Verify Windows Authentication enabled
4. Check firewall rules

### Cannot Access Network Share

**Symptom**: "Access denied" or "Path not found"

**Solutions**:
1. Verify share exists: `Test-Path \\fileserver\qa-documents`
2. Check permissions: User must have Read/Write
3. Verify network connectivity: `Test-NetConnection fileserver`
4. Check DNS resolution: `nslookup fileserver`

### Document Generation Fails

**Symptom**: "Document generation failed" error

**Solutions**:
1. Verify template file exists and is accessible
2. Check variable mappings are correct
3. Review logs for specific error messages
4. Test Open XML SDK installation

---

## Performance Tuning

### Database Optimization

1. **Indexes**:
```sql
CREATE INDEX IX_Templates_IsActive ON Templates(IsActive);
CREATE INDEX IX_Rules_IsActive ON Rules(IsActive);
CREATE INDEX IX_AuditLog_Timestamp ON AuditLog(Timestamp DESC);
```

2. **Query Optimization**:
   - Use database views for complex joins
   - Enable query plan caching

### Application Tuning

1. **Connection Pooling**:
```json
"ConnectionStrings": {
  "CrmDatabase": "...;Pooling=True;Min Pool Size=5;Max Pool Size=100;"
}
```

2. **Caching**:
   - Enable rule caching
   - Cache template metadata
   - Cache variable mappings

3. **Parallel Document Generation**:
```json
"Performance": {
  "MaxConcurrentDocumentGenerations": 10
}
```

---

## Security Considerations

### Windows Authentication

- All users must be domain users
- Application uses current Windows identity
- No password storage required

### Network Share Security

- Use NTFS permissions
- Audit access (enable auditing on share)
- Regular permission reviews

### Database Security

- Application database: Read/Write for app, Read-only for auditors
- CRMDB: Read-only for all application users
- Use SQL Server audit logging

---

## Backup & Recovery

### Application Database Backup

```sql
BACKUP DATABASE STLLayoutsApp 
TO DISK = 'D:\Backups\STLLayoutsApp_Full.bak' 
WITH FORMAT, INIT, COMPRESSION;
```

**Schedule**: Daily full backup, hourly transaction log backups

### Network Share Backup

- Use Windows Server Backup or third-party backup solution
- Backup schedule: Daily incremental, weekly full

### Configuration Backup

- Backup `appsettings.json` and other config files
- Store in version control (Git)

---

## Disaster Recovery

### Application Recovery

1. Restore application database from backup
2. Restore network share from backup
3. Reinstall application on workstations
4. Verify connectivity and functionality

### Recovery Time Objective (RTO)

- **Target**: 4 hours
- **Database restore**: 1 hour
- **Network share restore**: 2 hours
- **Application reinstall**: 1 hour

### Recovery Point Objective (RPO)

- **Target**: 1 hour (transaction log backups)

---

**Next Steps**: See [OPERATIONS.md](OPERATIONS.md) for operational procedures.
