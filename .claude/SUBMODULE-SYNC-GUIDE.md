# Git Submodule Approach for Shared Skills/Commands

## Overview

This module uses a git submodule to share Claude Code skills and commands from the central `mii-kerndatensatz-dev` repository.

**Submodule location:** `.claude/mii-shared/`

## Architecture

```
.claude/
├── mii-shared/              # Git submodule (mii-kerndatensatz-dev)
│   └── .claude/
│       ├── skills/          # Shared skills
│       └── commands/        # Shared commands
├── skills/                  # Local skills (synced from submodule + module-specific)
├── commands/                # Local commands (synced from submodule + module-specific)
└── sync-from-submodule.sh   # Sync script
```

## Initial Setup (Already Done)

```bash
# Add submodule (one-time setup)
git submodule add https://github.com/medizininformatik-initiative/mii-kerndatensatz-dev.git .claude/mii-shared

# Create sync script
cat > .claude/sync-from-submodule.sh <<'EOF'
#!/bin/bash
# ... (see actual script)
EOF
chmod +x .claude/sync-from-submodule.sh
```

## Daily Usage

### Update Shared Skills/Commands

```bash
# 1. Update submodule to latest
git submodule update --remote .claude/mii-shared

# 2. Sync changes to local .claude/skills and .claude/commands
./.claude/sync-from-submodule.sh

# 3. Commit if needed (submodule pointer changed)
git add .claude/mii-shared
git commit -m "chore: Update shared skills/commands from mii-kerndatensatz-dev"
```

### Clone Repository with Submodules (New Contributors)

```bash
# Option 1: Clone with submodules
git clone --recurse-submodules https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen.git

# Option 2: Clone then init submodules
git clone https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen.git
cd kerndatensatzmodul-seltene-erkrankungen
git submodule update --init --recursive

# Then sync shared files
./.claude/sync-from-submodule.sh
```

## GitHub Actions Integration

Ensure workflows checkout submodules:

```yaml
steps:
  - name: Checkout repository with submodules
    uses: actions/checkout@v4
    with:
      submodules: 'recursive'

  - name: Sync shared skills/commands
    run: ./.claude/sync-from-submodule.sh
```

## Copy vs Symlink Approach

### Current: Copy Approach (Recommended)

**Pros:**
- Simple, works everywhere (Windows, Linux, macOS)
- Git tracks actual files, not symlinks
- No symlink resolution issues
- Works with all editors/IDEs
- Explicit sync step (controlled updates)

**Cons:**
- Requires manual sync step
- Local copies can drift if sync forgotten
- Duplicates files (small cost)

### Alternative: Symlink Approach (Experimental)

See `.claude/sync-from-submodule-symlink.sh` for symlink variant.

**Pros:**
- Always in sync (no manual sync needed)
- Single source of truth

**Cons:**
- Windows compatibility issues (requires Developer Mode or admin)
- Git tracks symlinks, not file contents
- Some editors/tools may not follow symlinks
- Submodule must always be initialized

**Verdict:** Copy approach is more robust for team collaboration.

## Shared vs Local Files

### Shared (from mii-kerndatensatz-dev)
- `skills/fix-ig-export-links/` - Link fixing for IG exports
- `skills/mii-testdata-contribution/` - Test data contribution workflow
- `commands/build-package.md` - Package build command

### Local (module-specific)
- `commands/commit-push-track-evaluate.md`
- `commands/release-*.md`
- `commands/validation-check.md`
- Any module-specific skills

**Important:** The sync script preserves local-only files. It only updates/adds shared items.

## Troubleshooting

### Submodule shows as modified but no changes
```bash
# Submodule pointer updated upstream
git submodule update --remote .claude/mii-shared
```

### Submodule is empty/missing
```bash
# Initialize submodule
git submodule update --init --recursive
```

### Sync script doesn't preserve local files
```bash
# Check rsync command - should NOT have --delete flag
grep -n "rsync" .claude/sync-from-submodule.sh
# Should see: rsync -av (no --delete)
```

### Merge conflicts in submodule pointer
```bash
# Accept theirs (upstream)
git checkout --theirs .claude/mii-shared
git submodule update --init --recursive

# Or accept ours (local)
git checkout --ours .claude/mii-shared
```

## Workflow Integration

### Updating Shared Skills Centrally

1. Make changes in `mii-kerndatensatz-dev` repository
2. Commit and push to `mii-kerndatensatz-dev`
3. In this module:
   ```bash
   git submodule update --remote .claude/mii-shared
   ./.claude/sync-from-submodule.sh
   git add .claude/mii-shared
   git commit -m "chore: Update shared skills"
   ```

### Contributing Changes Back

If you improve a shared skill locally:

1. Copy changes to `mii-kerndatensatz-dev` clone
2. Commit and push in `mii-kerndatensatz-dev`
3. Update submodule in all modules

## Version Pinning

By default, submodule tracks `main` branch. To pin to specific commit:

```bash
cd .claude/mii-shared
git checkout <specific-commit>
cd ../..
git add .claude/mii-shared
git commit -m "chore: Pin shared skills to commit <hash>"
```

To update pinned version:

```bash
git submodule update --remote .claude/mii-shared
# Or manually:
cd .claude/mii-shared && git pull origin main && cd ../..
```

## Testing

Verify setup:

```bash
# Check submodule status
git submodule status

# Verify submodule content
ls -la .claude/mii-shared/.claude/skills/

# Test sync
./.claude/sync-from-submodule.sh

# Verify synced files
ls -la .claude/skills/
ls -la .claude/commands/
```

## References

- [Git Submodules Documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
- [GitHub Actions Submodule Checkout](https://github.com/actions/checkout#usage)
- Central repository: [mii-kerndatensatz-dev](https://github.com/medizininformatik-initiative/mii-kerndatensatz-dev)
