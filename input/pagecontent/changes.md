<!-- TODO:REVIEW machine translation of source page release-notes.md (de) — Migration 2026-08-28, page-map.tsv -->
This page tracks the differences between versions, beginning with the differences between the ballot version and the final 2026 version.

---

### Version 2027.0.0-ballot

#### Breaking changes

- `remove` extension `mii-ex-seltene-empfehlung-evidenzgraduierung` removed from this module, along with its use in the three Therapieempfehlung profiles. It was a copy of the MTB module's extension and was never finished: its `system` discriminator carried no value, so the mandatory `Evidenzgrad 1..1` slice could not be satisfied by any instance — the extension shipped in 2026.0.1 but was unusable, and no example ever used it. Which evidence scale applies is tracked in ballot ticket HDB-543 and is framed in oncological terms (NCT m1A–m4, ESMO, ASCO); the question was never answered for rare diseases. Rather than importing a tumour scale, the topic stays with the MTB module. Removal is therefore not expected to affect any conformant implementation

#### Bug fixes

- `fix` value set `mii-vs-seltene-penetrance` corrected — three of four codes were wrong (issue #31). `HP:0025169`, published as "Complete penetrance", is in fact *Left ventricular systolic dysfunction*, and is replaced by `HP:0034950`. `HP:0003828`, published as "Variable penetrance", is *Variable expressivity* — a different concept — and is dropped; the graded terms `HP:4000158/59/60` (high/moderate/low) now provide that dimension. `HP:0003829` carried an outdated display. All codes verified against the HPO API. Note that the graded terms are subtypes of *incomplete* penetrance, not alternatives to complete penetrance
- `fix` slicing discriminator on `mii-pr-seltene-blutgruppe` `value[x].coding` changed from `#pattern`/`$this` to `#value`/`system` (issue #25). The slices differ only by code system and set `.system`, which yields a `patternUri` on the child element rather than a `patternCoding` on the coding itself, so the discriminator had nothing to match
- `fix` same defect repaired on `category` in `mii-pr-seltene-therapieempfehlung` and `mii-pr-seltene-therapieempfehlung-nicht-medikamentoes` (found by an audit, not previously reported). Both slices were distinguished solely by a required binding to different value sets, which no FHIR R4 discriminator can evaluate; `coding.system` is now pinned per slice

#### Governance

- `chore` licence declared as `CC-BY-4.0` at IG level (Gate A decision). The module previously declared no licence anywhere in `sushi-config.yaml`, `package.json` or a LICENSE file; the artefact level already applied CC-BY-4.0 through `LicenseCodeableCCBY40`

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
