---
parent: 
topic: FamilyMemberHistory
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
---

## {{page-title}}

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

MONDO (Monarch Disease Ontology) harmonisiert verschiedene Klassifikationen und ermöglicht die Integration mit internationalen Standards wie [Phenopackets](https://phenopacket-schema.readthedocs.io/) und GA4GH. Weitere Informationen finden sich unter [Terminologien]({{pagelink:Terminologien}}).

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

### Mapping Logisches Datenmodell zu FHIR

Das folgende Mapping zeigt die Elemente der Familienanamnese aus dem logischen Datenmodell für Seltene Erkrankungen:

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene'
    for differential.element 
    where path contains 'Familienanamnese'
    select 
        Element: path,
        Beschreibung: definition
```

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

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/FamilyMemberHistory?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/FamilyMemberHistory?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/FamilyMemberHistory?patient=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/FamilyMemberHistory?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "relationship" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/FamilyMemberHistory?relationship=http://terminology.hl7.org/CodeSystem/v3-RoleCode|FTH```

    Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

6. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/FamilyMemberHistory?code=http://www.orpha.net|558```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

**Beispiele**

{{json:mii-exa-seltene-familienanamnese}}

---