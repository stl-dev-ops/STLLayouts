# AGENT EXECUTION CONSTRAINTS

**MANDATORY FOR AI AGENT - NON-NEGOTIABLE**

This document defines strict operational constraints for any AI agent working on the STL Layouts project. These constraints OVERRIDE all other instructions and must be followed without exception.

---

## PRIMARY CONSTRAINT: APPLICATION EXECUTION

**RULE #1 - ABSOLUTE MANDATE**:
```
IF the task involves running, testing, or launching the STLLayouts application:
  → MUST use VS Code task execution
  → MUST NOT use direct terminal commands
  → MUST NOT use dotnet run
  → MUST NOT execute scripts directly in terminal
  → MUST NOT bypass run.ps1/run-debug.ps1 governance
```

**HOW TO EXECUTE APPLICATION**:
1. Open VS Code Terminal
2. Run: `Ctrl+Shift+P` → `Tasks: Run Task` → Select task
3. OR: Open `.vscode/tasks.json` to see available tasks:
   - `Build Solution`
   - `Run Application` (Release)
   - `Run Application (Debug)` (Debug with console)
   - `Build and Run`

**VERIFICATION CHECKLIST BEFORE EXECUTION**:
- [ ] Is this an application launch/test?
- [ ] Have I opened the Tasks picker (Ctrl+Shift+P)?
- [ ] Am I about to run a task from `.vscode/tasks.json`?
- [ ] Have I NOT typed any dotnet commands directly?

---

## WHY THIS CONSTRAINT EXISTS

### Problem it Solves
- Previous instances blocking new launches
- Working directory issues preventing `appsettings.json` from loading
- Configuration errors because wrong database connection was used
- Inconsistent behavior due to ad-hoc execution

### How VS Code Tasks Prevent These Issues
- **run.ps1** automatically kills previous instances FIRST
- **run.ps1** sets correct working directory with `Push-Location`
- **run.ps1** captures all logs for debugging
- **run.ps1** ensures consistent execution every time

### Enforcement Level
This is **not a suggestion** - it's a **hard constraint** because:
1. The user explicitly requested this governance
2. User demanded "a perfect way... to ensure you do it every time and never forget"
3. This constraint IS that perfect way
4. Violating it causes the problems it was designed to prevent

---

## EXAMPLES OF WHAT NOT TO DO

### ❌ FORBIDDEN - Direct Script Execution
```powershell
# DO NOT DO THIS:
.\scripts\run.ps1
& ".\scripts\run.ps1"
pwsh -File "./scripts/run.ps1"
```
**Why**: Bypasses VS Code task infrastructure

### ❌ FORBIDDEN - Direct dotnet run
```powershell
# DO NOT DO THIS:
dotnet run
dotnet run --project src\STLLayouts.WpfApp
cd src\STLLayouts.WpfApp; dotnet run
```
**Why**: Doesn't kill previous instances; breaks working directory

### ❌ FORBIDDEN - Terminal Shortcuts
```powershell
# DO NOT DO THIS:
Run: application
Test: application
Launch: app
```
**Why**: Tempting shortcuts that skip governance

---

## CORRECT PROCEDURE

**Every time you need to test/run the application:**

1. **Stop and think**: "Am I about to run the application?"
2. **Check constraint**: "Do I need to use VS Code task?"
3. **Open task picker**: `Ctrl+Shift+P` → `Tasks: Run Task`
4. **Select appropriate task**:
   - `Run Application` (for Release mode testing)
   - `Run Application (Debug)` (for debug with console output)
5. **Watch output**: Verify "Application started successfully!"
6. **Monitor logs**: `logs/run-YYYYMMDD-HHMMSS.log`

---

## ACKNOWLEDGMENT REQUIREMENT

Before executing ANY application test, the agent MUST:

1. **Verbally acknowledge** the constraint:
   ```
   "I will use the VS Code task to run the application, 
    not direct terminal commands, per AGENT_EXECUTION_CONSTRAINTS.md"
   ```

2. **Show the task being used**:
   ```
   Using VS Code Task: "Run Application (Debug)"
   ```

3. **Verify successful execution**:
   ```
   Task completed: Application started with PID ####
   ```

---

## AGENT BEHAVIOR RULES

### Rule 1: Pre-Execution Checkpoint
Before calling ANY tool that executes the application:
- Pause and verify the execution method
- Check if this requires VS Code task
- Confirm constraint adherence

### Rule 2: Never Suggest Alternatives
Do not suggest or demonstrate:
- Direct `dotnet run` commands
- Terminal script execution
- Manual launch procedures
- Any method that bypasses run.ps1

### Rule 3: Explicit Commitment
When asked to run/test the application:
- Explicitly state which VS Code task will be used
- Explain why the task is the correct approach
- Reference this constraint document if questioned

### Rule 4: Escalation Protocol
If unable to use VS Code task (error or blocker):
- Do NOT attempt workaround with terminal commands
- Explain the blocker to the user
- Request guidance before proceeding differently
- Do not assume alternate methods are acceptable

---

## GOVERNANCE ENFORCEMENT CHAIN

```
┌─ ARCHITECTURE.md (User-facing governance policy)
│  └─ Documents WHY execution governance exists
│     └─ References: EXECUTION_GOVERNANCE.md (Detailed how-to)
│        └─ References: .vscode/tasks.json (Task definitions)
│           └─ References: scripts/run.ps1 (Actual implementation)
│
└─ AGENT_EXECUTION_CONSTRAINTS.md (Agent-facing enforcement)
   └─ Documents WHAT agent must do
      └─ Requires: Acknowledgment before execution
         └─ Ensures: Consistent adherence to governance
            └─ Result: Zero violations, predictable behavior
```

---

## VERIFICATION

**This constraint is verified by:**
1. No `run_in_terminal` calls that execute application directly
2. No `Start-Process` calls that bypass tasks
3. No suggestions of alternative execution methods
4. Explicit use of `run_task` tool or referencing tasks.json
5. Acknowledgment of this constraint before each execution

**Non-compliance indicators:**
- Agent runs `dotnet run` in terminal
- Agent uses `Start-Process` to launch application
- Agent bypasses `run.ps1` in any way
- Agent suggests workarounds to this constraint

---

## SUMMARY

**This one constraint ensures:**
✅ Previous instances always killed before new launch  
✅ Working directory always correct  
✅ Logs always captured properly  
✅ Behavior always consistent and predictable  
✅ No port conflicts or configuration errors  
✅ User never sees "Cannot open database" errors  

**The cost of violating this constraint:**
❌ Blocks new application launches  
❌ Wrong database connection errors  
❌ Configuration not found errors  
❌ Unpredictable behavior  
❌ Wastes debugging time  

---

**STATUS**: ✅ ACTIVE AND BINDING

**Effective**: 2024-12-16, immediately

**Applies to**: All AI agents working on this project

**Supersedes**: All other execution methods

**Questions**: See ARCHITECTURE.md → "EXECUTION GOVERNANCE - MANDATORY"
