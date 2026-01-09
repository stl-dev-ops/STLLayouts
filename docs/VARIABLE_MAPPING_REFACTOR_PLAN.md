# Variable Mapping: Robust + Scalable Refactor Plan (Checklist)

This document is a working plan to make variable mapping:

- **Scalable** (add new fields/tables without code edits in multiple places)
- **Reliable** (clear “this will work / won’t work” feedback)
- **Verifiable** (test/validate in the UI, not only via scripts)
- **Intuitive (ELI5)** so admins can fix problems without reading code

> Status legend:
> - [ ] Not started
> - [~] In progress
> - [x] Done

---

## 0) Current reality (what we have today)

### What works today
- You can create/edit/delete mappings in the UI.
- The app can resolve mapping values **only** from the “Job Context” dictionary produced by `GetJobContextAsync(jobId)` and copied into `job.ExtendedProperties`.
- We have a PowerShell test script (`scripts/test-variable-mappings.ps1`) that reports:
  - `WORKS` vs `NULL` vs `EMPTY` vs `NOT_FOUND`
  - and where the value resolved from.

### Core limitation today (why mappings don’t scale)
- Adding a mapping for a field in a table that isn’t already joined means:
  - the mapping can be saved, but it **won’t resolve** until a developer updates `GetJobContextAsync`.

That’s the main scalability issue.

---

## 1) Target user experience (ELI5)

### The user’s desired workflow
1. Pick a job to test with (JobId).
2. Browse tables/columns.
3. Click a column ? “Create mapping”.
4. The UI tells you immediately:
   - “? Works” (value exists)
   - “?? Works but empty/null” (data missing for this job)
   - “? Won’t work yet (context missing join)” (needs context update)
5. If it “won’t work yet”, the UI should guide you:
   - either auto-fix by adding the join (if possible)
   - or give clear instructions (“add this table to the Job Context view”).

### Design principle
**Never allow a mapping to be saved without telling the user whether it will resolve.**

---

## 2) Strategy (two-phase approach)

We’ll do this in two phases so we get value quickly.

### Phase A (fast win): UI-based validation + visibility
Make the current system understandable and verifiable.

### Phase B (real scalability): move context-building into a maintainable SQL view
So adding a column becomes a UI-driven action (no code changes).

---

## 3) Phase A — Add UI validation + a “Context Explorer”

### A0. Find where mappings live (database discovery)
Because table names vary by environment, we will keep a script to find it.

- [x] Add `scripts/find-mappings-table.ps1`
- [ ] Run it and record the canonical table/view name in this repo’s docs (so UI + scripts can use one source)

**ELI5:** “We need to know where your saved mappings are stored before we can build UI features around them.”

### A1. Add “Test/Validate mappings” panel in Variable Mapping UI
- [ ] Add a textbox for `JobId` (sample job)
- [ ] Add a button `Validate Mappings`
- [ ] Call `IVariableMappingService.ValidateMappingsAsync(jobId)`
- [ ] Show a grid/list of results with:
  - VariableName
  - DatabaseField
  - Status: WORKS / NULL / EMPTY / NOT_FOUND
  - ResolvedFrom / ResolvedKey (where it came from)

**ELI5 help text to show in the UI:**
- **WORKS**: “We found a real value for this job.”
- **NULL**: “The table/field exists, but this job has no related row (the join matched nothing).”
- **EMPTY**: “The field exists but is blank for this job.”
- **NOT_FOUND**: “The Job Context does not include this field at all; it will never resolve until context includes it.”

### A2. Add “Context keys” viewer (Context Explorer)
- [ ] When JobId is entered, call `GetJobContextAsync(jobId)`
- [ ] Show all keys returned (search/filter)
- [ ] Provide a one-click copy feature

**ELI5 help text:**
- “These are the only values the app can fill into templates right now.”
- “If your field isn’t in this list, it cannot work until we add it to Job Context.”

### A3. Saving rules (block vs warn) — make it fair and predictable
We do NOT want to block a good mapping just because one specific job happens to have NULL data.

So we split validation into *two kinds*:

#### A3.1 Job-agnostic validation (can block)
This checks: “Is this mapping structurally resolvable at all?”

- Example of a **block**:
  - database field refers to a table/column that is not present in Job Context (so it’s NOT_FOUND for every job)

What this requires:
- [ ] A “Context Schema” list (what keys are available in Job Context in general)
  - With Phase B, this becomes simple: read columns from a view.

Blocking rule:
- [ ] Block saving when `DatabaseField` cannot be mapped to any known context key/alias.

#### A3.2 Job-specific validation (warn only)
This checks: “Does this job have data?”

- `NULL` / `EMPTY` should *warn* but must not block.

### A4. In-dialog help + “why isn’t this working?”
- [ ] Add tooltips / inline help text for VariableName / DatabaseField / SQL Expression
- [ ] Add a “Help” link that opens help content (local markdown)

### A5. Mapping editor UX decisions (confirmed)
- [x] **Model 1**: UI explicitly asks **“Single value” vs “List/Table”**
- [x] **Option A**: `DatabaseField` is **auto-filled from a picker** and **read-only by default**
  - [ ] Add an **“Advanced”** toggle to allow manual editing (power users)
  - [ ] Even in Advanced mode, saving should be blocked if the field is not resolvable in the selected context schema

---

## 4) Phase B — Make Job Context scalable via a maintained SQL view

### B1. Decide the view name
You indicated: “We are allowed to add and maintain a view, it should be called something like …”.

We will use:
- `dbo.vw_STLLayouts_Variable_Mapping` (name TBD by you) as the *mapping* view (optional)
- `dbo.vw_STLLayouts_JobContext` (recommended) as the *job context* view

> Note: The name `vw_STLLayouts_Variable_Mapping` sounds like a mapping metadata view.
> The scalability issue is the *job context values*, so we also need a `JobContext` view.

**Open decision:** confirm final name(s).

### B2. How this makes the UI “the only place you work”
If all job context values come from a view:

- the UI can browse the view’s columns
- the UI can validate “is this column available?” without needing a JobId
- adding a new field becomes:
  1. add it to the view (via an automation path)
  2. create mapping in UI

### B3. Automation requirement (no manual DBA work)
You said: “if we use option 1, we need automation to create/maintain it programatically so there is no required work outside of the UI.”

That means:
- [ ] The app must be able to create/update the JobContext view (or a set of views) from configuration

Two implementation patterns:

#### Pattern B3.a (Safe/Recommended): “Context Sources” + view generator
- Store context source definitions in the app DB (what to join + which columns)
- App generates a `CREATE OR ALTER VIEW dbo.vw_STLLayouts_JobContext AS ...` script
- App applies it (requires permission)

#### Pattern B3.b (Fallback): ship the view DDL with the app and migrate it
- Use EF migrations / SQL scripts run during deployment
- Still requires devops step when adding a new table

**Open decision:** confirm whether the app is permitted to `CREATE OR ALTER VIEW` against CRMDB.

---

## 5) Repeating / Collection Variables (needed soon)

Today, `GetJobContextAsync` returns one row (scalar values).

If we need repeating sections (multiple sales lines, multiple reservations, etc.), we need a second concept:

- **Scalar variables**: single value (current system)
- **Collection variables**: a list/table of rows

Checklist:
- [ ] Define `VariableMappingKind`: `Scalar` vs `Collection`
- [ ] Define collection query source (e.g., `vw_STLLayouts_OrderLines` by `ord__ref`)
- [ ] Update document generation layer to support repeating sections (table row cloning)
- [ ] Add UI: mapping editor for collections (choose columns for row template)

**ELI5:** “Some placeholders are one thing (JobNumber). Some are a list (OrderLines). Lists need a different kind of mapping.”

---

## 6) ELI5 Help System (in-app)

### Baked-in help requirements
- [ ] Each field in Create/Edit mapping dialog gets a short tooltip.
- [ ] Add a “Help” link/button that opens a local Markdown help page.
- [ ] Add a “Common problems” section:
  - Field not in context
  - Wrong job id
  - Field is NULL because join has no related row
  - Field is EMPTY because data is blank

**ELI5 template for explanations:**
- “If you want value X, the app needs to *know where to look*.”
- “The Job Context is the app’s shopping list of data.”
- “Mappings only work if the item is on the shopping list.”

---

## 7) Testing + Verification

### Automated checks
- [ ] Add an integration test that calls `GetJobContextAsync` (against a test DB or mocked DB)
- [ ] Add a test that ensures mappings validate without throwing

### Manual checks
- [ ] Validate mappings for a known JobId and confirm the UI matches the PowerShell script output

---

## 8) Open questions (please answer so we align)

1. **Permissions**: Can the application account run `CREATE OR ALTER VIEW` in the CRMDB (sqlb00) database?
   - [x] Yes (confirmed)

2. **Naming**: Confirm the final names:
   - Job context view: `dbo.vw_STLLayouts_JobContext` (recommended)
   - Mapping metadata view/table: `dbo.vw_STLLayouts_Variable_Mapping` (as requested)

3. **Mapping storage**: After you run `scripts/find-mappings-table.ps1`, what is the canonical table/view name we should standardize on?
   - [x] Found: `dbo.stlLayouts_VariableMapping`

4. **Collections**: Which collections do you need first?
   - Order lines (bstlyn__)
   - Reservations (resgrd__)
   - Other?

---

## 9) Next concrete step

Run the discovery script and paste the top result:

- `pwsh -NoProfile -ExecutionPolicy Bypass -File .\scripts\find-mappings-table.ps1`

Then we will implement Phase A1/A2 in the WPF UI.
