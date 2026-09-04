// -----------------------------------------------------------------------------
// ICF assessment of functioning and disability
//
// Origin: both the JARDIN MDS draft and the ERDRI-CDS require functioning and
// disability to be graded using the WHO International Classification of
// Functioning, Disability and Health (ICF). The MII KDS module Seltene
// Erkrankungen did not cover this at all.
// Tracking: GitHub issue #36, ballot ticket HDB-784.
//
// TERMINOLOGY, resolved against the BfArM FHIR package
// bfarm.terminologien.icf#2005.0.0 (inspected 2026-09-01):
//   * The classification itself is published under the HL7 canonical
//     http://hl7.org/fhir/sid/icf — BfArM does not mint its own URI for it.
//   * German is NOT a second code system: icf-translation is a
//     content=supplement against http://hl7.org/fhir/sid/icf|2005. One
//     canonical, both languages. Nothing here has to choose a language.
//   * The qualifiers ARE separate code systems, seven of them, published by
//     BfArM under https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-*.
//   * The separator carries meaning and BfArM put it INTO the codes: extent of
//     impairment is ".0".."./4", ".8", ".9", while facilitators are "+0".."+4".
//     A barrier and a facilitator are therefore distinguished by the code
//     itself, not by a sign that a parser has to reconstruct.
//
// WHY COMPONENTS AND NOT value[x]: the number of qualifiers per ICF chapter
// differs, so a single value cannot carry them.
//     body functions (b)              1 qualifier   extent of impairment
//     body structures (s)             3 qualifiers  extent, nature, location
//     activities/participation (d)    2 qualifiers  CAPACITY and PERFORMANCE
//     environmental factors (e)       barrier or facilitator
// The distinction between capacity (what someone can do under test conditions)
// and performance (what they actually do in their environment) is the heart of
// the ICF and is frequently the whole point in rare disease. Both share one
// BfArM code system, so they are told apart by the component code, not by the
// value system. value[x] is therefore closed off (0..0).
//
// OPEN — HOW THE PACKAGE REACHES THE BUILD (module owner):
// bfarm.terminologien.icf is NOT on packages.simplifier.net or
// packages.fhir.org. BfArM runs its own registry at
// https://terminologien.bfarm.de/packages, but a download from it answers
// "Unauthorized" without an FPL_REGISTRY_TOKEN, and FPL_REGISTRY REPLACES the
// default registry rather than adding to it, so every other dependency fails
// when it is set. The package therefore cannot simply be added to
// sushi-config.yaml. Options are to vendor the seven qualifier code systems
// (7-10 concepts each) as predefined resources, or to install the package into
// the CI cache from a committed archive. Until that is decided the bindings
// below name the correct canonical URIs but may not resolve in the build.
//
// OPEN — WHICH EDITION: BfArM ships release 2005 with 1495 concepts;
// tx.fhir.org serves 2017a under the SAME canonical URI, and an expansion there
// returned 1616 concepts. Same URI, roughly 120 concepts apart. A required
// binding must not straddle both silently, so the edition needs pinning.
//
// OWNERSHIP — deliberately here, but not self-evident:
// This data point is NOT specific to rare diseases. Functioning and disability
// are graded for stroke, oncology and geriatric patients alike; the ICF is a
// WHO classification for the whole of health, not for one indication.
//
// It is modelled here because the need arose here and is concrete: the JARDIN
// MDS draft is the data requirement of a European reference network with a
// deadline, not a wish list, and no connected MII module covers it.
//
// That leaves the ownership question open rather than answered. The same
// weighing came out differently for sex at birth (issue #34, HDB-782): there,
// HL7 Gender Harmony already provided the standard and MII_PR_Person_Patient
// already provided the place, so the point was referred to the base module
// instead of modelled here. For this one, neither existed. Should a more
// general module take it on, it belongs there.
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// Which qualifiers may appear is decided by the ICF chapter, and the chapter is
// the first letter of the code. Without these constraints the profile would
// happily accept an anatomical location on a body FUNCTION, which the ICF does
// not define. Note the ICF's own ordering convention for chapter d: the FIRST
// qualifier is performance, the SECOND is capacity — the slice order below is
// alphabetical and carries no meaning.
//
// Written as explicit != chains rather than with subsetOf(): the validator
// rejects a String collection there ("The parameter type System.String is not
// legal for subsetOf"). SUSHI does not evaluate FHIRPath, so the first version
// passed the build and failed only in the IG Publisher — mii-icf-1 always
// worked because it already used this form.
// -----------------------------------------------------------------------------
Invariant:   mii-icf-1
Description: "Body functions (chapter b) take only the extent-of-impairment qualifier."
Severity:    #error
Expression:  "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('b') implies component.where(code.coding.code != 'extent-of-impairment').empty()"

Invariant:   mii-icf-2
Description: "Body structures (chapter s) take only extent, nature of change and anatomical location."
Severity:    #error
Expression:  "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('s') implies component.where(code.coding.code != 'extent-of-impairment-structure' and code.coding.code != 'nature-of-change' and code.coding.code != 'anatomical-location').empty()"

Invariant:   mii-icf-3
Description: "Activities and participation (chapter d) take only capacity and performance."
Severity:    #error
Expression:  "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('d') implies component.where(code.coding.code != 'capacity' and code.coding.code != 'performance').empty()"

Invariant:   mii-icf-4
Description: "Environmental factors (chapter e) take only the barrier or facilitator qualifier."
Severity:    #error
Expression:  "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('e') implies component.where(code.coding.code != 'barrier' and code.coding.code != 'facilitator').empty()"

Invariant:   mii-icf-5
Description: "An environmental factor is graded as a barrier or as a facilitator, not as both at once."
Severity:    #error
Expression:  "component.where(code.coding.code = 'barrier').empty() or component.where(code.coding.code = 'facilitator').empty()"

Profile:     MII_PR_Seltene_ICFAssessment
Id:          mii-pr-seltene-icf-assessment
Parent:      Observation
Title:       "MII PR SE ICF Assessment"
Description: "Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance)."
* insert PR_CS_VS_Version
* insert Publisher
* obeys mii-icf-1 and mii-icf-2 and mii-icf-3 and mii-icf-4 and mii-icf-5

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
* code ^definition = "A single ICF category, e.g. b280 |Sensation of pain| or d450 |Walking|. The chapters are b (body functions), s (body structures), d (activities and participation) and e (environmental factors). German display text is available through the BfArM language supplement without changing the code system."

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x] ^short = "When the assessment was made — ICF gradings are point-in-time and change over the course of a disease"

// Qualifiers live in components, never here. See the header for why.
* value[x] 0..0

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "One slice per ICF qualifier. Which ones apply depends on the chapter of the category in Observation.code."
* component contains
    extentOfImpairment 0..1 MS and
    extentOfImpairmentBodyStructure 0..1 MS and
    natureOfChange 0..1 MS and
    anatomicalLocation 0..1 MS and
    capacity 0..1 MS and
    performance 0..1 MS and
    barrier 0..1 MS and
    facilitator 0..1 MS

* component[extentOfImpairment].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#extent-of-impairment
* component[extentOfImpairment].value[x] only CodeableConcept
* component[extentOfImpairment].valueCodeableConcept from $icf-q-ausmass (required)
* component[extentOfImpairment] ^short = "Body functions (b): extent of impairment"

* component[extentOfImpairmentBodyStructure].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#extent-of-impairment-structure
* component[extentOfImpairmentBodyStructure].value[x] only CodeableConcept
* component[extentOfImpairmentBodyStructure].valueCodeableConcept from $icf-q-ausmass-s (required)
* component[extentOfImpairmentBodyStructure] ^short = "Body structures (s), first qualifier: extent of impairment"
* component[extentOfImpairmentBodyStructure] ^comment = "BfArM publishes a separate code system for body structures even though the scale reads the same as for body functions. The two are kept apart here rather than merged, so that an instance stays valid against the source terminology."

* component[natureOfChange].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#nature-of-change
* component[natureOfChange].value[x] only CodeableConcept
* component[natureOfChange].valueCodeableConcept from $icf-q-art (required)
* component[natureOfChange] ^short = "Body structures (s), second qualifier: nature of the change"

* component[anatomicalLocation].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#anatomical-location
* component[anatomicalLocation].value[x] only CodeableConcept
* component[anatomicalLocation].valueCodeableConcept from $icf-q-lokalisation (required)
* component[anatomicalLocation] ^short = "Body structures (s), third qualifier: anatomical location"
* component[anatomicalLocation] ^comment = "The ICF marks this third qualifier as still under development ('in Entwicklung')."

* component[capacity].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#capacity
* component[capacity].value[x] only CodeableConcept
* component[capacity].valueCodeableConcept from $icf-q-leistung (required)
* component[capacity] ^short = "Activities and participation (d): CAPACITY — what the person can do in a standardised environment"

* component[performance].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#performance
* component[performance].value[x] only CodeableConcept
* component[performance].valueCodeableConcept from $icf-q-leistung (required)
* component[performance] ^short = "Activities and participation (d): PERFORMANCE — what the person actually does in their current environment"
* component[performance] ^comment = "Capacity and performance draw on the same BfArM code system and are distinguished only by this component code. The gap between them is what quantifies the effect of assistive devices and personal assistance."

* component[barrier].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#barrier
* component[barrier].value[x] only CodeableConcept
* component[barrier].valueCodeableConcept from $icf-q-barrieren (required)
* component[barrier] ^short = "Environmental factors (e): extent to which the factor acts as a barrier"

* component[facilitator].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#facilitator
* component[facilitator].value[x] only CodeableConcept
* component[facilitator].valueCodeableConcept from $icf-q-foerderfaktoren (required)
* component[facilitator] ^short = "Environmental factors (e): extent to which the factor acts as a facilitator"
* component[facilitator] ^comment = "Facilitator codes carry a leading '+' ('+0'..'+4'), barriers a leading '.'. The sign is part of the code, so barrier and facilitator never collide."

* performer MS
* note MS


CodeSystem:  MII_CS_Seltene_ICFBeurteilungsmerkmal
Id:          mii-cs-seltene-icf-beurteilungsmerkmal
Title:       "MII CS SE ICF Qualifier Kind"
Description: "Names which ICF qualifier a component carries. This is a slot name, not a scale — the scales themselves are the seven BfArM code systems. Defined locally because neither the ICF nor BfArM publishes identifiers for the qualifier positions, and because capacity and performance share one scale and can only be told apart here."
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^count = 8

* #extent-of-impairment "Extent of impairment (body functions)" "First and only qualifier of chapter b."
* #extent-of-impairment-structure "Extent of impairment (body structures)" "First qualifier of chapter s."
* #nature-of-change "Nature of change (body structures)" "Second qualifier of chapter s."
* #anatomical-location "Anatomical location (body structures)" "Third qualifier of chapter s; marked by the ICF as still under development."
* #capacity "Capacity" "What the person can do in a standardised environment, chapter d."
* #performance "Performance" "What the person actually does in their current environment, chapter d."
* #barrier "Barrier" "Extent to which an environmental factor hinders, chapter e."
* #facilitator "Facilitator" "Extent to which an environmental factor helps, chapter e."


ValueSet:    MII_VS_Seltene_ICFBeurteilungsmerkmal
Id:          mii-vs-seltene-icf-beurteilungsmerkmal
Title:       "MII VS SE ICF Qualifier Kind"
Description: "All qualifier kinds usable as a component code in the ICF assessment profile."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf-beurteilungsmerkmal"
* ^status = #active
* ^experimental = false
* include codes from system MII_CS_Seltene_ICFBeurteilungsmerkmal


ValueSet:    MII_VS_Seltene_ICF
Id:          mii-vs-seltene-icf
Title:       "MII VS SE ICF Categories"
Description: "All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf"
* ^status = #active
* ^experimental = false
* include codes from system $icf


// Ergaenzt 2026-09-04: Mapping auf das Logical Model. Das Profil bestand seit
// 2026-09-02 ohne Gegenstueck im Datenmodell — die Elemente sind mit diesem
// Commit dort nachgetragen worden.
Mapping:     SE-LogicalModel-ICFAssessment
Id:          SE-LogicalModel
Title:       "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source:      MII_PR_Seltene_ICFAssessment
Target:      "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* code -> "funktionsfaehigkeit.icfCode" "ICF-Code"
* component.value[x] -> "funktionsfaehigkeit.beurteilungsmerkmal" "WHO-Qualifier zum ICF-Kode"
* effective[x] -> "funktionsfaehigkeit.erhebungsdatum" "Erhebungsdatum"
