param(
  [Parameter(Mandatory=$true)][string]$AssemblyPath,
  [Parameter(Mandatory=$true)][string]$OutFile,
  [string]$Marker = 'GridViewFilterMatchCase'
)

$ErrorActionPreference = 'Stop'

$bytes = [IO.File]::ReadAllBytes((Resolve-Path $AssemblyPath))
$text = [Text.Encoding]::UTF8.GetString($bytes)

$idx = $text.IndexOf($Marker, [StringComparison]::Ordinal)
if ($idx -lt 0) {
  throw "Marker not found: $Marker"
}

# Find nearest '<' before the marker and nearest '>' after it, then expand to the full surrounding XAML-ish chunk.
$start = $text.LastIndexOf('<', $idx)
if ($start -lt 0) { $start = [Math]::Max(0, $idx - 5000) }

# heuristically grab a region around it
$regionStart = [Math]::Max(0, $start - 5000)
$regionLen = [Math]::Min($text.Length - $regionStart, 25000)
$region = $text.Substring($regionStart, $regionLen)

# Strip nulls to make it readable.
$region = $region -replace "\0", ""

Set-Content -Path $OutFile -Value $region -Encoding UTF8
Write-Host "Wrote: $OutFile"
