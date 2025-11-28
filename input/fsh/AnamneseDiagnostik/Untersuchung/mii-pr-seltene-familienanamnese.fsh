Profile: MII_PR_Seltene_Familienanamnese
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese
Id: mii-pr-seltene-familienanamnese
Title: "MII PR SE Familienanamnese"
Description: "Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Add SE-specific extension to the inherited MolGen profile
* extension contains VonSEBetroffen named vonSEBetroffen 1..1 MS
* extension[vonSEBetroffen] ^short = "Gibt an, ob das Familienmitglied von der gleichen seltenen Erkrankung betroffen ist"
* extension[vonSEBetroffen] ^definition = "Extension zur Angabe, ob ein Familienmitglied von der gleichen seltenen Erkrankung betroffen ist wie der Patient"
* status MS
* patient MS
* date MS

* relationship MS

* sex MS
* reasonCode MS
* condition MS
* condition.code MS
* condition.code.coding 1.. MS
// Add MONDO slice for international interoperability (in addition to inherited slices from MolGen)
* condition.code.coding contains mondo 0..1 MS
* condition.code.coding[mondo] ^short = "MONDO Code für die Erkrankung"
* condition.code.coding[mondo] ^definition = "Monarch Disease Ontology (MONDO) Code für internationale Interoperabilität. MONDO harmonisiert SNOMED, ORDO, OMIM und ICD automatisch."
* condition.code.coding[mondo] ^patternCoding.system = $MONDO
* condition.code.coding[mondo].system 1..1
* condition.code.coding[mondo].code 1..1
* condition.code.coding[mondo].display MS

* condition.onset[x] MS
* condition.extension contains
    mii-ex-seltene-penetrance named penetrance 0..1 MS
* condition.extension[penetrance] ^short = "Penetranz der genetischen Variante beim Familienmitglied"
* condition.extension[penetrance] ^definition = "Angabe zur Penetranz der genetischen Variante bei der Erkrankung des Familienmitglieds"

* born[x] 0..1 MS
* age[x] 0..1 MS
* deceased[x] 0..1 MS

// Use standard FHIR element for death due to condition
* condition.contributedToDeath MS
* condition.contributedToDeath ^short = "Tod durch diese Erkrankung"
* condition.contributedToDeath ^definition = "Gibt an, ob diese Erkrankung zum Tod des Familienmitglieds beigetragen hat. Relevant für die Dokumentation von Todesfällen durch seltene Erkrankungen in der Familie."
/*
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

// alternative extension that could be used by HL7: condition-ver-status
* extension contains VonSEBetroffen named vonSEBetroffen 1..1 MS

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
*/

// Mapping to Logical Model
Mapping: FHIR-SE-Familienanamnese
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Familienanamnese
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "Familienanamnese" "Familienanamnese"
* relationship -> "Familienanamnese.Verwandtschaftsverhaeltnis" "Verwandtschaftsverhältnis"
* sex -> "Familienanamnese.Geschlecht" "Geschlecht"
* extension[vonSEBetroffen] -> "Familienanamnese.GleicheSE" "Gleiche SE"
* condition.code.coding[icd10-gm] -> "Familienanamnese.AndereSE" "Andere SE (ICD-10-GM)"
* condition.code.coding[orphanet] -> "Familienanamnese.AndereSE" "Andere SE (Orpha-Code)"
* condition.code.coding[sct] -> "Familienanamnese.AndereSE" "Andere SE (SNOMED CT)"
* reasonCode -> "Familienanamnese.AndereSE" "Grund/Erkrankung des Familienmitglieds"
* condition.extension[penetrance] -> "Familienanamnese.Penetranz" "Penetranz"
* deceasedBoolean -> "Familienanamnese.FamilienmitgliedVerstorben" "Familienmitglied verstorben"
* deceasedDate -> "Familienanamnese.FamilienmitgliedVerstorben" "Sterbedatum"
* deceasedAge -> "Familienanamnese.FamilienmitgliedVerstorben" "Alter bei Tod"
* condition.contributedToDeath -> "Familienanamnese.TodDurchSE" "Tod durch seltene Erkrankung"
* condition.onsetAge -> "Alter bei Erkrankungsbeginn" "Alter bei Erkrankung"
* patient -> "Patient" "Patient/Indexpatient"
* date -> "Dokumentationsdatum" "Datum der Familienanamnese"