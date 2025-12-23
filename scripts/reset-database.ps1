# reset-database.ps1 - Reset the STLLayouts LocalDB database
# Usage: .\reset-database.ps1

$ErrorActionPreference = "Stop"
$solutionDir = Split-Path -Parent $PSScriptRoot
$databaseName = "STLLayoutsApp"
$instanceName = "(localdb)\mssqllocaldb"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Resetting STLLayouts Database" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Instance: $instanceName" -ForegroundColor Gray
Write-Host "Database: $databaseName" -ForegroundColor Gray
Write-Host ""

Write-Host "[$(Get-Date -Format 'HH:mm:ss')] WARNING: This will delete all data in the database!" -ForegroundColor Red
$confirmation = Read-Host "Type 'YES' to continue"

if ($confirmation -ne "YES") {
    Write-Host "Operation cancelled." -ForegroundColor Yellow
    exit 0
}

Write-Host ""
Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Dropping database..." -ForegroundColor Yellow

try {
    # Drop the database using SqlCmd
    $dropQuery = @"
USE master;
GO
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'$databaseName')
BEGIN
    ALTER DATABASE [$databaseName] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$databaseName];
END
GO
"@
    
    $dropQuery | sqlcmd -S $instanceName -d master
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "DATABASE RESET SUCCEEDED" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "The database will be recreated and seeded when you next run the application." -ForegroundColor Yellow
        exit 0
    } else {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Red
        Write-Host "DATABASE RESET FAILED" -ForegroundColor Red
        Write-Host "========================================" -ForegroundColor Red
        Write-Host "The database may not exist or may be in use." -ForegroundColor Yellow
        exit 1
    }
} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "DATABASE RESET ERROR" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host ""
    Write-Host "Make sure sqlcmd is installed and accessible in your PATH." -ForegroundColor Yellow
    exit 1
}
