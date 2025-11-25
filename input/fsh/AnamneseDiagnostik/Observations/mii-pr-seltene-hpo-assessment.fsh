Profile:     MII_PR_Seltene_HPO_Assessment
Id:          mii-pr-seltene-hpo-assessment
Parent:      Observation
Title:       "MII Profile SE HPO Assessment"
Description: "Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* code MS
* code from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* code ^short = "HPO-phänotypischer Beobachtungscode"
* code ^definition = "Code aus der Human Phenotype Ontology zur Beschreibung der phänotypischen Anomalie"

* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient mit der phänotypischen Anomalie"

* status MS

* encounter MS
* encounter ^short = "Gesundheitskontakt, bei dem der Phänotyp beobachtet wurde"

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Zeitpunkt der Phänotyp-Beobachtung oder Beobachtungszeitraum"

* value[x] 0..0
* value[x] ^short = "Not used - use component instead"
* value[x] ^comment = "Following HL7 Phenomics IG pattern, phenotype status and severity are captured in component elements rather than value[x]."

// Component: Phenotype Status (Present/Absent)
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^short = "Phenotype status, severity, and clinical modifiers"

* component contains
    status 0..1 MS and
    severity 0..1 MS

* component[status].code = $SCT#260411009 "Presence findings"
* component[status].code MS
* component[status].code ^short = "Phenotype status code"
* component[status].value[x] only CodeableConcept
* component[status].value[x] MS
* component[status].valueCodeableConcept from mii-vs-seltene-hpo-presence-status (required)
* component[status].valueCodeableConcept ^short = "Present or Absent"
* component[status].valueCodeableConcept ^definition = "LOINC LA9633-4 'Present' for observed phenotypes, LA9634-2 'Absent' for explicitly excluded phenotypes."
* component[status].interpretation MS
* component[status].interpretation from MII_VS_Seltene_Symptom_ChangeStatus_Combined (required)
* component[status].interpretation ^short = "Änderungsstatus des Symptoms/Phänotyps über Zeit"
* component[status].interpretation ^definition = "Dokumentiert Änderungen des Phänotyps über Zeit gemäß Modellvorhaben Genomsequenzierung (MVGenomSeq). Codes: newly-added, improved, degraded, no-longer-observed, unchanged."

* component[severity].code = $HPO#HP:0012824 "Severity"
* component[severity].code MS
* component[severity].code ^short = "Severity modifier"
* component[severity].value[x] only CodeableConcept
* component[severity].value[x] MS
* component[severity].valueCodeableConcept from mii-vs-seltene-hpo-severity (extensible)
* component[severity].valueCodeableConcept ^short = "Severity grade"
* component[severity].valueCodeableConcept ^definition = "HPO severity codes: Mild, Moderate, Severe, Profound, Borderline"

* bodySite MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* bodySite ^short = "Körperstelle, an der der Phänotyp beobachtet wird"

* note MS
* note ^short = "Zusätzliche klinische Anmerkungen zum Phänotyp"

* method MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)
* method ^short = "Methode zur Beobachtung oder Bewertung des Phänotyps"

* derivedFrom MS
* derivedFrom ^short = "Verwandte Beobachtungen oder Bewertungen"

ValueSet: HPOPhenotypicObservationCodes
Id: mii-vs-seltene-hpo-phenotypic-observation-codes
Title: "HPO Phenotypic Observation Codes"
Description: "Human Phenotype Ontology codes for phenotypic observations"
* ^status = #draft
* codes from system $HPO

ValueSet: HPOPresenceStatus
Id: mii-vs-seltene-hpo-presence-status
Title: "HPO Phenotype Presence Status"
Description: "LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern."
* ^status = #draft
* ^copyright = "This value set includes content from LOINC which is copyrighted by Regenstrief Institute, Inc."
* $LNC#LA9633-4 "Present"
* $LNC#LA9634-2 "Absent"

ValueSet: HPOSeverity
Id: mii-vs-seltene-hpo-severity
Title: "HPO Severity"
Description: "HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern."
* ^status = #draft
* ^copyright = "This value set includes content from Human Phenotype Ontology (HPO)."
* $HPO#HP:0012828 "Severe"
* $HPO#HP:0012825 "Mild"
* $HPO#HP:0012826 "Moderate"
* $HPO#HP:0012829 "Profound"
* $HPO#HP:0012827 "Borderline"

Instance: mii-exa-seltene-hpo-assessment
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Symptom Observation Example"
Description: "Example of an HPO-based phenotypic observation for intellectual disability."
* code = $HPO#HP:0001249 "Intellectual disability"
* subject = Reference(Patient/example-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = $SCT#260411009 "Presence findings"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* note.text = "Patient shows signs of intellectual disability with learning difficulties in academic settings."

Instance: mii-exa-seltene-hpo-assessment-excluded
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment - Excluded Phenotype"
Description: "Example of an explicitly excluded phenotype (arachnodactyly ruled out during Marfan syndrome workup)."
* code = $HPO#HP:0001166 "Arachnodactyly"
* subject = Reference(Patient/example-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = $SCT#260411009 "Presence findings"
* component[status].valueCodeableConcept = $LNC#LA9634-2 "Absent"
* note.text = "Arachnodactyly explicitly excluded during clinical examination. Arm span/height ratio within normal limits. Demonstrates HL7 Phenomics IG pattern for excluded phenotypes."

Instance: mii-exa-seltene-hpo-assessment-severity
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment - Present with Severity"
Description: "Example of a phenotype with both status (present) and severity grading. Demonstrates HL7 Phenomics IG component pattern."
* code = $HPO#HP:0001638 "Cardiomyopathy"
* subject = Reference(Patient/example-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* component[status].code = $SCT#260411009 "Presence findings"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[severity].code = $HPO#HP:0012824 "Severity"
* component[severity].valueCodeableConcept = $HPO#HP:0012826 "Moderate"
* note.text = "Moderate cardiomyopathy confirmed by echocardiography. Both presence status and severity grade are captured in separate components."

// Mapping to Logical Model
Mapping: FHIR-SE-HPOAssessment
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_HPO_Assessment
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "AnamneseUndDiagnostik.Phaenotypisierung" "Phänotypisierung"
* code -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm" "HPO-Term des Symptoms"
* code.coding.version -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOVersion" "Version HPO-Term"
* component[status].valueCodeableConcept -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOExcluded" "HPO-Term ausgeschlossen (true wenn LA9634-2 'Absent', false wenn LA9633-4 'Present')"
* component[status].valueCodeableConcept -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOStatus" "Status HPO-Term (Present/Absent)"
* component[severity].valueCodeableConcept -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOStatus" "Schweregrad (Mild/Moderate/Severe/Profound/Borderline)"
* component[status].interpretation -> "AnamneseUndDiagnostik.Phaenotypisierung.VerlaufSymptom" "Verlauf Symptom"
* component[status].interpretation.coding.code -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOStatus" "Change Status"
* effectiveDateTime -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Startdatum des Symptoms"
* effectivePeriod.start -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Startdatum des Symptoms"
* effectivePeriod.end -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Enddatum des Symptoms"
* method -> "AnamneseUndDiagnostik.MethodeDiagnosestellung" "Methode der Diagnosestellung"
* subject -> "Patient" "Patient/Indexpatient"
* encounter -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Untersuchungsdatum"
* derivedFrom -> "Verweis auf zugrunde liegende Befunde" "Laborbefunde oder Bildgebung"