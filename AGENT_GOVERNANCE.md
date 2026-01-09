# AGENT EXECUTION GOVERNANCE - BINDING CONTRACT

**⚠️ CRITICAL: This document is a binding governance contract for the AI agent**

## Binding rule: repo-script execution (task or CLI)
If the task involves running/testing/launching the application:
- Use the repo scripts (`scripts/build.ps1`, `scripts/rebuild.ps1`, `scripts/run.ps1`, `scripts/run-debug.ps1`).
- **Human preferred UX**: VS Code tasks in `.vscode/tasks.json` (they must invoke the repo scripts).
- **Agent/automation approved UX**: invoking the same repo scripts directly from a terminal (CLI).
- Do not use ad-hoc `dotnet build` / `dotnet run` commands.

## Expected VS Code tasks (human UX)
- `Build Solution`
- `Rebuild Solution`
- `Run Application`
- `Run Application (Debug)`

## Verification
- Confirm output shows prior instance cleanup (process termination) when running.
- Confirm logs appear under `logs/`.

## If tasks are missing/broken
- Fix `.vscode/tasks.json` to point at the repo scripts, then re-run via the scripts (CLI) and/or tasks.

---

**Status**: ✅ ACTIVE AND ENFORCED
