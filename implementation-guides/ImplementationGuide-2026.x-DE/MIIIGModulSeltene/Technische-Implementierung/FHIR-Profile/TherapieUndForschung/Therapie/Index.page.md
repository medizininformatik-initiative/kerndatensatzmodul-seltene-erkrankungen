## {{page-title}}

Die Therapie-Profile des Moduls Seltene Erkrankungen ermöglichen die strukturierte Dokumentation von Therapieempfehlungen und -plänen für Patienten mit seltenen Erkrankungen. Die Profile unterscheiden klar zwischen medikamentösen und nicht-medikamentösen Therapieansätzen.

### Übersicht der Therapie-Profile

#### Therapieempfehlungen

**Medikamentöse Therapien (MedicationRequest-basiert):**
- [**Therapieempfehlung-Medikamentös**](Therapieempfehlung-Medikamentoes.page.md) - Einzelne medikamentöse Therapieempfehlungen
  - Systemische Therapien (Chemotherapie, Immuntherapie)
  - Gezielte Therapien (Targeted Therapy)
  - Gentherapien
  - Präventive Medikation
  
- [**Therapieempfehlung-Kombination**](Therapieempfehlung-Kombination.page.md) - Kombinationstherapien mit mehreren Medikamenten
  - Mehrfach-Medikation
  - Sequenzielle Therapieschemata

**Nicht-medikamentöse Therapien (ServiceRequest-basiert):**
- [**Therapieempfehlung-Nicht-Medikamentös**](Therapieempfehlung-Nicht-Medikamentoes.page.md) - Nicht-medikamentöse Interventionen
  - Operative Eingriffe
  - Physiotherapie und Rehabilitation
  - Ernährungstherapie
  - Psychologische Betreuung
  - Genetische Beratung

#### Therapieplanung

- [**Therapieplan**](Therapieplan.page.md) - Übergeordneter Behandlungsplan (CarePlan)
  - Integriert medikamentöse und nicht-medikamentöse Empfehlungen
  - Koordiniert verschiedene Therapieansätze
  - Dokumentiert Behandlungsziele und -verlauf

### Implementierungshinweise

#### Unterscheidung der Therapietypen

Die klare Trennung zwischen medikamentösen und nicht-medikamentösen Therapien erfolgt durch:

1. **Ressourcentyp**:
   - Medikamentös → `MedicationRequest`
   - Nicht-medikamentös → `ServiceRequest`

2. **Kodierung**:
   - Medikamente: ATC, PZN, UNII, INN
   - Prozeduren: OPS, SNOMED CT, LOINC

3. **Integration im Therapieplan**:
   - CarePlan.activity mit entsprechenden Slices
   - Referenzen auf die jeweiligen Request-Ressourcen

#### Workflow

1. **Empfehlung**: Therapievorschläge als "proposal" mit Status "draft"
2. **Genehmigung**: Übergang zu Status "active" und Intent "order"
3. **Durchführung**: Dokumentation über MedicationStatement/Administration bzw. Procedure
4. **Monitoring**: Verlaufskontrolle über Observation und DiagnosticReport

### Hintergrund: Modellvorhaben Genomsequenzierung

> **Hinweis:** Die Unterscheidung zwischen **Therapieplan** und **Therapieempfehlung** entstammt den Anforderungen des **Modellvorhabens Genomsequenzierung** für Seltene Erkrankungen.

In der klinischen Praxis bei seltenen Erkrankungen werden Therapieentscheidungen oft in interdisziplinären Fallkonferenzen getroffen:

- **Therapieempfehlungen** dokumentieren die Vorschläge von **Consiliarii** (beratenden Fachärzt:innen) aus der Fallkonferenz. Sie repräsentieren fachliche Empfehlungen, die noch nicht verbindlich umgesetzt wurden.

- **Therapiepläne** dokumentieren die Behandlungsplanung durch die **behandelnden Ärzt:innen**, die unter Berücksichtigung der Empfehlungen einen konkreten Behandlungsplan für den Patienten erstellen.

Diese Trennung ermöglicht eine klare Nachvollziehbarkeit der Entscheidungsfindung: Welche Therapien wurden empfohlen, welche wurden tatsächlich geplant und umgesetzt, und welche Abweichungen gab es zwischen Empfehlung und Umsetzung.

### Anwendungsbeispiele

#### Marfan-Syndrom
- Medikamentös: ACE-Hemmer (Losartan) zur Progressionshemmung
- Nicht-medikamentös: Aortenwurzelersatz bei Dilatation

#### Spinale Muskelatrophie (SMA)
- Medikamentös: Gentherapie (Onasemnogene abeparvovec)
- Nicht-medikamentös: Physiotherapie zur Funktionserhaltung

### Qualitätssicherung

Alle Therapieempfehlungen sollten:
- Mit Diagnosen verknüpft sein (`reasonReference`)
- Begründungen enthalten (`note`)
- Zeitangaben spezifizieren (`authoredOn`, `occurrence[x]`)
- Status korrekt pflegen (draft → active → completed)