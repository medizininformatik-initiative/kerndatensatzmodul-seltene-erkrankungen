<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Symptom-Condition.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt symptombasierte Zustände im Kontext seltener Erkrankungen.
Es erfasst symptomatische Conditions mit zeitlichen Merkmalen und ergänzt das HPO Assessment Observation Profil.

### Beispiele für kodierte Symptome

Bei der Erfassung von Symptomen seltener Erkrankungen können verschiedene Kodiersysteme verwendet werden:

#### ICD-10-GM Codes
- **R04.0** (Epistaxis/Nasenbluten) - häufiges Symptom bei Von-Willebrand-Syndrom
- **S42.3** (Fraktur des Humerusschaftes) - typische pathologische Fraktur bei Osteogenesis imperfecta

#### SNOMED CT Codes für Laborauffälligkeiten
- **409675001** (Partial thromboplastin time increased) - verlängerte PTT bei Gerinnungsstörungen
- **166627004** (Serum alkaline phosphatase above reference range) - erhöhte alkalische Phosphatase bei Knochenstoffwechselstörungen
- **1153490002** (Serum creatine kinase above reference range) - erhöhte CK bei Muskeldystrophien

#### HPO Codes für körperliche Phänotypen
HPO ist ideal für die präzise Beschreibung körperlicher/phänotypischer Abnormalitäten:
- **HP:0000978** (Bruising susceptibility) - Neigung zu Hämatomen bei Von-Willebrand-Syndrom
- **HP:0002659** (Increased susceptibility to fractures) - Frakturneigung bei Osteogenesis imperfecta
- **HP:0000939** (Osteoporosis) - bei verschiedenen Skelettdysplasien
- **HP:0003198** (Myopathy) - bei Muskeldystrophien
- **HP:0001270** (Motor delay) - motorische Entwicklungsverzögerung bei neuromuskulären Erkrankungen

#### MONDO Codes (Sekundäre Harmonisierungsontologie)

> **Hinweis:** MONDO ist eine **sekundäre Harmonisierungsontologie** zur Verbesserung der internationalen Interoperabilität. Die primäre Kodierung erfolgt weiterhin über ICD-10-GM, SNOMED CT oder HPO. MONDO-Codes können **optional ergänzend** angegeben werden.

MONDO (Monarch Disease Ontology) harmonisiert verschiedene Klassifikationen (SNOMED CT, Orphanet, OMIM, ICD) und ermöglicht die Integration mit internationalen Standards wie [Phenopackets](https://phenopacket-schema.readthedocs.io/) und GA4GH:
- **MONDO:0007947** (Marfan syndrome) - entspricht Orpha:558, OMIM:154700
- **MONDO:0001516** (spinal muscular atrophy) - entspricht Orpha:70
- **MONDO:0009061** (cystic fibrosis) - entspricht Orpha:586, OMIM:219700

Weitere Informationen zu MONDO finden sich unter [Terminologien](code-systems.html).

---

### Verwendung

Das Symptom-Condition Profil wird verwendet für:
- Dokumentation von Symptomen als eigenständige Conditions
- Erfassung zeitlicher Verläufe von Symptomen
- Verknüpfung mit HPO-kodierten Beobachtungen
- Darstellung von Symptom-Clustern bei seltenen Erkrankungen

### Abgrenzung zu anderen Profilen

| Profil | Verwendung |
|--------|------------|
| **Symptom-Condition** | Symptome als eigenständige Zustände mit Verlauf |
| **HPO Assessment** | Einzelne phänotypische Beobachtungen |
| **Clinical Diagnosis** | Bestätigte klinische Diagnosen |
| **Genetic Diagnosis** | Genetisch bestätigte Diagnosen |

> **Wichtig:** Die Unterscheidung zwischen **Symptom-Condition** und **HPO-Observation** ist klinisch bedeutsam:
> - **Symptom-Condition**: Dokumentiert einen **persistierenden Zustand** über einen Zeitraum (z.B. "Patient hat seit dem Kindesalter Arachnodaktylie")
> - **HPO-Observation**: Dokumentiert eine **einzelne Untersuchung/Bewertung** zu einem bestimmten Zeitpunkt (z.B. "Am 15.03.2024 wurde Arachnodaktylie festgestellt")

Ein vollständiges Beispiel dieser Unterscheidung findet sich im **Marfan-Syndrom Beispiel**: [marfan-beispiel](marfan-example-annotations.html)

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
