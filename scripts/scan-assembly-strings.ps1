param(
  [Parameter(Mandatory=$true)][string]$AssemblyPath,
  [Parameter(Mandatory=$true)][string]$Pattern
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $AssemblyPath)) {
  throw "Missing assembly: $AssemblyPath"
}

$bytes = [IO.File]::ReadAllBytes((Resolve-Path $AssemblyPath))
$text = [Text.Encoding]::UTF8.GetString($bytes)

$matches = [regex]::Matches($text, [regex]::Escape($Pattern))
if ($matches.Count -eq 0) {
  Write-Host "No matches for '$Pattern'"
  exit 0
}

Write-Host "Matches: $($matches.Count)"

# show some surrounding context
$idxs = $matches | Select-Object -First 10 | ForEach-Object { $_.Index }
foreach ($idx in $idxs) {
  $start = [Math]::Max(0, $idx - 60)
  $len = [Math]::Min($text.Length - $start, 160)
  $snippet = $text.Substring($start, $len)
  $snippet = $snippet -replace "\0", " "
  Write-Host "---"
  Write-Host $snippet
}
