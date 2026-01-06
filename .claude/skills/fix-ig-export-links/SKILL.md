---
name: fix-ig-export-links
description: Fix broken Simplifier resolve links in downloaded MII Seltene Erkrankungen Implementation Guide exports. Use when downloading an IG from Simplifier and links are broken, preparing an IG export for offline use, or making links work both locally and on the official MII page.
---

# Fix IG Export Links

Fix broken `/resolve?` links in Simplifier IG exports to work offline and on official MII pages.

## Link Categories and Targets

| Category | Source Pattern | Target |
|----------|---------------|--------|
| **MII Seltene Canonical** | `/resolve?&scope=...seltene...&canonical=https://...modul-seltene/...` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **FHIR R4 Base** (Basis column) | `/resolve?&scope=...&canonical=http://hl7.org/fhir/StructureDefinition/...` | `https://hl7.org/fhir/R4/....html` |
| **FHIR R4 Core** (filepath) | `simplifier.net/resolve?...hl7.fhir.r4.core...filepath=...` | `https://hl7.org/fhir/R4/...` |
| **HL7 Terminology (THO)** | `simplifier.net/resolve?...hl7.terminology.r4...` | `https://terminology.hl7.org/...` |
| **German base profiles** | `simplifier.net/resolve?...de.basisprofil.r4...` | `https://simplifier.net/packages/de.basisprofil.r4/.../files/...` |
| **MII Base Module** | `simplifier.net/resolve?...kerndatensatz.base...` | `https://simplifier.net/packages/.../files/...` |
| **MII MolGen** | `simplifier.net/resolve?...kerndatensatz.molgen...` | `https://simplifier.net/packages/.../files/...` |
| **MII Medikation** | `simplifier.net/resolve?...kerndatensatz.medikation...` | `https://simplifier.net/packages/.../files/...` |
| **MII ICU** | `simplifier.net/resolve?...kerndatensatz.icu...` | `https://simplifier.net/packages/.../files/...` |
| **Internal Profiles** | `artifacts/package/StructureDefinition-mii-pr-seltene-*.json` | Local HTML page or Simplifier resolve |
| **Internal ValueSets** | `artifacts/package/ValueSet-mii-vs-seltene-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **Internal CodeSystems** | `artifacts/package/CodeSystem-mii-cs-seltene-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **Internal Extensions** | `artifacts/package/StructureDefinition-mii-ex-seltene-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |

## Procedure

1. Download and extract the IG ZIP from Simplifier to a working directory
2. Navigate to the extracted directory containing HTML files
3. Run the fix script:
   ```bash
   cd /path/to/extracted-ig
   bash /path/to/fix-links.sh
   ```
4. Verify remaining resolve links (should only be intentional Simplifier links):
   ```bash
   grep -c "resolve?" *.html | grep -v ":0$"
   ```

## Script Location

The fix script is located at: `.claude/skills/fix-ig-export-links/scripts/fix-links.sh`

## Package Information

- **Package Name**: `de.medizininformatikinitiative.kerndatensatz.seltene`
- **Current Version**: `2026.0.0`
- **Canonical Base**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene`
- **Guide Name**: `mii-ig-seltene-erkrankungen-v2026-de`

## Dependencies Handled

| Package | Version | Link Target |
|---------|---------|-------------|
| hl7.fhir.r4.core | 4.0.1 | hl7.org/fhir/R4/ |
| hl7.terminology.r4 | 7.0.x | terminology.hl7.org/ |
| de.basisprofil.r4 | 1.5.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.base | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.molgen | 2026.0.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.medikation | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.icu | 2025.0.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.studie | 2026.0.0-ballot | Simplifier packages |
