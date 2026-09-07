<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Familienanamnese-FamilyMemberHistory.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die Familienanamnese im Kontext Seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung von Erkrankungen bei Familienmitgliedern, insbesondere mit Fokus auf genetische und erbliche Komponenten seltener Erkrankungen.

**Wichtig:** Für **jedes Familienmitglied** wird eine **separate FamilyMemberHistory-Ressource** erstellt. Ein Familienmitglied kann mehrere Erkrankungen haben, die alle in derselben Ressource unter `condition` dokumentiert werden. Für die Dokumentation des **Todes des Indexpatienten** durch eine seltene Erkrankung kann ebenfalls eine FamilyMemberHistory-Ressource mit `relationship.coding[snomed] = 116154003 | Patient |` erstellt werden (siehe Abschnitt "Für den Indexpatienten" unten).

### Klinische Bedeutung

Die Familienanamnese ist bei seltenen Erkrankungen von besonderer Bedeutung, da viele dieser Erkrankungen eine genetische Komponente aufweisen. Die strukturierte Erfassung ermöglicht:
- Identifikation familiärer Häufungen
- Einschätzung des Vererbungsmusters
- Risikostratifizierung für Angehörige
- Planung genetischer Beratung und Testung

### Tod durch seltene Erkrankung

Die Dokumentation, ob eine Erkrankung zum Tod beigetragen hat, erfolgt über das Standard-FHIR-Element `FamilyMemberHistory.condition.contributedToDeath`. Dieses boolesche Element ist MustSupport und ermöglicht eine klare Zuordnung zwischen einer spezifischen Erkrankung und dem Todesfall.

#### Für Familienmitglieder

Dokumentieren Sie den Tod eines Familienmitglieds durch eine seltene Erkrankung wie folgt:
- `relationship`: Verwandtschaftsverhältnis (z.B. Vater, Mutter, Geschwister)
- `deceased[x]`: Todeszeitpunkt oder -alter
- `condition.code`: Die seltene Erkrankung mit ICD-10-GM, ORPHAcodes oder SNOMED CT
- `condition.contributedToDeath = true`: Kennzeichnung, dass diese Erkrankung zum Tod beitrug

#### Für den Indexpatienten

Das FamilyMemberHistory-Profil kann auch zur Dokumentation des **Todes des Indexpatienten** durch eine seltene Erkrankung verwendet werden:
- `relationship.coding[snomed]`: Setzen Sie auf `116154003 | Patient |` (verfügbar im MolGen ValueSet)
- `patient`: Referenz auf den Indexpatienten selbst
- `deceased[x]`: Todeszeitpunkt oder -alter des Patienten
- `condition.code`: Die seltene Erkrankung, die zum Tod führte
- `condition.contributedToDeath = true`

Diese Modellierung ermöglicht eine einheitliche Dokumentation von Todesfällen durch seltene Erkrankungen für Familienmitglieder und den Patienten selbst, ohne das Patient-Profil erweitern zu müssen.

#### Beispiel

```json
{
  "resourceType": "FamilyMemberHistory",
  "status": "completed",
  "patient": {"reference": "Patient/example"},
  "relationship": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "72705000",
      "display": "Mother"
    }]
  },
  "deceasedAge": {"value": 52, "unit": "a", "system": "http://unitsofmeasure.org"},
  "condition": [{
    "code": {
      "coding": [{
        "system": "http://www.orpha.net",
        "code": "558",
        "display": "Marfan-Syndrom"
      }]
    },
    "contributedToDeath": true
  }]
}
```

### MONDO Kodierung (Sekundäre Harmonisierungsontologie)

> **Hinweis:** MONDO ist eine **sekundäre Harmonisierungsontologie** und kein primäres Diagnoseziel. Die primäre Kodierung der Familienerkrankung erfolgt über ICD-10-GM, Alpha-ID, SNOMED CT oder ORPHAcodes. MONDO-Codes können **optional ergänzend** in `condition.code.coding[mondo]` angegeben werden.

MONDO (Monarch Disease Ontology) harmonisiert verschiedene Klassifikationen und ermöglicht die Integration mit internationalen Standards wie [Phenopackets](https://phenopacket-schema.readthedocs.io/) und GA4GH. Weitere Informationen finden sich unter [Terminologien](code-systems.html).

---

### Mapping Logisches Datenmodell zu FHIR

Das folgende Mapping zeigt die Elemente der Familienanamnese aus dem logischen Datenmodell für Seltene Erkrankungen:

### Zuordnung zu FHIR-Elementen

Die Elemente des logischen Datenmodells werden wie folgt auf das FamilyMemberHistory-Profil abgebildet:

| Logisches Datenmodell | FHIR-Pfad | Erläuterung |
|----------------------|-----------|-------------|
| Familienanamnese.Verwandtschaftsverhaeltnis | FamilyMemberHistory.relationship | Biologisches Verwandtschaftsverhältnis zum Indexpatienten |
| Familienanamnese.Geschlecht | FamilyMemberHistory.sex | Geschlecht des Familienmitglieds |
| Familienanamnese.GleicheSE | FamilyMemberHistory.condition.code | Wenn Code identisch mit Indexpatient-Diagnose |
| Familienanamnese.AndereSE | FamilyMemberHistory.condition.code | Wenn Code unterschiedlich zur Indexpatient-Diagnose |
| Familienanamnese.Penetranz | FamilyMemberHistory.condition.extension:penetranz | Extension für fehlende klinische Penetranz trotz genetischer Diagnose bei Familienmitgliedern |
| Familienanamnese.FamilienmitgliedVerstorben | FamilyMemberHistory.deceased[x] | Vitalstatus des Familienmitglieds |
| Familienanamnese.TodDurchSE | FamilyMemberHistory.condition.contributedToDeath | Gibt an, ob die Erkrankung zum Tod beigetragen hat |

---

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
