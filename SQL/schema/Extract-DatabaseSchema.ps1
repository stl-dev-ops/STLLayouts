# Extract Database Schema Script
# Connects to SQL Server and scripts all database objects to individual files

param(
    [string]$ServerInstance = "STL-SQL1\CRMDB",
    [string]$Database = "sqlb00",
    [string]$OutputPath = "$PSScriptRoot"
)

# Requires SQL Server PowerShell module
if (-not (Get-Module -ListAvailable -Name SqlServer)) {
    Write-Host "Installing SqlServer module..." -ForegroundColor Yellow
    Install-Module -Name SqlServer -Scope CurrentUser -Force -AllowClobber
}

Import-Module SqlServer

Write-Host "Connecting to $ServerInstance/$Database..." -ForegroundColor Cyan

# =============================================
# Extract Tables
# =============================================
Write-Host "`nExtracting Tables..." -ForegroundColor Green
$tables = Invoke-Sqlcmd -ServerInstance $ServerInstance -Database $Database -TrustServerCertificate -Query @"
SELECT s.name AS SchemaName, t.name AS TableName
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
WHERE t.is_ms_shipped = 0
ORDER BY s.name, t.name
"@

foreach ($table in $tables) {
    $schemaName = $table.SchemaName
    $tableName = $table.TableName
    $fileName = "$OutputPath\tables\$schemaName.$tableName.sql"
    
    Write-Host "  - $schemaName.$tableName"
    
    # Get table script using SMO
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server($ServerInstance)
    $db = $srv.Databases[$Database]
    $tbl = $db.Tables[$tableName, $schemaName]
    
    if ($tbl) {
        $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($srv)
        $scripter.Options.ScriptDrops = $false
        $scripter.Options.IncludeIfNotExists = $true
        $scripter.Options.Indexes = $true
        $scripter.Options.DriAll = $true
        $scripter.Options.Triggers = $false
        
        $script = $scripter.Script($tbl)
        $script | Out-File -FilePath $fileName -Encoding UTF8
    }
}

# =============================================
# Extract Views
# =============================================
Write-Host "`nExtracting Views..." -ForegroundColor Green
$views = Invoke-Sqlcmd -ServerInstance $ServerInstance -Database $Database -TrustServerCertificate -Query @"
SELECT s.name AS SchemaName, v.name AS ViewName
FROM sys.views v
INNER JOIN sys.schemas s ON v.schema_id = s.schema_id
WHERE v.is_ms_shipped = 0
ORDER BY s.name, v.name
"@

foreach ($view in $views) {
    $schemaName = $view.SchemaName
    $viewName = $view.ViewName
    $fileName = "$OutputPath\views\$schemaName.$viewName.sql"
    
    Write-Host "  - $schemaName.$viewName"
    
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server($ServerInstance)
    $db = $srv.Databases[$Database]
    $vw = $db.Views[$viewName, $schemaName]
    
    if ($vw) {
        $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($srv)
        $scripter.Options.ScriptDrops = $false
        $scripter.Options.IncludeIfNotExists = $true
        
        $script = $scripter.Script($vw)
        $script | Out-File -FilePath $fileName -Encoding UTF8
    }
}

# =============================================
# Extract Stored Procedures
# =============================================
Write-Host "`nExtracting Stored Procedures..." -ForegroundColor Green
$procs = Invoke-Sqlcmd -ServerInstance $ServerInstance -Database $Database -TrustServerCertificate -Query @"
SELECT s.name AS SchemaName, p.name AS ProcName
FROM sys.procedures p
INNER JOIN sys.schemas s ON p.schema_id = s.schema_id
WHERE p.is_ms_shipped = 0
ORDER BY s.name, p.name
"@

foreach ($proc in $procs) {
    $schemaName = $proc.SchemaName
    $procName = $proc.ProcName
    $fileName = "$OutputPath\stored-procedures\$schemaName.$procName.sql"
    
    Write-Host "  - $schemaName.$procName"
    
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server($ServerInstance)
    $db = $srv.Databases[$Database]
    $sp = $db.StoredProcedures[$procName, $schemaName]
    
    if ($sp -and -not $sp.IsSystemObject) {
        $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($srv)
        $scripter.Options.ScriptDrops = $false
        $scripter.Options.IncludeIfNotExists = $true
        
        $script = $scripter.Script($sp)
        $script | Out-File -FilePath $fileName -Encoding UTF8
    }
}

# =============================================
# Extract Functions
# =============================================
Write-Host "`nExtracting Functions..." -ForegroundColor Green
$functions = Invoke-Sqlcmd -ServerInstance $ServerInstance -Database $Database -TrustServerCertificate -Query @"
SELECT s.name AS SchemaName, o.name AS FunctionName, o.type_desc
FROM sys.objects o
INNER JOIN sys.schemas s ON o.schema_id = s.schema_id
WHERE o.type IN ('FN', 'IF', 'TF')
  AND o.is_ms_shipped = 0
ORDER BY s.name, o.name
"@

foreach ($func in $functions) {
    $schemaName = $func.SchemaName
    $funcName = $func.FunctionName
    $fileName = "$OutputPath\functions\$schemaName.$funcName.sql"
    
    Write-Host "  - $schemaName.$funcName"
    
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server($ServerInstance)
    $db = $srv.Databases[$Database]
    $fn = $db.UserDefinedFunctions[$funcName, $schemaName]
    
    if ($fn -and -not $fn.IsSystemObject) {
        $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($srv)
        $scripter.Options.ScriptDrops = $false
        $scripter.Options.IncludeIfNotExists = $true
        
        $script = $scripter.Script($fn)
        $script | Out-File -FilePath $fileName -Encoding UTF8
    }
}

# =============================================
# Extract Triggers
# =============================================
Write-Host "`nExtracting Triggers..." -ForegroundColor Green
$triggers = Invoke-Sqlcmd -ServerInstance $ServerInstance -Database $Database -TrustServerCertificate -Query @"
SELECT s.name AS SchemaName, tr.name AS TriggerName, OBJECT_NAME(tr.parent_id) AS ParentTable
FROM sys.triggers tr
INNER JOIN sys.objects o ON tr.object_id = o.object_id
INNER JOIN sys.schemas s ON o.schema_id = s.schema_id
WHERE tr.is_ms_shipped = 0
  AND tr.parent_class = 1
ORDER BY s.name, tr.name
"@

foreach ($trigger in $triggers) {
    $schemaName = $trigger.SchemaName
    $triggerName = $trigger.TriggerName
    $parentTable = $trigger.ParentTable
    $fileName = "$OutputPath\triggers\$schemaName.$triggerName.sql"
    
    Write-Host "  - $schemaName.$triggerName (on $parentTable)"
    
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server($ServerInstance)
    $db = $srv.Databases[$Database]
    $tbl = $db.Tables[$parentTable, $schemaName]
    
    if ($tbl) {
        $trg = $tbl.Triggers[$triggerName]
        
        if ($trg) {
            $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($srv)
            $scripter.Options.ScriptDrops = $false
            $scripter.Options.IncludeIfNotExists = $true
            
            $script = $scripter.Script($trg)
            $script | Out-File -FilePath $fileName -Encoding UTF8
        }
    }
}

Write-Host "`nSchema extraction complete!" -ForegroundColor Cyan
Write-Host "Files saved to: $OutputPath" -ForegroundColor Cyan
