# Artefaktübersicht - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Seltene Erkrankungen CapabilityStatement  ](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Seltene Erkrankungen der Medizininformatik Initiative zu implementieren. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM SE  ](StructureDefinition-mii-lm-seltene.md) | MII LogicalModel Modul Seltene Erkraknungen |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Body Mass Index (BMI) of the patient  ](StructureDefinition-mii-pr-seltene-bodymassindex.md) | Describes the Body Mass Index (BMI) of the patient. |
| [ MII PR SE Blutgruppe  ](StructureDefinition-mii-pr-seltene-blutgruppe.md) | Observation-Profil für die Erfassung der Blutgruppe (AB0 und Rhesusfaktor) im Kontext seltener Erkrankungen |
| [ MII PR SE Clinical Diagnosis  ](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) | Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation. |
| [ MII PR SE Consanguinity  ](StructureDefinition-mii-pr-seltene-consanguinity.md) | Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf. |
| [ MII PR SE Familienanamnese  ](StructureDefinition-mii-pr-seltene-familienanamnese.md) | 
| | | |
| :--- | :--- | :--- |
| Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |
 |
| [ MII PR SE Geburtsgewicht  ](StructureDefinition-mii-pr-seltene-geburtsgewicht.md) | Gemessenes Geburtsgewicht. Bei seltenen Erkrankungen ein Ausgangswert für die Beurteilung von Gedeihstörungen, Makrosomie und intrauteriner Wachstumsrestriktion. |
| [ MII PR SE Geburtslänge  ](StructureDefinition-mii-pr-seltene-geburtslaenge.md) | Gemessene Körperlänge bei Geburt. Zusammen mit Geburtsgewicht und Kopfumfang der anthropometrische Ausgangsbefund, gegen den spätere Wachstumsverläufe bewertet werden. |
| [ MII PR SE Genetic Diagnosis  ](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) | Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing. |
| [ MII PR SE Gestationsalter bei Geburt  ](StructureDefinition-mii-pr-seltene-gestationsalter.md) | Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann. |
| [ MII PR SE Hüftumfang  ](StructureDefinition-mii-pr-seltene-hueftumfang.md) | Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien. |
| [ MII PR SE ICF Assessment  ](StructureDefinition-mii-pr-seltene-icf-assessment.md) | Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance). |
| [ MII PR SE Kopfumfang  ](StructureDefinition-mii-pr-seltene-kopfumfang.md) | Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil. |
| [ MII PR SE Registerteilnahme  ](StructureDefinition-mii-pr-seltene-registerteilnahme.md) | Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt. |
| [ MII PR SE Studieneinschluss Anfrage  ](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md) | Anfrage zum Studieneinschluss |
| [ MII PR SE Taillenumfang  ](StructureDefinition-mii-pr-seltene-taillenumfang.md) | Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien. |
| [ MII PR SE Therapieempfehlung Kombinationstherapie  ](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) | Therapieempfehlung für eine medikamentöse Kombinationstherapie |
| [ MII PR SE Therapieempfehlung Nicht-Medikamentös  ](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) | Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung) |
| [ MII PR SE Therapieempfehlung Systemische Therapie  ](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) | Therapieempfehlung für eine medikamentöse Systemische Therapie |
| [ MII PR SE Therapieplan  ](StructureDefinition-mii-pr-seltene-therapieplan.md) | Therapieplan |
| [ MII PR Seltene Erkrankungen Therapie Durchgeführt  ](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md) | Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). |
| [ MII Profile SE Clinical Impression  ](StructureDefinition-mii-pr-seltene-clinical-impression.md) | Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms. |
| [ MII Profile SE HPO Assessment  ](StructureDefinition-mii-pr-seltene-hpo-assessment.md) | Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities. |
| [ MII Profile SE Symptom Condition  ](StructureDefinition-mii-pr-seltene-symptom-condition.md) | Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile. |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX SE Empfehlung Priorität  ](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md) | Priorität der (einzelnen) Empfehlung |
| [ MII EX SE Empfehlung Publikation  ](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md) | Verweis auf Publikation der (einzelnen) Empfehlung |
| [ MII EX SE Penetrance  ](StructureDefinition-mii-ex-seltene-penetrance.md) | Extension to capture the penetrance of genetic variants associated with a rare disease |
| [ MII EX SE Register  ](StructureDefinition-mii-ex-seltene-register.md) | Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt. |
| [ MII_EX_Seltene_VonSEBetroffen  ](StructureDefinition-mii-ex-seltene-von-se-betroffen.md) | Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ HPO Phenotype Presence Status  ](ValueSet-mii-vs-seltene-hpo-presence-status.md) | LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern. |
| [ HPO Phenotypic Observation Codes  ](ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.md) | Human Phenotype Ontology codes for phenotypic observations |
| [ HPO Severity  ](ValueSet-mii-vs-seltene-hpo-severity.md) | HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern. |
| [ MII VS SE Blutgruppe  ](ValueSet-mii-vs-seltene-blutgruppe.md) | ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1 |
| [ MII VS SE Clinical Diagnosis Category (retired)  ](ValueSet-mii-vs-seltene-clinical-diagnosis-category.md) | RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code. |
| [ MII VS SE Empfehlung Status Begründung  ](ValueSet-mii-vs-seltene-empfehlung-status-begruendung.md) | ValueSet für Begründung bei fehlender Empfehlung |
| [ MII VS SE Genetic Basis (retired)  ](ValueSet-mii-vs-seltene-genetic-basis.md) | RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden. |
| [ MII VS SE HPO Age of Onset  ](ValueSet-mii-vs-seltene-hpo-age-of-onset.md) | Value set containing HPO terms for age of onset of diseases |
| [ MII VS SE HPO Inheritance Pattern  ](ValueSet-mii-vs-seltene-hpo-inheritance-pattern.md) | Value set containing HPO terms for modes of inheritance |
| [ MII VS SE ICF Categories  ](ValueSet-mii-vs-seltene-icf.md) | All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin. |
| [ MII VS SE ICF Qualifier Kind  ](ValueSet-mii-vs-seltene-icf-beurteilungsmerkmal.md) | All qualifier kinds usable as a component code in the ICF assessment profile. |
| [ MII VS SE Penetrance  ](ValueSet-mii-vs-seltene-penetrance.md) | Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance. |
| [ MII VS SE Therapieempfehlung Strategie  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.md) | ValueSet für Strategietypen von Therapieempfehlungen bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| [ MII VS SE Therapieempfehlung Strategie - Medikamentös  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.md) | ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| [ MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.md) | ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| [ MII VS SE Therapieempfehlung Typ  ](ValueSet-mii-vs-seltene-therapieempfehlung-typ.md) | ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| [ MII VS Seltene Erkrankungen Consanguinity  ](ValueSet-mii-vs-seltene-consanguinity.md) | ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0. |
| [ MII VS Seltene Erkrankungen HPO Change Status  ](ValueSet-mii-vs-seltene-hpo-change-status.md) | ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung |
| [ MII VS Seltene Erkrankungen NARSE Therapietyp  ](ValueSet-mii-vs-seltene-narse-therapietyp.md) | ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen |
| [ MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)  ](ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.md) | Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| [ MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)  ](ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.md) | Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| [ MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)  ](ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.md) | Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden. |
| [ MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)  ](ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.md) | Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| [ MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten  ](ValueSet-mii-vs-seltene-nbs-target-analyte.md) | Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird. |
| [ MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)  ](ValueSet-mii-vs-seltene-nbs-ratio-dbs.md) | Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte. |
| [ MII VS Seltene Erkrankungen NBS alle Trockenblut-Analyte (LOINC)  ](ValueSet-mii-vs-seltene-nbs-dbs-all.md) | Alle LOINC-Codes, deren Untersuchungsmaterial Trockenblut (dried blood spot) ist — intensional über die LOINC-Eigenschaft SYSTEM definiert und damit vollständig. Enthält Analyte, Quotienten, Panels und Interpretationscodes nebeneinander sowie Analytik ausserhalb des Neugeborenenscreenings; für klinisch abgegrenzte Teilmengen dienen die gruppierten ValueSets mii-vs-seltene-nbs-*-dbs. |
| [ MII VS Seltene Erkrankungen Symptom Change Status (Combined)  ](ValueSet-mii-vs-seltene-symptom-change-status-combined.md) | ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität. |
| [ Syndrome Category Value Set  ](ValueSet-mii-vs-seltene-syndrome-category.md) | Categories for classifying syndrome types in rare diseases |
| [ Von SE betroffen Value Set  ](ValueSet-mii-vs-seltene-von-se-betroffen.md) | ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS SE Empfehlung Status Begründung  ](CodeSystem-mii-cs-seltene-empfehlung-status-begruendung.md) | Begründung bei fehlender Empfehlung |
| [ MII CS SE ICF Qualifier Kind  ](CodeSystem-mii-cs-seltene-icf-beurteilungsmerkmal.md) | Names which ICF qualifier a component carries. This is a slot name, not a scale — the scales themselves are the seven BfArM code systems. Defined locally because neither the ICF nor BfArM publishes identifiers for the qualifier positions, and because capacity and performance share one scale and can only be told apart here. |
| [ MII CS SE Therapieempfehlung Strategie  ](CodeSystem-mii-cs-seltene-therapieempfehlung-strategie.md) | Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq |
| [ MII CS SE Therapieempfehlung Typ  ](CodeSystem-mii-cs-seltene-therapieempfehlung-typ.md) | Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq |
| [ MII CS Seltene Erkrankungen HPO Change Status  ](CodeSystem-mii-cs-seltene-hpo-change-status.md) | CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Eigene Codes des Moduls: HPO führt für diesen Zweck nichts. Sein Zweig Clinical course (HP:0031797) beschreibt den Verlauf der Krankheit — Onset, Pace of progression, Temporal pattern, Disease remission —, nicht die Veränderung eines einzelnen Phänotyps zwischen zwei Erhebungen. Vier der fünf Konzepte haben SNOMED-CT-Entsprechungen, die je Code unten angegeben sind; für newly-added führt SNOMED kein generisches Konzept. |
| [ MII CS Seltene Erkrankungen NARSE Therapietyp  ](CodeSystem-mii-cs-seltene-narse-therapietyp.md) | CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ ALT Labor - Post-therapeutisch  ](Observation-mii-exa-seltene-observation-alt-001.md) | ALT Wert nach Gentherapie |
| [ AST Labor - Post-therapeutisch  ](Observation-mii-exa-seltene-observation-ast-001.md) | AST Wert nach Gentherapie |
| [ Ambulante Erstvorstellung  ](Encounter-mii-exa-seltene-encounter-ambulant-001.md) | Erstvorstellung im SMA-Zentrum |
| [ Ambulante Nachsorge  ](Encounter-mii-exa-seltene-encounter-nachsorge-001.md) | Erster Nachsorgetermin nach Gentherapie |
| [ Antevertierte Nares - HPO-kodiert  ](Observation-mii-exa-seltene-anteverted-nares.md) | Nach oben gerichtete Nasenlöcher |
| [ Aortenklappeninsuffizienz  ](Observation-mii-exa-seltene-symptom-aortic-regurg.md) | Moderate Aortenklappeninsuffizienz Grad II |
| [ Aortenwurzel - Normalbefund  ](Observation-mii-exa-seltene-aortic-root-normal.md) | Normale Aortenwurzel, schließt Marfan aus |
| [ Aortenwurzeldilatation  ](Observation-mii-exa-seltene-symptom-aortic-root.md) | Pathologisch erweiterte Aortenwurzel |
| [ Aortenwurzeldilatation - HPO-kodiert  ](Observation-mii-exa-seltene-aortic-root-dilatation.md) | Echokardiographisch nachgewiesene Aortenwurzeldilatation |
| [ Arachnodaktylie - HPO-kodiert  ](Observation-mii-exa-seltene-arachnodactyly.md) | Spinnenfingrigkeit bei Marfan-Syndrom |
| [ Augenärztliche Konsultation  ](Encounter-mii-exa-seltene-encounter-ophthalmology.md) | Erstvorstellung beim Augenarzt wegen Katarakt |
| [ BRCA1 Pathogene Variante - MolGen  ](Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.md) | Pathogene BRCA1-Variante |
| [ BRCA1/2 Panel - Diagnostische Implikation  ](DiagnosticReport-mii-exa-seltene-molgen-brca-panel.md) | Hereditäres Karzinom-Panel |
| [ Beinlängendifferenz  ](Observation-mii-exa-seltene-observation-leg-asymmetry.md) | Beinlängendifferenz mit rechts verkürztem Bein |
| [ Beispiel Aortenwurzelersatz bei Marfan-Syndrom  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für Aortenwurzelersatz bei Marfan-Syndrom |
| [ Beispiel Einwilligung zur Registerteilnahme  ](Consent-mii-exa-seltene-register-einwilligung.md) | Das Probanden-Profil des Moduls Studie fordert consent mit 1..1 — bei einer Registeraufnahme ist die Einwilligung der Sorgeberechtigten ohnehin die Grundlage, die Pflichtangabe deckt sich also mit der Praxis und ist keine zusaetzliche Huerde. |
| [ Beispiel Ernährungstherapie-Empfehlung  ](ServiceRequest-mii-exa-seltene-example-nutrition-therapy-recommendation.md) | Beispiel einer Ernährungstherapie-Empfehlung bei Phenylketonurie |
| [ Beispiel Früherkennungsprogramm-Empfehlung  ](ServiceRequest-mii-exa-seltene-example-early-detection-recommendation.md) | Beispiel einer Empfehlung für regelmäßige Früherkennungsuntersuchungen |
| [ Beispiel Geburtsgewicht  ](Observation-mii-exa-seltene-geburtsgewicht.md) | Geburtsgewicht im Normbereich. Ausgangswert für die Beurteilung der bei SMA Typ 1 häufigen späteren Gedeihstörung. |
| [ Beispiel Geburtslänge  ](Observation-mii-exa-seltene-geburtslaenge.md) | Körperlänge bei Geburt, gemessen. |
| [ Beispiel Genetische Beratung  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für genetische Beratung |
| [ Beispiel Gentherapie bei SMA  ](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md) | Beispiel einer medikamentösen Therapieempfehlung für Gentherapie bei Spinaler Muskelatrophie |
| [ Beispiel Gestationsalter bei Geburt  ](Observation-mii-exa-seltene-gestationsalter.md) | Reifgeborenes in der 38. Woche. Bei SMA Typ 1 wichtig als Abgrenzung: die Muskelschwäche ist nicht durch Frühgeburtlichkeit erklärbar. |
| [ Beispiel Losartan bei Marfan-Syndrom  ](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md) | Beispiel einer medikamentösen Therapieempfehlung für Losartan zur Progressionshemmung bei Marfan-Syndrom |
| [ Beispiel NARSE Gentherapie bei SMA  ](Procedure-mii-exa-seltene-narse-gentherapie-sma.md) | Beispiel einer durchgeführten Gentherapie bei Spinaler Muskelatrophie |
| [ Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe  ](Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.md) | Beispiel einer durchgeführten Enzymersatztherapie bei Morbus Pompe |
| [ Beispiel Physiotherapie bei SMA  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für Physiotherapie bei Spinaler Muskelatrophie |
| [ Beispiel Register als ResearchStudy — ERN EURO-NMD  ](ResearchStudy-mii-exa-seltene-register-euro-nmd.md) | Das Register des European Reference Network für neuromuskuläre Erkrankungen, als ResearchStudy geführt. Ein Register ist inhaltlich eine Beobachtungsstudie; das ist keine Verlegenheitslösung, sondern die Voraussetzung dafür, dass ResearchSubject.study überhaupt darauf zeigen kann. |
| [ Beispiel Register-Katalogeintrag (Library)  ](Library-mii-exa-seltene-register-katalog-euro-nmd.md) | Derselbe Registerbestand als Katalogeintrag nach dem Profil mii-pr-studie-register des Moduls Studie. Steht neben der ResearchStudy, nicht an ihrer Stelle — eine Library kann kein Ziel von ResearchSubject.study sein. |
| [ Beispiel Registerteilnahme — ERN EURO-NMD  ](ResearchSubject-mii-exa-seltene-registerteilnahme.md) | Teilnahme des SMA-Kindes am EURO-NMD-Register. Die Kennung ist das registereigene Pseudonym, nicht die Patienten-ID des Standorts. |
| [ Body Mass Index (BMI) Example  ](Observation-mii-exa-seltene-bodymassindex.md) | Example of a Body Mass Index (BMI) observation for a patient. |
| [ CF Diagnostische Implikation - MolGen  ](DiagnosticReport-mii-exa-seltene-molgen-cf-diagnostic.md) | Mukoviszidose genetischer Befund |
| [ CFTR F508del - heterozygoter Anlagetraeger  ](Observation-mii-exa-seltene-molgen-cftr-heterozygous-carrier.md) | Nur eine CFTR-Mutation nachweisbar; schliesst Mukoviszidose aus |
| [ CFTR F508del Homozygot - MolGen Variante  ](Observation-mii-exa-seltene-molgen-variant-cftr-f508del-homozygous.md) | Homozygote F508del Mutation bei Mukoviszidose |
| [ Chronische Diarrhoe - HPO-kodiert  ](Observation-mii-exa-seltene-chronic-diarrhea.md) | Chronische Durchfälle bei CF |
| [ Consanguinity - Eltern blutsverwandt  ](Observation-mii-exa-seltene-consanguinity.md) | Beispiel: Bei einem Indexpatienten mit Verdacht auf eine autosomal-rezessive seltene Erkrankung ist dokumentiert, dass die Eltern blutsverwandt sind (Cousins 1. Grades). |
| [ DMD Exon 45 - Diagnostische Implikation (Duchenne)  ](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd-duchenne.md) | Diagnostischer Bericht Duchenne-Muskeldystrophie |
| [ DMD Exon 45 Deletion - MolGen Variante  ](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.md) | Out-of-frame Deletion im DMD-Gen (Exon 45) — fuehrt zu Duchenne |
| [ DMD Exon 45-47 - Diagnostische Implikation (Becker)  ](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd.md) | Diagnostischer Bericht: in-frame Deletion, Becker- statt Duchenne-Muskeldystrophie |
| [ DMD Exon 45-47 Deletion - MolGen Variante  ](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md) | In-frame Deletion im DMD-Gen (Exons 45-47) — vereinbar mit Becker, nicht mit Duchenne |
| [ Duchenne ausgeschlossen - Becker bestätigt  ](Condition-mii-exa-seltene-example-dmd-excluded-bmd-confirmed.md) | Duchenne-Muskeldystrophie ausgeschlossen, stattdessen Becker-Muskeldystrophie |
| [ Duchenne-Muskeldystrophie - Genetisch bestätigt  ](Condition-mii-exa-seltene-example-dmd-genetic-diagnosis.md) | Beispiel einer genetisch bestätigten Duchenne-Muskeldystrophie |
| [ Echokardiographie - Aortenklappeninsuffizienz  ](Observation-mii-exa-seltene-observation-echo-av.md) | Beurteilung der Aortenklappeninsuffizienz |
| [ Echokardiographie - Aortenwurzeldurchmesser  ](Observation-mii-exa-seltene-observation-echo-aortic.md) | Aortenwurzeldurchmesser in der Echokardiographie |
| [ Echokardiographie - Mitralklappeninsuffizienz  ](Observation-mii-exa-seltene-observation-echo-mv.md) | Beurteilung der Mitralklappeninsuffizienz |
| [ Ehlers-Danlos-Syndrom - Ausgeschlossen  ](Condition-mii-exa-seltene-example-eds-excluded-clinical.md) | Differentialdiagnose EDS ausgeschlossen |
| [ FBN1 Gen - Pathogene Mutation  ](Observation-mii-exa-seltene-variant-fbn1-001.md) | Pathogene FBN1-Mutation bei Marfan-Syndrom |
| [ Familienanamnese - Urgroßmutter mit Muskelerkrankung  ](FamilyMemberHistory-mii-exa-seltene-family-history-001.md) | Urgroßmutter mit unbekannter Muskelerkrankung |
| [ Gedeihstörung - HPO-kodiert  ](Observation-mii-exa-seltene-failure-to-thrive.md) | Mangelhafte Gewichtszunahme |
| [ Generalisierte Hypermobilitaet - ausgeschlossen  ](Observation-mii-exa-seltene-beighton-score-low.md) | Beighton-Score 2/9; generalisierte Gelenkhypermobilitaet ausgeschlossen |
| [ Gentherapie Verabreichung  ](Procedure-mii-exa-seltene-procedure-gentherapy-001.md) | Verabreichung des Gentherapeutikums für SMA |
| [ Geplante Aortenwurzelersatz-Operation  ](Procedure-mii-exa-seltene-procedure-aortic-planned.md) | Geplante David-Operation (Valve-sparing root replacement) |
| [ Geplante Herzchirurgie  ](Encounter-mii-exa-seltene-encounter-surgery-planned.md) | Geplanter stationärer Aufenthalt für Aortenwurzelersatz |
| [ HPO Assessment - Excluded Phenotype  ](Observation-mii-exa-seltene-hpo-assessment-excluded.md) | Example of an explicitly excluded phenotype (arachnodactyly ruled out during Marfan syndrome workup). |
| [ HPO Assessment - Present with Severity  ](Observation-mii-exa-seltene-hpo-assessment-severity.md) | Example of a phenotype with both status (present) and severity grading. Demonstrates HL7 Phenomics IG component pattern. |
| [ HPO Assessment mit Änderungsstatus  ](Observation-mii-exa-seltene-hpo-assessment-change-status.md) | Beispiel einer HPO-Beobachtung mit dokumentiertem Änderungsstatus |
| [ HPO Symptom Observation Example  ](Observation-mii-exa-seltene-hpo-assessment.md) | Example of an HPO-based phenotypic observation for intellectual disability. |
| [ Hereditäres Mamma- und Ovarialkarzinom-Syndrom  ](Condition-mii-exa-seltene-example-brca1-genetic-diagnosis.md) | Genetisch bestätigtes BRCA1-assoziiertes Karzinom-Syndrom |
| [ Hochwuchs - HPO-kodiert  ](Observation-mii-exa-seltene-tall-stature.md) | Pathologisch erhöhte Körpergröße |
| [ Humangenetische Beratung (generisch)  ](Encounter-mii-exa-seltene-encounter-genetic-consultation.md) | Ambulante humangenetische Beratung des generischen Beispielpatienten |
| [ Hypertelorismus - HPO-kodiert  ](Observation-mii-exa-seltene-hypertelorism.md) | Vergrößerter Augenabstand |
| [ Hüftumfang Beispiel  ](Observation-mii-exa-seltene-hueftumfang.md) | Beispiel einer Hüftumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ ICF example — activities and participation (chapter d), capacity vs performance  ](Observation-mii-exa-seltene-icf-aktivitaet.md) | Eating in SMA type 1, and the reason chapter d takes two qualifiers rather than one. Without assistance the child cannot feed orally at all — capacity is a complete problem. With a gastrostomy in place, nutrition in daily life is only moderately impaired — performance is markedly better. The gap between the two IS the measured effect of the assistive device; a model with a single value would have had to discard one of the two numbers and would have said something false either way. |
| [ ICF example — body function (chapter b), one qualifier  ](Observation-mii-exa-seltene-icf-koerperfunktion.md) | Muscle power functions in SMA type 1, graded as a complete problem. Chapter b takes exactly one qualifier; invariant mii-icf-1 rejects any other component here. |
| [ ICF example — body structure (chapter s), three qualifiers  ](Observation-mii-exa-seltene-icf-koerperstruktur.md) | Spinal cord in SMA type 1: degeneration of the anterior horn cells. The only chapter that takes three qualifiers at once — extent, nature of the change and anatomical location. This is the case a single value[x] could never have carried, which is why the profile uses components. |
| [ ICF example — environmental factor (chapter e), facilitator  ](Observation-mii-exa-seltene-icf-umweltfaktor.md) | Assistive products for mobility, graded as a substantial FACILITATOR. Environmental factors are the one chapter with a two-sided scale, and BfArM resolves it by putting the sign into the code itself: facilitators run +0 to +4, barriers .0 to .4. Invariant mii-icf-5 forbids grading the same factor as both at once. |
| [ Kardiologische Erstvorstellung  ](Encounter-mii-exa-seltene-encounter-cardiology.md) | Ambulante kardiologische Erstvorstellung bei Thoraxschmerzen |
| [ Kardiologische Vorstellung (generisch)  ](Encounter-mii-exa-seltene-encounter-cardiology-consultation.md) | Ambulante kardiologische Vorstellung des generischen Beispielpatienten |
| [ Katarakt bilateral  ](Condition-mii-exa-seltene-condition-cataract.md) | Beidseitige Katarakt bei Marfan-Syndrom |
| [ Katarakt bilateral  ](Observation-mii-exa-seltene-symptom-cataract.md) | Beidseitige Katarakt als ophthalmologische Manifestation |
| [ Katarakt-Operation  ](Procedure-mii-exa-seltene-procedure-cataract-surgery.md) | Phakoemulsifikation mit Intraokularlinsenimplantation |
| [ Katarakt-Operation Aufenthalt  ](Encounter-mii-exa-seltene-encounter-cataract-surgery.md) | Tagesklinischer Aufenthalt für Katarakt-Operation |
| [ Klinische Beurteilung - Erstvorstellung  ](ClinicalImpression-mii-exa-seltene-clinical-impression-erstvorstellung.md) | Initiale klinische Beurteilung bei Erstvorstellung im SMA-Zentrum |
| [ Klinische Beurteilung - Nachsorge  ](ClinicalImpression-mii-exa-seltene-clinical-impression-nachsorge.md) | Nachsorgeuntersuchung nach Gentherapie |
| [ Konsultation ZSE bei V.a. Marfan-Syndrom  ](ClinicalImpression-mii-exa-seltene-clinical-impression-seltene-assessment.md) | Konsultation im Zentrum für Seltene Erkrankungen mit kardiologischer Mitbeurteilung bei V.a. Marfan-Syndrom |
| [ Kopfumfang Beispiel  ](Observation-mii-exa-seltene-kopfumfang.md) | Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ Körpergröße - Hochwuchs  ](Observation-mii-exa-seltene-observation-height-001.md) | Pathologisch erhöhte Körpergröße bei Marfan-Syndrom |
| [ Laktat - Normalbefund  ](Observation-mii-exa-seltene-lactate-normal.md) | Laktat in Ruhe normwertig; spricht gegen metabolische Myopathie |
| [ Linsenluxation - HPO-kodiert  ](Observation-mii-exa-seltene-lens-dislocation.md) | Ectopia lentis bei Marfan-Syndrom |
| [ Linsenluxation - ausgeschlossen  ](Observation-mii-exa-seltene-lens-examination-normal.md) | Ectopia lentis spaltlampenmikroskopisch ausgeschlossen; Ghent-Kriterium nicht erfuellt |
| [ Losartan Therapie  ](MedicationStatement-mii-exa-seltene-medication-losartan.md) | Losartan zur Progressionshemmung der Aortenwurzeldilatation |
| [ Lymphödem - HPO-kodiert  ](Observation-mii-exa-seltene-lymphedema.md) | Peripheres Lymphödem |
| [ MII EXA SE Beispielpatient  ](Patient-mii-exa-seltene-patient.md) | Generischer Beispielpatient des Moduls Seltene Erkrankungen, referenziert von den Beispielen, die keinen eigenen Fallbezug haben. Fuer die ausgearbeiteten Fallbeispiele siehe mii-exa-seltene-patient-sma-001 und mii-exa-seltene-patient-marfan-001. |
| [ MII Example SE Symptom Condition  ](Condition-mii-exa-seltene-symptom-condition.md) | Example of a symptom condition in the context of rare diseases using HPO codes |
| [ Marfan Patient - 19-jähriger Mann  ](Patient-mii-exa-seltene-patient-marfan-001.md) | 19-jähriger männlicher Patient mit bestätigtem Marfan-Syndrom |
| [ Marfan-Syndrom - Genetische Diagnose  ](Condition-mii-exa-seltene-condition-marfan-genetic.md) | Genetisch bestätigtes Marfan-Syndrom mit FBN1-Mutation |
| [ Marfan-Syndrom - Klinisch ausgeschlossen  ](Condition-mii-exa-seltene-example-marfan-excluded-clinical.md) | Beispiel einer klinisch ausgeschlossenen Marfan-Diagnose |
| [ Marfan-Syndrom - Klinische Diagnose  ](Condition-mii-exa-seltene-condition-marfan-clinical.md) | Klinisch bestätigtes Marfan-Syndrom |
| [ Marfan-Syndrom - Klinische Diagnose  ](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md) | Beispiel einer klinischen Diagnose des Marfan-Syndroms basierend auf phänotypischen Merkmalen |
| [ Marfan-Syndrom - Verdacht  ](Condition-mii-exa-seltene-condition-marfan-suspected.md) | Verdacht auf Marfan-Syndrom |
| [ Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle  ](Bundle-mii-exa-seltene-bundle-marfan-complete.md) | Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall |
| [ Metabolische Myopathie - Ausgeschlossen  ](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md) | Metabolische Myopathie als Differentialdiagnose ausgeschlossen |
| [ Mitralklappeninsuffizienz  ](Observation-mii-exa-seltene-symptom-mitral-regurg.md) | Milde Mitralklappeninsuffizienz Grad I |
| [ Mukoviszidose - Genetisch bestätigt  ](Condition-mii-exa-seltene-example-cf-genetic.md) | Genetisch bestätigte Mukoviszidose |
| [ Mukoviszidose - Klinischer Verdacht  ](Condition-mii-exa-seltene-example-cf-clinical.md) | Initiale klinische Verdachtsdiagnose Mukoviszidose |
| [ Mukoviszidose - Nach positivem Screening ausgeschlossen  ](Condition-mii-exa-seltene-example-cf-excluded-after-screening.md) | CF nach auffälligem Neugeborenenscreening genetisch ausgeschlossen |
| [ Muskelbiopsie - Normalbefund  ](DiagnosticReport-mii-exa-seltene-muscle-biopsy-normal.md) | Muskelbiopsie ohne Hinweis auf mitochondriale Pathologie |
| [ Neugeborenenscreening  ](Encounter-mii-exa-seltene-encounter-screening-001.md) | Neugeborenenscreening mit SMA-Verdacht |
| [ Noonan-Syndrom - Klinische Diagnose  ](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md) | Beispiel einer klinischen Diagnose des Noonan-Syndroms |
| [ PAH c.1222C>T - MolGen Variante  ](Observation-mii-exa-seltene-molgen-variant-pah-pku.md) | Pathogene PAH-Variante p.Arg408Trp bei Phenylketonurie |
| [ Phenylketonurie - Genetische Diagnose  ](Condition-mii-exa-seltene-condition-pku-diagnosis.md) | Genetisch bestätigte Phenylketonurie (PKU) |
| [ Rezidivierende Atemwegsinfekte - HPO-kodiert  ](Observation-mii-exa-seltene-recurrent-respiratory-infections.md) | Häufige respiratorische Infektionen bei CF |
| [ SMA - Genetisch ausgeschlossen  ](Condition-mii-exa-seltene-example-sma-excluded-genetic.md) | Spinale Muskelatrophie genetisch ausgeschlossen |
| [ SMA Diagnostische Implikation - MolGen  ](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-implication-sma.md) | Diagnostischer Bericht zur SMA-Genetik |
| [ SMA Fallbeispiel - Vollständiges Transaction Bundle  ](Bundle-mii-exa-seltene-bundle-sma-complete.md) | Transaction Bundle mit allen Ressourcen für den SMA Fall inkl. Diagnoseverlauf |
| [ SMA Genetik - Negativbefund  ](DiagnosticReport-mii-exa-seltene-molgen-sma-negative.md) | Genetischer Test schließt SMA aus |
| [ SMA Genetische Diagnose  ](Condition-mii-exa-seltene-condition-sma-genetic.md) | SMA Typ 1, molekulargenetisch bestätigt durch SMN1-Deletion |
| [ SMA Klinische Diagnose  ](Condition-mii-exa-seltene-condition-sma-clinical.md) | Klinische Diagnose SMA Typ 1 bei Erstvorstellung |
| [ SMA Neugeborenenscreening Ergebnis  ](Observation-mii-exa-seltene-observation-sma-screening.md) | Positives SMA-Screening beim Neugeborenenscreening |
| [ SMA Patient - Neugeborenes Mädchen  ](Patient-mii-exa-seltene-patient-sma-001.md) | Neugeborenes Mädchen mit bestätigter SMA Typ 1 |
| [ SMA Typ 1 - Genetisch bestätigte Diagnose  ](Condition-mii-exa-seltene-example-sma-genetic-diagnosis.md) | Beispiel einer genetisch bestätigten Diagnose der spinalen Muskelatrophie Typ 1 |
| [ SMA Verdacht - Neugeborenenscreening  ](Condition-mii-exa-seltene-condition-sma-suspected.md) | Verdacht auf SMA beim Neugeborenenscreening |
| [ SMN1 - Normale Kopienanzahl  ](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md) | 2 Kopien SMN1 - schließt SMA aus |
| [ SMN1 Gen - Homozygote Deletion  ](Observation-mii-exa-seltene-variant-smn1-001.md) | 0 Kopien des SMN1-Gens nachgewiesen |
| [ SMN1 Gen Deletion - MolGen Variante  ](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md) | Homozygote Deletion des SMN1-Gens bei SMA |
| [ SMN2 Gen - Kopienanzahl  ](Observation-mii-exa-seltene-variant-smn2-001.md) | 2 Kopien des SMN2-Gens nachgewiesen |
| [ Stationärer Aufenthalt zur Gentherapie  ](Encounter-mii-exa-seltene-encounter-stationaer-001.md) | Stationäre Aufnahme für Gentherapie |
| [ Studieneinschlussempfehlung  ](ServiceRequest-mii-exa-seltene-studieneinschluss-anfrage.md) | Empfehlung, den Patienten fuer eine Studie zu evaluieren |
| [ Taillenumfang Beispiel  ](Observation-mii-exa-seltene-taillenumfang.md) | Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ Therapieplan Example  ](CarePlan-mii-exa-seltene-therapieplan.md) | Example of a Therapieplan for a patient. |
| [ Thoraxschmerzen  ](Observation-mii-exa-seltene-symptom-chest-pain.md) | Akute Thoraxschmerzen als Präsentationssymptom |
| [ Thrombozytenzahl - Post-therapeutisch  ](Observation-mii-exa-seltene-observation-plt-001.md) | Thrombozytenzahl nach Gentherapie |
| [ Troponin T hs - 01.08.2024  ](Observation-mii-exa-seltene-observation-troponin-003.md) | Troponin T hochsensitiv nach Therapie |
| [ Troponin T hs - 12.08.2024  ](Observation-mii-exa-seltene-observation-troponin-004.md) | Troponin T hochsensitiv bei Nachsorge |
| [ Troponin T hs - 22.07.2024  ](Observation-mii-exa-seltene-observation-troponin-001.md) | Troponin T hochsensitiv Baseline |
| [ Troponin T hs - 28.07.2024  ](Observation-mii-exa-seltene-observation-troponin-002.md) | Troponin T hochsensitiv vor Therapie |
| [ Ventrikelseptumdefekt - HPO-kodiert  ](Observation-mii-exa-seltene-vsd.md) | Angeborener Ventrikelseptumdefekt |
| [ mii-exa-seltene-familienanamnese  ](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md) | Example Patient Family Anamnesis |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-seltene-manifest  ](Parameters-mii-param-seltene-manifest.md) |

