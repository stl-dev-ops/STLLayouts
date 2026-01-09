param(
    [Parameter(Mandatory = $true)]
    [string]$SqlFile,

    [string]$ServerInstance = "STL-SQL1\CRMDB",

    [string]$Database = "sqlb00",

    [switch]$v,
    [switch]$vv,
    [switch]$vvv,

    [switch]$Encrypt,
    [switch]$TrustServerCertificate
)

$ErrorActionPreference = "Stop"

$solutionDir = Split-Path -Parent $PSScriptRoot
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "sqlpatch-$timestamp.log"

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

    if ($vv -or $vvv) {
        Write-Log "STACK: $($ex.StackTrace)"
    }
}

function Get-ConnectionString([string]$server, [string]$db) {
    # Mirror appsettings.json defaults: Encrypt=False; TrustServerCertificate=True
    $encryptValue = if ($Encrypt.IsPresent) { "True" } else { "False" }
    $trustValue = if ($TrustServerCertificate.IsPresent -or -not $Encrypt.IsPresent) { "True" } else { "False" }

    return "Data Source=$server;Initial Catalog=$db;Integrated Security=True;Encrypt=$encryptValue;Trust Server Certificate=$trustValue;"
}

try {
    if (-not (Test-Path $SqlFile)) {
        throw "SQL file not found: $SqlFile"
    }

    # Resolve relative paths from repo root
    if (-not [System.IO.Path]::IsPathRooted($SqlFile)) {
        $SqlFile = Join-Path $solutionDir $SqlFile
    }

    $connectionString = Get-ConnectionString -server $ServerInstance -db $Database

    Write-Log "========================================"
    Write-Log "Applying SQL Patch"
    Write-Log "========================================"
    Write-Log "Server: $ServerInstance"
    Write-Log "Database: $Database"
    Write-Log "SqlFile: $SqlFile"
    Write-Log "Log: $logFile"
    if ($vv -or $vvv) {
        Write-Log "ConnectionString: $connectionString"
    }

    # Prefer Invoke-Sqlcmd if available; otherwise use sqlcmd.
    $invokeSqlCmd = Get-Command Invoke-Sqlcmd -ErrorAction SilentlyContinue
    if ($invokeSqlCmd) {
        Write-Log "Using Invoke-Sqlcmd"

        $query = Get-Content -Path $SqlFile -Raw
        # The patch file may include USE/GO; split on GO lines to emulate SSMS behavior.
        $batches = $query -split "(?im)^\\s*GO\\s*$" | Where-Object { -not [string]::IsNullOrWhiteSpace($_) }

        foreach ($batch in $batches) {
            if ($vvv) {
                $previewLen = [Math]::Min($batch.Length, 200)
                Write-Log "Executing batch preview: $($batch.Substring(0, $previewLen))..."
            }

            Invoke-Sqlcmd -ConnectionString $connectionString -Query $batch -ErrorAction Stop | Out-Null
        }
    } else {
        $sqlcmd = Get-Command sqlcmd -ErrorAction SilentlyContinue
        if (-not $sqlcmd) {
            throw "Neither Invoke-Sqlcmd nor sqlcmd is available. Install SqlServer PowerShell module or SQLCMD tools."
        }

        Write-Log "Using sqlcmd"

        # sqlcmd doesn't accept the full ADO connection string directly; map important options.
        $args = @(
            "-S", $ServerInstance,
            "-d", $Database,
            "-E",
            "-b",
            "-i", $SqlFile
        )

        # If the user requested trusting the server certificate, try enabling it for sqlcmd.
        # (Requires sqlcmd versions that support -C)
        if ($TrustServerCertificate.IsPresent -or -not $Encrypt.IsPresent) {
            $args += "-C"
        }

        if ($vvv) { Write-Log ("sqlcmd " + ($args -join " ")) }

        $p = Start-Process -FilePath $sqlcmd.Source -ArgumentList $args -NoNewWindow -Wait -PassThru
        if ($p.ExitCode -ne 0) {
            throw "sqlcmd failed with exit code $($p.ExitCode). See log: $logFile"
        }
    }

    Write-Log "========================================"
    Write-Log "SQL patch applied successfully"
    Write-Log "========================================"
    Write-Log "Log: $logFile"

    exit 0
} catch {
    Write-Log "========================================"
    Write-Log "SQL PATCH FAILED"
    Write-Log "========================================"

    $ex = $_.Exception
    if (-not $ex) {
        Write-Log "ERROR: Unknown failure"
    } else {
        Write-LogError $ex
    }

    Write-Log "Log: $logFile"

    exit 1
}
