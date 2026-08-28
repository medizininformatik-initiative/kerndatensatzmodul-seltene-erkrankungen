<!-- TODO:REVIEW machine translation of source page release-notes.md (de) — Migration 2026-08-28, page-map.tsv -->
This page tracks the differences between versions, beginning with the differences between the ballot version and the final 2026 version.

---

### Version 2026.0.1 (patch release)

#### Dependencies

- `chore` dependency on module Studie updated from `2026.0.0-ballot` to `2026.0.2`
- `chore` dependency on module ICU updated to `2026.0.x` (resolved: `2026.0.2`)

#### Bug fixes

- `fix` ICU head circumference alias updated to the renamed profile `mii-pr-icu-muv-kopfumfang`
- `fix` correct SNOMED code for head circumference (363812007 instead of 363811000)
- `fix` SNOMED display in English (Head circumference) for validator compatibility
- `fix` FamilyMemberHistory.condition added to the penetrance extension context
- `fix` CPS version via RuleSet instead of hardcoding, SupportProfile without version suffix

#### CI/CD and tooling

- `feat` validation rules (qc/custom.rules.yaml) for resource validation added
- `feat` centralized `/build-package` command added
- `feat` FHIR restore step added to the build process
- `feat` mii-shared submodule and fix-ig-export-links skill added
- `refactor` IG pages converted to tabs format and local Studie profile removed
- `fix` terminology codes and display names in therapy examples corrected
- `fix` MII IG naming conventions applied for the 2026 release
- `fix` 'Erweiterungsmodul' replaced by 'KDS-Modul' according to MII guidelines

---

### Version 2026.0.0 (final version)

This version is the final publication of the MII Rare Diseases module after a successful ballot procedure.

#### Changes since v2026.0.0-rc.1

- `chore` all resources set to status "active"
- `refactor` Diagnose dependency replaced by the Base module for better modularity
- `chore` bake source path for package builds corrected

---

### Changes in version v2026.0.0-rc.1 (release candidate 1)

#### New features

- `feat` MetaProfile RuleSet for all example instances with versioned profile URL added
- `feat` therapy type category (causal/symptomatic) for therapy recommendations added

#### Documentation improvements

- `docs` HPO phenotyping documentation updated according to the HL7 Phenomics IG pattern (HDB-755, HDB-737)
- `docs` clarification: one FamilyMemberHistory resource per family member (HDB-750)
- `docs` rare disease definitions in the module description updated (HDB-757)
- `docs` Orpha coding → ORPHAcode coding terminology corrected (HDB-764)
- `docs` HPO vs. symptom distinction documented with the Marfan example (HDB-738)
- `docs` documentation clarifications (HDB-741, HDB-739)

#### Bug fixes

- `fix` incorrect oBDS mappings removed from the therapy plan page (HDB-751)
- `fix` incorrect oBDS mappings removed from the measurement profiles (HDB-751)
- `fix` death-by-RD extension replaced by the standard contributedToDeath element
- `fix` body measurement profiles added and validation errors fixed
- `fix` 21 SUSHI compilation errors fixed and HPO profile design improved
- `fix` 21 validation errors fixed with terminology and example corrections
- `fix` HPO assessment profile refactored according to the HL7 Phenomics IG pattern

#### Validation and quality improvements (from ballot feedback)

- `fix` SNOMED CT-based ValueSet for "affected by RD" created with codes 373066001 "Yes", 373067005 "No", 261665006 "Unknown". HL7 v2 codes retained for backwards compatibility.
- `fix` combined symptom change status ValueSet created: MVGenomSeq codes (newly-added, improved, degraded, no-longer-observed, unchanged) with SNOMED CT mapping (385425000 Improved, 231877006 Worse, 385630006 Maintained, 2667000 Absent)
- `fix` FamilyMemberHistory examples corrected: ICD-10-GM version 2004→2009, display names (Natural Mother→Natural mother), invalid code E11.X→E11.9
- `fix` invalid LOINC code 79992-2 replaced by 78176-5 "Aorta root Diameter by US 2D"
- `fix` invalid SNOMED code 249374003 "Anteverted nares" removed from the HPO observation example (HPO code HP:0000463 retained)
- `fix` patient identifier changed from `http://example.org` to `http://test-krankenhaus.de/fhir/sid/patienten`
