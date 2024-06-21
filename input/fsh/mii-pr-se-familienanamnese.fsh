Alias: $mii-ex-molgen-verwandtschaftsgrad = https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad
Alias: $mii-ex-molgen-verwandtschaftsverhaeltnis = https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsverhaeltnis
Alias: $mii-ex-molgen-familiare-linie = https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-familiare-linie
Alias: $CodingICD10GM = http://fhir.de/StructureDefinition/CodingICD10GM
Alias: $CodingAlphaID = http://fhir.de/StructureDefinition/CodingAlphaID
Alias: $mii-vs-molgen-family-member-snomed = https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/ValueSet/mii-vs-molgen-family-member-snomed
Alias: $icd-10-gm = http://fhir.de/ValueSet/bfarm/icd-10-gm
Alias: $alpha-id = http://fhir.de/ValueSet/bfarm/alpha-id
Alias: $diagnoses-sct = https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct

Profile: MII_PR_MolGen_Familienanamnese
Parent: FamilyMemberHistory
Id: mii-pr-molgen-familienanamnese
Title: "MII PR MolGen Familienanamnese"
Description: "Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von genetischen Analysen."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"
* status MS
* patient only Reference(Patient)
* patient MS
* patient ^type.profile = "https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference"
* date MS
* relationship MS
* relationship.coding ^slicing.discriminator.type = #pattern
* relationship.coding ^slicing.discriminator.path = "$this"
* relationship.coding ^slicing.rules = #open
* relationship.coding contains
    snomed 1..1 and
    v3-RoleCode 0..1
* relationship.coding[snomed] from $mii-vs-molgen-family-member-snomed (required)
* relationship.coding[snomed] ^patternCoding.system = "http://snomed.info/sct"
* relationship.coding[snomed].extension contains
    $mii-ex-molgen-verwandtschaftsgrad named Verwandtschaftsgrad 0..1 MS and
    $mii-ex-molgen-verwandtschaftsverhaeltnis named Verwandtschaftsverhaeltnis 0..1 MS and
    $mii-ex-molgen-familiare-linie named FamiliareLinie 0..1 MS
* relationship.coding[v3-RoleCode] from PersonalRelationshipRoleType (required)
* relationship.coding[v3-RoleCode] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* sex MS

* born[x] 0..1 MS
* born[x] only Period or date
* bornDate MS
* bornPeriod MS

//* age[x] 0..1 MS
//* age[x] only Period or date
//* ageDate MS
//* agePeriod MS

* deceased[x] 0..1 MS
* deceased[x] only boolean or date or Age or Range
* deceasedBoolean 0..1 MS
* deceasedAge 0..1 MS
* deceasedRange 0..1 MS
* deceasedDate 0..1 MS

// TODO von der SE betroffen extension

* reasonCode MS
* reasonCode.coding 1.. MS
* reasonCode.coding ^slicing.discriminator.type = #pattern
* reasonCode.coding ^slicing.discriminator.path = "$this"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    icd10-gm 0..1 MS and
    alpha-id 0..1 MS and
    sct 0..1 MS and
    orphanet 0..1 MS
* reasonCode.coding[icd10-gm] only $CodingICD10GM
* reasonCode.coding[icd10-gm] from $icd-10-gm (required)
* reasonCode.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* reasonCode.coding[icd10-gm].system MS
* reasonCode.coding[icd10-gm].version MS
* reasonCode.coding[icd10-gm].code MS
* reasonCode.coding[alpha-id] only $CodingAlphaID
* reasonCode.coding[alpha-id] from $alpha-id (required)
* reasonCode.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* reasonCode.coding[alpha-id].system MS
* reasonCode.coding[alpha-id].code MS
* reasonCode.coding[sct] from $diagnoses-sct (required)
* reasonCode.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* reasonCode.coding[sct].system 1.. MS
* reasonCode.coding[sct].code 1.. MS
* reasonCode.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* reasonCode.coding[orphanet].system 1.. MS
* reasonCode.coding[orphanet].code 1.. MS
* reasonReference MS
* condition MS
* condition.code MS
* condition.code.coding 1.. MS
* condition.code.coding ^slicing.discriminator.type = #pattern
* condition.code.coding ^slicing.discriminator.path = "$this"
* condition.code.coding ^slicing.rules = #open
* condition.code.coding contains
    icd10-gm 0..1 MS and
    alpha-id 0..1 MS and
    sct 0..1 MS and
    orphanet 0..1 MS
* condition.code.coding[icd10-gm] only $CodingICD10GM
* condition.code.coding[icd10-gm] from $icd-10-gm (required)
* condition.code.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition.code.coding[icd10-gm].system MS
* condition.code.coding[icd10-gm].version MS
* condition.code.coding[icd10-gm].code MS
* condition.code.coding[alpha-id] only $CodingAlphaID
* condition.code.coding[alpha-id] from $alpha-id (required)
* condition.code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* condition.code.coding[alpha-id].system MS
* condition.code.coding[alpha-id].code MS
* condition.code.coding[sct] from $diagnoses-sct (required)
* condition.code.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* condition.code.coding[sct].system 1.. MS
* condition.code.coding[sct].code 1.. MS
* condition.code.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* condition.code.coding[orphanet].system 1.. MS
* condition.code.coding[orphanet].code 1.. MS
* condition.contributedToDeath 0..1 MS
* condition.onset[x] 0..1 MS
* condition.onset[x] only Age or Range


Mapping: MII-KDS
Id: MII-KDS
Title: "MII KDS Mapping"
Source: MII_PR_MolGen_Familienanamnese
* -> "mide-dataelement-1740" "Krankengeschichte Familie"
