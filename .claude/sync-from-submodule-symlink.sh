#!/bin/bash
# EXPERIMENTAL: Sync using symlinks instead of copying
# Usage: ./.claude/sync-from-submodule-symlink.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SUBMODULE_DIR="$SCRIPT_DIR/mii-shared"

if [ ! -d "$SUBMODULE_DIR" ]; then
    echo "Error: Submodule not found at $SUBMODULE_DIR"
    echo "Run: git submodule update --init --recursive"
    exit 1
fi

echo "Creating symlinks from mii-kerndatensatz-dev submodule..."

# Symlink individual shared skills (preserve local-only skills)
if [ -d "$SUBMODULE_DIR/.claude/skills" ]; then
    echo "  - Symlinking skills..."
    for skill_dir in "$SUBMODULE_DIR/.claude/skills"/*; do
        if [ -d "$skill_dir" ]; then
            skill_name=$(basename "$skill_dir")
            target="$SCRIPT_DIR/skills/$skill_name"

            # Remove existing directory or symlink
            if [ -e "$target" ] || [ -L "$target" ]; then
                echo "    Removing existing: $skill_name"
                rm -rf "$target"
            fi

            echo "    Linking: $skill_name"
            ln -s "$skill_dir" "$target"
        fi
    done
else
    echo "  - No skills directory found in submodule"
fi

# Symlink individual shared commands (preserve local-only commands)
if [ -d "$SUBMODULE_DIR/.claude/commands" ]; then
    echo "  - Symlinking commands..."
    for cmd_file in "$SUBMODULE_DIR/.claude/commands"/*; do
        if [ -f "$cmd_file" ]; then
            cmd_name=$(basename "$cmd_file")
            target="$SCRIPT_DIR/commands/$cmd_name"

            # Remove existing file or symlink
            if [ -e "$target" ] || [ -L "$target" ]; then
                echo "    Removing existing: $cmd_name"
                rm -f "$target"
            fi

            echo "    Linking: $cmd_name"
            ln -s "$cmd_file" "$target"
        fi
    done
else
    echo "  - No commands directory found in submodule"
fi

echo "Symlink creation complete!"
echo ""
echo "Summary:"
echo "  - Skills linked from: $SUBMODULE_DIR/.claude/skills/"
echo "  - Commands linked from: $SUBMODULE_DIR/.claude/commands/"
echo "  - Shared items are now symlinked (always in sync with submodule)"
echo "  - Local-only files are preserved"
