# Katarakt-Operation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Katarakt-Operation**

## Beispiel Procedure: Katarakt-Operation

-------

**German**

-------

**status**: Completed

**category**: Surgical procedure

**code**: Phakoemulsifikation mit IOL-Implantation

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**performed**: 2024-11-12

**reasonReference**: [Condition Katarakt, nicht näher bezeichnet](Condition-condition-cataract.md)

**outcome**: Erfolgreiche Linsenimplantation ohne Komplikationen

**note**: 

> 

Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-cataract-surgery",
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "code" : "5-144.5a",
      "display" : "Extrakapsuläre Extraktion der Linse [ECCE]: Linsenkernverflüssigung [Phakoemulsifikation] über kornealen Zugang: Mit Einführung einer kapselfixierten Hinterkammerlinse, monofokale Intraokularlinse"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "54885007",
      "display" : "Extraction of cataract"
    }],
    "text" : "Phakoemulsifikation mit IOL-Implantation"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "performedDateTime" : "2024-11-12",
  "reasonReference" : [{
    "reference" : "Condition/condition-cataract"
  }],
  "outcome" : {
    "text" : "Erfolgreiche Linsenimplantation ohne Komplikationen"
  },
  "note" : [{
    "text" : "Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen"
  }]
}

```
