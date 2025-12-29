param(
    [Parameter(Mandatory = $true)] [string]$InputPdf,
    [Parameter(Mandatory = $true)] [string]$OutputDir
)

# Converts a PDF into a Word .docx using Microsoft Word's PDF import.
# Requires Microsoft Word installed (Windows).

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $InputPdf)) { throw "Input PDF not found: $InputPdf" }
if ([System.IO.Path]::GetExtension($InputPdf).ToLowerInvariant() -ne '.pdf') { throw "Input file must be a .pdf: $InputPdf" }

if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

$baseName = [System.IO.Path]::GetFileNameWithoutExtension($InputPdf)
$outputDocx = Join-Path $OutputDir ($baseName + '.docx')

Write-Host "Converting PDF to Word: $InputPdf -> $outputDocx" -ForegroundColor Cyan

$word = $null
$doc = $null

try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $word.DisplayAlerts = 0

    # Open the PDF; Word will import/convert it.
    $doc = $word.Documents.Open($InputPdf, $false, $true)

    # wdFormatXMLDocument = 12 (.docx)
    $wdFormatXMLDocument = 12
    $doc.SaveAs([ref]$outputDocx, [ref]$wdFormatXMLDocument)

    Write-Host "DOCX created: $outputDocx" -ForegroundColor Green
}
finally {
    if ($doc) {
        try { $doc.Close($false) } catch { }
    }

    if ($word) {
        try { $word.Quit() } catch { }
    }

    if ($doc) { [System.Runtime.InteropServices.Marshal]::ReleaseComObject($doc) | Out-Null }
    if ($word) { [System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null }

    [GC]::Collect()
    [GC]::WaitForPendingFinalizers()
}
