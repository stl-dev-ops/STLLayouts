param(
    [string] $Branch = "master",
    [switch] $NoPush
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Resolve repo root (one level up from schema folder)
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $ScriptDir
Push-Location $RepoRoot
try {
    Write-Host "Running schema extraction from: $RepoRoot"

    # Ensure git is available
    $git = Get-Command git -ErrorAction SilentlyContinue
    if (-not $git) {
        throw "git executable not found in PATH. Install Git before running this script."
    }

    # Run extraction
    & "$ScriptDir\Extract-DatabaseSchema.ps1"

    # Check for changes
    $status = git status --porcelain
    if ([string]::IsNullOrWhiteSpace($status)) {
        Write-Host "No schema changes detected."
        return
    }

    # Stage and commit only schema folder
    git add schema/
    $timestamp = Get-Date -Format "yyyy-MM-ddTHH:mm:ssK"
    $commitMsg = "chore(schema): refresh extraction $timestamp"
    git commit -m $commitMsg | Out-Null
    Write-Host "Committed schema refresh: $commitMsg"

    if (-not $NoPush) {
        git push origin $Branch | Out-Null
        Write-Host "Pushed schema refresh to origin/$Branch"
    }
}
finally {
    Pop-Location
}
