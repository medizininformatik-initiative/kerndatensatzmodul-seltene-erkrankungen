// Common Example Resources used across multiple examples
// These are generic examples for testing and demonstration

// Beispielpatient des Moduls
//
// Umbenannt von der frueheren Instanz-ID "example" (Nutzerentscheid 2026-09-02):
// ein generisches "example" ist als publizierte Instanz-ID nicht tragfaehig und
// folgte nicht der Namenskonvention mii-exa-seltene-* der uebrigen Beispiele.
// Zugleich wurden die fuenf Verweise auf das nie definierte
// "Patient/example-patient" hierher gezogen — sie erzeugten im QA-Report
// unaufloesbare Referenzen.
//
// Konform zu MII_PR_Person_Patient aus dem Base-Modul statt zum blanken
// FHIR-Patient: die Pflichtangaben jenes Profils liegen saemtlich INNERHALB
// optionaler Slices, ein Patient ohne Versichertennummer und ohne Adresse ist
// dort also konform, solange die verwendeten Slices vollstaendig sind.
Instance: mii-exa-seltene-patient
InstanceOf: $mii-pr-person-patient
Usage: #example
Title: "MII EXA SE Beispielpatient"
Description: "Generischer Beispielpatient des Moduls Seltene Erkrankungen, referenziert von den Beispielen, die keinen eigenen Fallbezug haben. Fuer die ausgearbeiteten Fallbeispiele siehe patient-sma-001 und patient-marfan-001."
* identifier.system = "http://test-krankenhaus.de/fhir/sid/patienten"
* identifier.value = "12345"
* name[name].use = #official
* name[name].family = "Mustermann"
* name[name].given = "Max"
* gender = #male
* birthDate = "1990-01-01"