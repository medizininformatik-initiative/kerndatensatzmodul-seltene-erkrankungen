Profile:     MII_PR_Seltene_Taillenumfang
Id:          mii-pr-seltene-taillenumfang
Parent:      Observation
Title:       "MII PR SE Taillenumfang"
Description: "Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* status MS

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code MS
// Generischer SNOMED-Code statt LOINC 8280-0 (Nutzerentscheid 2026-09-02).
// LOINC bietet fuer den Taillenumfang ausschliesslich Varianten AUF NABELHOEHE
// an (8280-0 "Waist Circumference at umbilicus", 8281-8 dasselbe per Ultraschall),
// also die Landmarke des BAUCHumfangs — nicht die schmalste Stelle beziehungsweise
// den Mittelpunkt zwischen unterster Rippe und Beckenkamm, die den Taillenumfang
// definieren. Das Profil hiess damit anders, als sein Code aussagte.
// SNOMED trennt das sauber: 1162535003 (Mittelpunkt Rippe/Beckenkamm, WHO-Landmarke)
// und 1162536002 (schmalste Stelle) neben dem generischen 276361009. Bewusst der
// generische Code, damit das Profil sich nicht auf eine Messvorschrift festlegt,
// die die Standorte unterschiedlich handhaben.
* code = $SCT#276361009 "Waist circumference"
* code ^short = "Taillenumfang"
* code ^comment = "Die Messvorschrift ist bewusst offen gelassen. Wer die Landmarke festhalten muss, kann statt des generischen Codes 1162535003 (Mittelpunkt zwischen unterster Rippe und Beckenkamm) oder 1162536002 (schmalste Stelle) verwenden."

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


Instance: mii-exa-seltene-taillenumfang
InstanceOf: MII_PR_Seltene_Taillenumfang
Usage: #example
Title: "Taillenumfang Beispiel"
Description: "Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = $SCT#276361009 "Waist circumference"
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 82.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

// Mapping to Logical Model
Mapping: FHIR-SE-Taillenumfang
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Taillenumfang
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "koerperlicheUntersuchung.taillenumfang" "Taillenumfang"
* valueQuantity.value -> "koerperlicheUntersuchung.taillenumfang.taillenumfang" "Taillenumfang in cm"
* effectiveDateTime -> "koerperlicheUntersuchung.taillenumfang.datumTaillenumfang" "Datum der Messung"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
