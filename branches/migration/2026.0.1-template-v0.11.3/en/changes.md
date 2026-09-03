# Changelog - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

This page tracks the differences between versions, beginning with the differences between the ballot version and the final 2026 version.

-------

### Version 2027.0.0-ballot

#### New features

* `feat` **JARDIN data points** from the comparison of the European minimum data set with this module (issues #35, #36, #38). All three are concrete data requirements of a European reference network, and none of them is specific to rare diseases — the profiles say so in their own header comments 
* `feat` pre-/perinatal data: `mii-pr-seltene-gestationsalter`, `mii-pr-seltene-geburtsgewicht`, `mii-pr-seltene-geburtslaenge`. No connected MII module covered them; multiple births and prenatally diagnosed malformations were deliberately **not** profiled, because `Patient.multipleBirth[x]` and the existing Condition profiles with HPO onset already carry them
* `feat` `mii-pr-seltene-icf-assessment` with a code system and value sets for the qualifiers. The WHO qualifiers live in `component`, not in `value[x]`, because their number differs per ICF chapter — body structures take three, activities and participation take two (capacity **and** performance). Five invariants enforce chapter coherence
* `feat` `mii-pr-seltene-registerteilnahme` for participation in ERN registries, derived from `ResearchSubject`
 
* `feat` **Consanguinity** (`mii-pr-seltene-consanguinity`) with value set — parental consanguinity per RD-CDM v2.0.0 §6.4.4 (issue #37)
* `feat` **Newborn screening**: seven value sets, five derived from the LOINC-SNOMED ontology via ECL, one curated against the G-BA Kinder-Richtlinie and one defined intensionally over LOINC's own `SYSTEM` property (608 dried blood spot codes), plus a dedicated terminology page
* `feat` logical model `mii-lm-seltene` back in the build and rendered in full as a table on the data set page
* `feat` 13 new example instances, anchored on the existing SMA case example

#### Breaking changes

* `remove` extension `mii-ex-seltene-empfehlung-evidenzgraduierung` removed, along with its use in the three Therapieempfehlung profiles. It was a copy from the MTB module whose `system` discriminator never carried a value — the mandatory `Evidenzgrad 1..1` slice could not be satisfied by any instance. Published but unusable, and used by no example. Which evidence scale applies is tracked in ballot ticket HDB-543 and framed in oncological terms; for rare diseases it was never answered
* `remove` six extensions removed that were **never wired into any profile**: `mii-ex-seltene-age-of-onset`, `mii-ex-seltene-genetic-basis`, `mii-ex-seltene-inheritance-pattern`, `mii-ext-seltene-onset-age`, `mii-ext-seltene-phenotypic-pattern`, `mii-ext-seltene-syndrome-category`. The git history contains no commit that took any of them into a profile via `named`; they were published in 2026.0.1 nonetheless. `age-of-onset` and `onset-age` were also the same concept under two ids — created on 2025-07-31 and 2025-08-07, a week apart, the second batch recreating the first under the `mii-ex-` convention without removing it. Eleven extensions become five, and all five are in use. Their value sets remain, being useful on their own
* `change` element names of the logical model moved to lowerCamelCase. PascalCase violates the FHIR rule `eld-20` and produced 195 warnings. 62 segment names renamed with acronyms handled correctly (`HPOTerm` → `hpoTerm`, `BMI` → `bmi`), and the 90 mapping targets in 11 profiles moved with them. **Element paths therefore changed**
* `change` codes of `mii-pr-seltene-taillenumfang` (LOINC `8280-0` → SNOMED `276361009`) and `mii-pr-seltene-hueftumfang` (LOINC `56063-1` → SNOMED `284472007`). **Consumers querying by the old codes will no longer match**
* `change` extension `von-seltene-betroffen` renamed to `mii-ex-von-se-betroffen`. It was the only extension without a prefix and followed neither of the two conventions present in the module. Since no `^url` was set, SUSHI derives the canonical from the id — **so the canonical changes with it**. Its value set keeps `von-seltene-betroffen-vs` for now, as it carries an explicit `^url`
* `change` example instance `example` renamed to `mii-exa-seltene-patient`, profiled on `MII_PR_Person_Patient`

#### Bug fixes

* `fix` **the waist circumference profile carried a code for the abdominal circumference.** LOINC offers waist circumference only measured **at the umbilicus** (`8280-0`, `8281-8`) — the landmark of the abdominal circumference, not the waist, which is defined at the narrowest point or at the midpoint between the lowest rib and the iliac crest. The profile therefore said something other than its name. SNOMED separates the two; `1162535003` and `1162536002` remain available for a landmark-specific statement. This matters because the module models a waist-to-hip ratio: using the abdominal circumference as the numerator yields a wrong ratio
* `fix` the logical model gained a `taillenumfang` element. It knew only `bauchumfang`, so the waist circumference profile mapped onto the abdominal circumference
* `fix` the (commented-out) profile `mii-pr-seltene-waist-to-hip-ratio` carried LOINC `8280-0`, wrong twice over — the circumference instead of the ratio, and the same code as the waist profile. Corrected to SNOMED `248367009 |Waist/hip ratio|`. The profile remains inactive; that the ratio of all things is commented out explains why the confusion went unnoticed for so long
* `remove` value set `mii-vs-seltene-clinical-diagnosis-category` set to `retired`. It had never been bound since 2025-08-07; the attempt to fix that revealed two things. First, four of its eight codes were wrong or non-existent — `363358000` stood for "Clinical finding" and is **Malignant neoplasm of lung**, `47367009` stood for "Syndrome" and is **Exocrine pancreatic insufficiency**, `84757009` stood for "Rare disease" and is **Epilepsy**, `381406004` does not exist. Second, and decisively: **it answers the wrong question.** `Condition.category` denotes the role a condition plays in the record — its short text reads `problem-list-item | encounter-diagnosis` — not the kind of disease. After correcting the codes, what remained were three tautologies and three disease classifications that belong in `Condition.code`. Retired rather than deleted: the URL is published and stays resolvable
* `fix` **systematic verification of every enumerated value set code** against the terminology server and the HPO API (`scripts/verify-valueset-codes.py`). It surfaced two further damaged value sets. 
* `fix` `mii-vs-seltene-hpo-age-of-onset`: four codes were systematically shifted. `HP:0003596` stood for "Neonatal onset" and means **Middle age onset** — in this module the inversion of the statement; neonatal onset is `HP:0003623`. Likewise `HP:0025708`, `HP:0034198` and `HP:0034199`; fetal and embryonal onset are `HP:0011461` and `HP:0011460`
* `fix` `mii-vs-seltene-hpo-inheritance-pattern`: four displays corrected, among them `HP:0001428` ("Somatic mutation" → **Typified by somatic mosaicism**) and `HP:0001426` ("Multifactorial inheritance" → **Non-Mendelian inheritance**; HPO has no "Multifactorial inheritance" concept)
* `fix` `mii-vs-seltene-syndrome-category`: `32895009` carried the outdated display "Genetic disorder" instead of **Hereditary disease** — the same thing the IG Publisher had flagged. `371097004` and `254829008` do not exist; the intended concepts are `5294002` and `362975008`
 
* `remove` value set `mii-vs-seltene-genetic-basis` set to `retired`. **Of nine SNOMED codes, one was correct.** `16402000` stood for "Mitochondrial disorder" and is **Sickle cell trait**, `416010008` stood for "Disorder due to uniparental disomy" and is **Hypospadias**, three others do not exist at all. This cannot be repaired, only rebuilt; the extension that bound it was removed the same day
* `fix` value set `mii-vs-seltene-penetrance` corrected — three of four codes were wrong (issue #31). `HP:0025169`, published as "Complete penetrance", is **Left ventricular systolic dysfunction**; `HP:0003828`, published as "Variable penetrance", is **Variable expressivity**. All codes verified against the HPO API. Note that the graded terms are subtypes of **incomplete** penetrance
* `fix` slicing discriminators on `mii-pr-seltene-blutgruppe` and on `category` in both Therapieempfehlung profiles. The slices differed only by `.system` or by a required binding — neither is something the discriminator in place could evaluate
* `fix` logical model reactivated; its canonical is the target of the mapping every profile carries, so 22 unresolvable links disappear
* `fix` 31 mapping targets pointed at elements that do not exist, and the targets for `valueQuantity.value` and `effectiveDateTime` pointed at the backbone element instead of the value or the date. All 102 now resolve
* `fix` the logical model gained `familienanamnese.todDurchSE` and `familienanamnese.dokumentationsdatum` — both data points are carried by the family history profile, the model did not define them
* `fix` five references to `Patient/example-patient`, an instance that was never defined

#### Documentation

* `docs` the clinical-versus-genetic diagnosis guide now shows three diagrams instead of FSH blocks (structural comparison, parallel model, decision tree). The previous `plantuml` block was never rendered and was syntactically broken besides; the English version had no decision tree at all
* `docs` the data set page renders the logical model as a table of 71 data elements, generated by `scripts/generate-lm-table.py`
* `docs` new page on newborn screening

#### Governance

* `chore` licence declared as `CC-BY-4.0` at IG level (Gate A decision). The module previously declared no licence anywhere in `sushi-config.yaml`, `package.json` or a LICENSE file; the artefact level already applied CC-BY-4.0 through `LicenseCodeableCCBY40`

-------

### Version 2026.0.1 (patch release)

#### Dependencies

* `chore` dependency on module Studie updated from `2026.0.0-ballot` to `2026.0.2`
* `chore` dependency on module ICU updated to `2026.0.x` (resolved: `2026.0.2`)

#### Bug fixes

* `fix` ICU head circumference alias updated to the renamed profile `mii-pr-icu-muv-kopfumfang`
* `fix` correct SNOMED code for head circumference (363812007 instead of 363811000)
* `fix` SNOMED display in English (Head circumference) for validator compatibility
* `fix` FamilyMemberHistory.condition added to the penetrance extension context
* `fix` CPS version via RuleSet instead of hardcoding, SupportProfile without version suffix

#### CI/CD and tooling

* `feat` validation rules (qc/custom.rules.yaml) for resource validation added
* `feat` centralized `/build-package` command added
* `feat` FHIR restore step added to the build process
* `feat` mii-shared submodule and fix-ig-export-links skill added
* `refactor` IG pages converted to tabs format and local Studie profile removed
* `fix` terminology codes and display names in therapy examples corrected
* `fix` MII IG naming conventions applied for the 2026 release
* `fix` 'Erweiterungsmodul' replaced by 'KDS-Modul' according to MII guidelines

-------

### Version 2026.0.0 (final version)

This version is the final publication of the MII Rare Diseases module after a successful ballot procedure.

#### Changes since v2026.0.0-rc.1

* `chore` all resources set to status "active"
* `refactor` Diagnose dependency replaced by the Base module for better modularity
* `chore` bake source path for package builds corrected

-------

### Changes in version v2026.0.0-rc.1 (release candidate 1)

#### New features

* `feat` MetaProfile RuleSet for all example instances with versioned profile URL added
* `feat` therapy type category (causal/symptomatic) for therapy recommendations added

#### Documentation improvements

* `docs` HPO phenotyping documentation updated according to the HL7 Phenomics IG pattern (HDB-755, HDB-737)
* `docs` clarification: one FamilyMemberHistory resource per family member (HDB-750)
* `docs` rare disease definitions in the module description updated (HDB-757)
* `docs` Orpha coding → ORPHAcode coding terminology corrected (HDB-764)
* `docs` HPO vs. symptom distinction documented with the Marfan example (HDB-738)
* `docs` documentation clarifications (HDB-741, HDB-739)

#### Bug fixes

* `fix` incorrect oBDS mappings removed from the therapy plan page (HDB-751)
* `fix` incorrect oBDS mappings removed from the measurement profiles (HDB-751)
* `fix` death-by-RD extension replaced by the standard contributedToDeath element
* `fix` body measurement profiles added and validation errors fixed
* `fix` 21 SUSHI compilation errors fixed and HPO profile design improved
* `fix` 21 validation errors fixed with terminology and example corrections
* `fix` HPO assessment profile refactored according to the HL7 Phenomics IG pattern

#### Validation and quality improvements (from ballot feedback)

* `fix` SNOMED CT-based ValueSet for "affected by RD" created with codes 373066001 "Yes", 373067005 "No", 261665006 "Unknown". HL7 v2 codes retained for backwards compatibility.
* `fix` combined symptom change status ValueSet created: MVGenomSeq codes (newly-added, improved, degraded, no-longer-observed, unchanged) with SNOMED CT mapping (385425000 Improved, 231877006 Worse, 385630006 Maintained, 2667000 Absent)
* `fix` FamilyMemberHistory examples corrected: ICD-10-GM version 2004→2009, display names (Natural Mother→Natural mother), invalid code E11.X→E11.9
* `fix` invalid LOINC code 79992-2 replaced by 78176-5 "Aorta root Diameter by US 2D"
* `fix` invalid SNOMED code 249374003 "Anteverted nares" removed from the HPO observation example (HPO code HP:0000463 retained)
* `fix` patient identifier changed from `http://example.org` to `http://test-krankenhaus.de/fhir/sid/patienten`

