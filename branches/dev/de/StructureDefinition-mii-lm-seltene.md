# MII LM SE - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII LM SE**

## Logisches Modell: MII LM SE 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_LM_Seltene |

 
MII LogicalModel Modul Seltene Erkraknungen 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-lm-seltene.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

**Structures**

This structure refers to these other structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 **Schlüsselelemente-Ansicht** 

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

 **Snapshot-AnsichtView** 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

**Structures**

This structure refers to these other structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-lm-seltene.csv), [Excel](../StructureDefinition-mii-lm-seltene.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-seltene",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_Seltene",
  "title" : "MII LM SE",
  "status" : "active",
  "date" : "2026-09-04T07:02:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "MII LogicalModel Modul Seltene Erkraknungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "Seltene",
      "path" : "Seltene",
      "short" : "MII LM SE",
      "definition" : "MII LogicalModel Modul Seltene Erkraknungen"
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik",
      "path" : "Seltene.anamneseUndDiagnostik",
      "short" : "Diagnose",
      "definition" : "Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.untersuchungsdatum",
      "path" : "Seltene.anamneseUndDiagnostik.untersuchungsdatum",
      "short" : "Untersuchungsdatum",
      "definition" : "Datum der durchgeführten Untersuchung eines SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.untersuchungsanlass",
      "path" : "Seltene.anamneseUndDiagnostik.untersuchungsanlass",
      "short" : "Untersuchungsanlass",
      "definition" : "Grund für den Besuch des SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung",
      "short" : "Phänotypisierung",
      "definition" : "Phänotypisierung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
      "short" : "HPO-Term des Symptoms",
      "definition" : "Phänotypisierung des SE-Patienten mittels HPO-Term (Human Phenotype Ontology) oder anderer Terminologien (SNOMED CT, ICD-10, LOINC).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoExcluded",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoExcluded",
      "short" : "HPO-Term ausgeschlossen",
      "definition" : "Gibt an, ob das HPO-Merkmal explizit ausgeschlossen wurde (negated finding). Abgeleitet aus valueCodeableConcept: LOINC LA9634-2 'Absent' = true, LA9633-4 'Present' = false. Folgt HL7 Phenomics IG Muster.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
      "short" : "Status HPO-Term",
      "definition" : "Status oder Schweregrad des Phänotyps (Present/Absent/Severity).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoVersion",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.hpoVersion",
      "short" : "Version HPO-Term",
      "definition" : "Kennzeichnung der genutzten Version des ausgewählten HPO-Terms.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom",
      "short" : "Zeitraum des Symptom",
      "definition" : "Zeitraum des Symptom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
      "short" : "Startdatum des Symptoms",
      "definition" : "Startdatum und bei Bedarf Periode der ersten Symptome/Anzeichen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase",
      "short" : "Lebensphase Symptom",
      "definition" : "Lebensphase, in der das Symptom aufgetreten ist.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom",
      "short" : "Alter Symptom",
      "definition" : "Alter beim Auftreten der ersten Symptome/Anzeichen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
      "path" : "Seltene.anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
      "short" : "Verlauf Symptom",
      "definition" : "Änderung des Verlaufs des Symptoms seit der vorherigen Untersuchung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose",
      "path" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose",
      "short" : "Zeitraum der klinischen SE-Diagnose",
      "definition" : "Zeitraum der klinischen SE-Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.zeitpunktKlinischeDia",
      "path" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.zeitpunktKlinischeDia",
      "short" : "Zeitpunkt klinische SE-Diagnose",
      "definition" : "Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der klinsichen SE-Diagnose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
      "path" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
      "short" : "Feststellungsdatum klinische SE-Diagnose",
      "definition" : "Datum, an dem die klinische SE-Diagnose festgestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia",
      "path" : "Seltene.anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia",
      "short" : "Alter bei klinischer SE-Diagnose",
      "definition" : "Alter, in dem die klinische SE-Diagnose gestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose",
      "path" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose",
      "short" : "Zeitraum der genetischen SE-Diagnose",
      "definition" : "Zeitraum der genetischen SE-Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.zeitpunktGenDia",
      "path" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.zeitpunktGenDia",
      "short" : "Zeitpunkt genetische SE-Diagnose",
      "definition" : "Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der genetischen SE-Diagnose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia",
      "path" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia",
      "short" : "Feststellungsdatum genetische SE-Diagnose",
      "definition" : "Datum, an dem die genetische SE-Diagnose festgestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.alterGenDia",
      "path" : "Seltene.anamneseUndDiagnostik.genetischeDiagnose.alterGenDia",
      "short" : "Alter bei genetischer SE-Diagnose",
      "definition" : "Alter, in dem die genetische SE-Diagnose gestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.genDiaFehlendePenetranz",
      "path" : "Seltene.anamneseUndDiagnostik.genDiaFehlendePenetranz",
      "short" : "Genetische Diagnose mit fehlender Penetranz",
      "definition" : "Gibt an, ob bei einer genetischen Diagnose die Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) fehlt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.anamneseUndDiagnostik.methodeDiagnosestellung",
      "path" : "Seltene.anamneseUndDiagnostik.methodeDiagnosestellung",
      "short" : "Methode der Diagnosestellung",
      "definition" : "Gibt an, welche Methode zur Diagnosestellung verwendet wurde.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung",
      "path" : "Seltene.koerperlicheUntersuchung",
      "short" : "Körperliche Untersuchung",
      "definition" : "Körperliche Untersuchung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergewicht",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergewicht",
      "short" : "Körpergewicht",
      "definition" : "Körpergewicht",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergewicht.koerpergewicht",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergewicht.koerpergewicht",
      "short" : "Körpergewicht in kg",
      "definition" : "Körpergewicht des SE-Patienten in kg (aus MII ICU Modul).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergewicht.datumKoerpergewicht",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergewicht.datumKoerpergewicht",
      "short" : "Datum Körpergewicht",
      "definition" : "Datum der Körpergewichtsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergroesse",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergroesse",
      "short" : "Körpergröße",
      "definition" : "Körpergröße",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergroesse.koerpergroesse",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergroesse.koerpergroesse",
      "short" : "Körpergröße in cm",
      "definition" : "Körpergröße des SE-Patienten in cm (aus MII ICU Modul).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.koerpergroesse.datumKoerpergroesse",
      "path" : "Seltene.koerperlicheUntersuchung.koerpergroesse.datumKoerpergroesse",
      "short" : "Datum Körpergröße",
      "definition" : "Datum der Körpergrößenmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bmi",
      "path" : "Seltene.koerperlicheUntersuchung.bmi",
      "short" : "BMI",
      "definition" : "BMI",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bmi.bmi",
      "path" : "Seltene.koerperlicheUntersuchung.bmi.bmi",
      "short" : "BMI SE-Patient",
      "definition" : "BMI des SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bmi.datumBMI",
      "path" : "Seltene.koerperlicheUntersuchung.bmi.datumBMI",
      "short" : "Datum des BMI",
      "definition" : "Datum, an dem der BMI (Body Mass Index) berechnet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.kopfumfang",
      "path" : "Seltene.koerperlicheUntersuchung.kopfumfang",
      "short" : "Kopfumfang",
      "definition" : "Kopfumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.kopfumfang.kopfumfang",
      "path" : "Seltene.koerperlicheUntersuchung.kopfumfang.kopfumfang",
      "short" : "Kopfumfang in cm",
      "definition" : "Kopfumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.kopfumfang.datumKopfumfang",
      "path" : "Seltene.koerperlicheUntersuchung.kopfumfang.datumKopfumfang",
      "short" : "Datum Kopfumfang",
      "definition" : "Datum der Kopfumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bauchumfang",
      "path" : "Seltene.koerperlicheUntersuchung.bauchumfang",
      "short" : "Bauchumfang",
      "definition" : "Bauchumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bauchumfang.bauchumfang",
      "path" : "Seltene.koerperlicheUntersuchung.bauchumfang.bauchumfang",
      "short" : "Bauchumfang in cm",
      "definition" : "Bauchumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.bauchumfang.datumBauchumfang",
      "path" : "Seltene.koerperlicheUntersuchung.bauchumfang.datumBauchumfang",
      "short" : "Datum Bauchumfang",
      "definition" : "Datum der Bauchumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.taillenumfang",
      "path" : "Seltene.koerperlicheUntersuchung.taillenumfang",
      "short" : "Taillenumfang",
      "definition" : "Taillenumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.taillenumfang.taillenumfang",
      "path" : "Seltene.koerperlicheUntersuchung.taillenumfang.taillenumfang",
      "short" : "Taillenumfang in cm",
      "definition" : "Taillenumfang des SE-Patienten in cm. Abzugrenzen vom Bauchumfang, der auf Nabelhöhe gemessen wird.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.taillenumfang.datumTaillenumfang",
      "path" : "Seltene.koerperlicheUntersuchung.taillenumfang.datumTaillenumfang",
      "short" : "Datum Taillenumfang",
      "definition" : "Datum der Taillenumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.hueftumfang",
      "path" : "Seltene.koerperlicheUntersuchung.hueftumfang",
      "short" : "Hüftumfang",
      "definition" : "Hüftumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.hueftumfang.hueftumfang",
      "path" : "Seltene.koerperlicheUntersuchung.hueftumfang.hueftumfang",
      "short" : "Hüftumfang in cm",
      "definition" : "Hüftumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.hueftumfang.datumHueftumfang",
      "path" : "Seltene.koerperlicheUntersuchung.hueftumfang.datumHueftumfang",
      "short" : "Datum Hüftumfang",
      "definition" : "Datum der Hüftumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Seltene.koerperlicheUntersuchung.blutgruppe",
      "path" : "Seltene.koerperlicheUntersuchung.blutgruppe",
      "short" : "Blutgruppe",
      "definition" : "Blutgruppe des SE-Patienten (AB0 und Rhesusfaktor).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.persoenlicheInfosIndexpatient",
      "path" : "Seltene.persoenlicheInfosIndexpatient",
      "short" : "Persönliche Informationen des Indexpatienten",
      "definition" : "Persönliche Informationen des Indexpatienten",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.persoenlicheInfosIndexpatient.tod",
      "path" : "Seltene.persoenlicheInfosIndexpatient.tod",
      "short" : "Tod",
      "definition" : "Tod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.persoenlicheInfosIndexpatient.tod.sterbedatum",
      "path" : "Seltene.persoenlicheInfosIndexpatient.tod.sterbedatum",
      "short" : "Sterbedatum",
      "definition" : "Sterbedatum des Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.persoenlicheInfosIndexpatient.tod.anSEVerstorben",
      "path" : "Seltene.persoenlicheInfosIndexpatient.tod.anSEVerstorben",
      "short" : "An der SE verstorben",
      "definition" : "Angabe, ob der Indexpatient an der SE verstorben ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.persoenlicheInfosIndexpatient.tod.andereTodesursache",
      "path" : "Seltene.persoenlicheInfosIndexpatient.tod.andereTodesursache",
      "short" : "Todesursache",
      "definition" : "Kodierung der Todesursache soweit bekannt (ICD-10-GM, ORPHAcodes).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese",
      "path" : "Seltene.familienanamnese",
      "short" : "Familienanamnese",
      "definition" : "Familienanamnese",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.verwandtschaftsverhaeltnis",
      "path" : "Seltene.familienanamnese.verwandtschaftsverhaeltnis",
      "short" : "Verwandtschaftsverhältnis",
      "definition" : "Biologisches Verwandtschaftsverhältnis des Familienmitglieds zum Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.geschlecht",
      "path" : "Seltene.familienanamnese.geschlecht",
      "short" : "Geschlecht",
      "definition" : "Geschlecht des Familienmitglieds.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.gleicheSE",
      "path" : "Seltene.familienanamnese.gleicheSE",
      "short" : "Gleiche SE",
      "definition" : "Gibt an, ob das Familienmitglied an der gleichen SE leidet wie der Indexpatient.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.andereSE",
      "path" : "Seltene.familienanamnese.andereSE",
      "short" : "Andere SE",
      "definition" : "Gibt an, ob das Familienmitglied an einer anderen SE leidet als der Indexpatient.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.penetranz",
      "path" : "Seltene.familienanamnese.penetranz",
      "short" : "Penetranz",
      "definition" : "Gibt an, ob bei fehlender klinscher Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) die genetische Diagnose vorliegt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.familienmitgliedVerstorben",
      "path" : "Seltene.familienanamnese.familienmitgliedVerstorben",
      "short" : "Familienmitglied verstorben",
      "definition" : "Gibt an, ob das Familienmitglied verstorben ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.todDurchSE",
      "path" : "Seltene.familienanamnese.todDurchSE",
      "short" : "Tod durch seltene Erkrankung",
      "definition" : "Gibt an, ob die seltene Erkrankung zum Tod des Familienmitglieds beigetragen hat. Abzugrenzen von familienmitgliedVerstorben, das nur den Tod als solchen festhält.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.dokumentationsdatum",
      "path" : "Seltene.familienanamnese.dokumentationsdatum",
      "short" : "Dokumentationsdatum",
      "definition" : "Datum, an dem die Familienanamnese erhoben beziehungsweise dokumentiert wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.familienanamnese.konsanguinitaetEltern",
      "path" : "Seltene.familienanamnese.konsanguinitaetEltern",
      "short" : "Blutsverwandtschaft der Eltern",
      "definition" : "Gibt an, ob die biologischen Eltern des Indexpatienten blutsverwandt sind (RD-CDM v2.0.0 6.4.4).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.perinatal",
      "path" : "Seltene.perinatal",
      "short" : "Prä- und perinatale Angaben",
      "definition" : "Prä- und perinatale Angaben",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.perinatal.gestationsalter",
      "path" : "Seltene.perinatal.gestationsalter",
      "short" : "Gestationsalter bei Geburt",
      "definition" : "Vollendete Schwangerschaftswochen bei Geburt des Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.perinatal.geburtsgewicht",
      "path" : "Seltene.perinatal.geburtsgewicht",
      "short" : "Geburtsgewicht in g",
      "definition" : "Geburtsgewicht des Indexpatienten in Gramm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.perinatal.geburtslaenge",
      "path" : "Seltene.perinatal.geburtslaenge",
      "short" : "Geburtslänge in cm",
      "definition" : "Körperlänge des Indexpatienten bei Geburt in Zentimetern.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Seltene.funktionsfaehigkeit",
      "path" : "Seltene.funktionsfaehigkeit",
      "short" : "Funktionsfähigkeit und Behinderung (ICF)",
      "definition" : "Funktionsfähigkeit und Behinderung (ICF)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.funktionsfaehigkeit.icfCode",
      "path" : "Seltene.funktionsfaehigkeit.icfCode",
      "short" : "ICF-Code",
      "definition" : "Kode der Internationalen Klassifikation der Funktionsfähigkeit, Behinderung und Gesundheit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.funktionsfaehigkeit.beurteilungsmerkmal",
      "path" : "Seltene.funktionsfaehigkeit.beurteilungsmerkmal",
      "short" : "Beurteilungsmerkmal",
      "definition" : "WHO-Qualifier zum ICF-Kode. Ihre Zahl ist je Kapitel verschieden: Körperstrukturen tragen drei, Aktivitäten und Partizipation zwei.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.funktionsfaehigkeit.erhebungsdatum",
      "path" : "Seltene.funktionsfaehigkeit.erhebungsdatum",
      "short" : "Erhebungsdatum",
      "definition" : "Datum der ICF-Einstufung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.registerteilnahme",
      "path" : "Seltene.registerteilnahme",
      "short" : "Teilnahme an Registern",
      "definition" : "Teilnahme an Registern",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.registerteilnahme.registerName",
      "path" : "Seltene.registerteilnahme.registerName",
      "short" : "Register",
      "definition" : "Register, an dem der Indexpatient teilnimmt, insbesondere ein Register eines Europäischen Referenznetzwerks (ERN).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.registerteilnahme.teilnahmestatus",
      "path" : "Seltene.registerteilnahme.teilnahmestatus",
      "short" : "Teilnahmestatus",
      "definition" : "Status der Teilnahme am Register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.registerteilnahme.teilnahmezeitraum",
      "path" : "Seltene.registerteilnahme.teilnahmezeitraum",
      "short" : "Teilnahmezeitraum",
      "definition" : "Zeitraum der Teilnahme am Register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Seltene.therapieForschung",
      "path" : "Seltene.therapieForschung",
      "short" : "Therapie und Forschung",
      "definition" : "Therapie und Forschung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.offLabel",
      "path" : "Seltene.therapieForschung.offLabel",
      "short" : "Off-Label-Gabe",
      "definition" : "Off-Label-Gabe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.offLabel.offLabelGabe",
      "path" : "Seltene.therapieForschung.offLabel.offLabelGabe",
      "short" : "Off-Label-Gabe",
      "definition" : "Gibt an, ob eine Off-Label-Gabe vorliegt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.offLabel.offLabelMedikament",
      "path" : "Seltene.therapieForschung.offLabel.offLabelMedikament",
      "short" : "Off-Label-Medikament",
      "definition" : "Gibt an, welches Medikament Off-Label gegeben wurde.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.studie",
      "path" : "Seltene.therapieForschung.studie",
      "short" : "Studie",
      "definition" : "Studie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.studie.studienID",
      "path" : "Seltene.therapieForschung.studie.studienID",
      "short" : "Studien-ID",
      "definition" : "Eindeutige Identifikation der Studie, an der der SE-Patient teilgenommen hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.studie.studienStatus",
      "path" : "Seltene.therapieForschung.studie.studienStatus",
      "short" : "Studienstatus",
      "definition" : "Aktueller Status der Studie, an der der SE-Patient teilgenommen hat (Abgeschlossen, Fortlaufend).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.studie.studienzeitraum",
      "path" : "Seltene.therapieForschung.studie.studienzeitraum",
      "short" : "Studienzeitraum",
      "definition" : "Zeitraum, in dem der SE-Patient an der Studie teilgenommen hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period"]
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie",
      "path" : "Seltene.therapieForschung.therapie",
      "short" : "Therapie",
      "definition" : "Therapie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie.therapieempfehlung",
      "path" : "Seltene.therapieForschung.therapie.therapieempfehlung",
      "short" : "Eine Therapieempfehlung beschreibt eine spezifische Maßnahme oder Strategie. Sie kann eigenständig vorliegen oder referenziert einem Therapieplan zugeordnet werden. Art der Therapieempfehlung",
      "definition" : "Gibt an, welche Therapieempfehlung vorliegt.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie.durchgefuehrteTherapie",
      "path" : "Seltene.therapieForschung.therapie.durchgefuehrteTherapie",
      "short" : "Durchgeführte Therapie",
      "definition" : "Tatsächlich durchgeführte Therapie des SE-Patienten (mit oder ohne Studie mit heilender Intention).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie.startdatumTherapie",
      "path" : "Seltene.therapieForschung.therapie.startdatumTherapie",
      "short" : "Startdatum Therapie",
      "definition" : "Datum, an dem die Therapie begonnen hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie.enddatumTherapie",
      "path" : "Seltene.therapieForschung.therapie.enddatumTherapie",
      "short" : "Enddatum Therapie",
      "definition" : "Datum, an dem die Therapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Seltene.therapieForschung.therapie.grundEndeTherapie",
      "path" : "Seltene.therapieForschung.therapie.grundEndeTherapie",
      "short" : "Grund Ende Therapie",
      "definition" : "Gibt an, warum die Therapie beendet wurde (z.B. Nebenwirkungen, keine Wirkung).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
