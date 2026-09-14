// -----------------------------------------------------------------------------
// Elternprofil 2026-09-13 von ICU auf das deutsche Basisprofil umgestellt.
//
// Vorher:  https://…/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang
// Jetzt:   http://fhir.de/StructureDefinition/observation-de-vitalsign-kopfumfang
//
// Das ICU-Profil leitet SELBST von genau diesem Basisprofil ab und war fuer
// dieses Modul eine Zwischenschicht ohne Beitrag: Was das Beispiel braucht —
// die Slices category[VSCat], code.coding[loinc] und code.coding[snomed] —
// stammt aus der Basisprofil-Kette, nicht aus ICU. Gemessen 2026-09-13: nach
// der Umstellung nennt keine einzige erzeugte Ressource noch modul-icu.
//
// Damit entfaellt die ICU-Abhaengigkeit (124 Ressourcen) ersatzlos. Das ist
// kein Schoenheitsargument: der Restore-Schritt der CI scheitert regelmaessig
// an der Drosselung der Registry, und jede Abhaengigkeit weniger ist dort eine
// Fehlerquelle weniger.
//
// BREAKING gegenueber 2027.0.0-ballot.rc1: baseDefinition dieses Profils
// aendert sich. Bewusst in Kauf genommen (Nutzerentscheid 2026-09-13, gleiche
// Begruendung wie bei den Umbenennungen: noch niemand hat das Modul umgesetzt).
//
// Die beiden Verweise auf ICU-Koerpergewicht und -Koerpergroesse im
// Datensatzmodell bleiben stehen. Sie sind Freitext und dokumentieren, WO diese
// Datenpunkte MII-weit gefuehrt werden — das bleibt richtig, auch ohne dass das
// Paket eine Abhaengigkeit ist.
// -----------------------------------------------------------------------------
Profile:     MII_PR_Seltene_Kopfumfang
Id:          mii-pr-seltene-kopfumfang
Parent:      http://fhir.de/StructureDefinition/observation-de-vitalsign-kopfumfang
Title:       "MII PR SE Kopfumfang"
Description: "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom deutschen Basisprofil für den Vitalparameter Kopfumfang."

* insert PR_CS_VS_Version
* insert Publisher
* insert CRMIProfileMetadata
* ^experimental = false
* ^status = #active

* code ^short = "Kopfumfang okzipital-frontal"

* subject 1..1


Instance: mii-exa-seltene-kopfumfang
InstanceOf: MII_PR_Seltene_Kopfumfang
Usage: #example
Title: "Kopfumfang Beispiel"
Description: "Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang)
* status = #final
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"
* code.coding[loinc] = $LNC#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = $SCT#363812007
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 54.5
* valueQuantity.unit = "centimeter"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

// Mapping to Logical Model
Mapping: FHIR-SE-Kopfumfang
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Kopfumfang
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "koerperlicheUntersuchung.kopfumfang" "Kopfumfang"
* valueQuantity.value -> "koerperlicheUntersuchung.kopfumfang.kopfumfang" "Kopfumfang in cm"
* effectiveDateTime -> "koerperlicheUntersuchung.kopfumfang.datumKopfumfang" "Datum der Messung"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
