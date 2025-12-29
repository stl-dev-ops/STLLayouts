# Setup-ScheduledRefresh.ps1
# Creates a Windows Scheduled Task to run schema refresh nightly

param(
    [string] $TaskName = "SQL Schema Refresh",
    [string] $Time = "20:00",  # 8:00 PM
    [ValidateSet('Daily', 'Weekly')]
    [string] $Frequency = "Daily",
    [string] $WeekDay = "Sunday"  # Only used if Frequency=Weekly
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Resolve paths
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RefreshScript = Join-Path $ScriptDir "Refresh-Schema.ps1"

if (-not (Test-Path $RefreshScript)) {
    throw "Refresh-Schema.ps1 not found at: $RefreshScript"
}

# Check if running as Administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Warning "This script should be run as Administrator to create scheduled tasks."
    Write-Host "Re-launching with elevation..."
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$($MyInvocation.MyCommand.Path)`"" -Verb RunAs
    exit
}

# Build trigger based on frequency
if ($Frequency -eq "Daily") {
    $trigger = New-ScheduledTaskTrigger -Daily -At $Time
    Write-Host "Creating daily task at $Time"
} else {
    $trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek $WeekDay -At $Time
    Write-Host "Creating weekly task on $WeekDay at $Time"
}

# Create action
$action = New-ScheduledTaskAction `
    -Execute "PowerShell.exe" `
    -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$RefreshScript`""

# Create principal (run whether user is logged on or not)
$principal = New-ScheduledTaskPrincipal `
    -UserId "$env:USERDOMAIN\$env:USERNAME" `
    -LogonType S4U `
    -RunLevel Highest

# Create settings
$settings = New-ScheduledTaskSettingsSet `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable

# Check if task already exists
$existingTask = Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue
if ($existingTask) {
    Write-Host "Task '$TaskName' already exists. Updating..."
    Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
}

# Register the task
Register-ScheduledTask `
    -TaskName $TaskName `
    -Action $action `
    -Trigger $trigger `
    -Principal $principal `
    -Settings $settings `
    -Description "Automatically refresh SQL schema extraction and commit to Git" | Out-Null

Write-Host ""
Write-Host "[OK] Scheduled task created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Task Name: $TaskName"
Write-Host "Frequency: $Frequency"
Write-Host "Time: $Time"
Write-Host "Script: $RefreshScript"
Write-Host ""
Write-Host "To test manually: Get-ScheduledTask -TaskName '$TaskName' | Start-ScheduledTask"
Write-Host "To view history: Get-ScheduledTaskInfo -TaskName '$TaskName'"
Write-Host "To remove: Unregister-ScheduledTask -TaskName '$TaskName' -Confirm:`$false"
