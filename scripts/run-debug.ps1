# run-debug.ps1 - Run the STLLayouts WPF application with debug output
# Usage: .\run-debug.ps1
# GOVERNANCE: Use repo scripts/tasks for build/run; avoid ad-hoc dotnet commands

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot
$projectDir = Join-Path $solutionDir "src\STLLayouts.WpfApp"
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "run-debug-$timestamp.log"

# Create logs directory if it doesn't exist
if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Running STLLayouts Application (DEBUG)" -ForegroundColor Cyan
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

Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Starting application in DEBUG mode..." -ForegroundColor Yellow
Write-Host "Console output will be displayed here." -ForegroundColor Yellow
Write-Host ""

try {
    # Change to project directory so appsettings.json can be found
    Push-Location $projectDir
    
    # Run with console output visible
    & dotnet run --configuration Debug 2>&1 | Tee-Object -FilePath $logFile
    
    Pop-Location
    
    $exitCode = $LASTEXITCODE
    
    if ($exitCode -eq 0) {
        Write-Host ""
        Write-Host "Application exited normally." -ForegroundColor Green
    } else {
        Write-Host ""
        Write-Host "Application exited with code: $exitCode" -ForegroundColor Red
        Write-Host "Log: $logFile" -ForegroundColor Gray
    }
    
    exit $exitCode
    
} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "APPLICATION ERROR" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host "Log: $logFile" -ForegroundColor Gray
    exit 1
}
