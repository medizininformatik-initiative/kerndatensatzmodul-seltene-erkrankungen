// SMA Case Transaction Bundle

Instance: bundle-sma-complete
InstanceOf: Bundle
Usage: #example
Title: "SMA Fallbeispiel - Vollständiges Transaction Bundle"
Description: "Transaction Bundle mit allen Ressourcen für den SMA Fall inkl. Diagnoseverlauf"
* type = #transaction
* timestamp = "2024-08-12T14:00:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:patient-sma-001"
* entry[=].resource = patient-sma-001
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Diagnosis History - Three stages
* entry[+].fullUrl = "urn:uuid:condition-sma-suspected"
* entry[=].resource = condition-sma-suspected
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:condition-sma-clinical"
* entry[=].resource = condition-sma-clinical
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:condition-sma-genetic"
* entry[=].resource = condition-sma-genetic
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Family History
* entry[+].fullUrl = "urn:uuid:family-history-001"
* entry[=].resource = family-history-001
* entry[=].request.method = #POST
* entry[=].request.url = "FamilyMemberHistory"

// Screening and Genetic Testing
* entry[+].fullUrl = "urn:uuid:observation-sma-screening"
* entry[=].resource = observation-sma-screening
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Genetic Variants (Confirmatory)
* entry[+].fullUrl = "urn:uuid:variant-smn1-001"
* entry[=].resource = variant-smn1-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:variant-smn2-001"
* entry[=].resource = variant-smn2-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Gene Therapy Procedure
* entry[+].fullUrl = "urn:uuid:procedure-gentherapy-001"
* entry[=].resource = procedure-gentherapy-001
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// Laboratory Observations - Post-therapeutic
* entry[+].fullUrl = "urn:uuid:observation-alt-001"
* entry[=].resource = observation-alt-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-ast-001"
* entry[=].resource = observation-ast-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-plt-001"
* entry[=].resource = observation-plt-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Troponin T Series - Chronological order
* entry[+].fullUrl = "urn:uuid:observation-troponin-001"
* entry[=].resource = observation-troponin-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-troponin-002"
* entry[=].resource = observation-troponin-002
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-troponin-003"
* entry[=].resource = observation-troponin-003
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:observation-troponin-004"
* entry[=].resource = observation-troponin-004
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Clinical Impressions
* entry[+].fullUrl = "urn:uuid:clinical-impression-erstvorstellung"
* entry[=].resource = clinical-impression-erstvorstellung
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

* entry[+].fullUrl = "urn:uuid:clinical-impression-nachsorge"
* entry[=].resource = clinical-impression-nachsorge
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

// Encounters - Chronological order
* entry[+].fullUrl = "urn:uuid:encounter-screening-001"
* entry[=].resource = encounter-screening-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-ambulant-001"
* entry[=].resource = encounter-ambulant-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-stationaer-001"
* entry[=].resource = encounter-stationaer-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:encounter-nachsorge-001"
* entry[=].resource = encounter-nachsorge-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"