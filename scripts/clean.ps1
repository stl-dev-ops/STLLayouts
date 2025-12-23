# clean.ps1 - Clean the STLLayouts solution build artifacts
# Usage: .\clean.ps1

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Cleaning STLLayouts Solution" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Solution: $solutionDir" -ForegroundColor Gray
Write-Host ""

Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Cleaning build artifacts..." -ForegroundColor Yellow

try {
    # Clean the solution
    dotnet clean "$solutionDir" --configuration Release --verbosity minimal
    dotnet clean "$solutionDir" --configuration Debug --verbosity minimal
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "CLEAN SUCCEEDED" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        
        # Also remove bin and obj directories
        Write-Host ""
        Write-Host "Removing bin and obj directories..." -ForegroundColor Yellow
        Get-ChildItem -Path $solutionDir -Include bin,obj -Recurse -Directory | Remove-Item -Recurse -Force
        
        Write-Host "All build artifacts removed." -ForegroundColor Green
        exit 0
    } else {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Red
        Write-Host "CLEAN FAILED" -ForegroundColor Red
        Write-Host "========================================" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "CLEAN ERROR" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    exit 1
}
