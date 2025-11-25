// Examples of Excluded (Refuted) Diagnoses for Rare Diseases
// IMPORTANT: Ausgeschlossene Diagnosen MÜSSEN dokumentiert werden!

// ============================================
// CLINICALLY EXCLUDED DIAGNOSES
// ============================================

// Example 1: Marfan Syndrome - Clinically Excluded
Instance: example-marfan-excluded-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Klinisch ausgeschlossen"
Description: "Beispiel einer klinisch ausgeschlossenen Marfan-Diagnose"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $condition-category#encounter-diagnosis  
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[+] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom (ausgeschlossen)"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/cardiology-consultation)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-12-15"
* recordedDate = "2024-12-15"
* abatementDateTime = "2024-12-15"  // When it was ruled out
// Evidence showing why it was excluded
* evidence[+].code.text = "Normale Aortenwurzel"
* evidence[=].detail = Reference(Observation/aortic-root-normal)
* evidence[+].code.text = "Keine Linsenluxation"
* evidence[=].detail = Reference(Observation/lens-examination-normal)
* note.text = "Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich."

// Example 2: Ehlers-Danlos Syndrome - Clinically Excluded
Instance: example-eds-excluded-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Ehlers-Danlos-Syndrom - Ausgeschlossen"
Description: "Differentialdiagnose EDS ausgeschlossen"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#Q79.6 "Ehlers-Danlos-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#98249 "Ehlers-Danlos syndrome"
* code.text = "Ehlers-Danlos-Syndrom (ausgeschlossen)"
* subject = Reference(Patient/example)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-11-20"
* recordedDate = "2024-11-20"
* abatementDateTime = "2024-11-20"
* evidence[+].code.text = "Beighton-Score niedrig"
* evidence[=].detail = Reference(Observation/beighton-score-low)
* note.text = "EDS als Differentialdiagnose ausgeschlossen. Beighton-Score 2/9, keine Hauthyperextensibilität, keine atrophen Narben."

// ============================================
// GENETICALLY EXCLUDED DIAGNOSES
// ============================================

// Example 3: SMA - Genetically Excluded
Instance: example-sma-excluded-genetic
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "SMA - Genetisch ausgeschlossen"
Description: "Spinale Muskelatrophie genetisch ausgeschlossen"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $SCT#782964007 "Genetic disease"
* code.coding[orphanet] = http://www.orpha.net#83330 "Spinal muscular atrophy"
* code.coding[+] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* code.text = "Spinale Muskelatrophie (genetisch ausgeschlossen)"
* subject = Reference(Patient/example)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-07-26"
* recordedDate = "2024-07-26"
* abatementDateTime = "2024-07-26"
// Genetic evidence showing normal results
* evidence[+].code = $SCT#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/molgen-smn1-normal-copies)
* evidence[+].code = $SCT#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/molgen-sma-negative)
* note.text = "SMN1-Gen: 2 Kopien nachgewiesen (Normalbefund). SMN2-Gen: 2 Kopien. SMA genetisch ausgeschlossen."

// Example 4: Duchenne MD - Genetically Excluded, Becker MD confirmed instead
Instance: example-dmd-excluded-bmd-confirmed
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Duchenne ausgeschlossen - Becker bestätigt"
Description: "Duchenne-Muskeldystrophie ausgeschlossen, stattdessen Becker-Muskeldystrophie"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $SCT#782964007 "Genetic disease"
* code.coding[icd10-gm] = $ICD10GM#G71.0 "Muskeldystrophie"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#98896 "Duchenne muscular dystrophy"
* code.coding[+] = http://omim.org#310200 "Duchenne muscular dystrophy"
* code.text = "Duchenne-Muskeldystrophie (ausgeschlossen)"
* subject = Reference(Patient/example)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-09-15"
* recordedDate = "2024-09-15"
* abatementDateTime = "2024-09-15"
* evidence[+].code = $SCT#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/molgen-dmd-in-frame-deletion)
* note.text = "In-frame Deletion Exon 45-47 im DMD-Gen nachgewiesen. Vereinbar mit Becker-Muskeldystrophie, NICHT Duchenne. Duchenne-Muskeldystrophie ausgeschlossen."

// Example 5: Cystic Fibrosis - Excluded after positive screening
Instance: example-cf-excluded-after-screening
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Mukoviszidose - Nach positivem Screening ausgeschlossen"
Description: "CF nach auffälligem Neugeborenenscreening genetisch ausgeschlossen"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $SCT#782964007 "Genetic disease"
* code.coding[icd10-gm] = $ICD10GM#E84.9 "Zystische Fibrose, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[+] = http://omim.org#219700 "Cystic fibrosis"
* code.text = "Mukoviszidose (ausgeschlossen)"
* subject = Reference(Patient/example)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-08-25"
* recordedDate = "2024-08-25"
* abatementDateTime = "2024-08-25"
// Note: This rules out the previous suspected diagnosis
* note[+].text = "Ausschluss der vorherigen Verdachtsdiagnose (cf-suspected-screening)"
* evidence[+].code = $SCT#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/molgen-cftr-heterozygous-carrier)
* note.text = "Heterozygoter Anlageträger für F508del. Zweite Mutation ausgeschlossen. IRT-Erhöhung im Screening war transient. Mukoviszidose ausgeschlossen."

// ============================================
// DIFFERENTIAL DIAGNOSIS EXAMPLES
// ============================================

// Example 6: Multiple Excluded Differential Diagnoses
Instance: example-metabolic-myopathy-excluded
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Metabolische Myopathie - Ausgeschlossen"
Description: "Metabolische Myopathie als Differentialdiagnose ausgeschlossen"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#refuted
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#G71.3 "Mitochondriale Myopathie, anderenorts nicht klassifiziert"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#206966 "Mitochondrial myopathy"
* code.text = "Metabolische Myopathie (ausgeschlossen)"
* subject = Reference(Patient/example)
* extension[+].url = $condition-assertedDate
* extension[=].valueDateTime = "2024-10-01"
* recordedDate = "2024-10-01"
* abatementDateTime = "2024-10-01"
* evidence[+].code.text = "Laktat normal"
* evidence[=].detail = Reference(Observation/lactate-normal)
* evidence[+].code.text = "Muskelbiopsie unauffällig"
* evidence[=].detail = Reference(DiagnosticReport/muscle-biopsy-normal)
* note.text = "Metabolische Myopathie ausgeschlossen. Laktat in Ruhe und unter Belastung normwertig. Muskelbiopsie ohne Hinweise auf mitochondriale Pathologie."

// ============================================
// SUPPORTING OBSERVATIONS FOR EXCLUDED DIAGNOSES
// ============================================

Instance: aortic-root-normal
InstanceOf: Observation
Usage: #example
Title: "Aortenwurzel - Normalbefund"
Description: "Normale Aortenwurzel, schließt Marfan aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = $LNC#78176-5 "Aorta root Diameter by US 2D"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 32 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* referenceRange.low.value = 29
* referenceRange.high.value = 37
* referenceRange.low.unit = "mm"
* referenceRange.high.unit = "mm"

Instance: molgen-smn1-normal-copies
InstanceOf: Observation
Usage: #example
Title: "SMN1 - Normale Kopienanzahl"
Description: "2 Kopien SMN1 - schließt SMA aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = $SCT#280413001 "Normal result"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:11117 "SMN1"
* component[+].code.text = "Copy Number"
* component[=].valueInteger = 2
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normale Kopienanzahl des SMN1-Gens. SMA ausgeschlossen."

Instance: molgen-sma-negative
InstanceOf: DiagnosticReport
Usage: #example
Title: "SMA Genetik - Negativbefund"
Description: "Genetischer Test schließt SMA aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-07-26"
* result[+] = Reference(molgen-smn1-normal-copies)
* conclusion = "SMN1-Gen: 2 Kopien (Normalbefund). SMN2-Gen: 2 Kopien. Spinale Muskelatrophie ausgeschlossen."
* conclusionCode = $SCT#280413001 "Normal result"