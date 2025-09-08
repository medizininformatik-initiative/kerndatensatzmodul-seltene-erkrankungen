## CapabilityStatement

Das [CapabilityStatement](https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CapabilityStatement/mii-cps-se-capabilitystatement) definiert die erwarteten Fähigkeiten eines konformen Systems zur Implementierung des Kerndatensatzmoduls Seltene Erkrankungen der Medizininformatik-Initiative.

Es beschreibt die verpflichtenden Interaktionen, die ein konformes System unterstützen MUSS, einschließlich:

### Unterstützte Ressourcen

Das System MUSS folgende Ressourcen unterstützen:

- **Condition** - Für klinische und genetische Diagnosen sowie Symptome
- **ClinicalImpression** - Für klinische Beurteilungen und Assessments
- **Observation** - Für HPO-basierte phänotypische Beobachtungen und Vitalparameter
- **ResearchStudy** - Für Studieninformationen
- **ServiceRequest** - Für Studieneinschluss-Anfragen
- **Task** - Für Therapieempfehlungen
- **CarePlan** - Für Therapiepläne
- **FamilyMemberHistory** - Für Familienanamnese

### Unterstützte Interaktionen

Für alle Ressourcen MÜSSEN mindestens folgende Interaktionen unterstützt werden:

- `read` - Lesen einzelner Ressourcen
- `search-type` - Suche nach Ressourcen eines Typs

### Unterstützte Suchparameter

Das System MUSS die im CapabilityStatement definierten Suchparameter für jede Ressource unterstützen, einschließlich:

- Basis-Suchparameter (`_id`, `_lastUpdated`, `_profile`)
- Ressourcen-spezifische Suchparameter (z.B. `code`, `subject`, `encounter`)
- Composite-Suchparameter für komplexe Abfragen

### Konformität

Systeme, die Konformität zu diesem Modul beanspruchen, MÜSSEN:

1. Alle im CapabilityStatement als "SHALL" markierten Anforderungen erfüllen
2. Die definierten Profile für die jeweiligen Ressourcen unterstützen
3. Die spezifizierten Suchparameter implementieren
4. FHIR Version 4.0.1 verwenden

### Vollständiges CapabilityStatement

Das vollständige CapabilityStatement mit allen technischen Details kann hier eingesehen werden:

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CapabilityStatement/mii-cps-se-capabilitystatement, buttons}}