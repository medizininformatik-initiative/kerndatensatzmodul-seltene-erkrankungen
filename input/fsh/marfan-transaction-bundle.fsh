// Marfan Syndrome Case Transaction Bundle

Instance: bundle-marfan-complete
InstanceOf: Bundle
Usage: #example
Title: "Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle"
Description: "Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall"
* type = #transaction
* timestamp = "2024-12-15T14:00:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:patient-marfan-001"
* entry[=].resource = patient-marfan-001
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Main Diagnoses
* entry[+].fullUrl = "urn:uuid:condition-marfan-confirmed"
* entry[=].resource = condition-marfan-confirmed
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:condition-cataract"
* entry[=].resource = condition-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Phenotypic Observations
* entry[+].fullUrl = "urn:uuid:observation-height-001"
* entry[=].resource = observation-height-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-leg-asymmetry"
* entry[=].resource = observation-leg-asymmetry
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Symptoms
* entry[+].fullUrl = "urn:uuid:symptom-chest-pain"
* entry[=].resource = symptom-chest-pain
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:symptom-cataract"
* entry[=].resource = symptom-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Cardiac Findings
* entry[+].fullUrl = "urn:uuid:symptom-aortic-root"
* entry[=].resource = symptom-aortic-root
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:symptom-aortic-regurg"
* entry[=].resource = symptom-aortic-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:symptom-mitral-regurg"
* entry[=].resource = symptom-mitral-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Echocardiography Observations
* entry[+].fullUrl = "urn:uuid:observation-echo-aortic"
* entry[=].resource = observation-echo-aortic
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-echo-av"
* entry[=].resource = observation-echo-av
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-echo-mv"
* entry[=].resource = observation-echo-mv
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Procedures
* entry[+].fullUrl = "urn:uuid:procedure-cataract-surgery"
* entry[=].resource = procedure-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "urn:uuid:procedure-aortic-planned"
* entry[=].resource = procedure-aortic-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// Medication
* entry[+].fullUrl = "urn:uuid:medication-losartan"
* entry[=].resource = medication-losartan
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

// Clinical Impression
* entry[+].fullUrl = "urn:uuid:clinical-impression-cardiology"
* entry[=].resource = clinical-impression-cardiology
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

// Encounters - Chronological order
* entry[+].fullUrl = "urn:uuid:encounter-ophthalmology"
* entry[=].resource = encounter-ophthalmology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-cataract-surgery"
* entry[=].resource = encounter-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-cardiology"
* entry[=].resource = encounter-cardiology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-surgery-planned"
* entry[=].resource = encounter-surgery-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"