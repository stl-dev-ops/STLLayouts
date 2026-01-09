param(
    [Parameter(Mandatory = $true)]
    [string]$Query,

    [string]$ServerInstance = "STL-SQL1\CRMDB",
    [string]$Database = "sqlb00",

    [System.Collections.IDictionary]$Parameters,

    [System.Collections.IDictionary]$ParameterTypes,

    [int]$CommandTimeoutSeconds = 60,

    [switch]$AsJson,

    [switch]$Encrypt,
    [switch]$TrustServerCertificate
)

$ErrorActionPreference = "Stop"

$solutionDir = Split-Path -Parent $PSScriptRoot
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "sqlquery-$timestamp.log"

if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

function Write-Log([string]$message) {
    $line = "[{0}] {1}" -f (Get-Date -Format "HH:mm:ss"), $message
    $line | Tee-Object -FilePath $logFile -Append | Out-Host
}

function Write-LogError([System.Exception]$ex) {
    Write-Log "ERROR: $($ex.Message)"
    if ($ex.InnerException) {
        Write-Log "INNER: $($ex.InnerException.Message)"
    }
    Write-Log "STACK: $($ex.StackTrace)"
}

function Get-ConnectionString([string]$server, [string]$db) {
    # Mirror repo guidance: Encrypt=False; TrustServerCertificate=True
    $encryptValue = if ($Encrypt.IsPresent) { "True" } else { "False" }
    $trustValue = if ($TrustServerCertificate.IsPresent -or -not $Encrypt.IsPresent) { "True" } else { "False" }

    return "Data Source=$server;Initial Catalog=$db;Integrated Security=True;Encrypt=$encryptValue;TrustServerCertificate=$trustValue;Pooling=False;"
}

try {
    Write-Log "========================================"
    Write-Log "Querying CRMDB"
    Write-Log "========================================"
    Write-Log "Server: $ServerInstance"
    Write-Log "Database: $Database"
    Write-Log "Log: $logFile"

    Add-Type -AssemblyName System.Data

    $cs = Get-ConnectionString -server $ServerInstance -db $Database

    $conn = New-Object System.Data.SqlClient.SqlConnection($cs)
    try {
        $conn.Open()

        $cmd = $conn.CreateCommand()
        $cmd.CommandTimeout = $CommandTimeoutSeconds
        $cmd.CommandText = $Query

        if ($Parameters) {
            foreach ($k in $Parameters.Keys) {
                $nameRaw = [string]$k
                $name = if ($nameRaw.StartsWith("@")) { $nameRaw } else { "@" + $nameRaw }

                $typeName = $null
                if ($ParameterTypes -and $ParameterTypes.Contains($nameRaw)) { $typeName = [string]$ParameterTypes[$nameRaw] }
                elseif ($ParameterTypes -and $ParameterTypes.Contains($name)) { $typeName = [string]$ParameterTypes[$name] }

                if ([string]::IsNullOrWhiteSpace($typeName)) {
                    $p = $cmd.Parameters.Add($name, [System.Data.SqlDbType]::NVarChar, 4000)
                    $p.Value = [string]$Parameters[$k]
                    continue
                }

                switch ($typeName.ToLowerInvariant()) {
                    'int' {
                        $p = $cmd.Parameters.Add($name, [System.Data.SqlDbType]::Int)
                        $p.Value = [int]$Parameters[$k]
                        break
                    }
                    'bigint' {
                        $p = $cmd.Parameters.Add($name, [System.Data.SqlDbType]::BigInt)
                        $p.Value = [long]$Parameters[$k]
                        break
                    }
                    'nvarchar' {
                        $p = $cmd.Parameters.Add($name, [System.Data.SqlDbType]::NVarChar, 4000)
                        $p.Value = [string]$Parameters[$k]
                        break
                    }
                    default {
                        $p = $cmd.Parameters.Add($name, [System.Data.SqlDbType]::NVarChar, 4000)
                        $p.Value = [string]$Parameters[$k]
                        break
                    }
                }
            }
        }

        $da = New-Object System.Data.SqlClient.SqlDataAdapter $cmd
        $dt = New-Object System.Data.DataTable
        [void]$da.Fill($dt)

        Write-Log "Rows: $($dt.Rows.Count)"

        $rows = @()
        foreach ($r in $dt.Rows) {
            $obj = [ordered]@{}
            foreach ($c in $dt.Columns) {
                $v = $r[$c.ColumnName]
                if ($v -is [DBNull]) { $v = $null }
                $obj[$c.ColumnName] = $v
            }
            $rows += [pscustomobject]$obj
        }

        $outDir = Join-Path $solutionDir "temp"
        if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Force -Path $outDir | Out-Null }

        $outBase = "query-$timestamp"
        $jsonPath = Join-Path $outDir "$outBase.json"
        $txtPath = Join-Path $outDir "$outBase.txt"

        if ($AsJson) {
            $rows | ConvertTo-Json -Depth 6 | Set-Content -Encoding UTF8 $jsonPath
            Write-Log "Wrote JSON: $jsonPath"
        }

        $rows | Format-Table -AutoSize | Out-String | Set-Content -Encoding UTF8 $txtPath
        Write-Log "Wrote text: $txtPath"

        # Also print a compact table to console (useful in CI/terminal)
        $rows | Format-Table -AutoSize | Out-Host
    }
    finally {
        if ($conn.State -eq 'Open') { $conn.Close() }
    }

    Write-Log "========================================"
    Write-Log "Query complete"
    Write-Log "========================================"

    exit 0
}
catch {
    Write-Log "========================================"
    Write-Log "SQL QUERY FAILED"
    Write-Log "========================================"
    if ($_.Exception) {
        Write-LogError $_.Exception
    } else {
        Write-Log "ERROR: Unknown failure"
    }

    Write-Log "Log: $logFile"
    exit 1
}
