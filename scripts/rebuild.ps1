# rebuild.ps1 - Clean rebuild of the STLLayouts solution with process cleanup
# Usage: .\rebuild.ps1

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot
$logDir = Join-Path $solutionDir "logs"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$logFile = Join-Path $logDir "rebuild-$timestamp.log"

if (-not (Test-Path $logDir)) { New-Item -ItemType Directory -Path $logDir -Force | Out-Null }

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Rebuilding STLLayouts Solution" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Solution: $solutionDir" -ForegroundColor Gray
Write-Host "Log File: $logFile" -ForegroundColor Gray
Write-Host ""

Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Cleaning up previous instances..." -ForegroundColor Yellow
Get-Process | Where-Object { $_.ProcessName -like 'STLLayouts*' -or $_.ProcessName -eq 'dotnet' } | ForEach-Object {
    Write-Host "  Stopping process: $($_.ProcessName) (PID: $($_.Id))" -ForegroundColor Yellow
    Stop-Process -Id $_.Id -Force -ErrorAction SilentlyContinue
}
Start-Sleep -Seconds 1

$startTime = Get-Date
try {
    Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Cleaning solution..." -ForegroundColor Yellow
    dotnet clean "$solutionDir" --configuration Release 2>&1 | Tee-Object -FilePath $logFile

    Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Restoring packages..." -ForegroundColor Yellow
    dotnet restore "$solutionDir" 2>&1 | Tee-Object -FilePath $logFile -Append

    Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Building solution..." -ForegroundColor Yellow
    dotnet build "$solutionDir" --configuration Release --verbosity minimal 2>&1 | Tee-Object -FilePath $logFile -Append

    if ($LASTEXITCODE -eq 0) {
        $duration = (Get-Date) - $startTime
        Write-Host ""; Write-Host "========================================" -ForegroundColor Green
        Write-Host "REBUILD SUCCEEDED" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "Duration: $($duration.TotalSeconds.ToString('F2')) seconds" -ForegroundColor Gray
        Write-Host "Log: $logFile" -ForegroundColor Gray
        exit 0
    } else {
        throw "Rebuild failed"
    }
}
catch {
    $duration = (Get-Date) - $startTime
    Write-Host ""; Write-Host "========================================" -ForegroundColor Red
    Write-Host "REBUILD FAILED" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "Duration: $($duration.TotalSeconds.ToString('F2')) seconds" -ForegroundColor Gray
    Write-Host "Log: $logFile" -ForegroundColor Gray
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}
