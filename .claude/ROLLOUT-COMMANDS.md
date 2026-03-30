# Rollout Commands for Other Modules

Copy-paste commands for adding submodule approach to other MII modules.

## Step 1: Add Submodule (One-Time Setup)

```bash
# Navigate to module root
cd /path/to/kerndatensatzmodul-<MODULE>

# Add submodule
git submodule add https://github.com/medizininformatik-initiative/mii-kerndatensatz-dev.git .claude/mii-shared

# Verify submodule
git submodule status
ls -la .claude/mii-shared/.claude/
```

## Step 2: Create Sync Script

```bash
cat > .claude/sync-from-submodule.sh <<'EOF'
#!/bin/bash
# Sync shared skills and commands from mii-kerndatensatz-dev submodule
# Usage: ./.claude/sync-from-submodule.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SUBMODULE_DIR="$SCRIPT_DIR/mii-shared"

if [ ! -d "$SUBMODULE_DIR" ]; then
    echo "Error: Submodule not found at $SUBMODULE_DIR"
    echo "Run: git submodule update --init --recursive"
    exit 1
fi

echo "Syncing from mii-kerndatensatz-dev submodule..."

# Sync skills (update existing, add new, don't delete local-only)
if [ -d "$SUBMODULE_DIR/.claude/skills" ]; then
    echo "  - Syncing skills..."
    rsync -av "$SUBMODULE_DIR/.claude/skills/" "$SCRIPT_DIR/skills/"
else
    echo "  - No skills directory found in submodule"
fi

# Sync commands (update existing, add new, don't delete local-only)
if [ -d "$SUBMODULE_DIR/.claude/commands" ]; then
    echo "  - Syncing commands..."
    rsync -av "$SUBMODULE_DIR/.claude/commands/" "$SCRIPT_DIR/commands/"
else
    echo "  - No commands directory found in submodule"
fi

echo "Sync complete!"
echo ""
echo "Summary:"
echo "  - Skills synced from: $SUBMODULE_DIR/.claude/skills/"
echo "  - Commands synced from: $SUBMODULE_DIR/.claude/commands/"
echo "  - Local-only files preserved (no deletions)"
EOF

# Make executable
chmod +x .claude/sync-from-submodule.sh
```

## Step 3: Initial Sync

```bash
# Run sync
./.claude/sync-from-submodule.sh

# Verify synced files
ls -la .claude/skills/
ls -la .claude/commands/
```

## Step 4: Update GitHub Actions

Add to your `.github/workflows/*.yml` files:

```yaml
jobs:
  your-job-name:
    runs-on: ubuntu-latest
    steps:
      # MODIFY THIS (add submodules parameter):
      - name: Checkout repository with submodules
        uses: actions/checkout@v4
        with:
          submodules: 'recursive'  # ← ADD THIS LINE

      # ADD THIS (sync shared files):
      - name: Sync shared skills/commands
        run: ./.claude/sync-from-submodule.sh

      # Your existing steps...
```

## Step 5: Commit Setup

```bash
# Check what's being added
git status

# Stage changes
git add .gitmodules .claude/mii-shared .claude/sync-from-submodule.sh

# Commit
git commit -m "feat: Add git submodule for shared Claude Code skills/commands

- Add mii-kerndatensatz-dev as submodule at .claude/mii-shared
- Create sync script for copying shared skills/commands
- See .claude/SUBMODULE-SYNC-GUIDE.md for usage"

# Push
git push
```

## Daily Usage (After Setup)

### Update Shared Skills/Commands

```bash
# Update submodule to latest
git submodule update --remote .claude/mii-shared

# Sync changes
./.claude/sync-from-submodule.sh

# Commit if submodule pointer changed
git add .claude/mii-shared
git commit -m "chore: Update shared skills from mii-kerndatensatz-dev"
git push
```

### Clone Repository (New Contributors)

```bash
# Option 1: Clone with submodules
git clone --recurse-submodules <repo-url>
cd <repo>
./.claude/sync-from-submodule.sh

# Option 2: Clone then init submodules
git clone <repo-url>
cd <repo>
git submodule update --init --recursive
./.claude/sync-from-submodule.sh
```

## Verification

```bash
# Check submodule status
git submodule status

# Verify content
ls -la .claude/mii-shared/.claude/skills/
ls -la .claude/mii-shared/.claude/commands/

# Test sync
./.claude/sync-from-submodule.sh

# Verify synced files
diff -r .claude/mii-shared/.claude/skills/ .claude/skills/
```

## Troubleshooting

### Submodule is empty

```bash
git submodule update --init --recursive
```

### Submodule shows as modified

```bash
# Update to latest
git submodule update --remote .claude/mii-shared

# Or reset to committed version
git submodule update --init
```

### Sync script permission denied

```bash
chmod +x .claude/sync-from-submodule.sh
```

## Optional: Add Documentation

Copy from seltene test module:

```bash
# From seltene test module
SOURCE=/Users/thome/code/fhir-profiling/kerndatensatzmodul-seltene-erkrankungen/.claude

# To your module
cp $SOURCE/SUBMODULE-SYNC-GUIDE.md .claude/

# Optional: Add to main README.md
cat >> README.md <<'EOF'

## Shared Skills and Commands

This module uses shared Claude Code skills and commands from [mii-kerndatensatz-dev](https://github.com/medizininformatik-initiative/mii-kerndatensatz-dev).

See [.claude/SUBMODULE-SYNC-GUIDE.md](.claude/SUBMODULE-SYNC-GUIDE.md) for details.
EOF
```

## Rollout Checklist

- [ ] Add submodule
- [ ] Create sync script
- [ ] Initial sync
- [ ] Update GitHub Actions workflows
- [ ] Test locally
- [ ] Commit and push
- [ ] Verify CI/CD runs successfully
- [ ] Document in README (optional)
- [ ] Notify team of new workflow

## Module-Specific Notes

### For modules with existing local skills/commands

The sync script preserves local-only files. Shared skills will be updated:

**Shared (will be synced):**
- `fix-ig-export-links` (if exists)
- `mii-testdata-contribution` (if exists)
- `build-package.md` (if exists)

**Local-only (will be preserved):**
- Any module-specific skills
- Any module-specific commands
- `release-*.md` commands
- `validation-check.md`
- etc.

### For modules without .claude/ directory

```bash
# Create .claude/ structure
mkdir -p .claude/{skills,commands}

# Then follow normal setup
```

## Support

Questions? See:
- `.claude/SUBMODULE-SYNC-GUIDE.md` - Complete guide
- `.claude/EVALUATION-SUBMODULE-APPROACH.md` - Technical evaluation
- Test module: kerndatensatzmodul-seltene-erkrankungen (reference implementation)
