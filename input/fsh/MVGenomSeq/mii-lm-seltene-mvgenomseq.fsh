// -----------------------------------------------------------------------------
// Klinischer Datenkranz (KDK) Seltene Erkrankungen des Modellvorhabens
// Genomsequenzierung nach § 64e SGB V, als Logical Model.
//
// Quelle: BfArM-MVH/MVGenomseq_KDK, Tag v2.3, Dateien KDK/RareDiseasesCase.json,
// KDK/RareDiseasesPlan.json und KDK/RareDiseasesFollowUp.json. Feldnamen und
// Wertelisten sind QUELLTREU übernommen (englisch, camelCase wie im JSON),
// damit sich jedes Element 1:1 im Einreichungs-JSON wiederfindet. Pflichtfelder
// des Schemas stehen hier als 1..1 bzw. 1..*.
//
// Abgrenzung — dieselbe wie im Modul Onkologie (mii-lm-mvgenomseq-onkologie):
//   - metaData (Submission, Consent, Versicherung, Demografie) gehört zu den
//     Modulen Person und Consent und ist hier NICHT enthalten.
//   - molecular (Varianten) gehört zum Modul Molekulargenetischer Befundbericht
//     und ist hier NICHT enthalten (Lücken dort: HDB-976).
// Enthalten sind case, plan und followUp: die Daten, die das Modul Seltene
// Erkrankungen fachlich führt. Die Zuordnung zu den Profilen steht in der
// ConceptMap mii-cm-seltene-to-mvgenomseq.
//
// Übernommen 2026-11-26 aus BIH-CEI/MVGenomSeq-on-FHIR (KdkRareDiseasesModel,
// dort generiert); gegen das Schema v2.3 nachgeprüft und um die
// Unterelemente ergänzt, die der Generator verlor (phenotypes.text/.change).
// Der Canonical folgt dem Muster .../LogicalModel/<Name> wie mii-lm-seltene,
// aus demselben Grund (eld-20, siehe dort); special-url in sushi-config.yaml.
// -----------------------------------------------------------------------------
Logical: MII_LM_Seltene_MVGenomSeq
Parent: Element
Id: mii-lm-seltene-mvgenomseq
Title: "MII LM Modellvorhaben Genomsequenzierung Seltene Erkrankungen"
Description: "Klinischer Datenkranz (KDK) Seltene Erkrankungen des Modellvorhabens Genomsequenzierung nach § 64e SGB V (BfArM, Schema v2.3), Teile case, plan und followUp. Zielstruktur der ConceptMap mii-cm-seltene-to-mvgenomseq; Feldnamen quelltreu aus dem JSON-Schema."
* insert Publisher
* insert PR_CS_VS_Version
* insert CRMILogicalModelMetadata
* ^experimental = false
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SelteneMVGenomSeq"

* case 1..1 BackboneElement "case" "Falldaten (RareDiseasesCase.json)"
  * diagnosisRd 1..1 BackboneElement "diagnosisRd" "Diagnose und Diagnostikentscheidung"
    * phenotypes 1..* BackboneElement "phenotypes" "HPO-Phänotypen (Coding mit code und version Pflicht)"
      * system 0..1 uri "system" "Terminologie, hier HPO"
      * version 1..1 string "version" "HPO-Version"
      * code 1..1 code "code" "HPO-Term"
      * display 0..1 string "display" "Anzeigetext"
      * text 0..1 string "text" "Klinische Beschreibung des Phänotyps"
    * symptomOnsetDate 1..1 string "symptomOnsetDate" "Beginn der Symptome, Format JJJJ-MM"
    * molecularBoardDecisionDate 1..1 date "molecularBoardDecisionDate" "Datum der Fallkonferenz"
    * diagnosticExtent 1..1 code "diagnosticExtent" "Empfohlener Diagnostikumfang: singleGenome | duoGenome | trioGenome"
    * libraryType 1..1 code "libraryType" "Art der Sequenzierung: panel | wes | wgs | wgs_lr | none"
    * diagnosticAssessment 1..1 code "diagnosticAssessment" "Bewertung der genetischen Diagnostik: noGeneticDiagnosis | suspectedGeneticDiagnosis | furtherGeneticDiagnosticRecommended | confirmedGeneticDiagnosis | partialGeneticDiagnosis"
    * diagnoses 3..* Coding "diagnoses" "Diagnosen; ICD-10-GM, ORPHAcode und Alpha-ID sind Pflicht (code, system, version)"
    * noMatchingCodeExists 0..1 boolean "noMatchingCodeExists" "Kein passender Code vorhanden"
    * diagnosisGmfcs 0..1 code "diagnosisGmfcs" "GMFCS-Level I | II | III | IV | V, altersabhängig; leer, wenn nicht zutreffend"
  * priorRds 0..* BackboneElement "priorRds" "Vordiagnostik"
    * genomicTestType 1..1 code "genomicTestType" "Art der Vordiagnostik: exome | genomeLongRead | genomeShortRead | panel | single | array | karyotyping | other | none"
    * genomicStudyType 1..1 code "genomicStudyType" "single | duo | trio"
    * diagnosticDate 0..1 date "diagnosticDate" "Datum der Vordiagnostik"
    * diagnosticResult 1..1 code "diagnosticResult" "Ergebnis: phenotypeNotCompletelyClarified | structuralVariantWithUnclearBreakpoint | unclearVariantInGeneticDisease | noPathogenicVariantDetected | other"
    * hospitalizationPeriods 1..1 code "hospitalizationPeriods" "Zahl stationärer Behandlungen in den letzten fünf Jahren, gebändert: none | upToFive | upToTen | upToFifteen | moreThanFifteen | unknown"
    * hospitalizationDuration 1..1 code "hospitalizationDuration" "Geschätzte Dauer stationärer fallrelevanter Vorbehandlung in Tagen, gebändert: none | upToFive | upToFifteen | upToFifty | moreThanFifty | unknown"
    * zseContactDate 1..1 string "zseContactDate" "Erstkontakt mit einem Zentrum für Seltene Erkrankungen, Format JJJJ-MM"

* plan 0..1 BackboneElement "plan" "Fallkonferenzbeschluss (RareDiseasesPlan.json)"
  * carePlanRd 1..1 BackboneElement "carePlanRd" "Empfehlungen der Fallkonferenz"
    * molecularBoardDecisionDate 1..1 date "molecularBoardDecisionDate" "Datum der Fallkonferenz"
    * studyRecommended 1..1 boolean "studyRecommended" "Studienteilnahme empfohlen"
    * counsellingRecommended 1..1 boolean "counsellingRecommended" "Humangenetische Beratung empfohlen"
    * reEvaluationRecommended 1..1 boolean "reEvaluationRecommended" "Reevaluation empfohlen"
    * therapyRecommended 1..1 boolean "therapyRecommended" "Therapie empfohlen"
    * clinicalManagementRecommended 1..1 boolean "clinicalManagementRecommended" "Empfehlungen zum klinischen Management"
    * clinicalManagementDescriptions 0..* code "clinicalManagementDescriptions" "diseaseSpecificAmbulatoryCare | universityAmbulatoryCare | localCrd | otherCrd | otherAmbulatoryCare | gp | specialist"
  * recommendedStudies 0..* BackboneElement "recommendedStudies" "Empfohlene Studien"
    * identifier 1..1 string "identifier" "Kennung der Empfehlung"
    * register 1..1 code "register" "Studienregister, NCT bevorzugt: NCT | DRKS | Eudra-CT/CTIS | other | yesButStudyIsUnknown"
    * name 1..1 string "name" "Name der Studie"
    * id 1..1 string "id" "Kennung der Studie im Register"
    * variants 0..* string "variants" "Bezug auf Varianten (identifier aus molecular)"
  * recommendedTherapies 0..* BackboneElement "recommendedTherapies" "Empfohlene Therapien"
    * identifier 1..1 string "identifier" "Kennung der Empfehlung"
    * type 1..1 code "type" "causal | symptomatic"
    * strategy 1..1 code "strategy" "systemicMedication | targetedMedication | preventionMedication | genetic | prophylactic | earlyDetection | combination | nutrition | other"
    * strategyOther 0..1 string "strategyOther" "Freitext, nur bei strategy = other"
    * strategyCombination 0..1 string "strategyCombination" "Freitext, nur bei strategy = combination"
    * variants 0..* string "variants" "Bezug auf Varianten (identifier aus molecular)"

* followUp 0..1 BackboneElement "followUp" "Verlauf (RareDiseasesFollowUp.json)"
  * followUpRds 1..* BackboneElement "followUpRds" "Je Verlaufsmeldung ein Eintrag mit dem aktuellen Stand"
    * followUpDate 1..1 date "followUpDate" "Datum der Verlaufsmeldung"
    * phenotypes 1..* BackboneElement "phenotypes" "HPO-Phänotypen mit Veränderung"
      * system 0..1 uri "system" "Terminologie, hier HPO"
      * version 0..1 string "version" "HPO-Version"
      * code 0..1 code "code" "HPO-Term"
      * display 0..1 string "display" "Anzeigetext"
      * text 0..1 string "text" "Klinische Beschreibung des Phänotyps"
      * change 1..1 code "change" "newlyAdded | improved | degraded | noLongerObserved | unchanged"
    * gmfcs 0..1 code "gmfcs" "GMFCS-Level I | II | III | IV | V; leer, wenn nicht zutreffend"
    * diagnosisEstablished 1..1 boolean "diagnosisEstablished" "Diagnose gesichert"
    * diseaseProgression 0..1 string "diseaseProgression" "Fallrelevante Angaben zum Krankheitsverlauf"
    * vitalStatus 1..1 code "vitalStatus" "living | deceased, Stand letzter Kontakt"
    * deathDate 0..1 string "deathDate" "Sterbemonat, Format JJJJ-MM"
