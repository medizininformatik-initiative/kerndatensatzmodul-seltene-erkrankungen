<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/HPO-Phaenotypisierung-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die Phänotypisierung gemäß Human Phenotype Ontology (HPO) im Rahmen der Diagnostik seltener Erkrankungen.
Es ermöglicht die strukturierte Erfassung phänotypischer Abnormalitäten und klinischer Merkmale.

### HL7 Phenomics IG Pattern

Dieses Profil folgt dem **HL7 Phenomics Exchange Implementation Guide** Pattern für die Dokumentation phänotypischer Merkmale. Dies bedeutet:

- **`value[x]` wird nicht verwendet** - stattdessen werden Status und Schweregrad in `component`-Elementen erfasst
- **`component[status]`** dokumentiert, ob der Phänotyp vorhanden (Present) oder explizit ausgeschlossen (Absent) ist
- **`component[severity]`** ermöglicht die Angabe eines Schweregrads (Mild, Moderate, Severe, Profound, Borderline)

Dieses Pattern ermöglicht eine präzisere und international interoperable Dokumentation phänotypischer Befunde.

### Zeitpunktbezogene Dokumentation

**Wichtig:** Jede HPO-Observation repräsentiert einen **spezifischen Zeitpunkt** der Phänotyp-Bewertung. Da sich Phänotypen im Verlauf einer Erkrankung verändern können, ist es essentiell:

- **Einzelne Beobachtungen** zu dokumentieren mit präzisen Zeitstempeln (`effectiveDateTime`)
- **Verlaufsänderungen** über das `component[status].interpretation` Element zu erfassen
- **Parallele Dokumentation** sowohl als Observation (Zeitpunkt) als auch als Symptom-Condition (Zeitraum) zu erwägen

**Hinweis zur Datumserfassung:** Das Datum (`effectiveDateTime`) ist **nicht** Teil der Kerndatensätze, **SOLL** aber wenn möglich erfasst werden, um die zeitliche Nachvollziehbarkeit der Phänotyp-Entwicklung zu gewährleisten.

Diese zeitpunktbezogene Erfassung ermöglicht die Nachvollziehbarkeit der Krankheitsprogression und Therapieeffekte bei seltenen Erkrankungen.

### Abgrenzung zur Symptom-Condition

> **Wichtig:** Die Unterscheidung zwischen **HPO-Observation** und **Symptom-Condition** ist klinisch bedeutsam:
> - **HPO-Observation**: Dokumentiert eine **einzelne Untersuchung/Bewertung** zu einem bestimmten Zeitpunkt (z.B. "Am 15.03.2024 wurde Arachnodaktylie festgestellt")
> - **Symptom-Condition**: Dokumentiert einen **persistierenden Zustand** über einen Zeitraum (z.B. "Patient hat seit dem Kindesalter Arachnodaktylie")

Ein vollständiges Beispiel dieser Unterscheidung findet sich im **Marfan-Syndrom Beispiel**: [marfan-beispiel](marfan-example-annotations.html)

Dort wird gezeigt, wie:
- Einzelne HPO-Beobachtungen bei verschiedenen Untersuchungsterminen erfasst werden
- Diese Beobachtungen als Evidenz für persistierende Symptom-Conditions dienen
- Mehrfache Bestätigungen desselben Phänotyps die Diagnosesicherheit erhöhen

### Verknüpfung mit Evidenz

Das `derivedFrom` Element ermöglicht die Verknüpfung der HPO-Beobachtung mit konkreten klinischen Befunden:
- **Laborwerte**: Referenz auf auffällige Laborergebnisse (z.B. erhöhte CK-Werte bei Muskeldystrophie)
- **Bildgebung**: Verweis auf radiologische oder andere bildgebende Befunde
- **Andere Beobachtungen**: Verknüpfung mit weiteren klinischen Assessments

Diese Referenzierung schafft Transparenz über die Grundlage der phänotypischen Einschätzung.

### Phänotyp-Status (Present/Absent)

Das `component[status]` Element dokumentiert, ob ein Phänotyp vorhanden oder explizit ausgeschlossen ist. Dies ermöglicht die präzise Dokumentation von "negativen" Befunden (Phänotyp wurde geprüft und ist nicht vorhanden).

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    }
  }]
}
```

#### Verfügbare Status-Codes

| LOINC Code | Anzeige | Beschreibung |
|------------|---------|--------------|
| LA9633-4 | Present | Phänotyp ist vorhanden |
| LA9634-2 | Absent | Phänotyp ist explizit ausgeschlossen |

### Schweregrad (Severity)

Das optionale `component[severity]` Element ermöglicht die Dokumentation des Schweregrads eines Phänotyps gemäß der HPO-Severity-Ontologie:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012824",
        "display": "Severity"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012826",
        "display": "Moderate"
      }]
    }
  }]
}
```

#### Verfügbare Schweregrad-Codes

| HPO Code | Anzeige | Beschreibung |
|----------|---------|--------------|
| HP:0012825 | Mild | Leichte Ausprägung |
| HP:0012826 | Moderate | Mäßige Ausprägung |
| HP:0012828 | Severe | Schwere Ausprägung |
| HP:0012829 | Profound | Sehr schwere Ausprägung |
| HP:0012827 | Borderline | Grenzwertige Ausprägung |

### Änderungsstatus von HPO-Phänotypen

Gemäß den Vorgaben des Modellvorhabens Genomsequenzierung unterstützt dieses Profil die Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Der Änderungsstatus wird im `component[status].interpretation` Element dokumentiert, zusammen mit dem Präsenz-Status:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    },
    "interpretation": [{
      "coding": [{
        "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code": "improved",
        "display": "Verbessert"
      }]
    }]
  }]
}
```

#### Verfügbare Änderungsstatus-Codes

| Code | Anzeige | Beschreibung |
|------|---------|--------------|
| newly-added | Neu hinzugefügt | Phänotyp wurde neu beobachtet/diagnostiziert |
| improved | Verbessert | Phänotyp hat sich verbessert |
| degraded | Verschlechtert | Phänotyp hat sich verschlechtert |
| no-longer-observed | Nicht mehr beobachtet | Phänotyp wird nicht mehr beobachtet/ist verschwunden |
| unchanged | Unverändert | Phänotyp ist unverändert geblieben |

---

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
