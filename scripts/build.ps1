# build.ps1 - Build the STLLayouts solution
# Usage: .\build.ps1

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "build-$timestamp.log"

# Create logs directory if it doesn't exist
if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Building STLLayouts Solution" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Solution: $solutionDir" -ForegroundColor Gray
Write-Host "Log File: $logFile" -ForegroundColor Gray
Write-Host ""

# Ensure no blocking processes before building
Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Cleaning up previous instances..." -ForegroundColor Yellow
Get-Process | Where-Object { $_.ProcessName -like 'STLLayouts*' -or $_.ProcessName -eq 'dotnet' } | ForEach-Object {
    Write-Host "  Stopping process: $($_.ProcessName) (PID: $($_.Id))" -ForegroundColor Yellow
    Stop-Process -Id $_.Id -Force -ErrorAction SilentlyContinue
}
Start-Sleep -Seconds 1

# Start build
$buildStartTime = Get-Date
Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Starting build..." -ForegroundColor Yellow

try {
    # Build Debug by default to avoid intermittent WPF wpftmp generated g.cs missing errors in Release.
    $configuration = "Debug"

    # Build the solution
    $output = dotnet build "$solutionDir" --configuration $configuration --verbosity minimal 2>&1 | Tee-Object -FilePath $logFile

    if ($LASTEXITCODE -eq 0) {
        $buildEndTime = Get-Date
        $duration = $buildEndTime - $buildStartTime
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "BUILD SUCCEEDED" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "Duration: $($duration.TotalSeconds.ToString('F2')) seconds" -ForegroundColor Gray
        Write-Host "Log: $logFile" -ForegroundColor Gray
        exit 0
    } else {
        $buildEndTime = Get-Date
        $duration = $buildEndTime - $buildStartTime
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Red
        Write-Host "BUILD FAILED" -ForegroundColor Red
        Write-Host "========================================" -ForegroundColor Red
        Write-Host "Duration: $($duration.TotalSeconds.ToString('F2')) seconds" -ForegroundColor Gray
        Write-Host "Log: $logFile" -ForegroundColor Gray
        Write-Host ""
        Write-Host "Check the log file for detailed error information." -ForegroundColor Yellow
        exit 1
    }
} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "BUILD ERROR" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host "Log: $logFile" -ForegroundColor Gray
    exit 1
}
