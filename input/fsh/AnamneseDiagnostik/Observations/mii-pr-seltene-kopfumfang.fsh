Profile:     MII_PR_Seltene_Kopfumfang
Id:          mii-pr-seltene-kopfumfang
Parent:      Observation
Title:       "MII PR SE Kopfumfang"
Description: "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* status MS

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code MS
* code = $LNC#9843-4 "Head Occipital-frontal circumference"
* code ^short = "Kopfumfang okzipital-frontal"

* subject MS
* subject 1..1
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime

* value[x] MS
* value[x] only Quantity
* valueQuantity.unit = "cm" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #cm (exactly)


Instance: mii-exa-seltene-kopfumfang
InstanceOf: MII_PR_Seltene_Kopfumfang
Usage: #example
Title: "Kopfumfang Beispiel"
Description: "Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = $LNC#9843-4 "Head Occipital-frontal circumference"
* subject = Reference(Patient/example)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 54.5
* valueQuantity.unit = "cm"
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
