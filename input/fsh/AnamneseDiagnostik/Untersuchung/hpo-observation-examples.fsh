// HPO-coded Observation Examples for Clinical Diagnosis Evidence
// These observations represent phenotypic findings coded with HPO terms
// Using the MII_PR_Seltene_HPO_Assessment profile

// ============================================
// MARFAN SYNDROME PHENOTYPIC OBSERVATIONS
// ============================================

Instance: aortic-root-dilatation
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Aortenwurzeldilatation - HPO-kodiert"
Description: "Echokardiographisch nachgewiesene Aortenwurzeldilatation"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = $HPO#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = $SCT#251036003 "Aortic root dilatation"
* code.text = "Aortenwurzeldilatation"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* method = $SCT#40701008 "Echocardiography"
* note.text = "Aortenwurzeldurchmesser 48mm (Referenz <40mm)"

Instance: lens-dislocation
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Linsenluxation - HPO-kodiert"
Description: "Ectopia lentis bei Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0001083 "Ectopia lentis"
* code.coding[+] = $SCT#65814009 "Partial dislocation of lens"
* code.text = "Linsenluxation"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-15"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#81745001 "Eye structure"

Instance: tall-stature
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Hochwuchs - HPO-kodiert"
Description: "Pathologisch erhöhte Körpergröße"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = $HPO#HP:0000098 "Tall stature"
* code.coding[+] = $LNC#8302-2 "Body height"
* code.text = "Hochwuchs"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* note.text = "213cm - >99. Perzentile für Alter und Geschlecht"

Instance: arachnodactyly
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Arachnodaktylie - HPO-kodiert"
Description: "Spinnenfingrigkeit bei Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0001166 "Arachnodactyly"
* code.coding[+] = $SCT#62250003 "Arachnodactyly"
* code.text = "Arachnodaktylie"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-12-15"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Walker-Murdoch-Zeichen positiv, Steinberg-Zeichen positiv"

// ============================================
// NOONAN SYNDROME PHENOTYPIC OBSERVATIONS
// ============================================

Instance: hypertelorism
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Hypertelorismus - HPO-kodiert"
Description: "Vergrößerter Augenabstand"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0000316 "Hypertelorism"
* code.coding[+] = $SCT#22006008 "Hypertelorism"
* code.text = "Hypertelorismus"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Interpupillardistanz 42mm (Referenz <35mm)"

Instance: anteverted-nares
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Antevertierte Nares - HPO-kodiert"
Description: "Nach oben gerichtete Nasenlöcher"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0000463 "Anteverted nares"
* code.text = "Antevertierte Nasenlöcher"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

Instance: vsd
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Ventrikelseptumdefekt - HPO-kodiert"
Description: "Angeborener Ventrikelseptumdefekt"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = $HPO#HP:0001629 "Ventricular septal defect"
* code.coding[+] = $SCT#30288003 "Ventricular septal defect"
* code.text = "Ventrikelseptumdefekt"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = $SCT#40701008 "Echocardiography"
* note.text = "Perimembranöser VSD, Defektgröße 4mm"

Instance: lymphedema
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Lymphödem - HPO-kodiert"
Description: "Peripheres Lymphödem"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0001004 "Lymphedema"
* code.coding[+] = $SCT#234097001 "Lymphedema"
* code.text = "Lymphödem"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-10-20"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = $SCT#30021000 "Lower leg structure"
* note.text = "Beidseitiges Lymphödem der unteren Extremitäten"

// ============================================
// CYSTIC FIBROSIS PHENOTYPIC OBSERVATIONS
// ============================================

Instance: recurrent-respiratory-infections
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Rezidivierende Atemwegsinfekte - HPO-kodiert"
Description: "Häufige respiratorische Infektionen bei CF"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0002099 "Asthma"
* code.coding[+] = $SCT#195708003 "Recurrent upper respiratory tract infection"
* code.text = "Rezidivierende Atemwegsinfektionen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = ">6 Episoden/Jahr, Erreger: Pseudomonas aeruginosa"

Instance: chronic-diarrhea
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Chronische Diarrhoe - HPO-kodiert"
Description: "Chronische Durchfälle bei CF"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0002028 "Chronic diarrhea"
* code.coding[+] = $SCT#236071009 "Chronic diarrhea"
* code.text = "Chronische Diarrhoe"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Fettstühle, Malabsorption"

Instance: failure-to-thrive
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Gedeihstörung - HPO-kodiert"
Description: "Mangelhafte Gewichtszunahme"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = $HPO#HP:0001508 "Failure to thrive"
* code.coding[+] = $SCT#54840006 "Failure to thrive"
* code.text = "Gedeihstörung"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-10"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Gewicht 6.5kg (<3. Perzentile für Alter)"
