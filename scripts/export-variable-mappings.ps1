param(
    [Parameter(Mandatory = $false)] [string]$ConnectionString,
    [Parameter(Mandatory = $false)] [string]$OutputPath,
    [Parameter(Mandatory = $false)] [switch]$IncludeBraces = $true,
    [Parameter(Mandatory = $false)] [switch]$CopyToClipboard = $true
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

    # System.Data.SqlClient is picky about keyword spelling. Normalize a few common ones.
    $cs = $cs -replace '(?i)Trust Server Certificate\s*=', 'TrustServerCertificate='
    $cs = $cs -replace '(?i)Initial Catalog\s*=', 'Initial Catalog='
    $cs = $cs -replace '(?i)Data Source\s*=', 'Data Source='
    return $cs
}

if ([string]::IsNullOrWhiteSpace($ConnectionString)) {
    $ConnectionString = Get-ConnectionStringFromAppSettings
}
$ConnectionString = Normalize-ConnectionString $ConnectionString

if ([string]::IsNullOrWhiteSpace($OutputPath)) {
    $OutputPath = Join-Path $PSScriptRoot '..\temp\variable-mappings.txt'
}

# Ensure output directory exists and compute full output file path
$outDir = Split-Path -Parent $OutputPath
if (-not (Test-Path $outDir)) {
    New-Item -ItemType Directory -Force -Path $outDir | Out-Null
}
$outDirFull = (Resolve-Path -LiteralPath $outDir).Path
$resolvedOutput = Join-Path $outDirFull (Split-Path -Leaf $OutputPath)

Write-Host "Exporting stlLayouts_VariableMapping.VariableName..." -ForegroundColor Cyan
Write-Host "Output: $resolvedOutput" -ForegroundColor Cyan

$names = New-Object System.Collections.Generic.List[string]

# Use System.Data.SqlClient (available in Windows PowerShell / PowerShell 7 without extra module installs)
Add-Type -AssemblyName System.Data

$connection = New-Object System.Data.SqlClient.SqlConnection($ConnectionString)
try {
    $connection.Open()

    $cmd = $connection.CreateCommand()
    $cmd.CommandText = @"
SELECT VariableName
FROM dbo.stlLayouts_VariableMapping
ORDER BY VariableName;
"@

    $reader = $cmd.ExecuteReader()
    while ($reader.Read()) {
        $name = $reader.GetString(0)
        if (-not [string]::IsNullOrWhiteSpace($name)) {
            $names.Add($name.Trim())
        }
    }
    $reader.Close()
}
finally {
    if ($connection.State -eq 'Open') { $connection.Close() }
}

if ($names.Count -eq 0) {
    throw "No variable mappings found in dbo.stlLayouts_VariableMapping."
}

$lines = $names | ForEach-Object {
    if ($IncludeBraces) { "{{{{$_}}}}" } else { $_ }
}

$lines | Set-Content -Path $resolvedOutput -Encoding UTF8

if ($CopyToClipboard) {
    try {
        $lines -join [Environment]::NewLine | Set-Clipboard
        Write-Host "Copied $($names.Count) variables to clipboard." -ForegroundColor Green
    }
    catch {
        Write-Warning "Failed to copy to clipboard: $($_.Exception.Message)"
    }
}

Write-Host "Exported $($names.Count) variables." -ForegroundColor Green
