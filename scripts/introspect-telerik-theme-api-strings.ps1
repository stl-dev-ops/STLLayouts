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
  'FluentPalette',
  'Palette',
  'Dark',
  'Light',
  'ApplicationTheme',
  'SetTheme',
  'ChangeTheme',
  'LoadPreset',
  'Preset'
)

foreach ($dll in $dlls) {
  Write-Host "=== $([IO.Path]::GetFileName($dll)) string scan ==="
  $bytes = [IO.File]::ReadAllBytes($dll)
  $text = [Text.Encoding]::UTF8.GetString($bytes)

  foreach ($n in $needles) {
    if ($text.Contains($n)) {
      Write-Host "found: $n"
    }
  }
  Write-Host ""
}
