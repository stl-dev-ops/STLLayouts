param(
  [Parameter(Mandatory=$true)][string]$AssemblyPath
)

$ErrorActionPreference = 'Stop'

$bytes = [IO.File]::ReadAllBytes((Resolve-Path $AssemblyPath))
$text = [Text.Encoding]::UTF8.GetString($bytes)

$patterns = @(
  'GridViewFilterMatchCase',
  'MatchCaseVisibility',
  'StringFilterEditor',
  'AutoCompleteStringFilterEditorStyle',
  'GridViewAggregateResultCellTemplate'
)

foreach ($p in $patterns) {
  $m = [regex]::Match($text, [regex]::Escape($p))
  if ($m.Success) {
    $start = [Math]::Max(0, $m.Index - 120)
    $len = [Math]::Min($text.Length - $start, 260)
    $snippet = $text.Substring($start, $len) -replace "\0", " "
    Write-Host "=== $p ==="
    Write-Host $snippet
    Write-Host ""
  }
}
