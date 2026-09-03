# Datensätze und Beschreibungen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Datensätze und Beschreibungen**

## Datensätze und Beschreibungen

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

Das zugehörige Logical Model ist in der Artefakt-Übersicht abrufbar (siehe [Artifacts](artifacts.md)).

> **Written during migration - review before release.** Das Logical Model des Moduls ist derzeit nicht Teil des Builds (Quelle: `disabled/mii-lm-seltene.fsh.disabled`); die Datensatzbeschreibung oben ist maßgeblich.

Die folgende Tabelle wird aus dem publizierten Logical Model (`mii-lm-seltene`) erzeugt und listet jedes Datenelement mit Kardinalität, Typ und Beschreibung. Die Einrückung bildet die Verschachtelung ab.

| | | | |
| :--- | :--- | :--- | :--- |
| `anamneseUndDiagnostik` | 0..* | BackboneElement | Diagnose |
|     `untersuchungsdatum` | 0..1 | date | Datum der durchgeführten Untersuchung eines SE-Patienten. |
|     `untersuchungsanlass` | 0..1 | code | Grund für den Besuch des SE-Patienten. |
|     `phaenotypisierung` | 0..* | BackboneElement | Phänotypisierung |
|         `hpoTerm` | 0..* | code | Phänotypisierung des SE-Patienten mittels HPO-Term (Human Phenotype Ontology) oder anderer Terminologien (SNOMED CT, ICD-10, LOINC). |
|         `hpoExcluded` | 0..1 | boolean | Gibt an, ob das HPO-Merkmal explizit ausgeschlossen wurde (negated finding). Abgeleitet aus valueCodeableConcept: LOINC LA9634-2 'Absent' = true, LA9633-4 'Present' = false. Folgt HL7 Phenomics IG Muster. |
|         `hpoStatus` | 0..1 | code | Status oder Schweregrad des Phänotyps (Present/Absent/Severity). |
|         `hpoVersion` | 0..1 | code | Kennzeichnung der genutzten Version des ausgewählten HPO-Terms. |
|         `zeitraumSymptom` | 0..* | BackboneElement | Zeitraum des Symptom |
|             `zeitraumSymptom` | 0..* | dateTime | Startdatum und bei Bedarf Periode der ersten Symptome/Anzeichen. |
|             `lebensphase` | 0..* | code | Lebensphase, in der das Symptom aufgetreten ist. |
|             `alterSymptom` | 0..1 | integer | Alter beim Auftreten der ersten Symptome/Anzeichen. |
|         `verlaufSymptom` | 0..1 | code | Änderung des Verlaufs des Symptoms seit der vorherigen Untersuchung. |
|     `klinischeDiagnose` | 0..* | BackboneElement | Zeitraum der klinischen SE-Diagnose |
|         `zeitpunktKlinischeDia` | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der klinsichen SE-Diagnose. |
|         `feststellungsdatumKlinischeDia` | 0..1 | date | Datum, an dem die klinische SE-Diagnose festgestellt wurde. |
|         `alterKlinischeDia` | 0..1 | integer | Alter, in dem die klinische SE-Diagnose gestellt wurde. |
|     `genetischeDiagnose` | 0..* | BackboneElement | Zeitraum der genetischen SE-Diagnose |
|         `zeitpunktGenDia` | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der genetischen SE-Diagnose. |
|         `feststellungsdatumGenDia` | 0..1 | date | Datum, an dem die genetische SE-Diagnose festgestellt wurde. |
|         `alterGenDia` | 0..1 | integer | Alter, in dem die genetische SE-Diagnose gestellt wurde. |
|     `genDiaFehlendePenetranz` | 0..* | code | Gibt an, ob bei einer genetischen Diagnose die Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) fehlt |
|     `methodeDiagnosestellung` | 0..* | code | Gibt an, welche Methode zur Diagnosestellung verwendet wurde. |
| `koerperlicheUntersuchung` | 0..* | BackboneElement | Körperliche Untersuchung |
|     `koerpergewicht` | 0..* | BackboneElement | Körpergewicht |
|         `koerpergewicht` | 0..1 | decimal | Körpergewicht des SE-Patienten in kg (aus MII ICU Modul). |
|         `datumKoerpergewicht` | 0..1 | dateTime | Datum der Körpergewichtsmessung. |
|     `koerpergroesse` | 0..* | BackboneElement | Körpergröße |
|         `koerpergroesse` | 0..1 | decimal | Körpergröße des SE-Patienten in cm (aus MII ICU Modul). |
|         `datumKoerpergroesse` | 0..1 | dateTime | Datum der Körpergrößenmessung. |
|     `bmi` | 0..* | BackboneElement | BMI |
|         `bmi` | 0..1 | decimal | BMI des SE-Patienten. |
|         `datumBMI` | 0..1 | dateTime | Datum, an dem der BMI (Body Mass Index) berechnet wurde. |
|     `kopfumfang` | 0..* | BackboneElement | Kopfumfang |
|         `kopfumfang` | 0..1 | decimal | Kopfumfang des SE-Patienten in cm. |
|         `datumKopfumfang` | 0..1 | dateTime | Datum der Kopfumfangsmessung. |
|     `bauchumfang` | 0..* | BackboneElement | Bauchumfang |
|         `bauchumfang` | 0..1 | decimal | Bauchumfang des SE-Patienten in cm. |
|         `datumBauchumfang` | 0..1 | dateTime | Datum der Bauchumfangsmessung. |
|     `taillenumfang` | 0..* | BackboneElement | Taillenumfang |
|         `taillenumfang` | 0..1 | decimal | Taillenumfang des SE-Patienten in cm. Abzugrenzen vom Bauchumfang, der auf Nabelhöhe gemessen wird. |
|         `datumTaillenumfang` | 0..1 | dateTime | Datum der Taillenumfangsmessung. |
|     `hueftumfang` | 0..* | BackboneElement | Hüftumfang |
|         `hueftumfang` | 0..1 | decimal | Hüftumfang des SE-Patienten in cm. |
|         `datumHueftumfang` | 0..1 | dateTime | Datum der Hüftumfangsmessung. |
|     `blutgruppe` | 0..1 | code | Blutgruppe des SE-Patienten (AB0 und Rhesusfaktor). |
| `persoenlicheInfosIndexpatient` | 0..* | BackboneElement | Persönliche Informationen des Indexpatienten |
|     `tod` | 0..1 | BackboneElement | Tod |
|         `sterbedatum` | 0..1 | date | Sterbedatum des Indexpatienten. |
|         `anSEVerstorben` | 0..1 | code | Angabe, ob der Indexpatient an der SE verstorben ist. |
|         `andereTodesursache` | 0..* | code | Kodierung der Todesursache soweit bekannt (ICD-10-GM, ORPHAcodes). |
| `familienanamnese` | 0..* | BackboneElement | Familienanamnese |
|     `verwandtschaftsverhaeltnis` | 0..1 | code | Biologisches Verwandtschaftsverhältnis des Familienmitglieds zum Indexpatienten. |
|     `geschlecht` | 0..1 | code | Geschlecht des Familienmitglieds. |
|     `gleicheSE` | 0..* | code | Gibt an, ob das Familienmitglied an der gleichen SE leidet wie der Indexpatient. |
|     `andereSE` | 0..* | code | Gibt an, ob das Familienmitglied an einer anderen SE leidet als der Indexpatient. |
|     `penetranz` | 0..1 | code | Gibt an, ob bei fehlender klinscher Penetranz (Wahrscheinlichkeit Genotyp bildet Phänotyp aus) die genetische Diagnose vorliegt. |
|     `familienmitgliedVerstorben` | 0..1 | code | Gibt an, ob das Familienmitglied verstorben ist. |
|     `todDurchSE` | 0..1 | code | Gibt an, ob die seltene Erkrankung zum Tod des Familienmitglieds beigetragen hat. Abzugrenzen von familienmitgliedVerstorben, das nur den Tod als solchen festhält. |
|     `dokumentationsdatum` | 0..1 | date | Datum, an dem die Familienanamnese erhoben beziehungsweise dokumentiert wurde. |
| `therapieForschung` | 0..* | BackboneElement | Therapie und Forschung |
|     `offLabel` | 0..* | BackboneElement | Off-Label-Gabe |
|         `offLabelGabe` | 0..1 | code | Gibt an, ob eine Off-Label-Gabe vorliegt. |
|         `offLabelMedikament` | 0..* | code | Gibt an, welches Medikament Off-Label gegeben wurde. |
|     `studie` | 0..* | BackboneElement | Studie |
|         `studienID` | 0..1 | Identifier | Eindeutige Identifikation der Studie, an der der SE-Patient teilgenommen hat. |
|         `studienStatus` | 0..1 | code | Aktueller Status der Studie, an der der SE-Patient teilgenommen hat (Abgeschlossen, Fortlaufend). |
|         `studienzeitraum` | 0..1 | Extension | Zeitraum, in dem der SE-Patient an der Studie teilgenommen hat. |
|     `therapie` | 0..* | BackboneElement | Therapie |
|         `therapieempfehlung` | 0..* | code | Gibt an, welche Therapieempfehlung vorliegt. |
|         `durchgefuehrteTherapie` | 0..* | code | Tatsächlich durchgeführte Therapie des SE-Patienten (mit oder ohne Studie mit heilender Intention). |
|         `startdatumTherapie` | 0..1 | date | Datum, an dem die Therapie begonnen hat. |
|         `enddatumTherapie` | 0..1 | date | Datum, an dem die Therapie beendet wurde. |
|         `grundEndeTherapie` | 0..* | code | Gibt an, warum die Therapie beendet wurde (z.B. Nebenwirkungen, keine Wirkung). |

