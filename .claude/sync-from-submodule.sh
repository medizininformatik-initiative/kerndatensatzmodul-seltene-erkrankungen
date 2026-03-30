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
