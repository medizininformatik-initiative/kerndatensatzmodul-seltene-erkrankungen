#!/bin/bash
# Fix broken Simplifier resolve links in MII Seltene Erkrankungen IG export
# Package: de.medizininformatikinitiative.kerndatensatz.seltene
# Canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene

set -e
echo "Fixing MII Seltene Erkrankungen IG export links..."
echo ""

# =============================================================================
# Step 1: Fix FHIR R4 Core links (filepath pattern)
# =============================================================================
echo "1. Fixing FHIR R4 Core links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.]*\)\.json|https://hl7.org/fhir/R4/\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# With &amp; encoding
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# =============================================================================
# Step 2: Fix HL7 Terminology (THO) links
# =============================================================================
echo "2. Fixing HL7 Terminology (THO) links..."

# CodeSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html

# ValueSet links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html

# NamingSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/NamingSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/NamingSystem-\1.html|g' *.html

# =============================================================================
# Step 3: Fix German base profile links (de.basisprofil.r4)
# =============================================================================
echo "3. Fixing German base profile links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/CodeSystem-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/Extension-\1.json|g' *.html

# Without https prefix (relative URLs)
sed -i '' 's|resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/ValueSet-\1.json|g' *.html

# =============================================================================
# Step 4: Fix MII Base module links (kerndatensatz.base)
# =============================================================================
echo "4. Fixing MII Base module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/CodeSystem-\1.json|g' *.html

# Without https prefix (relative URLs)
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/ValueSet-\1.json|g' *.html

# =============================================================================
# Step 5: Fix MII MolGen module links
# =============================================================================
echo "5. Fixing MII MolGen module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.molgen@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.molgen@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 6: Fix MII Medikation module links
# =============================================================================
echo "6. Fixing MII Medikation module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 7: Fix MII ICU module links
# =============================================================================
echo "7. Fixing MII ICU module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.icu@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.icu/2025.0.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.icu@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.icu/2025.0.4/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 8: Fix MII Studie module links
# =============================================================================
echo "8. Fixing MII Studie module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.studie@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie/2026.0.0-ballot/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.studie@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie/2026.0.0-ballot/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 9: Fix FHIR R4 base StructureDefinition links (canonical box basis column)
# =============================================================================
echo "9. Fixing FHIR R4 base StructureDefinition links (canonical box)..."

# Single-quoted href with regular & (canonical box FQL table)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&canonical=http://hl7.org/fhir/StructureDefinition/\([^']*\)'|'https://hl7.org/fhir/R4/\1.html'|g" *.html

# Double-quoted href with &amp; (HTML entity)
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&amp;canonical=http://hl7.org/fhir/StructureDefinition/\([^\"]*\)|https://hl7.org/fhir/R4/\1.html|g" *.html

# Also fix FHIR ValueSet canonical references
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&canonical=http://hl7.org/fhir/ValueSet/\([^']*\)'|'https://hl7.org/fhir/R4/valueset-\1.html'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&amp;canonical=http://hl7.org/fhir/ValueSet/\([^\"]*\)|https://hl7.org/fhir/R4/valueset-\1.html|g" *.html

# =============================================================================
# Step 10: Fix MII Seltene profile canonical links (canonical box)
# =============================================================================
echo "10. Fixing MII Seltene profile canonical links..."

# Convert relative /resolve? to https://simplifier.net/resolve? with fhirVersion
# Single-quoted href with regular &
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@\([^&]*\)&canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/[^']*\)'|'https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@\1\&canonical=\2\&fhirVersion=R4'|g" *.html

# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@\([^&]*\)&amp;canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/[^\"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@\1\&amp;canonical=\2\&amp;fhirVersion=R4|g" *.html

# =============================================================================
# Step 11: Fix MII Core module canonical links
# =============================================================================
echo "11. Fixing MII Core module canonical links..."

# MII Diagnose -> kerndatensatz.base package
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json|g" *.html

# MII Prozedur -> kerndatensatz.base package
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json|g" *.html

# MII Medikation -> kerndatensatz.medikation package
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.seltene@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/\([^']*\)'|'https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/\1\&fhirVersion=R4'|g" *.html

# =============================================================================
# Step 12: Fix internal ValueSet references -> Simplifier resolve (with scope)
# =============================================================================
echo "12. Fixing internal ValueSet references..."

# Generic pattern: artifacts/package/ValueSet-mii-vs-seltene-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/ValueSet-\(mii-vs-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/ValueSet-\(mii-vs-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 13: Fix internal CodeSystem references -> Simplifier resolve (with scope)
# =============================================================================
echo "13. Fixing internal CodeSystem references..."

# Generic pattern: artifacts/package/CodeSystem-mii-cs-seltene-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/CodeSystem-\(mii-cs-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/CodeSystem-\(mii-cs-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 14: Fix internal Extension references -> Simplifier resolve
# =============================================================================
echo "14. Fixing internal Extension references..."

# Fallback: any remaining mii-ex-seltene extensions -> Simplifier resolve (online)
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-ex-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/\1\&fhirVersion=R4|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-ex-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.seltene@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 15: Fallback - Fix any remaining artifacts/package/ paths for profiles
# =============================================================================
echo "15. Fixing remaining artifacts/package/ paths..."

# Generic fallback: any remaining mii-pr-seltene profiles -> Simplifier resolve
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-pr-seltene-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Done
# =============================================================================
echo ""
echo "Done!"
echo ""
echo "Verify remaining resolve links:"
echo "  grep -c 'resolve?' *.html | grep -v ':0\$' | sort -t: -k2 -rn | head -10"
echo ""
echo "The remaining links should be intentional Simplifier canonical resolves."
