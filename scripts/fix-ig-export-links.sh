#!/bin/bash
# Fix canonical links in Simplifier IG export
# Usage: ./fix-ig-export-links.sh <path-to-exported-ig-folder>

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-exported-ig-folder>"
    echo "Example: $0 ~/Downloads/MIIModulSelteneErkrankungen-v2026-DE@current"
    exit 1
fi

IG_DIR="$1"

if [ ! -d "$IG_DIR" ]; then
    echo "Error: Directory '$IG_DIR' does not exist"
    exit 1
fi

echo "Fixing canonical links in: $IG_DIR"

# Count HTML files
HTML_COUNT=$(find "$IG_DIR" -name "*.html" | wc -l | tr -d ' ')
echo "Found $HTML_COUNT HTML files"

# Fix MII canonical URLs - replace direct links with Simplifier resolve links
# Pattern: href="https://www.medizininformatik-initiative.de/fhir/...
# Replace with: href="https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/...

echo "Fixing MII canonical URLs..."

# Fix href links to MII canonicals (in-place without backup)
for file in "$IG_DIR"/*.html; do
    if [ -f "$file" ]; then
        sed -i '' 's|href="https://www\.medizininformatik-initiative\.de/fhir/|href="https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/|g' "$file"
    fi
done

# Clean up any backup files that might have been created
find "$IG_DIR" -name "*''" -type f -delete 2>/dev/null || true

echo "Done! Fixed canonical links in $HTML_COUNT HTML files"
echo ""
echo "Note: Links now point to https://simplifier.net/resolve?canonical=..."
echo "These will resolve once the package is published on Simplifier."
