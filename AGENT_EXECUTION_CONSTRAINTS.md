# AGENT EXECUTION CONSTRAINTS

**MANDATORY FOR AI AGENT - NON-NEGOTIABLE**

## PRIMARY CONSTRAINT: APPLICATION EXECUTION

If the task involves running, testing, or launching the STLLayouts application:
- Use VS Code tasks defined in `.vscode/tasks.json`.
- Do not run `dotnet` commands directly.
- Do not execute `scripts/*.ps1` directly from a terminal.

## Available Tasks
- `Build Solution`
- `Rebuild Solution`
- `Run Application` (Release)
- `Run Application (Debug)`
- `Build and Run`

## Enforcement
Do not work around broken tasks by using terminal commands.
Fix the tasks to call the repo scripts, then re-run via tasks.

**STATUS**: ✅ ACTIVE AND BINDING
