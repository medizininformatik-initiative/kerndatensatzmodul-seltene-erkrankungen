<!-- TODO:REVIEW machine translation of source page datasets.md (de) — Migration 2026-08-28, page-map.tsv -->
Note that the logical model aims purely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; these are conclusively defined by the FHIR profiles. For every element within the logical model there is a 1:1 mapping to an element of a concrete FHIR resource.

The associated logical model can be found in the artifact overview (see [Artifacts](artifacts.html)); its data elements are listed in full below.

<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** The logical model was reactivated on 2026-09-02 (it had been parked as `disabled/mii-lm-seltene.fsh.disabled` and builds without error). It is therefore part of the build again, and the 22 unresolvable mapping links every profile carried are resolved.
{: .ig-highlight .ig-highlight-blue}

<!-- BEGIN GENERATED: logical-model-table (scripts/generate-lm-table.py) -->

The table below is generated from the published logical model (`mii-lm-seltene`) and lists every data element with its cardinality, type and description. Indentation reflects nesting.

| Element | Card. | Type | Description |
|---|---|---|---|
| `anamneseUndDiagnostik` | 0..* | BackboneElement | Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;`untersuchungsdatum` | 0..1 | date | Datum der durchgeführten Untersuchung eines SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;`untersuchungsanlass` | 0..1 | code | Grund für den Besuch des SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;`phaenotypisierung` | 0..* | BackboneElement | Phänotypisierung |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`hpoTerm` | 0..* | code | Phänotypisierung des SE-Patienten mittels HPO-Term (Human Phenotype Ontology) oder anderer Terminologien (SNOMED CT, ICD-10, LOINC). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`hpoExcluded` | 0..1 | boolean | Gibt an, ob das HPO-Merkmal explizit ausgeschlossen wurde (negated finding). Abgeleitet aus valueCodeableConcept: LOINC LA9634-2 'Absent' = true, LA9633-4 'Present' = false. Folgt HL7 Phenomics IG Muster. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`hpoStatus` | 0..1 | code | Status oder Schweregrad des Phänotyps (Present/Absent/Severity). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`hpoVersion` | 0..1 | code | Kennzeichnung der genutzten Version des ausgewählten HPO-Terms. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`zeitraumSymptom` | 0..* | BackboneElement | Zeitraum des Symptom |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`zeitraumSymptom` | 0..* | dateTime | Startdatum und bei Bedarf Periode der ersten Symptome/Anzeichen. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`lebensphase` | 0..* | code | Lebensphase, in der das Symptom aufgetreten ist. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`alterSymptom` | 0..1 | integer | Alter beim Auftreten der ersten Symptome/Anzeichen. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`verlaufSymptom` | 0..1 | code | Änderung des Verlaufs des Symptoms seit der vorherigen Untersuchung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`klinischeDiagnose` | 0..* | BackboneElement | Zeitraum der klinischen SE-Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`zeitpunktKlinischeDia` | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der klinsichen SE-Diagnose. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`feststellungsdatumKlinischeDia` | 0..1 | date | Datum, an dem die klinische SE-Diagnose festgestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`alterKlinischeDia` | 0..1 | integer | Alter, in dem die klinische SE-Diagnose gestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;`genetischeDiagnose` | 0..* | BackboneElement | Zeitraum der genetischen SE-Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`zeitpunktGenDia` | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der genetischen SE-Diagnose. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`feststellungsdatumGenDia` | 0..1 | date | Datum, an dem die genetische SE-Diagnose festgestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`alterGenDia` | 0..1 | integer | Alter, in dem die genetische SE-Diagnose gestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;`genDiaFehlendePenetranz` | 0..* | code | Gibt an, ob bei einer genetischen Diagnose die Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) fehlt |
| &nbsp;&nbsp;&nbsp;&nbsp;`methodeDiagnosestellung` | 0..* | code | Gibt an, welche Methode zur Diagnosestellung verwendet wurde. |
| `koerperlicheUntersuchung` | 0..* | BackboneElement | Körperliche Untersuchung |
| &nbsp;&nbsp;&nbsp;&nbsp;`koerpergewicht` | 0..* | BackboneElement | Körpergewicht |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`koerpergewicht` | 0..1 | decimal | Körpergewicht des SE-Patienten in kg (aus MII ICU Modul). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumKoerpergewicht` | 0..1 | dateTime | Datum der Körpergewichtsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`koerpergroesse` | 0..* | BackboneElement | Körpergröße |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`koerpergroesse` | 0..1 | decimal | Körpergröße des SE-Patienten in cm (aus MII ICU Modul). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumKoerpergroesse` | 0..1 | dateTime | Datum der Körpergrößenmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`bmi` | 0..* | BackboneElement | BMI |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bmi` | 0..1 | decimal | BMI des SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumBMI` | 0..1 | dateTime | Datum, an dem der BMI (Body Mass Index) berechnet wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;`kopfumfang` | 0..* | BackboneElement | Kopfumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`kopfumfang` | 0..1 | decimal | Kopfumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumKopfumfang` | 0..1 | dateTime | Datum der Kopfumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`bauchumfang` | 0..* | BackboneElement | Bauchumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bauchumfang` | 0..1 | decimal | Bauchumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumBauchumfang` | 0..1 | dateTime | Datum der Bauchumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`taillenumfang` | 0..* | BackboneElement | Taillenumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`taillenumfang` | 0..1 | decimal | Taillenumfang des SE-Patienten in cm. Abzugrenzen vom Bauchumfang, der auf Nabelhöhe gemessen wird. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumTaillenumfang` | 0..1 | dateTime | Datum der Taillenumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`hueftumfang` | 0..* | BackboneElement | Hüftumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`hueftumfang` | 0..1 | decimal | Hüftumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`datumHueftumfang` | 0..1 | dateTime | Datum der Hüftumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;`blutgruppe` | 0..1 | code | Blutgruppe des SE-Patienten (AB0 und Rhesusfaktor). |
| `persoenlicheInfosIndexpatient` | 0..* | BackboneElement | Persönliche Informationen des Indexpatienten |
| &nbsp;&nbsp;&nbsp;&nbsp;`tod` | 0..1 | BackboneElement | Tod |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`sterbedatum` | 0..1 | date | Sterbedatum des Indexpatienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`anSEVerstorben` | 0..1 | code | Angabe, ob der Indexpatient an der SE verstorben ist. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`andereTodesursache` | 0..* | code | Kodierung der Todesursache soweit bekannt (ICD-10-GM, ORPHAcodes). |
| `familienanamnese` | 0..* | BackboneElement | Familienanamnese |
| &nbsp;&nbsp;&nbsp;&nbsp;`verwandtschaftsverhaeltnis` | 0..1 | code | Biologisches Verwandtschaftsverhältnis des Familienmitglieds zum Indexpatienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;`geschlecht` | 0..1 | code | Geschlecht des Familienmitglieds. |
| &nbsp;&nbsp;&nbsp;&nbsp;`gleicheSE` | 0..* | code | Gibt an, ob das Familienmitglied an der gleichen SE leidet wie der Indexpatient. |
| &nbsp;&nbsp;&nbsp;&nbsp;`andereSE` | 0..* | code | Gibt an, ob das Familienmitglied an einer anderen SE leidet als der Indexpatient. |
| &nbsp;&nbsp;&nbsp;&nbsp;`penetranz` | 0..1 | code | Gibt an, ob bei fehlender klinscher Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) die genetische Diagnose vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;`familienmitgliedVerstorben` | 0..1 | code | Gibt an, ob das Familienmitglied verstorben ist. |
| &nbsp;&nbsp;&nbsp;&nbsp;`todDurchSE` | 0..1 | code | Gibt an, ob die seltene Erkrankung zum Tod des Familienmitglieds beigetragen hat. Abzugrenzen von familienmitgliedVerstorben, das nur den Tod als solchen festhält. |
| &nbsp;&nbsp;&nbsp;&nbsp;`dokumentationsdatum` | 0..1 | date | Datum, an dem die Familienanamnese erhoben beziehungsweise dokumentiert wurde. |
| `therapieForschung` | 0..* | BackboneElement | Therapie und Forschung |
| &nbsp;&nbsp;&nbsp;&nbsp;`offLabel` | 0..* | BackboneElement | Off-Label-Gabe |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`offLabelGabe` | 0..1 | code | Gibt an, ob eine Off-Label-Gabe vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`offLabelMedikament` | 0..* | code | Gibt an, welches Medikament Off-Label gegeben wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;`studie` | 0..* | BackboneElement | Studie |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`studienID` | 0..1 | Identifier | Eindeutige Identifikation der Studie, an der der SE-Patient teilgenommen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`studienStatus` | 0..1 | code | Aktueller Status der Studie, an der der SE-Patient teilgenommen hat (Abgeschlossen, Fortlaufend). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`studienzeitraum` | 0..1 | Extension | Zeitraum, in dem der SE-Patient an der Studie teilgenommen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;`therapie` | 0..* | BackboneElement | Therapie |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`therapieempfehlung` | 0..* | code | Gibt an, welche Therapieempfehlung vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`durchgefuehrteTherapie` | 0..* | code | Tatsächlich durchgeführte Therapie des SE-Patienten (mit oder ohne Studie mit heilender Intention). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`startdatumTherapie` | 0..1 | date | Datum, an dem die Therapie begonnen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`enddatumTherapie` | 0..1 | date | Datum, an dem die Therapie beendet wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`grundEndeTherapie` | 0..* | code | Gibt an, warum die Therapie beendet wurde (z.B. Nebenwirkungen, keine Wirkung). |

<!-- END GENERATED: logical-model-table -->
