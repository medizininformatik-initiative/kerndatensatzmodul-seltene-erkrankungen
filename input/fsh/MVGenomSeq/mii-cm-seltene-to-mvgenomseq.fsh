// -----------------------------------------------------------------------------
// Zuordnung der Profile dieses Moduls zum Klinischen Datenkranz (KDK) Seltene
// Erkrankungen des Modellvorhabens Genomsequenzierung (Schema v2.3).
//
// Vorbild ist mii-cm-onkologie-to-mvgenomseq im Modul Onkologie: ConceptMap
// je Quellprofil eine group, element.code = Elementpfad im Profil,
// target.code = Elementpfad im Logical Model mii-lm-seltene-mvgenomseq.
// Richtung: MII-Profil -> KDK, also die ETL-Strecke eines DIZ, das aus seinem
// FHIR-Bestand eine KDK-Einreichung erzeugt. Die Gegenrichtung (KDK -> MII)
// pflegt BIH-CEI/MVGenomSeq-on-FHIR als ausführbare StructureMap.
//
// Abgrenzung wie im Logical Model: metaData (Person, Consent) und molecular
// (MolGen) sind nicht Gegenstand dieses Moduls. KDK-Felder OHNE Quelle in
// diesem Modul listet die Seite mapping-mvgenomseq.html; eine ConceptMap in
// dieser Richtung kann Lücken auf der Zielseite nicht ausdrücken.
//
// Codes der beiden MVGenomSeq-Kategorien an den Therapieempfehlungen werden
// nicht 1:1 übernommen (kebab-case im Modul, camelCase im KDK, gene-therapy vs.
// genetic) — dafür mii-cm-seltene-therapieempfehlung-to-mvgenomseq.
// -----------------------------------------------------------------------------


RuleSet: CmMvgsElement(code, display, target, targetDisplay, equivalence, comment)
* group[=].element[+].code = #{code}
* group[=].element[=].display = "{display}"
* group[=].element[=].target[+].code = #{target}
* group[=].element[=].target[=].display = "{targetDisplay}"
* group[=].element[=].target[=].equivalence = #{equivalence}
* group[=].element[=].target[=].comment = "{comment}"

RuleSet: CmMvgsElementPlain(code, display, target, targetDisplay, equivalence)
* group[=].element[+].code = #{code}
* group[=].element[=].display = "{display}"
* group[=].element[=].target[+].code = #{target}
* group[=].element[=].target[=].display = "{targetDisplay}"
* group[=].element[=].target[=].equivalence = #{equivalence}

RuleSet: CmMvgsGroup(profile)
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/{profile}"
* group[=].sourceVersion = "2027.0.0-ballot"
* group[=].target = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SelteneMVGenomSeq"
* group[=].targetVersion = "2027.0.0-ballot"

Instance: mii-cm-seltene-to-mvgenomseq
InstanceOf: ConceptMap
Usage: #definition
Title: "MII CM Seltene Erkrankungen zu Modellvorhaben Genomsequenzierung (KDK)"
Description: "Zuordnung der Profile des Moduls Seltene Erkrankungen zu den Feldern des Klinischen Datenkranzes (KDK) Seltene Erkrankungen des Modellvorhabens Genomsequenzierung nach § 64e SGB V, BfArM-Schema v2.3 (Teile case, plan, followUp). Richtung MII-Profil zu KDK-Feld. metaData gehört zu den Modulen Person und Consent, molecular zum Modul Molekulargenetischer Befundbericht; beide sind hier nicht enthalten."
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ConceptMap/mii-cm-seltene-to-mvgenomseq"
* name = "MII_CM_Seltene_To_MVGenomSeq"
* status = #draft
* experimental = false
* date = "2026-11-26"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* purpose = "Erleichtert Datenintegrationszentren den Aufbau harmonisierbarer ETL-Strecken vom MII-Kerndatensatz zur KDK-Einreichung im Modellvorhaben Genomsequenzierung."
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene"
* targetUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SelteneMVGenomSeq"

// --- HPO-Phänotypisierung (Observation) ------------------------------------
* insert CmMvgsGroup(mii-pr-seltene-hpo-assessment)
* insert CmMvgsElement(Observation.code.coding.code, HPO-Term, case.diagnosisRd.phenotypes.code, Phänotyp [Fall], equivalent, Nur beobachtete Merkmale melden; als ausgeschlossen dokumentierte [component:status = Absent] gehören nicht in den KDK.)
* insert CmMvgsElement(Observation.code.coding.version, HPO-Version, case.diagnosisRd.phenotypes.version, Phänotyp-Version, equivalent, Im KDK Pflicht. Ohne Version im Quelldatum muss das DIZ die verwendete HPO-Version ergänzen.)
* insert CmMvgsElementPlain(Observation.code.coding.system, HPO-System, case.diagnosisRd.phenotypes.system, Phänotyp-System, equivalent)
* insert CmMvgsElementPlain(Observation.code.coding.display, HPO-Anzeigetext, case.diagnosisRd.phenotypes.display, Phänotyp-Anzeigetext, equivalent)
* insert CmMvgsElement(Observation.note.text, Anmerkung, case.diagnosisRd.phenotypes.text, Klinische Beschreibung, inexact, Freitext; nur übernehmen\, wenn die Anmerkung den Phänotyp beschreibt.)
* insert CmMvgsElement(Observation.code.coding.code, HPO-Term, followUp.followUpRds.phenotypes.code, Phänotyp [Verlauf], equivalent, Verlaufsmeldung: Phänotypen zum Zeitpunkt followUpDate.)
* insert CmMvgsElementPlain(Observation.code.coding.version, HPO-Version, followUp.followUpRds.phenotypes.version, Phänotyp-Version, equivalent)
* insert CmMvgsElementPlain(Observation.code.coding.system, HPO-System, followUp.followUpRds.phenotypes.system, Phänotyp-System, equivalent)
* insert CmMvgsElementPlain(Observation.code.coding.display, HPO-Anzeigetext, followUp.followUpRds.phenotypes.display, Phänotyp-Anzeigetext, equivalent)
* insert CmMvgsElement(Observation.note.text, Anmerkung, followUp.followUpRds.phenotypes.text, Klinische Beschreibung, inexact, Freitext; nur übernehmen\, wenn die Anmerkung den Phänotyp beschreibt.)
* insert CmMvgsElement(Observation.effective[x], Erhebungszeitpunkt, followUp.followUpRds.followUpDate, Datum der Verlaufsmeldung, relatedto, Datum der Verlaufserhebung; bei mehreren Beobachtungen eines Termins deren gemeinsames Datum.)
* insert CmMvgsElement(Observation.component:status.value[x], Status Present/Absent, followUp.followUpRds.phenotypes.change, Veränderung, relatedto, Abgeleitet aus dem Vergleich zweier Erhebungen: neu beobachtet = newlyAdded\, Present zu Absent = noLongerObserved\, unverändert = unchanged. improved/degraded nur über component:severity ableitbar.)

// --- Symptom (Condition) ---------------------------------------------------
* insert CmMvgsGroup(mii-pr-seltene-symptom-condition)
* insert CmMvgsElement(Condition.code.coding:hpoCoding.code, HPO-Term, case.diagnosisRd.phenotypes.code, Phänotyp [Fall], equivalent, Symptome mit HPO-Kodierung zählen als Phänotypen.)
* insert CmMvgsElement(Condition.onset[x]:onsetDateTime, Beginn, case.diagnosisRd.symptomOnsetDate, Beginn der Symptome, wider, Frühester Beginn über alle Symptome des Falls\, auf JJJJ-MM gekürzt.)
* insert CmMvgsElement(Condition.onset[x]:onsetPeriod.start, Beginn [Zeitraum], case.diagnosisRd.symptomOnsetDate, Beginn der Symptome, wider, Wie onsetDateTime; bei Zeitraum dessen Beginn.)

// --- Klinische Diagnose (Condition) ----------------------------------------
* insert CmMvgsGroup(mii-pr-seltene-clinical-diagnosis)
* insert CmMvgsElement(Condition.code.coding:orphanet, ORPHAcode, case.diagnosisRd.noMatchingCodeExists, Kein passender Code, relatedto, true\, wenn für die Erkrankung kein spezifischer ORPHAcode existiert und ein unspezifischer gesetzt wurde.)
* insert CmMvgsElement(Condition.code.coding:icd10-gm, ICD-10-GM, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht mit code\, system\, version.)
* insert CmMvgsElement(Condition.code.coding:orphanet, ORPHAcode, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht.)
* insert CmMvgsElement(Condition.code.coding:alpha-id, Alpha-ID, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht. Slice aus dem Basisprofil Diagnose.)
* insert CmMvgsElement(Condition.verificationStatus, Verifikationsstatus, followUp.followUpRds.diagnosisEstablished, Diagnose gesichert, relatedto, confirmed = true\, sonst false.)

// --- Genetische Diagnose (Condition) ---------------------------------------
* insert CmMvgsGroup(mii-pr-seltene-genetic-diagnosis)
* insert CmMvgsElement(Condition.code.coding:orphanet, ORPHAcode, case.diagnosisRd.noMatchingCodeExists, Kein passender Code, relatedto, true\, wenn für die Erkrankung kein spezifischer ORPHAcode existiert und ein unspezifischer gesetzt wurde.)
* insert CmMvgsElement(Condition.code.coding:icd10-gm, ICD-10-GM, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht mit code\, system\, version.)
* insert CmMvgsElement(Condition.code.coding:orphanet, ORPHAcode, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht.)
* insert CmMvgsElement(Condition.code.coding:alpha-id, Alpha-ID, case.diagnosisRd.diagnoses, Diagnosen, equivalent, Im KDK Pflicht. Slice aus dem Basisprofil Diagnose.)
* insert CmMvgsElement(Condition.verificationStatus, Verifikationsstatus, case.diagnosisRd.diagnosticAssessment, Bewertung der genetischen Diagnostik, relatedto, confirmed = confirmedGeneticDiagnosis\, provisional oder differential = suspectedGeneticDiagnosis. partialGeneticDiagnosis und furtherGeneticDiagnosticRecommended sind aus dem Status nicht ableitbar.)
* insert CmMvgsElement(Condition.verificationStatus, Verifikationsstatus, followUp.followUpRds.diagnosisEstablished, Diagnose gesichert, relatedto, confirmed = true\, sonst false.)

// --- Klinische Beurteilung (ClinicalImpression) ----------------------------
* insert CmMvgsGroup(mii-pr-seltene-clinical-impression)
* insert CmMvgsElement(ClinicalImpression.summary, Zusammenfassung, followUp.followUpRds.diseaseProgression, Krankheitsverlauf, inexact, Freitext der Verlaufsbeurteilung.)

// --- Therapieplan (CarePlan) -----------------------------------------------
* insert CmMvgsGroup(mii-pr-seltene-therapieplan)
* insert CmMvgsElement(CarePlan.created, Erstellungsdatum, plan.carePlanRd.molecularBoardDecisionDate, Datum der Fallkonferenz, relatedto, Das Modul führt das Datum des Beschlusses als Erstellungsdatum des Plans.)
* insert CmMvgsElement(CarePlan.activity:MedikamentoesTherapie, Medikamentöse Therapieempfehlung, plan.carePlanRd.therapyRecommended, Therapie empfohlen, relatedto, true\, sobald der Plan mindestens eine Therapieempfehlung mit MVGenomSeq-Therapiestrategie enthält. Empfehlungen zu Beratung\, Reevaluation oder Versorgung tragen keine Strategie und zählen nicht.)
* insert CmMvgsElement(CarePlan.activity:NichtMedikamentoesTherapie, Nicht-medikamentöse Therapieempfehlung, plan.carePlanRd.therapyRecommended, Therapie empfohlen, relatedto, Nur Empfehlungen mit category:MVGenomSeqTherapieStrategie; siehe MedikamentoesTherapie.)
* insert CmMvgsElement(CarePlan.activity:NichtMedikamentoesTherapie, Nicht-medikamentöse Therapieempfehlung, plan.carePlanRd.counsellingRecommended, Humangenetische Beratung empfohlen, relatedto, true\, wenn eine referenzierte Empfehlung code = SNOMED 79841006 Genetic counseling oder ein Unterkonzept trägt.)
* insert CmMvgsElement(CarePlan.activity:NichtMedikamentoesTherapie, Nicht-medikamentöse Therapieempfehlung, plan.carePlanRd.reEvaluationRecommended, Reevaluation empfohlen, relatedto, true\, wenn eine referenzierte Empfehlung eine Reevaluation empfiehlt. SNOMED hat dafür kein spezifisches Konzept; Vorschlag SNOMED 386053000 Evaluation procedure mit code.text.)
* insert CmMvgsElement(CarePlan.activity:NichtMedikamentoesTherapie, Nicht-medikamentöse Therapieempfehlung, plan.carePlanRd.clinicalManagementRecommended, Klinisches Management empfohlen, relatedto, true\, wenn eine referenzierte Empfehlung eine Überweisung oder Anbindung empfiehlt\, code = SNOMED 3457005 Patient referral oder ein Unterkonzept.)
* insert CmMvgsElement(CarePlan.activity:Studieneinschlussempfehlung, Studieneinschlussempfehlung, plan.carePlanRd.studyRecommended, Studie empfohlen, relatedto, true\, sobald der Plan eine Studieneinschlussempfehlung enthält.)

// --- Therapieempfehlung medikamentös (MedicationRequest) -------------------
* insert CmMvgsGroup(mii-pr-seltene-therapieempfehlung)
* insert CmMvgsElement(MedicationRequest.id, Ressourcen-Id, plan.recommendedTherapies.identifier, Kennung der Empfehlung, relatedto, Beliebige stabile Kennung; die Ressourcen-Id genügt.)
* insert CmMvgsElement(MedicationRequest.category:MVGenomSeqTherapieTyp, Therapietyp, plan.recommendedTherapies.type, Therapietyp, equivalent, Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen.)
* insert CmMvgsElement(MedicationRequest.category:MVGenomSeqTherapieStrategie, Therapiestrategie, plan.recommendedTherapies.strategy, Therapiestrategie, equivalent, Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen [gene-therapy = genetic].)

// --- Therapieempfehlung nicht-medikamentös (ServiceRequest) ----------------
* insert CmMvgsGroup(mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* insert CmMvgsElement(ServiceRequest.id, Ressourcen-Id, plan.recommendedTherapies.identifier, Kennung der Empfehlung, relatedto, Nur Empfehlungen mit category:MVGenomSeqTherapieStrategie werden zu recommendedTherapies; Beratung\, Reevaluation und Versorgung gehen in carePlanRd.)
* insert CmMvgsElement(ServiceRequest.category:MVGenomSeqTherapieTyp, Therapietyp, plan.recommendedTherapies.type, Therapietyp, equivalent, Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen.)
* insert CmMvgsElement(ServiceRequest.category:MVGenomSeqTherapieStrategie, Therapiestrategie, plan.recommendedTherapies.strategy, Therapiestrategie, equivalent, Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen [early-detection = earlyDetection].)
* insert CmMvgsElement(ServiceRequest.code.text, Freitext der Maßnahme, plan.recommendedTherapies.strategyOther, Freitext Strategie, inexact, Nur bei strategy = other.)

// --- Therapieempfehlung Kombination (RequestGroup) -------------------------
* insert CmMvgsGroup(mii-pr-seltene-therapieempfehlung-kombination)
* insert CmMvgsElement(RequestGroup.id, Ressourcen-Id, plan.recommendedTherapies.identifier, Kennung der Empfehlung, relatedto, Die Kombination ist eine Empfehlung mit strategy = combination.)
* insert CmMvgsElement(RequestGroup.action.resource, Bestandteile der Kombination, plan.recommendedTherapies.strategyCombination, Freitext Kombination, inexact, Freitext aus den referenzierten Einzelempfehlungen zusammensetzen.)

// --- Studieneinschluss-Anfrage (ServiceRequest) ----------------------------
* insert CmMvgsGroup(mii-pr-seltene-studieneinschluss-anfrage)
* insert CmMvgsElementPlain(ServiceRequest.id, Ressourcen-Id, plan.recommendedStudies.identifier, Kennung der Empfehlung, relatedto)
* insert CmMvgsElement(ServiceRequest.supportingInfo:Studie, Referenzierte Studie, plan.recommendedStudies.id, Kennung der Studie im Register, relatedto, ResearchStudy.identifier der referenzierten Studie.)
* insert CmMvgsElement(ServiceRequest.supportingInfo:Studie, Referenzierte Studie, plan.recommendedStudies.register, Studienregister, relatedto, Aus dem identifier.system der Studie ableiten [NCT\, DRKS\, EU CT]; unbekannte Studie = yesButStudyIsUnknown.)
* insert CmMvgsElement(ServiceRequest.supportingInfo:Studie, Referenzierte Studie, plan.recommendedStudies.name, Name der Studie, relatedto, ResearchStudy.title der referenzierten Studie.)


// =============================================================================
// Codes: MVGenomSeq-Kategorien der Therapieempfehlungen -> KDK-Wertelisten
// =============================================================================

RuleSet: CmCode(code, display, target, equivalence)
* group[=].element[+].code = #{code}
* group[=].element[=].display = "{display}"
* group[=].element[=].target[+].code = #{target}
* group[=].element[=].target[=].equivalence = #{equivalence}

Instance: mii-cm-seltene-therapieempfehlung-to-mvgenomseq
InstanceOf: ConceptMap
Usage: #definition
Title: "MII CM Seltene Therapieempfehlung zu MVGenomSeq-KDK-Codes"
Description: "Übersetzt die Codes der MVGenomSeq-Kategorien an den Therapieempfehlungen (Therapietyp, Therapiestrategie) in die Wertelisten des KDK Seltene Erkrankungen, Schema v2.3 (RareDiseasesPlan.recommendedTherapies.type und .strategy). Das Modul führt die Codes in kebab-case, der KDK in camelCase; gene-therapy heißt im KDK genetic."
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ConceptMap/mii-cm-seltene-therapieempfehlung-to-mvgenomseq"
* name = "MII_CM_Seltene_Therapieempfehlung_To_MVGenomSeq"
* status = #draft
* experimental = false
* date = "2026-11-26"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* targetUri = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json#recommendedTherapies.type"
* group[=].targetVersion = "v2.3"
* insert CmCode(causal, Kausal, causal, equivalent)
* insert CmCode(symptomatic, Symptomatisch, symptomatic, equivalent)

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json#recommendedTherapies.strategy"
* group[=].targetVersion = "v2.3"
* insert CmCode(systemic-medication, Systemische Medikation, systemicMedication, equivalent)
* insert CmCode(targeted-medication, Zielgerichtete Medikation, targetedMedication, equivalent)
* insert CmCode(prevention-medication, Präventive Medikation, preventionMedication, equivalent)
* insert CmCode(gene-therapy, Gentherapie, genetic, equivalent)
* insert CmCode(prophylactic, Prophylaxe, prophylactic, equivalent)
* insert CmCode(early-detection, Früherkennung, earlyDetection, equivalent)
* insert CmCode(combination, Kombinationstherapie, combination, equivalent)
* insert CmCode(nutrition, Ernährungstherapie, nutrition, equivalent)
* insert CmCode(other, Sonstige, other, equivalent)
