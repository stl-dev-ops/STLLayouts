<#
Find where variable mappings live by searching for tables/views that contain columns like:
- VariableName
- DatabaseField
- SqlExpression
- DataType
- Category

Uses ConnectionStrings:CRMDatabase from src/STLLayouts.WpfApp/appsettings.json.

Outputs:
- temp/mappings-table-candidates.json
- temp/mappings-table-candidates.txt
#>

$ErrorActionPreference = 'Stop'

function Get-ConnectionStringFromAppSettings {
    $appSettingsPath = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\appsettings.json'
    $appSettingsPath = (Resolve-Path $appSettingsPath).Path

    if (-not (Test-Path $appSettingsPath)) {
        throw "appsettings.json not found at: $appSettingsPath"
    }

    $json = Get-Content -Raw -Path $appSettingsPath | ConvertFrom-Json
    $cs = $json.ConnectionStrings.CRMDatabase

    if ([string]::IsNullOrWhiteSpace($cs)) {
        throw "ConnectionStrings:CRMDatabase missing/empty in $appSettingsPath"
    }

    return $cs
}

function Normalize-ConnectionString([string]$cs) {
    if ([string]::IsNullOrWhiteSpace($cs)) { return $cs }

    $cs = $cs -replace '(?i)Trust Server Certificate\s*=', 'TrustServerCertificate='
    $cs = $cs -replace '(?i)Initial Catalog\s*=', 'Initial Catalog='
    $cs = $cs -replace '(?i)Data Source\s*=', 'Data Source='
    return $cs
}

Add-Type -AssemblyName System.Data

$cs = Normalize-ConnectionString (Get-ConnectionStringFromAppSettings)

$connection = New-Object System.Data.SqlClient.SqlConnection($cs)
try {
    $connection.Open()

    $cmd = $connection.CreateCommand()
    $cmd.CommandText = @"
;WITH CandidateObjects AS (
    SELECT 
        s.name AS SchemaName,
        o.name AS ObjectName,
        o.type AS ObjectType,
        o.object_id
    FROM sys.objects o
    INNER JOIN sys.schemas s ON s.schema_id = o.schema_id
    WHERE o.type IN ('U','V')
), CandidateColumns AS (
    SELECT
        co.SchemaName,
        co.ObjectName,
        co.ObjectType,
        c.name AS ColumnName
    FROM CandidateObjects co
    INNER JOIN sys.columns c ON c.object_id = co.object_id
), Scores AS (
    SELECT
        SchemaName,
        ObjectName,
        ObjectType,
        SUM(CASE WHEN ColumnName = 'VariableName' THEN 10 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'DatabaseField' THEN 10 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'SqlExpression' THEN 5 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'DataType' THEN 3 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'Category' THEN 3 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'IsRequired' THEN 2 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'DefaultValue' THEN 2 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'VariableMappingId' THEN 1 ELSE 0 END) +
        SUM(CASE WHEN ColumnName = 'CreatedDate' THEN 1 ELSE 0 END)
        AS Score
    FROM CandidateColumns
    GROUP BY SchemaName, ObjectName, ObjectType
)
SELECT TOP 200
    SchemaName,
    ObjectName,
    ObjectType,
    Score,
    FullName = QUOTENAME(SchemaName) + '.' + QUOTENAME(ObjectName)
FROM Scores
WHERE Score >= 10
ORDER BY Score DESC, SchemaName, ObjectName;
"@

    $da = New-Object System.Data.SqlClient.SqlDataAdapter $cmd
    $dt = New-Object System.Data.DataTable
    [void]$da.Fill($dt)

    $rows = @()
    foreach ($r in $dt.Rows) {
        $rows += [pscustomobject]@{
            SchemaName = [string]$r['SchemaName']
            ObjectName = [string]$r['ObjectName']
            ObjectType = [string]$r['ObjectType']
            Score      = [int]$r['Score']
            FullName   = [string]$r['FullName']
        }
    }

    # Fetch column lists for the top candidates
    $top = $rows | Select-Object -First 25
    foreach ($obj in $top) {
        $cmdCols = $connection.CreateCommand()
        $cmdCols.CommandText = @"
SELECT c.name AS ColumnName
FROM sys.columns c
JOIN sys.objects o ON o.object_id = c.object_id
JOIN sys.schemas s ON s.schema_id = o.schema_id
WHERE s.name = @SchemaName AND o.name = @ObjectName
ORDER BY c.column_id;
"@
        $pSchema = $cmdCols.Parameters.Add('@SchemaName', [System.Data.SqlDbType]::NVarChar, 128)
        $pSchema.Value = $obj.SchemaName
        $pObject = $cmdCols.Parameters.Add('@ObjectName', [System.Data.SqlDbType]::NVarChar, 128)
        $pObject.Value = $obj.ObjectName

        $daCols = New-Object System.Data.SqlClient.SqlDataAdapter $cmdCols
        $dtCols = New-Object System.Data.DataTable
        [void]$daCols.Fill($dtCols)

        $obj | Add-Member -NotePropertyName Columns -NotePropertyValue ($dtCols.Rows | ForEach-Object { $_['ColumnName'] })
    }

    $outDir = Join-Path $PSScriptRoot '..\temp'
    if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Force -Path $outDir | Out-Null }

    $jsonPath = Join-Path $outDir 'mappings-table-candidates.json'
    $txtPath = Join-Path $outDir 'mappings-table-candidates.txt'

    $top | ConvertTo-Json -Depth 6 | Set-Content -Encoding UTF8 $jsonPath

    $lines = @()
    foreach ($obj in $top) {
        $lines += "{0} ({1}) Score={2}" -f $obj.FullName, $obj.ObjectType, $obj.Score
        $lines += "  Columns: {0}" -f (($obj.Columns -join ', '))
    }

    $lines -join "`r`n" | Set-Content -Encoding UTF8 $txtPath

    Write-Host "Wrote: $jsonPath" -ForegroundColor Cyan
    Write-Host "Wrote: $txtPath" -ForegroundColor Cyan

    $top | Format-Table -AutoSize FullName, ObjectType, Score
}
finally {
    if ($connection.State -eq 'Open') { $connection.Close() }
}
