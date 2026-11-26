Instance: mii-exa-seltene-symptom-condition
InstanceOf: MII_PR_Seltene_Symptom_Condition
Usage: #example
Title: "MII Example SE Symptom Condition"
Description: "Example of a symptom condition in the context of rare diseases using HPO codes"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition)

// Clinical and verification status
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"

// Category - symptom condition
* category = $condition-category#problem-list-item "Problem List Item"

// HPO code for a specific symptom (example: Muscle weakness)
* code = $HPO#HP:0001324 "Muscle weakness"
* code.text = "Muscle weakness"

// Severity using HPO severity values
* severity = $HPO#HP:0012825 "Mild"
* severity.text = "Mild severity"

// Subject reference (example patient)
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Example Patient"

// Zeitlicher Bezug: Beginn 2022 in der Adoleszenz, Lebensphase kodiert in der
// fhir.de-Extension auf onsetPeriod.start (geerbt aus dem Modul Symptom)
* onsetPeriod.start = "2022"
* onsetPeriod.start.extension[lebensphase-von].valueCodeableConcept = $SCT#263659003 "Adolescence (qualifier value)"

// Recorded date
* recordedDate = "2024-01-15"

// Body site (if applicable)
* bodySite = $SCT#127954009 "Skeletal muscle structure"
* bodySite.text = "Skeletal muscle"

// Evidence supporting the condition
* evidence.code = $HPO#HP:0001324 "Muscle weakness"
* evidence.detail = Reference(Observation/mii-exa-seltene-hpo-assessment)

// Additional notes
* note.text = "Patient reports progressive muscle weakness affecting daily activities, particularly climbing stairs and lifting objects. Symptom has been gradually worsening over the past 2 years."

