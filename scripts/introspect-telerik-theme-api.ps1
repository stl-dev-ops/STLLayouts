$ErrorActionPreference = 'Stop'

$bin = Join-Path $PSScriptRoot '..\src\STLLayouts.WpfApp\bin\Debug\net8.0-windows'
$bin = (Resolve-Path $bin).Path

$dlls = @(
  (Join-Path $bin 'Telerik.Windows.Controls.dll'),
  (Join-Path $bin 'Telerik.Windows.Controls.Navigation.dll'),
  (Join-Path $bin 'Telerik.Windows.Themes.Fluent.dll')
)

foreach ($dll in $dlls) {
  if (-not (Test-Path $dll)) {
    Write-Host "Missing: $dll"
    exit 1
  }
}

# Load dependencies from bin folder so reflection works
$handler = [System.ResolveEventHandler]{
  param($sender, $args)
  $name = ($args.Name.Split(',')[0] + '.dll')
  $candidate = Join-Path $bin $name
  if (Test-Path $candidate) {
    return [System.Reflection.Assembly]::LoadFrom($candidate)
  }
  return $null
}
[AppDomain]::CurrentDomain.add_AssemblyResolve($handler)

$assemblies = @()
foreach ($dll in $dlls) {
  $assemblies += [System.Reflection.Assembly]::LoadFrom($dll)
}

$patterns = @(
  'Theme',
  'ThemeManager',
  'ThemeVariation',
  'Office2019',
  'Fluent',
  'Palette',
  'Preset',
  'Dark',
  'Light'
)

foreach ($asm in $assemblies) {
  Write-Host "=== $($asm.GetName().Name) ==="
  $types = @()
  try {
    $types = $asm.GetTypes()
  } catch [System.Reflection.ReflectionTypeLoadException] {
    $types = $_.Exception.Types | Where-Object { $_ -ne $null }
  }

  $types |
    Where-Object {
      $n = $_.FullName
      foreach ($p in $patterns) { if ($n -match $p) { return $true } }
      return $false
    } |
    Sort-Object FullName |
    Select-Object -First 200 -ExpandProperty FullName

  Write-Host ""
}
