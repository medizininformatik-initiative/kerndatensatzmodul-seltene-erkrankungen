---
parent: 
topic: MedicationRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung
---

## {{page-title}}

Dieses Profil beschreibt eine **medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource MedicationRequest und umfasst systemische, gezielte, präventive und gentherapeutische Behandlungsansätze.

### Anwendungsfälle

Medikamentöse Therapieempfehlungen umfassen:
- **Systemische Therapien**: Chemotherapie, Immuntherapie, Hormontherapie
- **Gezielte Therapien**: Targeted Therapy basierend auf molekularen Markern
- **Präventive Therapien**: Prophylaktische Medikation zur Vermeidung von Komplikationen
- **Gentherapien**: Gentherapeutika für seltene genetische Erkrankungen (z.B. Onasemnogene abeparvovec für SMA)
- **Kombinationstherapien**: Siehe separates Profil [Therapieempfehlung-Kombination](Therapieempfehlung-Kombination.page.md)

### Struktur und Inhalt

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung' 
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

#### Kodierung von Medikamenten
- Verwendung von **ATC-Codes** für die Klassifikation
- **PZN** (Pharmazentralnummer) für spezifische Präparate in Deutschland
- **UNII-Codes** für Wirkstoffe (insbesondere bei Gentherapien)
- **INN** (International Nonproprietary Names) für internationale Kompatibilität

#### Status und Intent
- `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
- `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung

#### Dosierung
- Strukturierte Dosisangaben mit `dosageInstruction`
- Unterstützung für komplexe Schemata (z.B. Titration, zyklische Gabe)

#### Begründung
- Verknüpfung zur Diagnose über `reasonReference`
- Molekulare Marker über Extensions wenn relevant

---

### Suchparameter

Folgende Suchparameter sind für medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource
   ```GET [base]/MedicationRequest?_id=1234```

2. **_profile**: Suche nach Profil
   ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung```

3. **subject**: Suche nach Patient
   ```GET [base]/MedicationRequest?subject=Patient/example```

4. **status**: Suche nach Status
   ```GET [base]/MedicationRequest?status=active```

5. **intent**: Suche nach Intent
   ```GET [base]/MedicationRequest?intent=proposal```

6. **medication**: Suche nach Medikament
   ```GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/ifa/pzn|12345678```

7. **authored-on**: Suche nach Erstellungsdatum
   ```GET [base]/MedicationRequest?authored-on=2024-02-08```

---

### Beispiele

#### Gentherapie bei SMA
```json
{
  "resourceType": "MedicationRequest",
  "meta": {
    "profile": ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung"]
  },
  "status": "active",
  "intent": "proposal",
  "medicationCodeableConcept": {
    "coding": [{
      "system": "http://fdasis.nlm.nih.gov",
      "code": "MLU3LU3EVV",
      "display": "Onasemnogene abeparvovec"
    }],
    "text": "Zolgensma"
  },
  "subject": {
    "reference": "Patient/sma-patient"
  },
  "reasonReference": [{
    "reference": "Condition/sma-diagnosis",
    "display": "Spinale Muskelatrophie Typ 1"
  }],
  "note": [{
    "text": "Einmalige intravenöse Infusion der Gentherapie"
  }]
}
```

#### ACE-Hemmer bei Marfan-Syndrom
```json
{
  "resourceType": "MedicationRequest",
  "meta": {
    "profile": ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung"]
  },
  "status": "active",
  "intent": "proposal",
  "medicationCodeableConcept": {
    "coding": [{
      "system": "http://www.whocc.no/atc",
      "code": "C09CA01",
      "display": "Losartan"
    }]
  },
  "subject": {
    "reference": "Patient/marfan-patient"
  },
  "dosageInstruction": [{
    "text": "50mg 1x täglich",
    "timing": {
      "repeat": {
        "frequency": 1,
        "period": 1,
        "periodUnit": "d"
      }
    },
    "doseAndRate": [{
      "doseQuantity": {
        "value": 50,
        "unit": "mg",
        "system": "http://unitsofmeasure.org",
        "code": "mg"
      }
    }]
  }],
  "reasonReference": [{
    "reference": "Condition/marfan-syndrome",
    "display": "Marfan-Syndrom mit Aortenwurzeldilatation"
  }]
}
```

---

### Verwandte Profile
- [Therapieempfehlung-Kombination](Therapieempfehlung-Kombination.page.md) - Für Kombinationstherapien
- [Therapieempfehlung-Nicht-Medikamentoes](Therapieempfehlung-Nicht-Medikamentoes.page.md) - Für nicht-medikamentöse Therapien
- [Therapieplan](Therapieplan.page.md) - Übergeordneter Therapieplan