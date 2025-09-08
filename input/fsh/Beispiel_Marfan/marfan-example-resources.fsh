// Marfan Syndrome Case Example FHIR Resources

// Patient Resource
Instance: patient-marfan-001
InstanceOf: Patient
Usage: #example
Title: "Marfan Patient - 19-jähriger Mann"
Description: "19-jähriger männlicher Patient mit bestätigtem Marfan-Syndrom"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/patient-id"
* identifier.value = "MRF-2024-001"
* gender = #male
* birthDate = "2005-01-01"  // Approximated - 19 years old in 2024

// Marfan Syndrome Diagnosis - Suspected
Instance: condition-marfan-suspected
InstanceOf: MII_PR_SE_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Verdacht"
Description: "Verdacht auf Marfan-Syndrom"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = $SCT#19346006 "Marfan syndrome"
* code.text = "Verdacht auf Marfan-Syndrom"
* subject = Reference(patient-marfan-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-12-10"
* recordedDate = "2024-12-10"
* note.text = "Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation"

// Marfan Syndrome Diagnosis - Clinical
Instance: condition-marfan-clinical
InstanceOf: MII_PR_SE_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Klinische Diagnose"
Description: "Klinisch bestätigtes Marfan-Syndrom"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = $SCT#19346006 "Marfan syndrome"
* code.coding[hpo] = http://hpo.jax.org/app/#HP:0008138 "Marfan syndrome"
* code.text = "Marfan-Syndrom"
* subject = Reference(patient-marfan-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-12-15"
* recordedDate = "2024-12-15"
* encounter = Reference(encounter-cardiology)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0002616 "Aortic root aneurysm"
* evidence[=].detail = Reference(Observation/symptom-aortic-root)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0001659 "Aortic regurgitation"
* evidence[=].detail = Reference(Observation/symptom-aortic-regurg)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0001653 "Mitral regurgitation"
* evidence[=].detail = Reference(Observation/symptom-mitral-regurg)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0000098 "Tall stature"
* evidence[=].detail = Reference(Observation/observation-height-001)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0100559 "Lower limb asymmetry"
* evidence[=].detail = Reference(Observation/observation-leg-asymmetry)
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0100749 "Chest pain"
* evidence[=].detail = Reference(Observation/symptom-chest-pain)
* note.text = "Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation"

// Marfan Syndrome Diagnosis - Genetic
Instance: condition-marfan-genetic
InstanceOf: MII_PR_SE_GeneticDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Genetische Diagnose"
Description: "Genetisch bestätigtes Marfan-Syndrom mit FBN1-Mutation"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $SCT#782964007 "Genetic disease"
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = $SCT#19346006 "Marfan syndrome"
* code.coding[omim] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom - genetisch bestätigt"
* subject = Reference(patient-marfan-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-12-20"
* recordedDate = "2024-12-20"
* evidence[+].code = $SCT#410545006 "Genetic finding"
* evidence[=].detail = Reference(Observation/variant-fbn1-001)
* note.text = "FBN1-Mutation c.3217G>A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."

// FBN1 Gene Mutation
Instance: variant-fbn1-001
InstanceOf: Observation
Usage: #example
Title: "FBN1 Gen - Pathogene Mutation"
Description: "Pathogene FBN1-Mutation bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#55233-1 "Genetic variant assessment"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-20"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#2200 "FBN1"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.3217G>A"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Gly1073Arg"
* component[+].code = $LNC#53037-8 "Genetic variant clinical significance"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* note.text = "Pathogene FBN1-Mutation, krankheitsursächlich für Marfan-Syndrom"

// Cataract Diagnosis
Instance: condition-cataract
InstanceOf: MII_PR_SE_ClinicalDiagnosis
Usage: #example
Title: "Katarakt bilateral"
Description: "Beidseitige Katarakt bei Marfan-Syndrom"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#H26.9 "Katarakt, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* code.coding[sct] = $SCT#193570009 "Cataract"
* code.coding[hpo] = http://hpo.jax.org/app/#HP:0000518 "Cataract"
* code.text = "Katarakt bilateral"
* subject = Reference(patient-marfan-001)
* extension[+].url = $mii-ex-diagnose-feststellungsdatum
* extension[=].valueDateTime = "2024-10-15"
* recordedDate = "2024-10-15"
* encounter = Reference(encounter-ophthalmology)
* abatementDateTime = "2024-11-12"  // Resolved after surgery
* evidence[+].code.coding = http://hpo.jax.org/app/#HP:0000518 "Cataract"
* evidence[=].detail = Reference(Observation/symptom-cataract)
* note.text = "Katarakt bilateral, operativ versorgt"

// Phenotypic Observations - Height
Instance: observation-height-001
InstanceOf: Observation
Usage: #example
Title: "Körpergröße - Hochwuchs"
Description: "Pathologisch erhöhte Körpergröße bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $LNC#8302-2 "Body height"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 213 'cm' "cm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* bodySite = $SCT#38266002 "Entire body"
* component[+].code = http://hpo.jax.org/app/#HP:0000098 "Tall stature"
* component[=].valueString = "Pathologischer Hochwuchs >99. Perzentile"

// Phenotypic Observations - Leg Length Discrepancy
Instance: observation-leg-asymmetry
InstanceOf: Observation
Usage: #example
Title: "Beinlängendifferenz"
Description: "Beinlängendifferenz mit rechts verkürztem Bein"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = $SCT#271902003 "Leg length discrepancy"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept = $SCT#7771000 "Left"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#30021000 "Lower limb structure"
* component[+].code = http://hpo.jax.org/app/#HP:0100559 "Lower limb asymmetry"
* component[=].valueString = "Rechtes Bein verkürzt"

// Symptom - Chest Pain
Instance: symptom-chest-pain
InstanceOf: Observation
Usage: #example
Title: "Thoraxschmerzen"
Description: "Akute Thoraxschmerzen als Präsentationssymptom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://hpo.jax.org/app/#HP:0100749 "Chest pain"
* code.coding[+] = $SCT#29857009 "Chest pain"
* code.text = "Thoraxschmerzen"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept = $SCT#255212004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Symptom - Cataract
Instance: symptom-cataract
InstanceOf: Observation
Usage: #example
Title: "Katarakt bilateral"
Description: "Beidseitige Katarakt als ophthalmologische Manifestation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://hpo.jax.org/app/#HP:0000518 "Cataract"
* code.coding[+] = $SCT#193570009 "Cataract"
* code.text = "Katarakt bilateral"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-10-15"
* valueCodeableConcept = $SCT#51440002 "Bilateral"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#81745001 "Eye region structure"

// Cardiac Finding - Aortic Root Dilatation
Instance: symptom-aortic-root
InstanceOf: Observation
Usage: #example
Title: "Aortenwurzeldilatation"
Description: "Pathologisch erweiterte Aortenwurzel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://hpo.jax.org/app/#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = $SCT#60234000 "Aortic root dilatation"
* code.text = "Aortenwurzeldilatation"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 48 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* referenceRange.high.value = 40
* referenceRange.high.unit = "mm"
* referenceRange.text = "Normwert <40mm"

// Cardiac Finding - Aortic Regurgitation
Instance: symptom-aortic-regurg
InstanceOf: Observation
Usage: #example
Title: "Aortenklappeninsuffizienz"
Description: "Moderate Aortenklappeninsuffizienz Grad II"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://hpo.jax.org/app/#HP:0001659 "Aortic regurgitation"
* code.coding[+] = $SCT#60573004 "Aortic valve regurgitation"
* code.text = "Aortenklappeninsuffizienz"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.coding = $SCT#6736007 "Moderate"
* valueCodeableConcept.text = "Grad II"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Cardiac Finding - Mitral Regurgitation
Instance: symptom-mitral-regurg
InstanceOf: Observation
Usage: #example
Title: "Mitralklappeninsuffizienz"
Description: "Milde Mitralklappeninsuffizienz Grad I"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://hpo.jax.org/app/#HP:0001653 "Mitral regurgitation"
* code.coding[+] = $SCT#48724000 "Mitral valve regurgitation"
* code.text = "Mitralklappeninsuffizienz"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.coding = $SCT#255604002 "Mild"
* valueCodeableConcept.text = "Grad I"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Echocardiography - Aortic Root Measurement
Instance: observation-echo-aortic
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Aortenwurzeldurchmesser"
Description: "Aortenwurzeldurchmesser in der Echokardiographie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = $LNC#79992-2 "Aortic root diameter by US"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 48 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* method = $SCT#40701008 "Echocardiography"

// Echocardiography - Aortic Valve Assessment
Instance: observation-echo-av
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Aortenklappeninsuffizienz"
Description: "Beurteilung der Aortenklappeninsuffizienz"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = $LNC#80140-5 "Aortic valve regurgitation severity by US"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.text = "Grad II"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = $SCT#40701008 "Echocardiography"

// Echocardiography - Mitral Valve Assessment
Instance: observation-echo-mv
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Mitralklappeninsuffizienz"
Description: "Beurteilung der Mitralklappeninsuffizienz"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = $LNC#80186-8 "Mitral valve regurgitation severity by US"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.text = "Grad I"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = $SCT#40701008 "Echocardiography"

// Cataract Surgery Procedure
Instance: procedure-cataract-surgery
InstanceOf: Procedure
Usage: #example
Title: "Katarakt-Operation"
Description: "Phakoemulsifikation mit Intraokularlinsenimplantation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#5-144.5a "Extrakapsuläre Extraktion der Linse [ECCE]: Phakoemulsifikation: Mit Einführung einer kapselfixierten Hinterkammerlinse, monofokale Intraokularlinse"
* code.coding[+] = $SCT#54885007 "Phacoemulsification of cataract with intraocular lens implantation"
* code.text = "Phakoemulsifikation mit IOL-Implantation"
* subject = Reference(patient-marfan-001)
* performedDateTime = "2024-11-12"
* reasonReference = Reference(Condition/condition-cataract)
* outcome.text = "Erfolgreiche Linsenimplantation ohne Komplikationen"
* note.text = "Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen"

// Planned Aortic Root Replacement
Instance: procedure-aortic-planned
InstanceOf: Procedure
Usage: #example
Title: "Geplante Aortenwurzelersatz-Operation"
Description: "Geplante David-Operation (Valve-sparing root replacement)"
* status = #planned
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#5-354.0a "Andere Operationen an Herzklappen: Aortenklappe: Klappenrekonstruktion"
* code.coding[+] = $SCT#119564002 "Aortic root replacement"
* code.text = "Aortenwurzelersatz (David-Operation)"
* subject = Reference(patient-marfan-001)
* performedPeriod.start = "2025-03-15"
* reasonReference = Reference(Condition/condition-marfan-clinical)
* note.text = "Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation"

// Medication Statement - Losartan
Instance: medication-losartan
InstanceOf: MedicationStatement
Usage: #example
Title: "Losartan Therapie"
Description: "Losartan zur Progressionshemmung der Aortenwurzeldilatation"
* status = #active
* medicationCodeableConcept.coding[+] = http://www.whocc.no/atc#C09CA01 "Losartan"
* medicationCodeableConcept.coding[+] = $SCT#387069000 "Losartan"
* medicationCodeableConcept.text = "Losartan 50mg"
* subject = Reference(patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* reasonReference = Reference(Condition/condition-marfan-clinical)
* dosage.text = "50mg einmal täglich"
* dosage.route = $SCT#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 50 'mg' "mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* note.text = "Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom"

// Clinical Impression - Cardiology Referral from SE
Instance: clinical-impression-se-assessment
InstanceOf: MII_PR_SE_ClinicalImpression
Usage: #example
Title: "Konsultation ZSE bei V.a. Marfan-Syndrom"
Description: "Konsultation im Zentrum für Seltene Erkrankungen mit kardiologischer Mitbeurteilung bei V.a. Marfan-Syndrom"
* status = #completed
* subject = Reference(patient-marfan-001)
* encounter = Reference(encounter-cardiology)
* effectiveDateTime = "2024-12-15"
* date = "2024-12-15"
* assessor = Reference(Practitioner/example)
* summary = "19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert."
* problem[+] = Reference(condition-marfan-suspected)  // Reason for assessment (suspected diagnosis)
* finding[+].itemReference = Reference(condition-marfan-clinical)  // Clinical diagnosis as finding
* finding[+].itemReference = Reference(condition-marfan-genetic)  // Genetic diagnosis as finding
* finding[+].itemCodeableConcept = $SCT#249364003 "Aortic root dilatation"
* finding[=].itemReference = Reference(symptom-aortic-root)
* finding[+].itemCodeableConcept = $SCT#60573004 "Aortic valve regurgitation"
* finding[=].itemReference = Reference(symptom-aortic-regurg)
* finding[+].itemCodeableConcept = $SCT#48724000 "Mitral valve regurgitation"
* finding[=].itemReference = Reference(symptom-mitral-regurg)
* finding[+].itemCodeableConcept = $SCT#249620005 "Tall stature"
* finding[=].itemReference = Reference(observation-height-001)
* finding[+].itemCodeableConcept = $SCT#271902003 "Leg length discrepancy"
* finding[=].itemReference = Reference(observation-leg-asymmetry)
* investigation[+].code.text = "Echokardiographie"
* investigation[=].item[+] = Reference(observation-echo-aortic)
* investigation[=].item[+] = Reference(observation-echo-av)
* investigation[=].item[+] = Reference(observation-echo-mv)
* problem[+] = Reference(Condition/condition-marfan-clinical)
* problem[+] = Reference(Condition/condition-marfan-genetic)
* prognosisCodeableConcept[+] = $SCT#170969009 "Prognosis guarded"
* note[+].text = "Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet."
* note[+].text = "Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen."

// Encounters
Instance: encounter-ophthalmology
InstanceOf: Encounter
Usage: #example
Title: "Augenärztliche Konsultation"
Description: "Erstvorstellung beim Augenarzt wegen Katarakt"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#36228007 "Ophthalmic examination and evaluation"
* subject = Reference(patient-marfan-001)
* period.start = "2024-10-15"
* period.end = "2024-10-15"
* diagnosis.condition = Reference(Condition/condition-cataract)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

Instance: encounter-cataract-surgery
InstanceOf: Encounter
Usage: #example
Title: "Katarakt-Operation Aufenthalt"
Description: "Tagesklinischer Aufenthalt für Katarakt-Operation"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#SS "short stay"
* type = $SCT#305408004 "Admission to surgical department"
* subject = Reference(patient-marfan-001)
* period.start = "2024-11-12T07:00:00Z"
* period.end = "2024-11-12T15:00:00Z"
* diagnosis.condition = Reference(Condition/condition-cataract)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"

Instance: encounter-cardiology
InstanceOf: Encounter
Usage: #example
Title: "Kardiologische Erstvorstellung"
Description: "Ambulante kardiologische Erstvorstellung bei Thoraxschmerzen"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $SCT#185316007 "Cardiology consultation"
* subject = Reference(patient-marfan-001)
* period.start = "2024-12-15"
* period.end = "2024-12-15"
* diagnosis.condition = Reference(Condition/condition-marfan-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
* reasonCode.coding = $SCT#29857009 "Chest pain"
* reasonCode.text = "Thoraxschmerzen bei V.a. Marfan-Syndrom"

Instance: encounter-surgery-planned
InstanceOf: Encounter
Usage: #example
Title: "Geplante Herzchirurgie"
Description: "Geplanter stationärer Aufenthalt für Aortenwurzelersatz"
* status = #planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = $SCT#305565006 "Admission to cardiac surgery department"
* subject = Reference(patient-marfan-001)
* period.start = "2025-03-15"
* diagnosis.condition = Reference(Condition/condition-marfan-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* reasonCode.text = "Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom"