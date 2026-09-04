Profile:     MII_PR_Seltene_Blutgruppe
Id:          mii-pr-seltene-blutgruppe
Parent:      Observation
Title:       "MII PR SE Blutgruppe"
Description: "Observation-Profil für die Erfassung der Blutgruppe (AB0 und Rhesusfaktor) im Kontext seltener Erkrankungen"
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
* category contains laboratory 1..1 MS
* category[laboratory] = $observation-category#laboratory

* code MS
* code ^short = "Blutgruppe Code"
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    loinc-abo-rh 0..1 MS and
    loinc-abo 0..1 MS
* code.coding[loinc-abo-rh] = $LNC#882-1 "ABO and Rh group [Type] in Blood"
* code.coding[loinc-abo-rh] ^short = "AB0 und Rhesusfaktor"
* code.coding[loinc-abo] = $LNC#883-9 "ABO group [Type] in Blood"
* code.coding[loinc-abo] ^short = "AB0 Blutgruppe"

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime or Period
* effectiveDateTime MS
* effectivePeriod MS

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from MII_VS_Seltene_Blutgruppe (required)
// Discriminator auf #value/system statt #pattern/$this (GitHub-Issue #25).
// Die Slices unterscheiden sich ausschliesslich durch ihr Codesystem und setzen
// dafuer .system — das erzeugt ein patternUri auf dem Kindelement, KEIN
// patternCoding auf dem Coding selbst. Ein Discriminator vom Typ #pattern auf
// $this sucht aber genau dort und findet nichts, daher
// "Slicing cannot be evaluated: Could not match discriminator ($this)".
// Gegenprobe in derselben Datei: code.coding weiter oben wird per
// "* code.coding[loinc-abo-rh] = $LNC#882-1" als ganzes Coding zugewiesen,
// bekommt dadurch ein echtes patternCoding und validiert mit #pattern/$this.
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains 
    loinc 0..1 MS and
    snomed 0..1 MS
* valueCodeableConcept.coding[loinc] from MII_VS_Seltene_Blutgruppe (required)
* valueCodeableConcept.coding[loinc].system = "http://loinc.org"
* valueCodeableConcept.coding[snomed] from MII_VS_Seltene_Blutgruppe (required)
* valueCodeableConcept.coding[snomed].system = "http://snomed.info/sct"
* valueCodeableConcept.text MS

// Mapping to Logical Model
Mapping: FHIR-SE-Blutgruppe
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Blutgruppe
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/mii-lm-seltene"
* -> "koerperlicheUntersuchung.blutgruppe" "Blutgruppe"
* valueCodeableConcept -> "koerperlicheUntersuchung.blutgruppe" "Blutgruppe"
* valueCodeableConcept.coding[loinc] -> "koerperlicheUntersuchung.blutgruppe" "Blutgruppe (LOINC)"
* valueCodeableConcept.coding[snomed] -> "koerperlicheUntersuchung.blutgruppe" "Blutgruppe (SNOMED CT)"
* valueCodeableConcept.text -> "koerperlicheUntersuchung.blutgruppe" "Blutgruppe (Text)"
* effectiveDateTime -> "Datum der Blutgruppenbestimmung" "Bestimmungsdatum"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
* code -> "Art der Blutgruppenbestimmung" "882-1 für AB0+Rh oder 883-9 für nur AB0"
