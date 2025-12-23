# STL Layouts - Execution Governance Policy

**EFFECTIVE IMMEDIATELY**

## Summary

The STL Layouts application execution is governed by a strict policy that ensures consistent, repeatable, and predictable behavior. This policy is **MANDATORY** and is enforced at three levels:

1. **Script-Level**: Automated process cleanup in run scripts
2. **Task-Level**: VS Code task configuration prevents ad-hoc execution
3. **Documentation-Level**: Clear governance in ARCHITECTURE.md

## Three-Layer Enforcement

### 1. Script-Level Enforcement (AUTOMATED)

**File**: `scripts/run.ps1` and `scripts/run-debug.ps1`

**Automatic Actions**:
```powershell
# Kill previous instances FIRST (before launching new ones)
Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*' -or $_.ProcessName -eq 'dotnet'} | Stop-Process -Force
Start-Sleep -Seconds 1

# Set correct working directory (ensures appsettings.json is found)
Push-Location $projectDir
dotnet run --configuration Release
Pop-Location

# Capture all output to timestamped logs
-RedirectStandardOutput $logFile
-RedirectStandardError "${logFile}.err"

# Report status and process ID
Write-Host "Process ID: $($process.Id)"
```

**Result**: Every execution automatically cleans up previous instances, sets correct paths, and logs output.

### 2. Task-Level Enforcement (VS CODE INTEGRATION)

**File**: `.vscode/tasks.json`

**Available Tasks**:
- `Build Solution` - Compiles the solution with TreatWarningsAsErrors=true
- `Run Application` - Runs in Release mode (default)
- `Run Application (Debug)` - Runs in Debug mode with console output
- `Build and Run` - Builds then runs
- `Clean Build` - Removes build artifacts
- `Reset Database` - Resets ApplicationDb

**How to Use**:
```
Press: Ctrl+Shift+P
Type: Tasks: Run Task
Select: Run Application
```

**Why This Matters**:
- Encapsulates all execution logic in one place
- Prevents ad-hoc terminal commands
- Ensures consistent behavior across all developers
- Enables quick problem-solving without manual process cleanup

### 3. Documentation-Level Enforcement (GOVERNANCE)

**File**: `ARCHITECTURE.md` - Section: "EXECUTION GOVERNANCE - MANDATORY"

**Policies**:
- ✓ **CORRECT**: Use VS Code tasks or call scripts via proper PowerShell commands
- ✗ **FORBIDDEN**: Direct `dotnet run` commands
- ✗ **FORBIDDEN**: Manual cd + dotnet run without scripts
- ✗ **FORBIDDEN**: Separate build/run sequences without proper governance

**Reference**: See [ARCHITECTURE.md](ARCHITECTURE.md#execution-governance---mandatory)

## How Governance Prevents Problems

### Problem 1: Port Conflicts from Previous Instances
**Solution**: `run.ps1` kills previous processes BEFORE launching new ones
```powershell
Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*'} | Stop-Process -Force
```
**Result**: No "port already in use" errors; clean launches every time

### Problem 2: Configuration Not Found
**Solution**: `run.ps1` sets correct working directory
```powershell
Push-Location $projectDir  # Sets working directory
dotnet run                 # Finds appsettings.json relative to this directory
Pop-Location               # Restores original directory
```
**Result**: `appsettings.json` is found; database connections use correct values

### Problem 3: No Visibility into Errors
**Solution**: All output redirected to timestamped log files
```powershell
-RedirectStandardOutput logs/run-20251216-110000.log
-RedirectStandardError logs/run-20251216-110000.log.err
```
**Result**: All errors and logs are captured for debugging without cluttering terminal

### Problem 4: Ad-Hoc Execution Bypassing Governance
**Solution**: Documentation + Task configuration makes proper approach obvious
```
Result**: Developers use tasks instinctively; governance is self-enforcing
```

## Verification Checklist

Before committing changes to execution scripts or tasks:

- [ ] All `.ps1` scripts kill previous instances at startup
- [ ] All `.ps1` scripts set correct working directory with Push-Location
- [ ] All `.ps1` scripts redirect output to logs/ directory
- [ ] `.vscode/tasks.json` has tasks for Build, Run, Run Debug, Clean
- [ ] ARCHITECTURE.md has "EXECUTION GOVERNANCE" section with policies
- [ ] No terminal-based manual commands are documented as alternatives
- [ ] Run `Build Solution` task - verify 0 warnings, 0 errors
- [ ] Run `Run Application` task - verify application starts and logs appear

## Quick Reference

### Correct Way to Run Application
```powershell
# Via VS Code UI:
Ctrl+Shift+P → Tasks: Run Task → Run Application

# Or via terminal (if needed):
pwsh -ExecutionPolicy Bypass -File "./scripts/run.ps1"
```

### Correct Way to Debug Application
```powershell
# Via VS Code UI:
Ctrl+Shift+P → Tasks: Run Task → Run Application (Debug)

# Or via terminal (if needed):
pwsh -ExecutionPolicy Bypass -File "./scripts/run-debug.ps1"
```

### Incorrect Ways (DO NOT USE)
```powershell
# ❌ NEVER: Direct dotnet run
dotnet run --project src\STLLayouts.WpfApp

# ❌ NEVER: Manual cd + run
cd src\STLLayouts.WpfApp
dotnet run

# ❌ NEVER: Separate build and run
dotnet build
dotnet run
```

## Monitoring Execution

### Check If Application Is Running
```powershell
Get-Process | Where-Object {$_.ProcessName -like 'STLLayouts*'}
```

### View Latest Logs
```powershell
Get-ChildItem logs/ | Sort-Object LastWriteTime -Descending | Select-Object -First 5
```

### Monitor Logs in Real-Time
```powershell
Get-Content logs/run-*.log -Tail 20 -Wait
```

### Kill Application (If Stuck)
```powershell
taskkill /F /IM dotnet.exe
```

## FAQ

**Q: Can I just run `dotnet run` from the command line?**  
A: No. This bypasses governance and prevents automatic process cleanup. Always use the task.

**Q: What if the application doesn't show a window?**  
A: Check logs with `Get-Content logs/run-*.log -Tail 50`. Look for configuration or database errors. Ensure no previous instances are blocking with `taskkill /F /IM dotnet.exe`.

**Q: Why do we need to kill previous instances?**  
A: The WPF application uses TCP ports and file-based configuration. Multiple instances conflict. Killing previous instances guarantees a clean start.

**Q: How do I know if the application started successfully?**  
A: Check the task output or logs for `"Application started successfully! Process ID: ####"`. Then verify with `Get-Process | grep STLLayouts`.

**Q: What if build fails?**  
A: Run `Build Solution` task separately to debug compilation errors. Fix errors, then run `Run Application` task. Never attempt to run without building first.

---

**Status**: ✅ ENFORCEMENT ACTIVE

**Last Updated**: 2024-12-16

**Owner**: Development Team

**Policy**: This governance is MANDATORY and supersedes all other execution methods.
