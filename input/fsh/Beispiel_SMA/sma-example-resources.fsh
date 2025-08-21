// SMA Case Example FHIR Resources

// Patient Resource
Instance: patient-sma-001
InstanceOf: Patient
Usage: #example
Title: "SMA Patient - Neugeborenes Mädchen"
Description: "Neugeborenes Mädchen mit bestätigter SMA Typ 1"
* identifier.system = "http://example.org/patient-id"
* identifier.value = "SMA-2024-001"
* gender = #female
* birthDate = "2024-07-01"  // Approximated - born in early July 2024

// SMA Diagnosis - Suspected (from Newborn Screening)
Instance: condition-sma-suspected
InstanceOf: MII_PR_SE_ClinicalDiagnosis
Usage: #example
Title: "SMA Verdacht - Neugeborenenscreening"
Description: "Verdacht auf SMA beim Neugeborenenscreening"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#encounter-diagnosis
* code.text = "Verdacht auf Spinale Muskelatrophie"
* code.coding[sct] = $SCT#80854005 "Werdnig-Hoffmann disease"
* code.coding[hpo] = http://hpo.jax.org/app/#HP:0003813 "Motor neuron disease"
* subject = Reference(patient-sma-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-07-18"
* recordedDate = "2024-07-18"
* encounter = Reference(encounter-screening-001)
* evidence[+].code.text = "Positives Neugeborenenscreening"
* evidence[=].detail = Reference(observation-sma-screening)
* note.text = "Verdacht beim Neugeborenenscreening gestellt - SMN1 Exon 7 nicht nachweisbar"

// SMA Diagnosis - Clinical (Confirmed after initial assessment)
Instance: condition-sma-clinical
InstanceOf: MII_PR_SE_ClinicalDiagnosis
Usage: #example
Title: "SMA Klinische Diagnose"
Description: "Klinische Diagnose SMA Typ 1 bei Erstvorstellung"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#G12.0 "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#83330 "Infantile spinale Muskelatrophie Typ I"
* code.coding[sct] = $SCT#80854005 "Werdnig-Hoffmann disease"
* code.coding[hpo] = http://hpo.jax.org/app/#HP:0003813 "Motor neuron disease"
* subject = Reference(patient-sma-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-07-22"
* recordedDate = "2024-07-22"
* encounter = Reference(encounter-ambulant-001)
* onsetDateTime = "2024-07-01"  // Birth/neonatal onset
* evidence[+].code.text = "Klinische Präsentation"
* evidence[=].detail = Reference(observation-troponin-001)
* note.text = "Klinische Diagnose basierend auf typischer Präsentation: Neonatale Hypotonie, fehlende Muskeleigenreflexe, erhöhtes Troponin"

// SMA Diagnosis - Genetic (Parallel diagnosis)
Instance: condition-sma-genetic
InstanceOf: MII_PR_SE_GeneticDiagnosis
Usage: #example
Title: "SMA Genetische Diagnose"
Description: "SMA Typ 1, molekulargenetisch bestätigt durch SMN1-Deletion"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $SCT#782964007 "Genetic disease"
* code.coding[icd10-gm] = $ICD10GM#G12.0 "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#83330 "Infantile spinale Muskelatrophie Typ I"
* code.coding[sct] = $SCT#80854005 "Werdnig-Hoffmann disease"
* code.coding[omim] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* subject = Reference(patient-sma-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-07-26"  // Date of molecular confirmation
* recordedDate = "2024-07-26"
* onsetDateTime = "2024-07-01"  // Birth/neonatal onset
* evidence[+].code = $SCT#410545006 "Genetic finding"
* evidence[=].detail[+] = Reference(Observation/variant-smn1-001)
* evidence[=].detail[+] = Reference(Observation/variant-smn2-001)
* evidence[+].code = $SCT#405824009 "Genetic test finding"
* evidence[=].detail = Reference(DiagnosticReport/molgen-diagnostic-implication-sma)
* note.text = "0 Kopien des SMN1-Gens, 2 Kopien des SMN2-Gens - krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."

// Family History - Great-grandmother with unknown muscle disease
Instance: family-history-001
InstanceOf: MII_PR_SE_Familienanamnese
Usage: #example
Title: "Familienanamnese - Urgroßmutter mit Muskelerkrankung"
Description: "Urgroßmutter mit unbekannter Muskelerkrankung"
* status = #completed
* patient = Reference(patient-sma-001)
* date = "2024-07-22"
* relationship = $SCT#113158007 "Great grandmother"
* condition[+].code.coding[+] = $SCT#129565002 "Disorder of muscle"
* condition[=].code.text = "Unbekannte Muskelerkrankung"
* extension[vonSEBetroffen].valueCodeableConcept.coding = $ExpandedYesNoIndicator#ASKU "Unbekannt"

// SMA Newborn Screening Result
Instance: observation-sma-screening
InstanceOf: Observation
Usage: #example
Title: "SMA Neugeborenenscreening Ergebnis"
Description: "Positives SMA-Screening beim Neugeborenenscreening"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#92005-8 "Spinal muscular atrophy newborn screening panel"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-18"
* valueCodeableConcept = $SCT#260373001 "Detected"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* component[+].code = $LNC#92004-1 "Spinal muscular atrophy newborn screen interpretation"
* component[=].valueCodeableConcept.text = "Hinweis auf SMA - SMN1 Exon 7 Deletion nachgewiesen"
* component[+].code = $LNC#92002-5 "SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = "Ct"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #1
* component[=].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Positives SMA-Screening. Konfirmatorische Diagnostik empfohlen."

// SMN1 Gene Deletion (Variant)
Instance: variant-smn1-001
InstanceOf: Observation
Usage: #example
Title: "SMN1 Gen - Homozygote Deletion"
Description: "0 Kopien des SMN1-Gens nachgewiesen"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#55233-1 "Genetic variant assessment"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#11117 "SMN1"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept.text = "GRCh38"
* component[+].code = $LNC#82121-5 "Allelic state"
* component[=].valueCodeableConcept = $LNC#LA6705-3 "Homozygous"
* component[+].code.text = "Copy Number"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = "copies"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* note.text = "Homozygote Deletion des SMN1-Gens, krankheitsursächlich für SMA"

// SMN2 Gene Copy Number
Instance: variant-smn2-001
InstanceOf: Observation
Usage: #example
Title: "SMN2 Gen - Kopienanzahl"
Description: "2 Kopien des SMN2-Gens nachgewiesen"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#55233-1 "Genetic variant assessment"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-26"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#11118 "SMN2"
* component[+].code.text = "Copy Number"
* component[=].valueQuantity.value = 2
* component[=].valueQuantity.unit = "copies"
* note.text = "2 Kopien des SMN2-Gens, Modifikator des Phänotyps"

// Gene Therapy Procedure
Instance: procedure-gentherapy-001
InstanceOf: Procedure
Usage: #example
Title: "Gentherapie Verabreichung"
Description: "Verabreichung des Gentherapeutikums für SMA"
* status = #completed
* category = http://snomed.info/sct#277132007 "Therapeutic procedure"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#6-00d.0 "Gentherapie"
* code.coding[+] = http://fdasis.nlm.nih.gov#MLU3LU3EVV "Onasemnogene abeparvovec"
* code.coding[+] = $SCT#787135004 "Gene therapy"
* code.text = "Gentherapie mit Onasemnogene abeparvovec (Zolgensma)"
* subject = Reference(patient-sma-001)
* performedDateTime = "2024-07-29"
* reasonReference = Reference(Condition/condition-sma-genetic)
* note.text = "Gentherapeutikum ohne Komplikationen verabreicht, vorherige Gabe von Prednisolon"

// Laboratory Observations - ALT
Instance: observation-alt-001
InstanceOf: Observation
Usage: #example
Title: "ALT Labor - Post-therapeutisch"
Description: "ALT Wert nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Laboratory Observations - AST
Instance: observation-ast-001
InstanceOf: Observation
Usage: #example
Title: "AST Labor - Post-therapeutisch"
Description: "AST Wert nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Laboratory Observations - Platelets
Instance: observation-plt-001
InstanceOf: Observation
Usage: #example
Title: "Thrombozytenzahl - Post-therapeutisch"
Description: "Thrombozytenzahl nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#777-3 "Platelets [#/volume] in Blood by Automated count"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Troponin T hs Observations - Series
Instance: observation-troponin-001
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 22.07.2024"
Description: "Troponin T hochsensitiv Baseline"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-22"
* valueQuantity = 92 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: observation-troponin-002
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 28.07.2024"
Description: "Troponin T hochsensitiv vor Therapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-28"
* valueQuantity = 58 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: observation-troponin-003
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 01.08.2024"
Description: "Troponin T hochsensitiv nach Therapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-08-01"
* valueQuantity = 57 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: observation-troponin-004
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 12.08.2024"
Description: "Troponin T hochsensitiv bei Nachsorge"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-08-12"
* valueQuantity = 106 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* note.text = "Troponin T weiter erhöht, bereits prä-therapeutisch erhöht"

// Clinical Impression - Erstvorstellung
Instance: clinical-impression-erstvorstellung
InstanceOf: ClinicalImpression
Usage: #example
Title: "Klinische Beurteilung - Erstvorstellung"
Description: "Initiale klinische Beurteilung bei Erstvorstellung im SMA-Zentrum"
* status = #completed
* subject = Reference(patient-sma-001)
* encounter = Reference(encounter-ambulant-001)
* effectiveDateTime = "2024-07-22"
* date = "2024-07-22"
* assessor = Reference(Practitioner/example)
* summary = "Neugeborenes mit V.a. SMA aus Neugeborenenscreening. Familienanamnese zeigt unklare Muskelerkrankung der Urgroßmutter. Troponin T bereits erhöht (92 ng/l)."
* problem[+] = Reference(condition-sma-suspected)  // Reason for assessment (suspected diagnosis)
* finding[+].itemReference = Reference(condition-sma-clinical)  // Clinical diagnosis as finding
* finding[+].itemReference = Reference(condition-sma-genetic)  // Genetic diagnosis as finding
* finding[+].itemCodeableConcept = $SCT#442753009 "Troponin T above reference range"
* finding[=].itemReference = Reference(observation-troponin-001)
* investigation[+].code.text = "Familienanamnese"
* investigation[=].item = Reference(family-history-001)
* investigation[+].code.text = "Labordiagnostik"
* investigation[=].item = Reference(observation-troponin-001)
* prognosisCodeableConcept[+] = $SCT#67334001 "Guarded prognosis"
* note[+].text = "Klinische Untersuchung gemäß SMA-Diagnoseprotokoll. Blutentnahme für Genetik veranlasst."
* note[+].text = "Klinisches Bild vereinbar mit SMA Typ 1. Molekulargenetische Bestätigung ausstehend. Eltern über Therapieoptionen informiert."

// Clinical Impression - Nachsorge
Instance: clinical-impression-nachsorge
InstanceOf: ClinicalImpression
Usage: #example
Title: "Klinische Beurteilung - Nachsorge"
Description: "Nachsorgeuntersuchung nach Gentherapie"
* status = #completed
* subject = Reference(patient-sma-001)
* encounter = Reference(encounter-nachsorge-001)
* effectiveDateTime = "2024-08-12"
* date = "2024-08-12"
* assessor = Reference(Practitioner/example)
* previous = Reference(clinical-impression-erstvorstellung)
* summary = "Erste Nachsorge 14 Tage nach Gentherapie. Klinisch stabil. Troponin T weiter erhöht (106 ng/l), war jedoch bereits prätherapeutisch erhöht."
* finding[+].itemCodeableConcept = $SCT#442753009 "Troponin T above reference range"
* finding[=].itemReference = Reference(observation-troponin-004)
* finding[=].basis = "Troponin-Verlauf: 22.07: 92 ng/l, 28.07: 58 ng/l, 01.08: 57 ng/l, 12.08: 106 ng/l"
* finding[+].itemCodeableConcept = $SCT#409613000 "Aminotransferase normal"
* finding[=].basis = "ALT und AST normwertig"
* finding[+].itemCodeableConcept = $SCT#165555003 "Platelet count normal"
* finding[=].basis = "Thrombozytenzahl normwertig"
* problem[+] = Reference(Condition/condition-sma-clinical)
* problem[+] = Reference(Condition/condition-sma-genetic)
* prognosisCodeableConcept[+] = $SCT#170969009 "Prognosis guarded"
* note[+].text = "Standardisierte Nachsorgeuntersuchung nach Gentherapie gemäß Zentrumsprotokoll"
* note[+].text = "Troponin-Erhöhung präexistent, nicht therapieassoziiert. Gentherapie gut vertragen. Weiterführung der Prednisolon-Therapie. Nächste Kontrolle in 4 Wochen."

// Encounters
Instance: encounter-screening-001
InstanceOf: Encounter
Usage: #example
Title: "Neugeborenenscreening"
Description: "Neugeborenenscreening mit SMA-Verdacht"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#171228006 "Newborn screening"
* subject = Reference(patient-sma-001)
* period.start = "2024-07-18"
* period.end = "2024-07-18"
* reasonCode.text = "Neugeborenenscreening"

Instance: encounter-ambulant-001
InstanceOf: Encounter
Usage: #example
Title: "Ambulante Erstvorstellung"
Description: "Erstvorstellung im SMA-Zentrum"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#390906007 "Follow-up encounter"
* subject = Reference(patient-sma-001)
* period.start = "2024-07-22"
* period.end = "2024-07-22"
* diagnosis.condition = Reference(Condition/condition-sma-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

Instance: encounter-stationaer-001
InstanceOf: Encounter
Usage: #example
Title: "Stationärer Aufenthalt zur Gentherapie"
Description: "Stationäre Aufnahme für Gentherapie"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = $SCT#32485007 "Hospital admission"
* subject = Reference(patient-sma-001)
* period.start = "2024-07-29"
* period.end = "2024-07-30"
* diagnosis.condition = Reference(Condition/condition-sma-genetic)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"

Instance: encounter-nachsorge-001
InstanceOf: Encounter
Usage: #example
Title: "Ambulante Nachsorge"
Description: "Erster Nachsorgetermin nach Gentherapie"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#390906007 "Follow-up encounter"
* subject = Reference(patient-sma-001)
* period.start = "2024-08-12"
* period.end = "2024-08-12"
* diagnosis.condition = Reference(Condition/condition-sma-genetic)

