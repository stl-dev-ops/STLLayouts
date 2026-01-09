param(
    [Parameter(Mandatory = $false)] [string]$ConnectionString,
    [Parameter(Mandatory = $false)] [string]$OutputJsonPath,
    [Parameter(Mandatory = $false)] [string]$OutputTablesPath
)

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

if ([string]::IsNullOrWhiteSpace($ConnectionString)) {
    $ConnectionString = Get-ConnectionStringFromAppSettings
}
$ConnectionString = Normalize-ConnectionString $ConnectionString

if ([string]::IsNullOrWhiteSpace($OutputJsonPath)) {
    $OutputJsonPath = Join-Path $PSScriptRoot '..\temp\variable-mappings-details.json'
}

if ([string]::IsNullOrWhiteSpace($OutputTablesPath)) {
    $OutputTablesPath = Join-Path $PSScriptRoot '..\temp\variable-mappings-tables.txt'
}

$outDir1 = Split-Path -Parent $OutputJsonPath
if (-not (Test-Path $outDir1)) { New-Item -ItemType Directory -Force -Path $outDir1 | Out-Null }
$outDir2 = Split-Path -Parent $OutputTablesPath
if (-not (Test-Path $outDir2)) { New-Item -ItemType Directory -Force -Path $outDir2 | Out-Null }

$resolvedJson = (Resolve-Path -LiteralPath $outDir1).Path | Join-Path -ChildPath (Split-Path -Leaf $OutputJsonPath)
$resolvedTables = (Resolve-Path -LiteralPath $outDir2).Path | Join-Path -ChildPath (Split-Path -Leaf $OutputTablesPath)

Write-Host "Exporting stlLayouts_VariableMapping {VariableName, DatabaseField, SqlExpression}..." -ForegroundColor Cyan
Write-Host "Output JSON:   $resolvedJson" -ForegroundColor Cyan
Write-Host "Output Tables: $resolvedTables" -ForegroundColor Cyan

Add-Type -AssemblyName System.Data

$rows = New-Object System.Collections.Generic.List[object]
$tables = New-Object System.Collections.Generic.HashSet[string]

$connection = New-Object System.Data.SqlClient.SqlConnection($ConnectionString)
try {
    $connection.Open()

    $cmd = $connection.CreateCommand()
    $cmd.CommandText = @"
SELECT VariableName, DatabaseField, SqlExpression
FROM dbo.stlLayouts_VariableMapping
ORDER BY VariableName;
"@

    $reader = $cmd.ExecuteReader()
    while ($reader.Read()) {
        $variableName = $reader.GetString(0)
        $databaseField = if ($reader.IsDBNull(1)) { $null } else { $reader.GetString(1) }
        $sqlExpression = if ($reader.IsDBNull(2)) { $null } else { $reader.GetString(2) }

        $rows.Add([pscustomobject]@{
            VariableName  = $variableName
            DatabaseField = $databaseField
            SqlExpression = $sqlExpression
        })

        foreach ($s in @($databaseField, $sqlExpression)) {
            if ([string]::IsNullOrWhiteSpace($s)) { continue }

            # Expected formats:
            #   dbo.order___.leverdat
            #   order___.leverdat
            #   leverdat (no table info)
            $t = $null
            if ($s -match '^(?<schema>\w+)\.(?<table>\w+)\.(?<col>\w+)$') {
                $t = "$($Matches.schema).$($Matches.table)"
            }
            elseif ($s -match '^(?<table>\w+)\.(?<col>\w+)$') {
                $t = $Matches.table
            }

            if ($t) { [void]$tables.Add($t) }
        }
    }
    $reader.Close()
}
finally {
    if ($connection.State -eq 'Open') { $connection.Close() }
}

if ($rows.Count -eq 0) {
    throw "No variable mappings found in dbo.stlLayouts_VariableMapping."
}

$rows | ConvertTo-Json -Depth 4 | Set-Content -Path $resolvedJson -Encoding UTF8
$tables | Sort-Object | Set-Content -Path $resolvedTables -Encoding UTF8

Write-Host "Exported $($rows.Count) mappings." -ForegroundColor Green
Write-Host "Found $($tables.Count) referenced tables (by simple parse)." -ForegroundColor Green
