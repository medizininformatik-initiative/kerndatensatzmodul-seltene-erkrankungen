# Commit, Push, Track CI Validation, and Evaluate Results

Perform the complete workflow of committing, pushing, waiting for CI validation, and analyzing results.

## Instructions

1. **Commit current changes**:
   - Run `git status` and `git diff` to see what will be committed
   - Create a commit with an appropriate message following the repository conventions
   - Include the standard footer with Claude attribution

2. **Push to remote**:
   - Push the commit to the remote repository
   - Note the commit SHA for tracking

3. **Monitor CI validation**:
   - Wait for the GitHub Actions workflow "CI (FHIR Validation)" to complete
   - Poll every 30 seconds for up to 10 minutes
   - **Use `run_in_background: true`** for the polling command to avoid user prompts
   - Use this polling pattern:
   ```bash
   # Get workflow run ID for the commit
   COMMIT_SHA=$(git rev-parse HEAD)
   RUN_ID=$(gh api repos/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/actions/runs \
     --jq ".workflow_runs | map(select(.head_sha == \"$COMMIT_SHA\")) | .[0].id")

   # Poll until complete (use run_in_background for this)
   sleep 30 && gh api repos/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/actions/runs/$RUN_ID \
     --jq '.status + " " + (.conclusion // "null")'
   ```

4. **Download validation artifacts**:
   - Once complete, download the `validation-output` artifact
   - Create output directory with proper variable handling:
   ```bash
   # Create timestamp and directory in one command
   SHORT_SHA=$(git rev-parse --short HEAD)
   TIMESTAMP=$(date +%Y%m%d_%H%M%S)
   OUTDIR=".validation-history/${TIMESTAMP}_${SHORT_SHA}"
   mkdir -p "$OUTDIR"
   gh run download $RUN_ID -n validation-output -D "$OUTDIR"
   ```
   - Save validation.json, validation.html, and txlog.html to the directory

5. **Run the analysis script**:
   ```bash
   # Run analysis with automatic comparison to previous validation
   python3 .claude/scripts/analyze_validation.py "$OUTDIR/validation.json" --output-format markdown
   ```
   - This generates the error report with categorization and comparison
   - Results are displayed in the terminal and saved to the output directory

6. **Expected output format**:
   ```
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   FHIR Validation Report for commit {short_sha}
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

   SUMMARY
   -------
   Current errors: X
   Previous errors: Y
   Change: +/-Z

   ERROR CATEGORIES
   ----------------
   - UNABLE_TO_INFER_CODESYSTEM: N errors
   - Terminology_TX_NoValid_16: N errors
   - [other categories]: N errors

   AFFECTED RESOURCES
   ------------------
   - Questionnaire: N errors
   - Bundle: N errors
   - StructureDefinition: N errors

   FIXED ERRORS (showing up to 20)
   -------------------------------
   [list of fixed error locations and messages]

   NEW ERRORS (showing up to 20)
   -----------------------------
   [list of new error locations and messages]

   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   Results saved to: .validation-history/{path}
   View HTML report: .validation-history/{path}/validation.html
   ```

## Python Script for Error Analysis

**IMPORTANT**: Always run this script to get accurate error counts. Do NOT estimate or hallucinate numbers.

The analysis script is located at `.claude/scripts/analyze_validation.py`.

### Running the Analysis

```bash
# Automatically finds and compares with previous validation
python3 .claude/scripts/analyze_validation.py "$OUTDIR/validation.json"
```

The script automatically detects the previous validation directory and compares against it.

### Script Reference

The script is also shown below for reference:

```python
#!/usr/bin/env python3
"""
Analyze FHIR validation results from validation.json
Usage: python3 analyze_validation.py <validation.json> [previous_validation.json]
"""
import json
import sys
import os
from collections import defaultdict

def extract_errors(filepath):
    """Extract all errors from validation.json Bundle."""
    with open(filepath) as f:
        data = json.load(f)

    errors = []

    # Track which file each OperationOutcome relates to
    # The Bundle alternates: resource file entry, then its OperationOutcome
    current_filename = 'unknown'

    for i, entry in enumerate(data.get('entry', [])):
        resource = entry.get('resource', {})
        full_url = entry.get('fullUrl', '')

        # If this is a regular resource, capture its filename for the next OperationOutcome
        if resource.get('resourceType') != 'OperationOutcome':
            if full_url:
                current_filename = full_url.split('/')[-1]
            continue

        # Process OperationOutcome
        for issue in resource.get('issue', []):
            if issue.get('severity') != 'error':
                continue

            location = issue.get('location', [''])[0] if issue.get('location') else ''
            message = issue.get('diagnostics', issue.get('details', {}).get('text', ''))
            code = issue.get('code', 'unknown')

            # Categorize by message content
            category = 'Other'
            if 'Wrong Display Name' in message:
                category = 'Wrong_Display_Name'
            elif 'Unknown code' in message or 'not found in the code system' in message:
                category = 'Unknown_Code'
            elif 'UNABLE_TO_INFER_CODESYSTEM' in message:
                category = 'UNABLE_TO_INFER_CODESYSTEM'
            elif 'TX_NoValid' in message or 'not in the value set' in message:
                category = 'Terminology_TX_NoValid'
            elif 'not found' in message.lower() or 'cannot find' in message.lower():
                category = 'Reference_Not_Found'
            elif 'invalid' in message.lower():
                category = 'Invalid_Value'

            errors.append({
                'filename': current_filename,
                'location': location,
                'message': message,
                'code': code,
                'category': category,
                'signature': f'{current_filename}|{location}|{message}'
            })

    return errors

def analyze_validation(current_path, previous_path=None):
    """Analyze validation results and optionally compare with previous run."""
    current_errors = extract_errors(current_path)

    # Group by category and filename
    by_category = defaultdict(list)
    by_file = defaultdict(list)
    for err in current_errors:
        by_category[err['category']].append(err)
        by_file[err['filename']].append(err)

    # Compare with previous if available
    fixed = []
    new = []
    prev_count = 0

    if previous_path and os.path.exists(previous_path):
        prev_errors = extract_errors(previous_path)
        prev_count = len(prev_errors)

        current_sigs = {e['signature'] for e in current_errors}
        prev_sigs = {e['signature'] for e in prev_errors}

        fixed = [e for e in prev_errors if e['signature'] not in current_sigs]
        new = [e for e in current_errors if e['signature'] not in prev_sigs]

    return {
        'total': len(current_errors),
        'previous': prev_count,
        'by_category': dict(by_category),
        'by_file': dict(by_file),
        'fixed': fixed,
        'new': new,
        'all_errors': current_errors
    }

def print_report(results, short_sha, outdir):
    """Print formatted validation report."""
    print("━" * 60)
    print(f"FHIR Validation Report for commit {short_sha}")
    print("━" * 60)
    print()
    print("SUMMARY")
    print("-" * 40)
    print(f"Total errors: {results['total']}")
    if results['previous'] > 0:
        change = results['total'] - results['previous']
        sign = '+' if change > 0 else ''
        print(f"Previous errors: {results['previous']}")
        print(f"Change: {sign}{change}")
    print()

    print("ERROR CATEGORIES")
    print("-" * 40)
    for cat, errs in sorted(results['by_category'].items(), key=lambda x: -len(x[1])):
        print(f"- {cat}: {len(errs)} errors")
    print()

    print("AFFECTED FILES (top 15)")
    print("-" * 40)
    for fname, errs in sorted(results['by_file'].items(), key=lambda x: -len(x[1]))[:15]:
        print(f"- {fname}: {len(errs)} errors")
    print()

    if results['fixed']:
        print(f"FIXED ERRORS ({len(results['fixed'])} total, showing up to 10)")
        print("-" * 40)
        for err in results['fixed'][:10]:
            print(f"  [{err['category']}] {err['filename']}")
            print(f"    {err['message'][:100]}")
        print()

    if results['new']:
        print(f"NEW ERRORS ({len(results['new'])} total, showing up to 10)")
        print("-" * 40)
        for err in results['new'][:10]:
            print(f"  [{err['category']}] {err['filename']}")
            print(f"    {err['message'][:100]}")
        print()

    print("━" * 60)
    print(f"Results saved to: {outdir}")
    print(f"View HTML report: {outdir}/validation.html")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 analyze_validation.py <validation.json> [previous.json]")
        sys.exit(1)

    current = sys.argv[1]
    previous = sys.argv[2] if len(sys.argv) > 2 else None

    results = analyze_validation(current, previous)

    # Extract info from path
    outdir = os.path.dirname(current)
    short_sha = outdir.split('_')[-1] if '_' in outdir else 'unknown'

    print_report(results, short_sha, outdir)
```

### Running the Analysis

```bash
# Basic usage
python3 analyze_validation.py "$OUTDIR/validation.json"

# Compare with previous validation
PREV=$(ls -td .validation-history/*/ | sed -n '2p')
python3 analyze_validation.py "$OUTDIR/validation.json" "$PREV/validation.json"
```

## Notes

- The existing post-push hook at `.git/hooks/post-push` runs automatically but only shows basic diff
- This command provides a more detailed analysis with categorization
- Results are saved to `.validation-history/` for historical tracking
- Use `gh auth status` to ensure GitHub CLI is authenticated

## Expected Errors (Not Actionable)

Many validation errors are **expected** due to terminology server limitations for German translations:

### Wrong_Display_Name Errors
These occur because LOINC terminology servers don't have German translations:
- `Wrong Display Name 'Überhaupt nicht' for http://loinc.org#LA6568-5` (expects English 'Not at all')
- `Wrong Display Name 'An einzelnen Tagen' for http://loinc.org#LA6569-3` (expects English 'Several days')

**These are NOT bugs** - they're expected behavior per the MII-controlled terminology strategy documented in CLAUDE.md.

### Suppressions
Some validation warnings are suppressed via `advisor.json`. Check this file if you need to add new suppressions for known issues.
