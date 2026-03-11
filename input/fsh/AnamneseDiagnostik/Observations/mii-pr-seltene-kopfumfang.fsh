Profile:     MII_PR_Seltene_Kopfumfang
Id:          mii-pr-seltene-kopfumfang
Parent:      $MII_PR_ICU_Kopfumfang
Title:       "MII PR SE Kopfumfang"
Description: "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil."

* insert PR_CS_VS_Version
* insert Publisher
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
* code.coding[snomed] = $SCT#363812007 "Kopfumfang"
* subject = Reference(Patient/example)
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
* -> "Messbefunde.Kopfumfang" "Kopfumfang"
* valueQuantity.value -> "Messbefunde.Kopfumfang" "Kopfumfang in cm"
* effectiveDateTime -> "Messbefunde.Kopfumfang.Datum" "Datum der Messung"
* subject -> "Patient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
