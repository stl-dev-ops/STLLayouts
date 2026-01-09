$ErrorActionPreference = 'Stop'

$bin = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\bin\Debug\net8.0-windows'
$bin = (Resolve-Path $bin).Path

$dlls = @(
  (Join-Path $bin 'Telerik.Windows.Controls.dll'),
  (Join-Path $bin 'Telerik.Windows.Themes.Fluent.dll')
)

$needles = @(
  'ThemeManager',
  'ThemeVariation',
  'ApplicationTheme',
  'SetTheme',
  'ChangeTheme',
  'LoadPreset',
  'FluentPalette',
  'Dark',
  'Light'
)

foreach ($dll in $dlls) {
  Write-Host "=== $([IO.Path]::GetFileName($dll)) ==="

  $bytes = [IO.File]::ReadAllBytes($dll)
  $text = [Text.Encoding]::UTF8.GetString($bytes)

  foreach ($n in $needles) {
    if ($text.Contains($n)) {
      Write-Host "found token: $n"
    }
  }

  # Print a few surrounding strings that look like fully-qualified type names.
  $re = [regex]'Telerik\.[A-Za-z0-9_\.]+(ThemeManager|ThemeVariation|ApplicationTheme|FluentPalette)[A-Za-z0-9_\.]+'
  $re.Matches($text) | ForEach-Object { $_.Value } | Sort-Object -Unique | Select-Object -First 200

  Write-Host ""
}
