// Genetic Diagnosis Profile for Rare Diseases with OMIM codes and MolGen evidence
Profile: MII_PR_Seltene_GeneticDiagnosis
Parent: MII_PR_Diagnose_Condition
Id: mii-pr-seltene-genetic-diagnosis
Title: "MII PR SE Genetic Diagnosis"
Description: "Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing."
* insert CRMIProfileMetadataInherited
* ^experimental = false
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

// Inherit all constraints from parent Diagnose profile
* clinicalStatus MS
* verificationStatus MS
* severity MS
* code MS
* bodySite MS
* subject MS
* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate MS
* recorder MS
* asserter MS
* stage MS
* evidence MS
* note MS

// KATEGORIE — bewusste Abweichung, begruendet (Nutzerentscheid 2026-09-11,
// nach einem Review-Hinweis auf die Ungleichbehandlung gegenueber der
// klinischen Diagnose).
//
// Condition.category ist in FHIR R4 0..* und EXTENSIBLE an condition-category
// gebunden (problem-list-item | encounter-diagnosis). Eine extensible Bindung
// erlaubt ausdruecklich Codes ausserhalb des ValueSets, wenn keiner der
// enthaltenen passt — die Spezifikation merkt am Element selbst an, die
// Kategorisierung sei "often highly contextual". Der feste Wert hier ist also
// keine Regelverletzung, sondern die vorgesehene Nutzung einer extensible
// Bindung.
//
// Warum ueberhaupt: Die Kennzeichnung als genetisch gesicherte Erkrankung ist
// das Merkmal, ueber das dieses Modul registeruebergreifend gefunden werden
// will. Sie steht nicht in Condition.code — dort steht die Erkrankung selbst
// (ICD-10-GM, ORPHA, OMIM) — und laesst sich aus dem Code auch nicht
// herleiten, weil dieselbe Erkrankung klinisch oder genetisch gesichert sein
// kann. Genau diese Unterscheidung traegt das Modul in zwei getrennten
// Profilen, und category macht sie fuer eine Suche auswertbar.
//
// OFFEN und im Guide benannt: patternCodeableConcept auf einem wiederholbaren
// Element verlangt, dass JEDE Wiederholung dem Muster entspricht. Eine zweite
// Kategorie — etwa encounter-diagnosis fuer die Rolle im Datensatz — ist damit
// derzeit unzulaessig. Alle zehn Beispiele fuehren folgerichtig nur diesen
// einen Wert. Sauberer waere ein offener Slice, der 782964007 verlangt und
// weitere Kategorien zulaesst; das aendert die publizierte Constraint-Form und
// gehoert daher in die Ballotierung.
* category 1..* MS
* category = $SCT#782964007 "Genetic disease"
* category ^short = "Kategorisierung als genetische Erkrankung"
* category ^definition = "Pflicht-Kategorie zur Kennzeichnung als genetisch bestätigte Erkrankung. Bewusste Nutzung der extensible-Bindung von Condition.category: Der Wert bezeichnet nicht die Rolle im Datensatz, sondern macht die genetische Sicherung registeruebergreifend auswertbar."

// Add OMIM slice to the existing code slices
* code.coding ^slicing.discriminator[+].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    omim 0..* MS
* code.coding[omim] ^patternCoding.system = "http://omim.org"
* code.coding[omim] ^short = "OMIM disease code"
* code.coding[omim] ^definition = "Online Mendelian Inheritance in Man (OMIM) code for the genetic disease"
* code.coding[omim].system 1.. MS
* code.coding[omim].code 1.. MS
* code.coding[omim].display MS

// Verification status should typically be confirmed for genetic diagnoses
* verificationStatus ^comment = "For genetically confirmed diagnoses, verificationStatus should typically be 'confirmed'"

// Evidence must link to genetic findings
* evidence 1..* MS
* evidence ^short = "Genetic evidence supporting the diagnosis"
* evidence.code MS
* evidence.code ^short = "Type of genetic evidence"
* evidence.code.coding ^slicing.discriminator.type = #pattern
* evidence.code.coding ^slicing.discriminator.path = "$this"
* evidence.code.coding ^slicing.rules = #open
* evidence.code.coding contains
    geneticEvidence 0..1 MS
* evidence.code.coding[geneticEvidence] = $SCT#106221001 "Genetic finding"
* evidence.code.coding[geneticEvidence] ^short = "Indicates genetic evidence"

// Evidence details must reference MolGen resources
* evidence.detail 1..* MS
* evidence.detail ^short = "Reference to MolGen Variant or Diagnostic Implication"
* evidence.detail ^definition = "Must reference either MII PR MolGen Variante or MII PR MolGen DiagnostischeImplikation resources that contain the genetic findings supporting this diagnosis"
* evidence.detail only Reference(Observation or DiagnosticReport)
* evidence.detail ^comment = "Should reference: 1) MII PR MolGen Variante (Observation) for specific variant findings, or 2) MII PR MolGen DiagnostischeImplikation (DiagnosticReport) for comprehensive genetic diagnostic reports"

// Extensions for genetic-specific information
* extension contains 
    mii-ex-seltene-penetrance named penetrance 0..1 MS
* extension[penetrance] ^short = "Penetranz der genetischen Variante"
* extension[penetrance] ^definition = "Angabe zur Penetranz der genetischen Variante bei dieser Erkrankung"

// Die Invariante se-genetic-evidence ist am 2026-09-11 entfallen (Hinweis aus
// dem Review). Sie lautete:
//   Expression: "evidence.exists() and evidence.detail.exists()"
// und war vollstaendig redundant: evidence ist in diesem Profil 1..*, und
// evidence.detail ebenfalls 1..*. Beide Teilbedingungen sind damit schon durch
// die Kardinalitaeten erzwungen — die Invariante konnte nie greifen, ohne dass
// zuvor schon die Kardinalitaet verletzt gewesen waere.
//
// Ihre Beschreibung behauptete zudem mehr, als der Ausdruck pruefte ("at least
// one evidence.detail referencing a MolGen resource"): weder der Ausdruck noch
// das Profil binden evidence.detail an ein MolGen-Profil, targetProfile ist
// generisch Observation | DiagnosticReport. Eine Constraint, die etwas anderes
// verspricht als sie prueft, ist schlechter als keine.
//
// Entfernen aendert das Verhalten nicht: Was die Invariante forderte, fordern
// die Kardinalitaeten weiterhin.

// Mapping to Logical Model
Mapping: FHIR-SE-GeneticDiagnosis
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_GeneticDiagnosis
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "anamneseUndDiagnostik.genetischeDiagnose" "Genetische Diagnose"
* code.coding[icd10-gm] -> "anamneseUndDiagnostik.genetischeDiagnose" "ICD-10-GM Diagnose"
* code.coding[orphanet] -> "anamneseUndDiagnostik.genetischeDiagnose" "Orpha-Code Diagnose"
* code.coding[omim] -> "anamneseUndDiagnostik.genetischeDiagnose" "OMIM-Code Diagnose"
* extension[assertedDate].valueDateTime -> "anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia" "Feststellungsdatum genetische SE-Diagnose"
* onset[x] -> "anamneseUndDiagnostik.genetischeDiagnose.alterGenDia" "Alter/Zeitpunkt bei genetischer SE-Diagnose"
* onsetDateTime -> "anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia" "Feststellungsdatum genetische SE-Diagnose"
* evidence.code -> "anamneseUndDiagnostik.methodeDiagnosestellung" "Methode der Diagnosestellung"
* code.coding[omim] -> "anamneseUndDiagnostik.genetischeDiagnose.omimCode" "OMIM-Code der Erkrankung"
* evidence.detail -> "Verweis auf MolGen Variante/DiagnostischeImplikation" "Genetische Befunde"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* encounter -> "anamneseUndDiagnostik.untersuchungsdatum" "Untersuchungsdatum"
* extension[penetrance] -> "anamneseUndDiagnostik.genDiaFehlendePenetranz" "Genetische Diagnose mit fehlender Penetranz"