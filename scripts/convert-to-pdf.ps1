param(
    [Parameter(Mandatory=$true)] [string]$InputFile,
    [Parameter(Mandatory=$true)] [string]$OutputDir
)

# Converts Office files (.docx/.xlsx) to PDF using LibreOffice headless
$ErrorActionPreference = 'Stop'

if (-not (Test-Path $InputFile)) { throw "Input file not found: $InputFile" }
if (-not (Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir | Out-Null }

# Try common install path
$soffice = Join-Path "$env:ProgramFiles" "LibreOffice\\program\\soffice.exe"
if (-not (Test-Path $soffice)) {
    $soffice = Join-Path "$env:ProgramFiles(x86)" "LibreOffice\\program\\soffice.exe"
}
if (-not (Test-Path $soffice)) { throw "LibreOffice soffice.exe not found. Please install LibreOffice." }

$cmd = "\"$soffice\" --headless --convert-to pdf --outdir \"$OutputDir\" \"$InputFile\""
Write-Host "Converting to PDF: $InputFile -> $OutputDir" -ForegroundColor Cyan

$proc = Start-Process -FilePath $soffice -ArgumentList "--headless","--convert-to","pdf","--outdir",$OutputDir,$InputFile -Wait -PassThru
if ($proc.ExitCode -ne 0) { throw "LibreOffice conversion failed with exit code $($proc.ExitCode)" }

# Determine output file name
$base = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
$pdfPath = Join-Path $OutputDir ($base + ".pdf")

if (-not (Test-Path $pdfPath)) { throw "Expected PDF not found: $pdfPath" }

Write-Host "PDF created: $pdfPath" -ForegroundColor Green
