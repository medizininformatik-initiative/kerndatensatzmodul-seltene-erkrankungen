# MII LM SE - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM SE**

## Logical Model: MII LM SE 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/mii-lm-seltene | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_LM_Seltene |

 
MII LogicalModel Modul Seltene Erkraknungen 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-lm-seltene.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-seltene.csv), [Excel](../StructureDefinition-mii-lm-seltene.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-seltene",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/mii-lm-seltene",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_Seltene",
  "title" : "MII LM SE",
  "status" : "active",
  "date" : "2026-09-04T13:01:37+00:00",
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
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/mii-lm-seltene",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-seltene",
      "path" : "mii-lm-seltene",
      "short" : "MII LM SE",
      "definition" : "MII LogicalModel Modul Seltene Erkraknungen"
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik",
      "short" : "Diagnose",
      "definition" : "Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.untersuchungsdatum",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.untersuchungsdatum",
      "short" : "Untersuchungsdatum",
      "definition" : "Datum der durchgeführten Untersuchung eines SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.untersuchungsanlass",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.untersuchungsanlass",
      "short" : "Untersuchungsanlass",
      "definition" : "Grund für den Besuch des SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung",
      "short" : "Phänotypisierung",
      "definition" : "Phänotypisierung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
      "short" : "HPO-Term des Symptoms",
      "definition" : "Phänotypisierung des SE-Patienten mittels HPO-Term (Human Phenotype Ontology) oder anderer Terminologien (SNOMED CT, ICD-10, LOINC).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoExcluded",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoExcluded",
      "short" : "HPO-Term ausgeschlossen",
      "definition" : "Gibt an, ob das HPO-Merkmal explizit ausgeschlossen wurde (negated finding). Abgeleitet aus valueCodeableConcept: LOINC LA9634-2 'Absent' = true, LA9633-4 'Present' = false. Folgt HL7 Phenomics IG Muster.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
      "short" : "Status HPO-Term",
      "definition" : "Status oder Schweregrad des Phänotyps (Present/Absent/Severity).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoVersion",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.hpoVersion",
      "short" : "Version HPO-Term",
      "definition" : "Kennzeichnung der genutzten Version des ausgewählten HPO-Terms.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom",
      "short" : "Zeitraum des Symptom",
      "definition" : "Zeitraum des Symptom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
      "short" : "Startdatum des Symptoms",
      "definition" : "Startdatum und bei Bedarf Periode der ersten Symptome/Anzeichen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase",
      "short" : "Lebensphase Symptom",
      "definition" : "Lebensphase, in der das Symptom aufgetreten ist.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom",
      "short" : "Alter Symptom",
      "definition" : "Alter beim Auftreten der ersten Symptome/Anzeichen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
      "short" : "Verlauf Symptom",
      "definition" : "Änderung des Verlaufs des Symptoms seit der vorherigen Untersuchung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose",
      "short" : "Zeitraum der klinischen SE-Diagnose",
      "definition" : "Zeitraum der klinischen SE-Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.zeitpunktKlinischeDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.zeitpunktKlinischeDia",
      "short" : "Zeitpunkt klinische SE-Diagnose",
      "definition" : "Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der klinsichen SE-Diagnose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
      "short" : "Feststellungsdatum klinische SE-Diagnose",
      "definition" : "Datum, an dem die klinische SE-Diagnose festgestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia",
      "short" : "Alter bei klinischer SE-Diagnose",
      "definition" : "Alter, in dem die klinische SE-Diagnose gestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose",
      "short" : "Zeitraum der genetischen SE-Diagnose",
      "definition" : "Zeitraum der genetischen SE-Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.zeitpunktGenDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.zeitpunktGenDia",
      "short" : "Zeitpunkt genetische SE-Diagnose",
      "definition" : "Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der genetischen SE-Diagnose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.feststellungsdatumGenDia",
      "short" : "Feststellungsdatum genetische SE-Diagnose",
      "definition" : "Datum, an dem die genetische SE-Diagnose festgestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.alterGenDia",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.genetischeDiagnose.alterGenDia",
      "short" : "Alter bei genetischer SE-Diagnose",
      "definition" : "Alter, in dem die genetische SE-Diagnose gestellt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.genDiaFehlendePenetranz",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.genDiaFehlendePenetranz",
      "short" : "Genetische Diagnose mit fehlender Penetranz",
      "definition" : "Gibt an, ob bei einer genetischen Diagnose die Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) fehlt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.anamneseUndDiagnostik.methodeDiagnosestellung",
      "path" : "mii-lm-seltene.anamneseUndDiagnostik.methodeDiagnosestellung",
      "short" : "Methode der Diagnosestellung",
      "definition" : "Gibt an, welche Methode zur Diagnosestellung verwendet wurde.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung",
      "short" : "Körperliche Untersuchung",
      "definition" : "Körperliche Untersuchung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht",
      "short" : "Körpergewicht",
      "definition" : "Körpergewicht",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht.koerpergewicht",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht.koerpergewicht",
      "short" : "Körpergewicht in kg",
      "definition" : "Körpergewicht des SE-Patienten in kg (aus MII ICU Modul).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht.datumKoerpergewicht",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergewicht.datumKoerpergewicht",
      "short" : "Datum Körpergewicht",
      "definition" : "Datum der Körpergewichtsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse",
      "short" : "Körpergröße",
      "definition" : "Körpergröße",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse.koerpergroesse",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse.koerpergroesse",
      "short" : "Körpergröße in cm",
      "definition" : "Körpergröße des SE-Patienten in cm (aus MII ICU Modul).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse.datumKoerpergroesse",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.koerpergroesse.datumKoerpergroesse",
      "short" : "Datum Körpergröße",
      "definition" : "Datum der Körpergrößenmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bmi",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bmi",
      "short" : "BMI",
      "definition" : "BMI",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bmi.bmi",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bmi.bmi",
      "short" : "BMI SE-Patient",
      "definition" : "BMI des SE-Patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bmi.datumBMI",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bmi.datumBMI",
      "short" : "Datum des BMI",
      "definition" : "Datum, an dem der BMI (Body Mass Index) berechnet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang",
      "short" : "Kopfumfang",
      "definition" : "Kopfumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang.kopfumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang.kopfumfang",
      "short" : "Kopfumfang in cm",
      "definition" : "Kopfumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang.datumKopfumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.kopfumfang.datumKopfumfang",
      "short" : "Datum Kopfumfang",
      "definition" : "Datum der Kopfumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang",
      "short" : "Bauchumfang",
      "definition" : "Bauchumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang.bauchumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang.bauchumfang",
      "short" : "Bauchumfang in cm",
      "definition" : "Bauchumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang.datumBauchumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.bauchumfang.datumBauchumfang",
      "short" : "Datum Bauchumfang",
      "definition" : "Datum der Bauchumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang",
      "short" : "Taillenumfang",
      "definition" : "Taillenumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang.taillenumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang.taillenumfang",
      "short" : "Taillenumfang in cm",
      "definition" : "Taillenumfang des SE-Patienten in cm. Abzugrenzen vom Bauchumfang, der auf Nabelhöhe gemessen wird.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang.datumTaillenumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.taillenumfang.datumTaillenumfang",
      "short" : "Datum Taillenumfang",
      "definition" : "Datum der Taillenumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang",
      "short" : "Hüftumfang",
      "definition" : "Hüftumfang",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang.hueftumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang.hueftumfang",
      "short" : "Hüftumfang in cm",
      "definition" : "Hüftumfang des SE-Patienten in cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang.datumHueftumfang",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.hueftumfang.datumHueftumfang",
      "short" : "Datum Hüftumfang",
      "definition" : "Datum der Hüftumfangsmessung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-seltene.koerperlicheUntersuchung.blutgruppe",
      "path" : "mii-lm-seltene.koerperlicheUntersuchung.blutgruppe",
      "short" : "Blutgruppe",
      "definition" : "Blutgruppe des SE-Patienten (AB0 und Rhesusfaktor).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.persoenlicheInfosIndexpatient",
      "path" : "mii-lm-seltene.persoenlicheInfosIndexpatient",
      "short" : "Persönliche Informationen des Indexpatienten",
      "definition" : "Persönliche Informationen des Indexpatienten",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod",
      "path" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod",
      "short" : "Tod",
      "definition" : "Tod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.sterbedatum",
      "path" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.sterbedatum",
      "short" : "Sterbedatum",
      "definition" : "Sterbedatum des Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.anSEVerstorben",
      "path" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.anSEVerstorben",
      "short" : "An der SE verstorben",
      "definition" : "Angabe, ob der Indexpatient an der SE verstorben ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.andereTodesursache",
      "path" : "mii-lm-seltene.persoenlicheInfosIndexpatient.tod.andereTodesursache",
      "short" : "Todesursache",
      "definition" : "Kodierung der Todesursache soweit bekannt (ICD-10-GM, ORPHAcodes).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese",
      "path" : "mii-lm-seltene.familienanamnese",
      "short" : "Familienanamnese",
      "definition" : "Familienanamnese",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.verwandtschaftsverhaeltnis",
      "path" : "mii-lm-seltene.familienanamnese.verwandtschaftsverhaeltnis",
      "short" : "Verwandtschaftsverhältnis",
      "definition" : "Biologisches Verwandtschaftsverhältnis des Familienmitglieds zum Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.geschlecht",
      "path" : "mii-lm-seltene.familienanamnese.geschlecht",
      "short" : "Geschlecht",
      "definition" : "Geschlecht des Familienmitglieds.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.gleicheSE",
      "path" : "mii-lm-seltene.familienanamnese.gleicheSE",
      "short" : "Gleiche SE",
      "definition" : "Gibt an, ob das Familienmitglied an der gleichen SE leidet wie der Indexpatient.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.andereSE",
      "path" : "mii-lm-seltene.familienanamnese.andereSE",
      "short" : "Andere SE",
      "definition" : "Gibt an, ob das Familienmitglied an einer anderen SE leidet als der Indexpatient.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.penetranz",
      "path" : "mii-lm-seltene.familienanamnese.penetranz",
      "short" : "Penetranz",
      "definition" : "Gibt an, ob bei fehlender klinscher Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) die genetische Diagnose vorliegt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.familienmitgliedVerstorben",
      "path" : "mii-lm-seltene.familienanamnese.familienmitgliedVerstorben",
      "short" : "Familienmitglied verstorben",
      "definition" : "Gibt an, ob das Familienmitglied verstorben ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.todDurchSE",
      "path" : "mii-lm-seltene.familienanamnese.todDurchSE",
      "short" : "Tod durch seltene Erkrankung",
      "definition" : "Gibt an, ob die seltene Erkrankung zum Tod des Familienmitglieds beigetragen hat. Abzugrenzen von familienmitgliedVerstorben, das nur den Tod als solchen festhält.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.dokumentationsdatum",
      "path" : "mii-lm-seltene.familienanamnese.dokumentationsdatum",
      "short" : "Dokumentationsdatum",
      "definition" : "Datum, an dem die Familienanamnese erhoben beziehungsweise dokumentiert wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.familienanamnese.konsanguinitaetEltern",
      "path" : "mii-lm-seltene.familienanamnese.konsanguinitaetEltern",
      "short" : "Blutsverwandtschaft der Eltern",
      "definition" : "Gibt an, ob die biologischen Eltern des Indexpatienten blutsverwandt sind (RD-CDM v2.0.0 6.4.4).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.perinatal",
      "path" : "mii-lm-seltene.perinatal",
      "short" : "Prä- und perinatale Angaben",
      "definition" : "Prä- und perinatale Angaben",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.perinatal.gestationsalter",
      "path" : "mii-lm-seltene.perinatal.gestationsalter",
      "short" : "Gestationsalter bei Geburt",
      "definition" : "Vollendete Schwangerschaftswochen bei Geburt des Indexpatienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.perinatal.geburtsgewicht",
      "path" : "mii-lm-seltene.perinatal.geburtsgewicht",
      "short" : "Geburtsgewicht in g",
      "definition" : "Geburtsgewicht des Indexpatienten in Gramm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.perinatal.geburtslaenge",
      "path" : "mii-lm-seltene.perinatal.geburtslaenge",
      "short" : "Geburtslänge in cm",
      "definition" : "Körperlänge des Indexpatienten bei Geburt in Zentimetern.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-seltene.funktionsfaehigkeit",
      "path" : "mii-lm-seltene.funktionsfaehigkeit",
      "short" : "Funktionsfähigkeit und Behinderung (ICF)",
      "definition" : "Funktionsfähigkeit und Behinderung (ICF)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.funktionsfaehigkeit.icfCode",
      "path" : "mii-lm-seltene.funktionsfaehigkeit.icfCode",
      "short" : "ICF-Code",
      "definition" : "Kode der Internationalen Klassifikation der Funktionsfähigkeit, Behinderung und Gesundheit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.funktionsfaehigkeit.beurteilungsmerkmal",
      "path" : "mii-lm-seltene.funktionsfaehigkeit.beurteilungsmerkmal",
      "short" : "Beurteilungsmerkmal",
      "definition" : "WHO-Qualifier zum ICF-Kode. Ihre Zahl ist je Kapitel verschieden: Körperstrukturen tragen drei, Aktivitäten und Partizipation zwei.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.funktionsfaehigkeit.erhebungsdatum",
      "path" : "mii-lm-seltene.funktionsfaehigkeit.erhebungsdatum",
      "short" : "Erhebungsdatum",
      "definition" : "Datum der ICF-Einstufung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.registerteilnahme",
      "path" : "mii-lm-seltene.registerteilnahme",
      "short" : "Teilnahme an Registern",
      "definition" : "Teilnahme an Registern",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.registerteilnahme.registerName",
      "path" : "mii-lm-seltene.registerteilnahme.registerName",
      "short" : "Register",
      "definition" : "Register, an dem der Indexpatient teilnimmt, insbesondere ein Register eines Europäischen Referenznetzwerks (ERN).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.registerteilnahme.teilnahmestatus",
      "path" : "mii-lm-seltene.registerteilnahme.teilnahmestatus",
      "short" : "Teilnahmestatus",
      "definition" : "Status der Teilnahme am Register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.registerteilnahme.teilnahmezeitraum",
      "path" : "mii-lm-seltene.registerteilnahme.teilnahmezeitraum",
      "short" : "Teilnahmezeitraum",
      "definition" : "Zeitraum der Teilnahme am Register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung",
      "path" : "mii-lm-seltene.therapieForschung",
      "short" : "Therapie und Forschung",
      "definition" : "Therapie und Forschung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.offLabel",
      "path" : "mii-lm-seltene.therapieForschung.offLabel",
      "short" : "Off-Label-Gabe",
      "definition" : "Off-Label-Gabe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.offLabel.offLabelGabe",
      "path" : "mii-lm-seltene.therapieForschung.offLabel.offLabelGabe",
      "short" : "Off-Label-Gabe",
      "definition" : "Gibt an, ob eine Off-Label-Gabe vorliegt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.offLabel.offLabelMedikament",
      "path" : "mii-lm-seltene.therapieForschung.offLabel.offLabelMedikament",
      "short" : "Off-Label-Medikament",
      "definition" : "Gibt an, welches Medikament Off-Label gegeben wurde.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.studie",
      "path" : "mii-lm-seltene.therapieForschung.studie",
      "short" : "Studie",
      "definition" : "Studie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.studie.studienID",
      "path" : "mii-lm-seltene.therapieForschung.studie.studienID",
      "short" : "Studien-ID",
      "definition" : "Eindeutige Identifikation der Studie, an der der SE-Patient teilgenommen hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.studie.studienStatus",
      "path" : "mii-lm-seltene.therapieForschung.studie.studienStatus",
      "short" : "Studienstatus",
      "definition" : "Aktueller Status der Studie, an der der SE-Patient teilgenommen hat (Abgeschlossen, Fortlaufend).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.studie.studienzeitraum",
      "path" : "mii-lm-seltene.therapieForschung.studie.studienzeitraum",
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
      "id" : "mii-lm-seltene.therapieForschung.therapie",
      "path" : "mii-lm-seltene.therapieForschung.therapie",
      "short" : "Therapie",
      "definition" : "Therapie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.therapie.therapieempfehlung",
      "path" : "mii-lm-seltene.therapieForschung.therapie.therapieempfehlung",
      "short" : "Eine Therapieempfehlung beschreibt eine spezifische Maßnahme oder Strategie. Sie kann eigenständig vorliegen oder referenziert einem Therapieplan zugeordnet werden. Art der Therapieempfehlung",
      "definition" : "Gibt an, welche Therapieempfehlung vorliegt.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.therapie.durchgefuehrteTherapie",
      "path" : "mii-lm-seltene.therapieForschung.therapie.durchgefuehrteTherapie",
      "short" : "Durchgeführte Therapie",
      "definition" : "Tatsächlich durchgeführte Therapie des SE-Patienten (mit oder ohne Studie mit heilender Intention).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.therapie.startdatumTherapie",
      "path" : "mii-lm-seltene.therapieForschung.therapie.startdatumTherapie",
      "short" : "Startdatum Therapie",
      "definition" : "Datum, an dem die Therapie begonnen hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.therapie.enddatumTherapie",
      "path" : "mii-lm-seltene.therapieForschung.therapie.enddatumTherapie",
      "short" : "Enddatum Therapie",
      "definition" : "Datum, an dem die Therapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-seltene.therapieForschung.therapie.grundEndeTherapie",
      "path" : "mii-lm-seltene.therapieForschung.therapie.grundEndeTherapie",
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
