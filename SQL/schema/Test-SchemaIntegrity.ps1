# Test-SchemaIntegrity.ps1
# Validates extracted schema files for consistency and completeness

param(
    [switch] $Verbose
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SchemaRoot = $ScriptDir

# Test configuration
$tests = @{
    Passed = 0
    Failed = 0
    Warnings = 0
}

function Write-TestResult {
    param(
        [string] $Test,
        [ValidateSet('Pass', 'Fail', 'Warning')]
        [string] $Result,
        [string] $Message = ""
    )
    
    $color = switch ($Result) {
        'Pass' { 'Green'; $tests.Passed++ }
        'Fail' { 'Red'; $tests.Failed++ }
        'Warning' { 'Yellow'; $tests.Warnings++ }
    }
    
    $symbol = switch ($Result) {
        'Pass' { '[PASS]' }
        'Fail' { '[FAIL]' }
        'Warning' { '[WARN]' }
    }
    
    Write-Host "$symbol $Test" -ForegroundColor $color
    if ($Message -and ($Verbose -or $Result -ne 'Pass')) {
        Write-Host "  $Message" -ForegroundColor Gray
    }
}

Write-Host "`n=== SQL Schema Integrity Tests ===" -ForegroundColor Cyan
Write-Host ""

# Test 1: Verify folder structure
Write-Host "Checking folder structure..." -ForegroundColor Cyan
$requiredFolders = @('tables', 'views', 'stored-procedures', 'functions', 'triggers')
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        Write-TestResult -Test "Folder exists: $folder" -Result Pass
    } else {
        Write-TestResult -Test "Folder exists: $folder" -Result Fail -Message "Missing folder: $path"
    }
}

# Test 2: Count files per type
Write-Host "`nCounting schema objects..." -ForegroundColor Cyan
$counts = @{}
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        $count = (Get-ChildItem $path -Filter "*.sql" -File).Count
        $counts[$folder] = $count
        Write-TestResult -Test "$folder file count: $count" -Result Pass
    }
}

# Test 3: Check for empty files
Write-Host "`nChecking for empty files..." -ForegroundColor Cyan
$emptyFiles = @()
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        $files = Get-ChildItem $path -Filter "*.sql" -File
        foreach ($file in $files) {
            if ($file.Length -eq 0) {
                $emptyFiles += $file.FullName
            }
        }
    }
}
if ($emptyFiles.Count -eq 0) {
    Write-TestResult -Test "No empty files detected" -Result Pass
} else {
    Write-TestResult -Test "Empty files detected" -Result Warning -Message "$($emptyFiles.Count) empty files found"
    if ($Verbose) {
        $emptyFiles | ForEach-Object { Write-Host "    $_" -ForegroundColor Gray }
    }
}

# Test 4: Check naming convention (dbo.*.sql)
Write-Host "`nValidating naming conventions..." -ForegroundColor Cyan
$invalidNames = @()
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        $files = Get-ChildItem $path -Filter "*.sql" -File
        foreach ($file in $files) {
            if ($file.Name -notmatch '^dbo\..+\.sql$') {
                $invalidNames += "$folder\$($file.Name)"
            }
        }
    }
}
if ($invalidNames.Count -eq 0) {
    Write-TestResult -Test "All files follow dbo.*.sql naming" -Result Pass
} else {
    Write-TestResult -Test "Non-standard file names detected" -Result Warning -Message "$($invalidNames.Count) files don't match dbo.*.sql pattern"
    if ($Verbose) {
        $invalidNames | ForEach-Object { Write-Host "    $_" -ForegroundColor Gray }
    }
}

# Test 5: Check for SQL syntax basics (CREATE statements)
Write-Host "`nValidating SQL content..." -ForegroundColor Cyan
$missingSyntax = @()
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        $files = Get-ChildItem $path -Filter "*.sql" -File | Select-Object -First 10  # Sample
        foreach ($file in $files) {
            $content = Get-Content $file.FullName -Raw
            $expectedKeyword = switch ($folder) {
                'tables' { 'CREATE TABLE' }
                'views' { 'CREATE VIEW' }
                'stored-procedures' { 'CREATE PROC' }
                'functions' { 'CREATE FUNCTION' }
                'triggers' { 'CREATE TRIGGER' }
            }
            if ($content -notmatch [regex]::Escape($expectedKeyword)) {
                $missingSyntax += "$folder\$($file.Name)"
            }
        }
    }
}
if ($missingSyntax.Count -eq 0) {
    Write-TestResult -Test "Sample files contain expected CREATE statements" -Result Pass
} else {
    Write-TestResult -Test "Files missing expected CREATE statements" -Result Warning -Message "$($missingSyntax.Count) sampled files missing keywords"
}

# Test 6: Check extraction scripts exist
Write-Host "`nChecking extraction infrastructure..." -ForegroundColor Cyan
$requiredScripts = @('Extract-DatabaseSchema.ps1', 'Refresh-Schema.ps1')
foreach ($script in $requiredScripts) {
    $path = Join-Path $SchemaRoot $script
    if (Test-Path $path) {
        Write-TestResult -Test "Script exists: $script" -Result Pass
    } else {
        Write-TestResult -Test "Script exists: $script" -Result Fail -Message "Missing: $path"
    }
}

# Test 7: Check for duplicate object names across folders
Write-Host "`nChecking for cross-folder duplicates..." -ForegroundColor Cyan
$allNames = @{}
$duplicates = @()
foreach ($folder in $requiredFolders) {
    $path = Join-Path $SchemaRoot $folder
    if (Test-Path $path) {
        $files = Get-ChildItem $path -Filter "dbo.*.sql" -File
        foreach ($file in $files) {
            if ($file.Name -match '^dbo\.(.+)\.sql$') {
                $objName = $matches[1].ToLower()
                if ($allNames.ContainsKey($objName)) {
                    $duplicates += "$objName exists in both $($allNames[$objName]) and $folder"
                } else {
                    $allNames[$objName] = $folder
                }
            }
        }
    }
}
if ($duplicates.Count -eq 0) {
    Write-TestResult -Test "No duplicate object names across folders" -Result Pass
} else {
    Write-TestResult -Test "Duplicate names detected" -Result Warning -Message "$($duplicates.Count) objects appear in multiple folders"
    if ($Verbose) {
        $duplicates | ForEach-Object { Write-Host "    $_" -ForegroundColor Gray }
    }
}

# Summary
Write-Host ""
Write-Host "=== Test Summary ===" -ForegroundColor Cyan
Write-Host "Passed:   $($tests.Passed)" -ForegroundColor Green
Write-Host "Failed:   $($tests.Failed)" -ForegroundColor $(if ($tests.Failed -gt 0) { 'Red' } else { 'Gray' })
Write-Host "Warnings: $($tests.Warnings)" -ForegroundColor $(if ($tests.Warnings -gt 0) { 'Yellow' } else { 'Gray' })
Write-Host ""

if ($tests.Failed -gt 0) {
    Write-Host "[X] Schema integrity tests FAILED" -ForegroundColor Red
    exit 1
} elseif ($tests.Warnings -gt 0) {
    Write-Host "[!] Schema integrity tests passed with WARNINGS" -ForegroundColor Yellow
    exit 0
} else {
    Write-Host "[OK] All schema integrity tests PASSED" -ForegroundColor Green
    exit 0
}
