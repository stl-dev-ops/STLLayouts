param(
    [Parameter(Mandatory=$true)] [string]$RuleName,
    [Parameter(Mandatory=$true)] [string]$Condition,
    [Parameter(Mandatory=$true)] [string]$TemplateId,
    [int]$Priority = 100,
    [string]$Description = '',
    [string]$CreatedBy = $env:USERNAME
)

# Governed: Insert a rule bound to a template into stlLayouts_Rule
$ErrorActionPreference = 'Stop'

# Validate GUID
if (-not [guid]::TryParse($TemplateId, [ref]([guid]::Empty))) {
    throw "TemplateId must be a GUID"
}

$exists = Get-Command sqlcmd -ErrorAction SilentlyContinue
if (-not $exists) {
    throw "sqlcmd not found. Install SQL Server Command Line Tools or run via SSMS."
}

$escapedName = $RuleName.Replace("'","''")
$escapedCond = $Condition.Replace("'","''")
$escapedDesc = $Description.Replace("'","''")

$ruleId = [guid]::NewGuid().ToString()

$sql = @"
INSERT INTO stlLayouts_Rule (
  RuleId, RuleName, Description, Condition, TemplateId,
  Priority, IsActive, CreatedBy, CreatedDate
) VALUES (
  '$ruleId', '$escapedName', '$escapedDesc', '$escapedCond', '$TemplateId',
  $Priority, 1, '$CreatedBy', GETDATE()
);
"@

$sqlFile = Join-Path $env:TEMP ("stl_add_rule_" + [guid]::NewGuid().ToString() + ".sql")
Set-Content -Path $sqlFile -Value $sql -Encoding UTF8

try {
    sqlcmd -S "STL-SQL1\\CRMDB" -d "sqlb00" -E -i $sqlFile | Out-Host
    Write-Host "Rule '$RuleName' registered with ID $ruleId for template $TemplateId" -ForegroundColor Green
}
finally {
    Remove-Item $sqlFile -ErrorAction SilentlyContinue
}
