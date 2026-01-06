---
parent: 
topic: ServiceRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes
---

## {{page-title}}

Dieses Profil beschreibt eine **nicht-medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource ServiceRequest und umfasst operative Eingriffe, Ernährungstherapien, Physiotherapie, genetische Beratung und weitere nicht-medikamentöse Interventionen.

### Anwendungsfälle

Nicht-medikamentöse Therapieempfehlungen umfassen:
- **Operative Eingriffe**: Chirurgische Interventionen (z.B. Aortenwurzelersatz bei Marfan-Syndrom)
- **Ernährungstherapie**: Spezielle Diäten bei Stoffwechselerkrankungen
- **Physiotherapie**: Bewegungstherapie zur Erhaltung der Mobilität
- **Ergotherapie**: Förderung der Alltagsfähigkeiten
- **Logopädie**: Bei Schluck- und Sprachstörungen
- **Psychologische Betreuung**: Psychotherapie und Beratung
- **Genetische Beratung**: Humangenetische Konsultation
- **Prophylaxe**: Präventive Maßnahmen ohne Medikamente
- **Früherkennungsuntersuchungen**: Regelmäßige Screening-Untersuchungen

### Struktur und Inhalt

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes' 
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

### Implementierungshinweise

#### Kodierung von Prozeduren
- **OPS-Codes** für operative und interventionelle Eingriffe in Deutschland
- **SNOMED CT** für internationale Kompatibilität
- **LOINC** für diagnostische Verfahren
- Lokale Codes für spezielle Therapieverfahren

#### Status und Intent
- `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
- `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung
- `priority`: Dringlichkeit der Intervention (routine, urgent, asap, stat)

#### Zeitplanung
- `occurrence[x]`: Zeitpunkt oder Zeitraum der geplanten Intervention
- `authoredOn`: Datum der Empfehlung

#### Begründung
- Verknüpfung zur Diagnose über `reasonReference`
- Klinische Indikation über `reasonCode`

---

### Suchparameter

Folgende Suchparameter sind für nicht-medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource
   ```GET [base]/ServiceRequest?_id=1234```

2. **_profile**: Suche nach Profil
   ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes```

3. **subject**: Suche nach Patient
   ```GET [base]/ServiceRequest?subject=Patient/example```

4. **status**: Suche nach Status
   ```GET [base]/ServiceRequest?status=active```

5. **intent**: Suche nach Intent
   ```GET [base]/ServiceRequest?intent=proposal```

6. **code**: Suche nach Prozedur-Code
   ```GET [base]/ServiceRequest?code=http://fhir.de/CodeSystem/dimdi/ops-2024|5-354.09```

7. **authored**: Suche nach Erstellungsdatum
   ```GET [base]/ServiceRequest?authored=2024-02-08```

8. **priority**: Suche nach Priorität
   ```GET [base]/ServiceRequest?priority=urgent```

---

### Beispiele

#### Aortenwurzelersatz bei Marfan-Syndrom
```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"]
  },
  "status": "active",
  "intent": "proposal",
  "priority": "routine",
  "code": {
    "coding": [{
      "system": "http://fhir.de/CodeSystem/dimdi/ops-2024",
      "code": "5-354.09",
      "display": "Andere Operationen an Herzklappen: Aortenklappe"
    }, {
      "system": "http://snomed.info/sct",
      "code": "232021009",
      "display": "Aortic root replacement"
    }],
    "text": "Composite-Graft-Implantation (David-OP)"
  },
  "subject": {
    "reference": "Patient/marfan-patient"
  },
  "occurrenceDateTime": "2025-03-15",
  "authoredOn": "2024-12-15",
  "reasonReference": [{
    "reference": "Condition/aortic-root-dilatation",
    "display": "Progrediente Aortenwurzeldilatation bei Marfan-Syndrom"
  }],
  "note": [{
    "text": "Geplanter elektiver Eingriff bei progredienter Aortenwurzeldilatation (48mm) zur Prävention einer Aortendissektion"
  }]
}
```

#### Physiotherapie bei SMA
```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"]
  },
  "status": "active",
  "intent": "proposal",
  "priority": "routine",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "91251008",
      "display": "Physical therapy"
    }],
    "text": "Physiotherapie zur Erhaltung der motorischen Funktionen"
  },
  "subject": {
    "reference": "Patient/sma-patient"
  },
  "occurrenceTiming": {
    "repeat": {
      "frequency": 2,
      "period": 1,
      "periodUnit": "wk"
    }
  },
  "authoredOn": "2024-07-29",
  "reasonReference": [{
    "reference": "Condition/sma-diagnosis",
    "display": "Infantile Spinale Muskelatrophie Typ 1"
  }],
  "note": [{
    "text": "Regelmäßige Physiotherapie 2x wöchentlich zur Kontrakturprophylaxe und Erhaltung der Restfunktion"
  }]
}
```

#### Genetische Beratung
```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"]
  },
  "status": "active",
  "intent": "proposal",
  "priority": "routine",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "409063005",
      "display": "Genetic counseling"
    }],
    "text": "Humangenetische Beratung"
  },
  "subject": {
    "reference": "Patient/example"
  },
  "authoredOn": "2024-11-01",
  "reasonCode": [{
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "134436002",
      "display": "Family history of genetic disorder"
    }]
  }],
  "note": [{
    "text": "Beratung bezüglich Vererbungsmodus und Wiederholungsrisiko"
  }]
}
```

---

### Verwandte Profile
- [Therapieempfehlung-Medikamentoes](Therapieempfehlung-Medikamentoes.page.md) - Für medikamentöse Therapien
- [Therapieplan](Therapieplan.page.md) - Übergeordneter Therapieplan
- [Studieneinschluss-Anfrage](Studieneinschluss-Anfrage.page.md) - Für Studienteilnahme-Empfehlungen