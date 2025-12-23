param(
    [Parameter(Mandatory=$true)] [string]$TemplateName,
    [Parameter(Mandatory=$true)] [string]$Category,
    [Parameter(Mandatory=$true)] [ValidateSet('.docx','.xlsx')] [string]$FileExtension,
    [Parameter(Mandatory=$true)] [string]$FilePath,
    [string]$Description = '',
    [string]$UploadedBy = $env:USERNAME
)

# Governed: Register a template metadata row in sqlb00 stlLayouts_Template
# Validates file exists and inserts via sqlcmd

$ErrorActionPreference = 'Stop'

if (-not (Test-Path $FilePath)) {
    throw "Template file not found: $FilePath"
}

$connectionString = "Server=STL-SQL1\\CRMDB;Database=sqlb00;Trusted_Connection=True;Encrypt=False;TrustServerCertificate=True"

$guid = [guid]::NewGuid().ToString()
$escapedPath = $FilePath.Replace("'","''")
$escapedName = $TemplateName.Replace("'","''")
$escapedCat = $Category.Replace("'","''")
$escapedDesc = $Description.Replace("'","''")

$sql = @"
INSERT INTO stlLayouts_Template (
    TemplateId, TemplateName, Description, Category,
    FileExtension, FilePath, CurrentVersion, IsActive,
    UploadedBy, UploadedDate
) VALUES (
    '$guid', '$escapedName', '$escapedDesc', '$escapedCat',
    '$FileExtension', '$escapedPath', 1, 1,
    '$UploadedBy', GETDATE()
);
"@

# Use sqlcmd if available; else fail with guidance
$exists = Get-Command sqlcmd -ErrorAction SilentlyContinue
if (-not $exists) {
    throw "sqlcmd not found. Install SQL Server Command Line Tools or run via SSMS."
}

$sqlFile = Join-Path $env:TEMP ("stl_add_template_" + [guid]::NewGuid().ToString() + ".sql")
Set-Content -Path $sqlFile -Value $sql -Encoding UTF8

try {
    sqlcmd -S "STL-SQL1\\CRMDB" -d "sqlb00" -E -i $sqlFile | Out-Host
    Write-Host "Template '$TemplateName' registered with ID $guid" -ForegroundColor Green
}
finally {
    Remove-Item $sqlFile -ErrorAction SilentlyContinue
}
