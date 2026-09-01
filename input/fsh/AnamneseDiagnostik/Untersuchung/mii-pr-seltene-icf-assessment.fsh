// -----------------------------------------------------------------------------
// ICF assessment of functioning and disability
//
// Origin: both the JARDIN MDS draft and the ERDRI-CDS require functioning and
// disability to be graded using the WHO International Classification of
// Functioning, Disability and Health (ICF). The MII KDS module Seltene
// Erkrankungen did not cover this at all.
// Tracking: GitHub issue #36, ballot ticket HDB-784.
//
// Kept in English deliberately: ICF is published by the WHO in English, the
// content available on the terminology server is the English 2017a release, and
// the qualifier wording below is quoted from the WHO scale. Translating the
// qualifier definitions would create a second, unauthorised German scale.
//
// TERMINOLOGY FINDINGS (verified 2026-09-01):
//   * The canonical system is http://hl7.org/fhir/sid/icf. HL7 Terminology 7.3.0
//     carries only a NamingSystem entry for it, NOT a CodeSystem — so the URI is
//     registered but the content is not shipped with the dependency.
//   * tx.fhir.org does resolve the content: $lookup on b280 returns
//     "Sensation of pain", CodeSystem name ICF2017a, version 2017a.
//   * ICF qualifiers are NOT codes in the ICF system. A $lookup on "b280.2"
//     fails, because the ".2" is a separate generic scale that WHO appends to a
//     category rather than a distinct concept. This is why the qualifier cannot
//     go into Observation.code and is modelled as Observation.value instead,
//     against the local CodeSystem below.
//
// OPEN DECISION — WHICH ICF EDITION, AND WHOSE (module owner, 2026-09-01):
// BfArM publishes ICF on terminologien.bfarm.de, in German and English, split
// into SEVEN code systems that include the qualifier scales (impairment extent
// for body functions, anatomical location and type of change for body
// structures, performance and capacity for activities and participation,
// barriers and facilitators for environmental factors). Two consequences:
//   1. The BfArM edition is the 2005 release; the content resolvable on
//      tx.fhir.org is 2017a. These are different editions of the classification,
//      and a required binding must not straddle them silently.
//   2. If BfArM ships qualifier code systems, the local qualifier CodeSystem
//      below is a duplicate and should give way to them.
// The German base profiles (de.basisprofil.r4 1.5.4) define canonical URIs for
// ICD-10-GM, OPS, Alpha-ID and ATC but NONE for ICF — so there is no established
// German canonical to adopt, and BfArM's own server does not expose a
// standards-conformant FHIR endpoint from which one could be read (probed
// 2026-09-01: /fhir/r4/metadata answers 400). Until that is settled, this file
// binds to the registered HL7 URI and keeps the qualifier scale local. Both the
// system URI and the qualifier CodeSystem are therefore PROVISIONAL.
// -----------------------------------------------------------------------------

Profile:     MII_PR_Seltene_ICFAssessment
Id:          mii-pr-seltene-icf-assessment
Parent:      Observation
Title:       "MII PR SE ICF Assessment"
Description: "Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category (body function, body structure, activity/participation or environmental factor); Observation.value carries the WHO generic qualifier, which is not itself an ICF code."
* insert PR_CS_VS_Version
* insert Publisher

* id MS
* meta MS
* meta.profile MS

* status MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1 MS
* category[survey] = $observation-category#survey
* category[survey] ^short = "Category: survey/assessment"

* code MS
* code.coding MS
* code.coding from MII_VS_Seltene_ICF (required)
* code.coding.system = $icf
* code ^short = "ICF category being graded"
* code ^definition = "A single ICF category, e.g. b280 |Sensation of pain| or d450 |Walking|. The ICF chapters are b (body functions), s (body structures), d (activities and participation) and e (environmental factors)."

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x] ^short = "When the assessment was made — ICF gradings are point-in-time and change over the course of a disease"

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from MII_VS_Seltene_ICFQualifier (required)
* valueCodeableConcept ^short = "WHO generic qualifier 0-4, 8 or 9"
* valueCodeableConcept ^definition = "The extent of the problem for the ICF category in Observation.code, expressed on the WHO generic qualifier scale. Note that this is not an ICF code: WHO appends the qualifier to the category (b280.2), but '.2' has no separate identity in the classification."

* performer MS
* note MS


CodeSystem:  MII_CS_Seltene_ICFQualifier
Id:          mii-cs-seltene-icf-qualifier
Title:       "MII CS SE ICF Generic Qualifier"
Description: "The WHO generic qualifier scale used with ICF categories. Defined locally because the qualifiers are not concepts in the ICF classification itself — WHO specifies them as a scale appended to a category. Wording and percentage ranges are quoted from the ICF."
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-qualifier"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^count = 7

* #0 "NO problem" "No problem (none, absent, negligible) — 0-4 %"
* #1 "MILD problem" "Mild problem (slight, low) — 5-24 %"
* #2 "MODERATE problem" "Moderate problem (medium, fair) — 25-49 %"
* #3 "SEVERE problem" "Severe problem (high, extreme) — 50-95 %"
* #4 "COMPLETE problem" "Complete problem (total) — 96-100 %"
* #8 "not specified" "Insufficient information to specify the severity of the problem."
* #9 "not applicable" "The category is not applicable to this person."


ValueSet:    MII_VS_Seltene_ICFQualifier
Id:          mii-vs-seltene-icf-qualifier
Title:       "MII VS SE ICF Generic Qualifier"
Description: "The full WHO generic qualifier scale (0-4, 8, 9) for grading an ICF category."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf-qualifier"
* ^status = #active
* ^experimental = false
* include codes from system MII_CS_Seltene_ICFQualifier


ValueSet:    MII_VS_Seltene_ICF
Id:          mii-vs-seltene-icf
Title:       "MII VS SE ICF Categories"
Description: "All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. Note that the content is not shipped by HL7 Terminology — it resolves against a terminology server that carries ICF (verified against tx.fhir.org, release 2017a)."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf"
* ^status = #active
* ^experimental = false
* include codes from system $icf
