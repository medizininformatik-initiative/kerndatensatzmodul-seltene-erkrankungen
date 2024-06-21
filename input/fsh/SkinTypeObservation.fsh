Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $loinc = http://loinc.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $QuelleKlinischesBezugsdatum = https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips

Profile: ProfileObservationLaboruntersuchung
Parent: Observation
Id: ProfileObservationLaboruntersuchung
Title: "Profile - Observation - Laboruntersuchung"
Description: "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"
* ^version = "1.0"
* ^experimental = false
* ^publisher = "https://www.Medizininformatik-Initiative.de"
* ^purpose = "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."
* obeys mii-lab-2
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains analyseBefundCode 1..1 MS
* identifier[analyseBefundCode].type 1.. MS
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].type.coding MS
* identifier[analyseBefundCode].type.coding ^slicing.discriminator.type = #value
* identifier[analyseBefundCode].type.coding ^slicing.discriminator.path = "system"
* identifier[analyseBefundCode].type.coding ^slicing.rules = #open
* identifier[analyseBefundCode].type.coding contains observationInstanceV2 1..1 MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].system 1.. MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[analyseBefundCode].type.coding[observationInstanceV2].code 1.. MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].code = #OBI (exactly)
* identifier[analyseBefundCode].system 1.. MS
* identifier[analyseBefundCode].value 1.. MS
* identifier[analyseBefundCode].assigner 1.. MS
* identifier[analyseBefundCode].assigner
* status MS
* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc-observation 1..1 MS and
    observation-category 1..1 MS
* category.coding[observation-category] = $observation-category#exam
* code MS
* code from $results-laboratory-observations-uv-ips (preferred)
* code ^binding.description = "Intensional Value Set Definition: LOINC {  {    STATUS in {ACTIVE}    CLASSTYPE in {1}    CLASS exclude {CHALSKIN, H&P.HX.LAB, H&P.HX, NR STATS, PATH.PROTOCOLS.*}  } }"
* subject 1.. MS
* subject
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] obeys mii-lab-1
* effective[x].extension ^slicing.discriminator.type = #value
* effective[x].extension ^slicing.discriminator.path = "url"
* effective[x].extension ^slicing.rules = #open
* issued MS
* value[x] only Quantity or CodeableConcept
* value[x] MS
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity MS
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueQuantity.code ^comment = "The mandatory system is UCUM."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite ..0
* method MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* device MS
* referenceRange MS

Invariant: mii-lab-2
Description: "Falls kein Laborwert verfügbar ist, muss eine dataAbsentReason angegeben werden"
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"

Invariant: mii-lab-1
Description: "Datetime must be at least to day"
* severity = #error
* expression = "($this as dateTime).hasValue() implies ($this as dateTime).toString().length() >= 8"