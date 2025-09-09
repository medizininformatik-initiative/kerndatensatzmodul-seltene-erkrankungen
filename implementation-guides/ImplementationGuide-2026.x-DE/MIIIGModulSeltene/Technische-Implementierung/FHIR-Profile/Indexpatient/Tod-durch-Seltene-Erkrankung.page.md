---
parent: 
topic: Patient
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung
---

## {{page-title}}

Diese Extension dokumentiert, ob der Tod eines Patienten durch eine seltene Erkrankung verursacht wurde. Sie wird am `Patient.deceased[x]` Element verwendet und ermöglicht sowohl die Angabe, ob der Tod durch eine seltene Erkrankung bedingt war, als auch die Referenzierung der spezifischen Erkrankung.

### Kontext und Verwendung

Die Extension wird ausschließlich im Kontext von `Patient.deceased[x]` verwendet, wenn ein Patient verstorben ist. Sie besteht aus zwei Sub-Extensions:

1. **causedByRareDisease** (verpflichtend): Ein boolescher Wert, der angibt, ob der Tod durch eine seltene Erkrankung verursacht wurde
2. **condition** (optional): Referenz auf die spezifische seltene Erkrankung (klinische oder genetische Diagnose)

### Struktur

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung' 
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

### Anwendungsbeispiel

Die Extension wird am `deceasedDateTime` oder `deceasedBoolean` Element eines Patient-Profils angehängt:

```json
{
  "resourceType": "Patient",
  "id": "beispiel-patient-seltene-erkrankung-tod",
  "deceasedDateTime": "2024-06-15",
  "_deceasedDateTime": {
    "extension": [{
      "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung",
      "extension": [
        {
          "url": "causedByRareDisease",
          "valueBoolean": true
        },
        {
          "url": "condition",
          "valueReference": {
            "reference": "Condition/marfan-syndrom-diagnose",
            "display": "Marfan-Syndrom mit Aortendissektion"
          }
        }
      ]
    }]
  }
}
```

### Klinische Bedeutung

Diese Extension ist besonders wichtig für:
- Epidemiologische Studien zur Mortalität bei seltenen Erkrankungen
- Qualitätssicherung in der Versorgung von Patienten mit seltenen Erkrankungen
- Forschung zu Krankheitsverläufen und Todesursachen
- Registerführung für seltene Erkrankungen

### Beispiele

#### Patient verstorben an seltener Erkrankung mit Referenz

{{json:mii-exa-seltene-patient-tod-durch-seltene-erkrankung}}

---