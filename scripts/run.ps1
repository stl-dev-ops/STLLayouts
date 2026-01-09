# run.ps1 - Run the STLLayouts WPF application
# Usage: .\run.ps1

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot
$projectDir = Join-Path $solutionDir "src\STLLayouts.WpfApp"
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "run-$timestamp.log"

# Create logs directory if it doesn't exist
if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Running STLLayouts Application" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Project: $projectDir" -ForegroundColor Gray
Write-Host "Log File: $logFile" -ForegroundColor Gray
Write-Host ""

# CRITICAL: Kill any previous instances before starting new one
Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Cleaning up previous instances..." -ForegroundColor Yellow
Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*' -or $_.ProcessName -eq 'dotnet'} | ForEach-Object {
    Write-Host "  Stopping process: $($_.ProcessName) (PID: $($_.Id))" -ForegroundColor Yellow
    Stop-Process -Id $_.Id -Force -ErrorAction SilentlyContinue
}
Start-Sleep -Seconds 1

# Check if project exists
if (-not (Test-Path $projectDir)) {
    Write-Host "ERROR: Project directory not found: $projectDir" -ForegroundColor Red
    exit 1
}

Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Starting application..." -ForegroundColor Yellow
Write-Host ""

try {
    $configuration = "Debug"
    $tfm = "net8.0-windows"

    $appExe = Join-Path $projectDir ("bin\\$configuration\\$tfm\\STLLayouts.exe")
    if (-not (Test-Path $appExe)) {
        Write-Host "ERROR: Built application not found: $appExe" -ForegroundColor Red
        Write-Host "Run scripts/build.ps1 first." -ForegroundColor Yellow
        exit 1
    }

    # Run the built exe so dependency resolution happens from the output folder.
    $process = Start-Process -FilePath $appExe `
                             -NoNewWindow `
                             -PassThru `
                             -WorkingDirectory (Split-Path -Parent $appExe) `
                             -RedirectStandardOutput $logFile `
                             -RedirectStandardError "${logFile}.err"

    Write-Host "Application started successfully!" -ForegroundColor Green
    Write-Host "Process ID: $($process.Id)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Logs are being written to:" -ForegroundColor Yellow
    Write-Host "  Output: $logFile" -ForegroundColor Gray
    Write-Host "  Errors: ${logFile}.err" -ForegroundColor Gray
    Write-Host ""
    Write-Host "To stop the application, close the application window or terminate process $($process.Id)" -ForegroundColor Yellow

    $process.WaitForExit()

    if ($process.ExitCode -eq 0) {
        Write-Host ""
        Write-Host "Application exited normally." -ForegroundColor Green
    } else {
        Write-Host ""
        Write-Host "Application exited with code: $($process.ExitCode)" -ForegroundColor Red
        Write-Host "Check log files for details." -ForegroundColor Yellow
    }

} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "APPLICATION ERROR" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host "Log: $logFile" -ForegroundColor Gray
    exit 1
}
