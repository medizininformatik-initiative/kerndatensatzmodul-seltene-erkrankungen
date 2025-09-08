// Marfan Syndrome Case Transaction Bundle

Instance: bundle-marfan-complete
InstanceOf: Bundle
Usage: #example
Title: "Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle"
Description: "Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall"
* type = #transaction
* timestamp = "2024-12-15T14:00:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:3f7e8b2c-9d1a-4e5f-b6c8-2a9f5e3d7c4b"
* entry[=].resource = patient-marfan-001
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Main Diagnoses - Three stages
* entry[+].fullUrl = "urn:uuid:a4b5c6d7-e8f9-0a1b-2c3d-4e5f6g7h8i9j"
* entry[=].resource = condition-marfan-suspected
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:b5c6d7e8-f9a0-1b2c-3d4e-5f6g7h8i9j0k"
* entry[=].resource = condition-marfan-clinical
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:c6d7e8f9-a0b1-2c3d-4e5f-6g7h8i9j0k1l"
* entry[=].resource = condition-marfan-genetic
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:d7e8f9a0-b1c2-3d4e-5f6g-7h8i9j0k1l2m"
* entry[=].resource = condition-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Phenotypic Observations
* entry[+].fullUrl = "urn:uuid:e8f9a0b1-c2d3-4e5f-6g7h-8i9j0k1l2m3n"
* entry[=].resource = observation-height-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:f9a0b1c2-d3e4-5f6g-7h8i-9j0k1l2m3n4o"
* entry[=].resource = observation-leg-asymmetry
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Symptoms
* entry[+].fullUrl = "urn:uuid:a0b1c2d3-e4f5-6g7h-8i9j-0k1l2m3n4o5p"
* entry[=].resource = symptom-chest-pain
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:b1c2d3e4-f5g6-7h8i-9j0k-1l2m3n4o5p6q"
* entry[=].resource = symptom-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Cardiac Findings
* entry[+].fullUrl = "urn:uuid:c2d3e4f5-g6h7-8i9j-0k1l-2m3n4o5p6q7r"
* entry[=].resource = symptom-aortic-root
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:d3e4f5g6-h7i8-9j0k-1l2m-3n4o5p6q7r8s"
* entry[=].resource = symptom-aortic-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:e4f5g6h7-i8j9-0k1l-2m3n-4o5p6q7r8s9t"
* entry[=].resource = symptom-mitral-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Genetic Variant
* entry[+].fullUrl = "urn:uuid:f5g6h7i8-j9k0-1l2m-3n4o-5p6q7r8s9t0u"
* entry[=].resource = variant-fbn1-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Echocardiography Observations
* entry[+].fullUrl = "urn:uuid:g6h7i8j9-k0l1-2m3n-4o5p-6q7r8s9t0u1v"
* entry[=].resource = observation-echo-aortic
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:h7i8j9k0-l1m2-3n4o-5p6q-7r8s9t0u1v2w"
* entry[=].resource = observation-echo-av
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:i8j9k0l1-m2n3-4o5p-6q7r-8s9t0u1v2w3x"
* entry[=].resource = observation-echo-mv
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Procedures
* entry[+].fullUrl = "urn:uuid:j9k0l1m2-n3o4-5p6q-7r8s-9t0u1v2w3x4y"
* entry[=].resource = procedure-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "urn:uuid:k0l1m2n3-o4p5-6q7r-8s9t-0u1v2w3x4y5z"
* entry[=].resource = procedure-aortic-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// Medication
* entry[+].fullUrl = "urn:uuid:l1m2n3o4-p5q6-7r8s-9t0u-1v2w3x4y5z6a"
* entry[=].resource = medication-losartan
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

// Clinical Impression
* entry[+].fullUrl = "urn:uuid:m2n3o4p5-q6r7-8s9t-0u1v-2w3x4y5z6a7b"
* entry[=].resource = clinical-impression-se-assessment
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

// Encounters - Chronological order
* entry[+].fullUrl = "urn:uuid:n3o4p5q6-r7s8-9t0u-1v2w-3x4y5z6a7b8c"
* entry[=].resource = encounter-ophthalmology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:o4p5q6r7-s8t9-0u1v-2w3x-4y5z6a7b8c9d"
* entry[=].resource = encounter-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:p5q6r7s8-t9u0-1v2w-3x4y-5z6a7b8c9d0e"
* entry[=].resource = encounter-cardiology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:q6r7s8t9-u0v1-2w3x-4y5z-6a7b8c9d0e1f"
* entry[=].resource = encounter-surgery-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"