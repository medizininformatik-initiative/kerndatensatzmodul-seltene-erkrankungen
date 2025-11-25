// HPO-coded Observation Examples for Clinical Diagnosis Evidence
// These observations represent phenotypic findings coded with HPO terms

// ============================================
// MARFAN SYNDROME PHENOTYPIC OBSERVATIONS
// ============================================

Instance: aortic-root-dilatation
InstanceOf: Observation
Usage: #example
Title: "Aortenwurzeldilatation - HPO-kodiert"
Description: "Echokardiographisch nachgewiesene Aortenwurzeldilatation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://human-phenotype-ontology.org#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = $SCT#251036003 "Aortic root dilatation"
* code.text = "Aortenwurzeldilatation"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 48 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* referenceRange.high.value = 40
* referenceRange.high.unit = "mm"
* method = $SCT#40701008 "Echocardiography"

Instance: lens-dislocation
InstanceOf: Observation
Usage: #example
Title: "Linsenluxation - HPO-kodiert"
Description: "Ectopia lentis bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001083 "Ectopia lentis"
* code.coding[+] = $SCT#65814009 "Partial dislocation of lens"
* code.text = "Linsenluxation"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-15"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#81745001 "Eye structure"

Instance: tall-stature
InstanceOf: Observation
Usage: #example
Title: "Hochwuchs - HPO-kodiert"
Description: "Pathologisch erhöhte Körpergröße"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = http://human-phenotype-ontology.org#HP:0000098 "Tall stature"
* code.coding[+] = $LNC#8302-2 "Body height"
* code.text = "Hochwuchs"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 213 'cm' "cm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* note.text = ">99. Perzentile für Alter und Geschlecht"

Instance: arachnodactyly
InstanceOf: Observation
Usage: #example
Title: "Arachnodaktylie - HPO-kodiert"
Description: "Spinnenfingrigkeit bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001166 "Arachnodactyly"
* code.coding[+] = $SCT#62250003 "Arachnodactyly"
* code.text = "Arachnodaktylie"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* component[+].code.text = "Walker-Murdoch-Zeichen"
* component[=].valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code.text = "Steinberg-Zeichen"
* component[=].valueCodeableConcept = $SCT#10828004 "Positive"

// ============================================
// NOONAN SYNDROME PHENOTYPIC OBSERVATIONS
// ============================================

Instance: hypertelorism
InstanceOf: Observation
Usage: #example
Title: "Hypertelorismus - HPO-kodiert"
Description: "Vergrößerter Augenabstand"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0000316 "Hypertelorism"
* code.coding[+] = $SCT#22006008 "Hypertelorism"
* code.text = "Hypertelorismus"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* valueQuantity = 42 'mm' "mm"  // Interpupillardistanz
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* referenceRange.high.value = 35
* referenceRange.high.unit = "mm"
* component[+].code.text = "Clinical Assessment"
* component[=].valueCodeableConcept = $SCT#52101004 "Present"

Instance: anteverted-nares
InstanceOf: Observation
Usage: #example
Title: "Antevertierte Nares - HPO-kodiert"
Description: "Nach oben gerichtete Nasenlöcher"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0000463 "Anteverted nares"
* code.text = "Antevertierte Nasenlöcher"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

Instance: vsd
InstanceOf: Observation
Usage: #example
Title: "Ventrikelseptumdefekt - HPO-kodiert"
Description: "Angeborener Ventrikelseptumdefekt"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001629 "Ventricular septal defect"
* code.coding[+] = $SCT#30288003 "Ventricular septal defect"
* code.text = "Ventrikelseptumdefekt"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = $SCT#40701008 "Echocardiography"
* component[+].code.text = "Defektgröße"
* component[=].valueQuantity = 4 'mm' "mm"
* component[+].code.text = "Lokalisation"
* component[=].valueCodeableConcept.text = "Perimembranös"

Instance: lymphedema
InstanceOf: Observation
Usage: #example
Title: "Lymphödem - HPO-kodiert"
Description: "Peripheres Lymphödem"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001004 "Lymphedema"
* code.coding[+] = $SCT#234097001 "Lymphedema"
* code.text = "Lymphödem"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#30021000 "Lower leg structure"
* note.text = "Beidseitiges Lymphödem der unteren Extremitäten"

// ============================================
// CYSTIC FIBROSIS PHENOTYPIC OBSERVATIONS
// ============================================

Instance: recurrent-respiratory-infections
InstanceOf: Observation
Usage: #example
Title: "Rezidivierende Atemwegsinfekte - HPO-kodiert"
Description: "Häufige respiratorische Infektionen bei CF"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0002099 "Asthma"
* code.coding[+] = $SCT#195708003 "Recurrent upper respiratory tract infection"
* code.text = "Rezidivierende Atemwegsinfektionen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* component[+].code.text = "Häufigkeit"
* component[=].valueString = ">6 Episoden/Jahr"
* component[+].code.text = "Erreger"
* component[=].valueCodeableConcept.text = "Pseudomonas aeruginosa"

Instance: chronic-diarrhea
InstanceOf: Observation
Usage: #example
Title: "Chronische Diarrhoe - HPO-kodiert"
Description: "Chronische Durchfälle bei CF"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0002028 "Chronic diarrhea"
* code.coding[+] = $SCT#236071009 "Chronic diarrhea"
* code.text = "Chronische Diarrhoe"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Fettstühle, Malabsorption"

Instance: failure-to-thrive
InstanceOf: Observation
Usage: #example
Title: "Gedeihstörung - HPO-kodiert"
Description: "Mangelhafte Gewichtszunahme"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001508 "Failure to thrive"
* code.coding[+] = $SCT#54840006 "Failure to thrive"
* code.text = "Gedeihstörung"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* valueCodeableConcept = $SCT#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* component[+].code = $LNC#29463-7 "Body weight"
* component[=].valueQuantity = 6.5 'kg' "kg"
* component[=].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "Low"
* note.text = "Gewicht <3. Perzentile für Alter"