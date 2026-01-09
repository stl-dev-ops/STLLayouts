param(
    [switch]$VerboseOutput
)

$ErrorActionPreference = 'Stop'

$solutionDir = Split-Path -Parent $PSScriptRoot
Set-Location $solutionDir

function Fail([string]$message) {
    Write-Error $message
}

Write-Host "Verifying repo cleanliness (governance)..." -ForegroundColor Cyan

# 1) Forbidden tracked files
$tracked = git ls-files
$forbidden = $tracked | Where-Object {
    ($_ -like 'temp/*') -or ($_ -like 'logs/*')
} | Where-Object {
    $_ -ne 'logs/.gitkeep'
}

if ($forbidden.Count -gt 0) {
    Fail "Forbidden tracked files detected (remove from git and ensure .gitignore blocks them):`n$($forbidden -join "`n")"
}

# 2) Required .gitignore patterns
$gitignorePath = Join-Path $solutionDir '.gitignore'
if (-not (Test-Path $gitignorePath)) {
    Fail ".gitignore missing at repo root"
}

$gitignore = Get-Content -Raw -Path $gitignorePath
$required = @(
    'temp/',
    'logs/*',
    '!logs/.gitkeep',
    '*.err',
    '~$*.docx',
    '~$*.xlsx'
)

$missing = @()
foreach ($r in $required) {
    if ($gitignore -notmatch [Regex]::Escape($r)) {
        $missing += $r
    }
}

if ($missing.Count -gt 0) {
    Fail "Required .gitignore entries missing:`n$($missing -join "`n")"
}

Write-Host "OK: governance checks passed." -ForegroundColor Green

if ($VerboseOutput) {
    Write-Host "Branch:" (git rev-parse --abbrev-ref HEAD)
    Write-Host "Status:" 
    git status
}
