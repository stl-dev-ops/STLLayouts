$ErrorActionPreference = 'Stop'

$base = Join-Path $env:USERPROFILE '.nuget\packages\telerik.windows.themes.fluent.for.wpf\2025.4.1111'
if (-not (Test-Path $base)) {
  Write-Host "Missing package folder: $base"
  exit 1
}

# List anything that can hint at palette/dark support
Get-ChildItem $base -Recurse -ErrorAction SilentlyContinue |
  Where-Object { $_.Name -match 'palette|dark|fluent' -or $_.FullName -match '\\Themes\\' } |
  Select-Object FullName
