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
Description: "Generischer Beispielpatient des Moduls Seltene Erkrankungen, referenziert von den Beispielen, die keinen eigenen Fallbezug haben. Fuer die ausgearbeiteten Fallbeispiele siehe mii-exa-seltene-patient-sma-001 und mii-exa-seltene-patient-marfan-001."
* identifier.system = "http://test-krankenhaus.de/fhir/sid/patienten"
* identifier.value = "12345"
* name[name].use = #official
* name[name].family = "Mustermann"
* name[name].given = "Max"
* gender = #male
* birthDate = "1990-01-01"
// ============================================
// GENERISCHE KONTAKTE
// ============================================
// Angelegt 2026-09-03. Die Diagnose- und Ausschlussbeispiele verwiesen auf
// Encounter/mii-exa-seltene-encounter-cardiology-consultation und Encounter/mii-exa-seltene-encounter-genetic-consultation, die es
// nie gab — die Referenzen liefen ins Leere. Bewusst NICHT auf die vorhandenen
// Marfan-Kontakte umgebogen: die haengen an patient-marfan-001, waehrend die
// Beispiele auf dem generischen Patienten stehen. Eine Condition des einen
// Patienten auf den Kontakt eines anderen zu verweisen waere schluessiger
// Unsinn gewesen.

Instance: mii-exa-seltene-encounter-cardiology-consultation
InstanceOf: Encounter
Usage: #example
Title: "Kardiologische Vorstellung (generisch)"
Description: "Ambulante kardiologische Vorstellung des generischen Beispielpatienten"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#185228002 "Seen in cardiac clinic (finding)"
* subject = Reference(mii-exa-seltene-patient)
* period.start = "2024-12-15"
* period.end = "2024-12-15"

Instance: mii-exa-seltene-encounter-genetic-consultation
InstanceOf: Encounter
Usage: #example
Title: "Humangenetische Beratung (generisch)"
Description: "Ambulante humangenetische Beratung des generischen Beispielpatienten"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#79841006 "Genetic counseling"
* subject = Reference(mii-exa-seltene-patient)
* period.start = "2024-09-15"
* period.end = "2024-09-15"
