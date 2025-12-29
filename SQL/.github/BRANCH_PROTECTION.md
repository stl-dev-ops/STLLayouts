# Branch Protection Recommendations

## Recommended Settings for `master` Branch

To prevent accidental force-pushes and ensure quality, configure these settings on GitHub:

### 1. Require Pull Request Reviews
- **Require pull request reviews before merging**: ✅ Enabled
- **Required approving reviews**: 1 (adjust based on team size)
- **Dismiss stale pull request approvals when new commits are pushed**: ✅ Enabled

### 2. Require Status Checks
- **Require status checks to pass before merging**: ✅ Enabled
- **Require branches to be up to date before merging**: ✅ Enabled
- Status checks to require:
  - `schema-validation` (if you set up GitHub Actions)
  - Any CI/CD pipelines you add

### 3. Require Linear History
- **Require linear history**: ✅ Enabled (prevents merge commits, enforces rebase)

### 4. Include Administrators
- **Include administrators**: ⚠️ Optional (depends on team policy)
  - Enable if you want all admins to follow the same rules
  - Disable if admins need emergency override capability

### 5. Restrict Force Pushes
- **Allow force pushes**: ❌ Disabled
  - Prevents accidental `git push --force` that could lose schema history

### 6. Restrict Deletions
- **Allow deletions**: ❌ Disabled
  - Prevents accidental branch deletion

## How to Apply

### Via GitHub Web UI:
1. Go to: https://github.com/stl-dev-ops/SQL/settings/branches
2. Click **Add branch protection rule**
3. Branch name pattern: `master`
4. Enable the settings above
5. Click **Create** or **Save changes**

### Via GitHub CLI:
```bash
gh api repos/stl-dev-ops/SQL/branches/master/protection -X PUT -f required_status_checks='{"strict":true,"contexts":[]}' -f enforce_admins=true -f required_pull_request_reviews='{"required_approving_review_count":1}' -f restrictions=null -f required_linear_history=true -f allow_force_pushes=false -f allow_deletions=false
```

## Optional: GitHub Actions for Schema Validation

Create `.github/workflows/schema-validation.yml`:

```yaml
name: Schema Validation

on:
  pull_request:
    branches: [ master ]
    paths:
      - 'schema/**'
  push:
    branches: [ master ]
    paths:
      - 'schema/**'

jobs:
  validate:
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Run Schema Integrity Tests
        run: |
          powershell -NoProfile -ExecutionPolicy Bypass -File schema/Test-SchemaIntegrity.ps1 -Verbose
        shell: pwsh
      
      - name: Check for duplicate files in root
        run: |
          $rootSql = Get-ChildItem -Path . -Filter "*.sql" -File | Where-Object { $_.DirectoryName -eq $PWD.Path }
          if ($rootSql.Count -gt 0) {
            Write-Error "Found $($rootSql.Count) SQL files in root directory. All schema files should be in schema/ subfolders."
            exit 1
          }
        shell: pwsh
```

## Team Workflow with Protection

1. **Developer workflow**:
   ```bash
   git checkout -b feature/update-view-xyz
   # Make schema changes in database
   cd schema
   ./Refresh-Schema.ps1 -NoPush
   cd ..
   git push origin feature/update-view-xyz
   # Create PR on GitHub
   ```

2. **Review process**:
   - Reviewer checks schema changes in PR diff
   - Validates changes against database documentation
   - Approves if changes are correct

3. **Merge**:
   - GitHub enforces all checks pass
   - Squash and merge or rebase merge (based on settings)
   - `master` branch updates automatically

## Notes

- The automated `Refresh-Schema.ps1` scheduled task commits directly to `master`
- If you enable PR requirements, you may want to:
  - Create a `schema-automation` branch for scheduled commits
  - Set up a weekly auto-PR from `schema-automation` → `master`
  - Or exclude the automation service account from PR requirements
