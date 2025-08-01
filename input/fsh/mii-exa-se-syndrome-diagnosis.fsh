Instance: mii-exa-se-syndrome-diagnosis
InstanceOf: MII_PR_SE_Diagnose
Usage: #example
Title: "Syndrome Diagnosis Example"
Description: "Example of a syndrome diagnosis for CHARGE syndrome with phenotypic patterns and syndrome categorization."

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category[0] = $condition-category#encounter-diagnosis
* category[+] = $condition-category#problem-list-item

// CHARGE syndrome using ORPHA code
* code = $SCT#432851000124101 "CHARGE syndrome"
* code.text = "CHARGE-Syndrom"

* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)

// Onset in early infancy
* onsetDateTime = "2024-01-01"
// TODO: Add onsetAge extension once upstream MII profile constraints are resolved
// * onsetDateTime.extension[onsetAge].valueAge.value = 0
// * onsetDateTime.extension[onsetAge].valueAge.unit = "months"
// * onsetDateTime.extension[onsetAge].valueAge.system = $UCUM
// * onsetDateTime.extension[onsetAge].valueAge.code = #mo

// Syndrome category - genetic disorder
* extension[syndromeCategory].valueCodeableConcept = $SCT#32895009 "Genetic disorder"

// Link to characteristic phenotypic patterns
* extension[phenotypicPattern][0].valueReference = Reference(Observation/charge-coloboma-finding)
* extension[phenotypicPattern][+].valueReference = Reference(Observation/charge-hearing-loss-finding)
* extension[phenotypicPattern][+].valueReference = Reference(Condition/charge-heart-defect-condition)

* recordedDate = "2024-01-15"
* asserter = Reference(Practitioner/genetics-specialist)

// Evidence linking to genetic testing and clinical assessments
* evidence[0].detail = Reference(DiagnosticReport/genetic-testing-charge)
* evidence[+].detail = Reference(Observation/clinical-genetics-assessment)

* severity = $SCT#24484000 "Severe"

* note.text = "CHARGE-Syndrom diagnostiziert basierend auf charakteristischen Merkmalen: Kolobom, Herzfehler, Choanalatresie, Hörverlust und Entwicklungsverzögerung. Genetische Bestätigung durch CHD7-Mutationsanalyse."