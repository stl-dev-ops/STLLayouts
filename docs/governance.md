# Workspace Governance: Build/Run Workflow

This repository mandates builds and runs via VS Code tasks that call PowerShell scripts under `scripts/`.

Policy
- All builds: Use the task "Build Solution" which runs `scripts/build.ps1`.
- Clean rebuilds: Use the task "Rebuild Solution" which runs `scripts/rebuild.ps1`.
- Running the app: Use the task "Run Application" which runs `scripts/run.ps1`.

Guardrails
- Scripts stop any running `STLLayouts*` or `dotnet` processes before building/running to prevent locked DLLs.
- Scripts produce structured logs under `logs/` with timestamps.
- Tasks are the canonical entry points; do not run `dotnet build/run` directly.

Operator Notes
- Always trigger work via the VS Code tasks panel.
- Monitor task terminal output; on failures, open the latest log file in `logs/`.
- If a task is missing or altered, restore it in `.vscode/tasks.json` and re-run.

Rationale
- Ensures consistent, reliable builds and runs.
- Centralizes logging and cleanup.
- Avoids intermittent issues with locked files.
