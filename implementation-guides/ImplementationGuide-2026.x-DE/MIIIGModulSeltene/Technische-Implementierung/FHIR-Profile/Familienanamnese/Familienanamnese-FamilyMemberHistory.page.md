---
parent: 
topic: FamilyMemberHistory
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
---

## {{page-title}}

Dieses Profil beschreibt die Familienanamnese im Kontext Seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung von Erkrankungen bei Familienmitgliedern, insbesondere mit Fokus auf genetische und erbliche Komponenten seltener Erkrankungen.

### Klinische Bedeutung

Die Familienanamnese ist bei seltenen Erkrankungen von besonderer Bedeutung, da viele dieser Erkrankungen eine genetische Komponente aufweisen. Die strukturierte Erfassung ermöglicht:
- Identifikation familiärer Häufungen
- Einschätzung des Vererbungsmusters
- Risikostratifizierung für Angehörige
- Planung genetischer Beratung und Testung

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
| Familienanamnese.Penetranz | FamilyMemberHistory.extension:penetranz | Extension für fehlende klinische Penetranz trotz genetischer Diagnose bei Familienmitgliedern |
| Familienanamnese.FamilienmitgliedVerstorben | FamilyMemberHistory.deceased[x] | Vitalstatus des Familienmitglieds |

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