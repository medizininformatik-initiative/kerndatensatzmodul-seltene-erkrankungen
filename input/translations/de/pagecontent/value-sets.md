<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/value-sets.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die ValueSets auf den Artefakt-Seiten automatisch;
     hier stehen die MII-Hinweise dazu. -->

Diese Seite beschreibt die ValueSets des Moduls **Seltene Erkrankungen**
(Namenskonvention `MII_VS_<Modul>_<Name>`). Allgemeine Hinweise zur Verwendung
von Codes: siehe
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); die
zugrunde liegenden CodeSystems beschreibt die Seite
[CodeSystems](code-systems.html).

{:.bg-info}
**Expansionen:** ValueSet-Expansionen dieses Leitfadens werden über einen
FHIR-Terminologieserver erzeugt — über SU-TermServ, sofern das
Client-Zertifikat konfiguriert ist, sonst über den öffentlichen HL7-Server
`tx.fhir.org` (dann expandieren einige KDS-spezifische ValueSets ggf. nicht
vollständig).

> **Offen:** Welche SNOMED-CT-Edition und -Version dieses Modul bindet, ist hier
> noch nicht angegeben. MII-weit gilt die
> [Terminology Version Policy](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Terminology-Version-Policy)
> des Meta-Moduls.
{: .ig-highlight .ig-highlight-grey}

<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->

Das Modul definiert die folgenden ValueSets. Auch solche, die lediglich Codes einer externen Terminologie buendeln, stehen hier &mdash; ihr Canonical gehoert diesem Modul.

| Titel | Id | Zweck |
|---|---|---|
| MII VS SE Blutgruppe | [`mii-vs-seltene-blutgruppe`](ValueSet-mii-vs-seltene-blutgruppe.html) | ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1 |
| MII VS Seltene Erkrankungen Consanguinity | [`mii-vs-seltene-consanguinity`](ValueSet-mii-vs-seltene-consanguinity.html) | ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0. |
| MII VS SE Empfehlung Status Begründung | [`mii-vs-seltene-empfehlung-status-begruendung`](ValueSet-mii-vs-seltene-empfehlung-status-begruendung.html) | ValueSet für Begründung bei fehlender Empfehlung |
| MII VS SE HPO Age of Onset | [`mii-vs-seltene-hpo-age-of-onset`](ValueSet-mii-vs-seltene-hpo-age-of-onset.html) | Value set containing HPO terms for age of onset of diseases |
| MII VS Seltene Erkrankungen HPO Change Status | [`mii-vs-seltene-hpo-change-status`](ValueSet-mii-vs-seltene-hpo-change-status.html) | ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung |
| MII VS SE HPO Inheritance Pattern | [`mii-vs-seltene-hpo-inheritance-pattern`](ValueSet-mii-vs-seltene-hpo-inheritance-pattern.html) | Value set containing HPO terms for modes of inheritance |
| HPO Phenotypic Observation Codes | [`mii-vs-seltene-hpo-phenotypic-observation-codes`](ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.html) | Human Phenotype Ontology codes for phenotypic observations |
| HPO Phenotype Presence Status | [`mii-vs-seltene-hpo-presence-status`](ValueSet-mii-vs-seltene-hpo-presence-status.html) | LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern. |
| HPO Severity | [`mii-vs-seltene-hpo-severity`](ValueSet-mii-vs-seltene-hpo-severity.html) | HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern. |
| MII VS SE ICF Qualifier Kind | [`mii-vs-seltene-icf-beurteilungsmerkmal`](ValueSet-mii-vs-seltene-icf-beurteilungsmerkmal.html) | All qualifier kinds usable as a component code in the ICF assessment profile. |
| MII VS SE ICF Categories | [`mii-vs-seltene-icf`](ValueSet-mii-vs-seltene-icf.html) | All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin. |
| MII VS Seltene Erkrankungen NARSE Therapietyp | [`mii-vs-seltene-narse-therapietyp`](ValueSet-mii-vs-seltene-narse-therapietyp.html) | ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen |
| MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut) | [`mii-vs-seltene-nbs-acylcarnitine-dbs`](ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.html) | Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut) | [`mii-vs-seltene-nbs-aminoacid-dbs`](ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.html) | Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| MII VS Seltene Erkrankungen NBS alle Trockenblut-Analyte (LOINC) | [`mii-vs-seltene-nbs-dbs-all`](ValueSet-mii-vs-seltene-nbs-dbs-all.html) | Alle LOINC-Codes, deren Untersuchungsmaterial Trockenblut (dried blood spot) ist — intensional über die LOINC-Eigenschaft SYSTEM definiert und damit vollständig. Enthält Analyte, Quotienten, Panels und Interpretationscodes nebeneinander sowie Analytik ausserhalb des Neugeborenenscreenings; für klinisch abgegrenzte Teilmengen dienen die gruppierten ValueSets mii-vs-seltene-nbs-*-dbs. |
| MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut) | [`mii-vs-seltene-nbs-enzyme-activity-dbs`](ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.html) | Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden. |
| MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut) | [`mii-vs-seltene-nbs-hemoglobin-dbs`](ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.html) | Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. |
| MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut) | [`mii-vs-seltene-nbs-ratio-dbs`](ValueSet-mii-vs-seltene-nbs-ratio-dbs.html) | Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte. |
| MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten | [`mii-vs-seltene-nbs-target-analyte`](ValueSet-mii-vs-seltene-nbs-target-analyte.html) | Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird. |
| MII VS SE Penetrance | [`mii-vs-seltene-penetrance`](ValueSet-mii-vs-seltene-penetrance.html) | Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance. |
| MII VS Seltene Erkrankungen Symptom Change Status (Combined) | [`mii-vs-seltene-symptom-change-status-combined`](ValueSet-mii-vs-seltene-symptom-change-status-combined.html) | ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität. |
| Syndrome Category Value Set | [`mii-vs-seltene-syndrome-category`](ValueSet-mii-vs-seltene-syndrome-category.html) | Categories for classifying syndrome types in rare diseases |
| MII VS SE Therapieempfehlung Strategie - Medikamentös | [`mii-vs-seltene-therapieempfehlung-strategie-medikamentoes`](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.html) | ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös | [`mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes`](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.html) | ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| MII VS SE Therapieempfehlung Strategie | [`mii-vs-seltene-therapieempfehlung-strategie`](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.html) | ValueSet für Strategietypen von Therapieempfehlungen bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| MII VS SE Therapieempfehlung Typ | [`mii-vs-seltene-therapieempfehlung-typ`](ValueSet-mii-vs-seltene-therapieempfehlung-typ.html) | ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| Von SE betroffen Value Set | [`mii-vs-seltene-von-se-betroffen`](ValueSet-mii-vs-seltene-von-se-betroffen.html) | ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität. |

**Zurueckgezogen.** Die folgenden Artefakte bleiben aufloesbar, sollen in neuen Implementierungen aber nicht mehr verwendet werden:

| Titel | Id | Zweck |
|---|---|---|
| MII VS SE Clinical Diagnosis Category (retired) | [`mii-vs-seltene-clinical-diagnosis-category`](ValueSet-mii-vs-seltene-clinical-diagnosis-category.html) | RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code. |
| MII VS SE Genetic Basis (retired) | [`mii-vs-seltene-genetic-basis`](ValueSet-mii-vs-seltene-genetic-basis.html) | RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden. |

<!-- END GENERATED: artifact-list -->
