<!-- TODO:REVIEW machine translation of source page datasets.md (de) — Migration 2026-08-28, page-map.tsv -->
Note that the logical model aims purely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; these are conclusively defined by the FHIR profiles. For every element within the logical model there is a 1:1 mapping to an element of a concrete FHIR resource.

The associated logical model can be found in the artifact overview (see [Artifacts](artifacts.html)); its data elements are listed in full below.

<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** The logical model was reactivated on 2026-09-02 (it had been parked as `disabled/mii-lm-seltene.fsh.disabled` and builds without error). It is therefore part of the build again, and the 22 unresolvable mapping links every profile carried are resolved.
{: .ig-highlight .ig-highlight-blue}

<!-- BEGIN GENERATED: logical-model-table (scripts/generate-lm-table.py) -->
The table below is generated from the published logical model (`mii-lm-seltene`) and lists every data element with its cardinality, type and description. Indentation reflects nesting.

| Element | Card. | Type | Description |
| --- | --- | --- | --- |
| **AnamneseUndDiagnostik** | 0..* | BackboneElement | Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;**Untersuchungsdatum** | 0..1 | date | Datum der durchgeführten Untersuchung eines SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Untersuchungsanlass** | 0..1 | code | Grund fuer den Besuch des SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Phaenotypisierung** | 0..* | BackboneElement | Phaenotypisierung |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HPOTerm** | 0..* | code | Phaenotypisierung des SE-Patienten mittels HPO-Term (Human Phenotype Ontology) oder anderer Terminologien (SNOMED CT, ICD-10, LOINC). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HPOExcluded** | 0..1 | boolean | Gibt an, ob das HPO-Merkmal explizit ausgeschlossen wurde (negated finding). Abgeleitet aus valueCodeableConcept: LOINC LA9634-2 'Absent' = true, LA9633-4 'Present' = false. Folgt HL7 Phenomics IG Muster. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HPOStatus** | 0..1 | code | Status oder Schweregrad des Phaenotyps (Present/Absent/Severity). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**HPOVersion** | 0..1 | code | Kennzeichnung der genutzten Version des ausgewaehlten HPO-Terms. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ZeitraumSymptom** | 0..* | BackboneElement | Zeitraum des Symptom |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ZeitraumSymptom** | 0..* | dateTime | Startdatum und bei Bedarf Periode der ersten Symptome/Anzeichen. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Lebensphase** | 0..* | code | Lebensphase, in der das Symptom aufgetreten ist. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**AlterSymptom** | 0..1 | integer | Alter beim Auftreten der ersten Symptome/Anzeichen. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**VerlaufSymptom** | 0..1 | code | Aenderung des Verlaufs des Symptoms seit der vorherigen Untersuchung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**KlinischeDiagnose** | 0..* | BackboneElement | Zeitraum der klinischen SE-Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ZeitpunktKlinischeDia** | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der klinsichen SE-Diagnose. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**FeststellungsdatumKlinischeDia** | 0..1 | date | Datum, an dem die klinische SE-Diagnose festgestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**AlterKlinischeDia** | 0..1 | integer | Alter, in dem die klinische SE-Diagnose gestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;**GenetischeDiagnose** | 0..* | BackboneElement | Zeitraum der genetischen SE-Diagnose |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ZeitpunktGenDia** | 0..1 | code | Auswahl der Altersangabe (Lebensphase) des Zeitpunktes der genetischen SE-Diagnose. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**FeststellungsdatumGenDia** | 0..1 | date | Datum, an dem die genetische SE-Diagnose festgestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**AlterGenDia** | 0..1 | integer | Alter, in dem die genetische SE-Diagnose gestellt wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;**GenDiaFehlendePenetranz** | 0..* | code | Gibt an, ob bei einer genetischen Diagnose die Penetranz (Wahrscheinlichkeit Genotyp bildet Phaenotyp aus) fehlt |
| &nbsp;&nbsp;&nbsp;&nbsp;**MethodeDiagnosestellung** | 0..* | code | Gibt an, welche Methode zur Diagnosestellung verwendet wurde. |
| **KoerperlicheUntersuchung** | 0..* | BackboneElement | Körperliche Untersuchung |
| &nbsp;&nbsp;&nbsp;&nbsp;**Koerpergewicht** | 0..* | BackboneElement | Körpergewicht |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Koerpergewicht** | 0..1 | decimal | Körpergewicht des SE-Patienten in kg (aus MII ICU Modul). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumKoerpergewicht** | 0..1 | dateTime | Datum der Körpergewichtsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Koerpergroesse** | 0..* | BackboneElement | Körpergröße |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Koerpergroesse** | 0..1 | decimal | Körpergröße des SE-Patienten in cm (aus MII ICU Modul). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumKoerpergroesse** | 0..1 | dateTime | Datum der Körpergrößenmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**BMI** | 0..* | BackboneElement | BMI |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**BMI** | 0..1 | decimal | BMI des SE-Patienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumBMI** | 0..1 | dateTime | Datum, an dem der BMI (Body Mass Index) berechnet wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Kopfumfang** | 0..* | BackboneElement | Kopfumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Kopfumfang** | 0..1 | decimal | Kopfumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumKopfumfang** | 0..1 | dateTime | Datum der Kopfumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Bauchumfang** | 0..* | BackboneElement | Bauchumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Bauchumfang** | 0..1 | decimal | Bauchumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumBauchumfang** | 0..1 | dateTime | Datum der Bauchumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Hueftumfang** | 0..* | BackboneElement | Hüftumfang |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Hueftumfang** | 0..1 | decimal | Hüftumfang des SE-Patienten in cm. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DatumHueftumfang** | 0..1 | dateTime | Datum der Hüftumfangsmessung. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Blutgruppe** | 0..1 | code | Blutgruppe des SE-Patienten (AB0 und Rhesusfaktor). |
| **PersoenlicheInfosIndexpatient** | 0..* | BackboneElement | Persoenliche Informationen des Indexpatienten |
| &nbsp;&nbsp;&nbsp;&nbsp;**Tod** | 0..1 | BackboneElement | Tod |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Sterbedatum** | 0..1 | date | Sterbedatum des Indexpatienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**AnSEVerstorben** | 0..1 | code | Angabe, ob der Indexpatient an der SE verstorben ist. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**AndereTodesursache** | 0..* | code | Kodierung der Todesursache soweit bekannt (ICD-10-GM, ORPHAcodes). |
| **Familienanamnese** | 0..* | BackboneElement | Familienanamnese |
| &nbsp;&nbsp;&nbsp;&nbsp;**Verwandtschaftsverhaeltnis** | 0..1 | code | Biologisches Verwandtschaftsverhaeltnis des Familienmitglieds zum Indexpatienten. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Geschlecht** | 0..1 | code | Geschlecht des Familienmitglieds. |
| &nbsp;&nbsp;&nbsp;&nbsp;**GleicheSE** | 0..* | code | Gibt an, ob das Familienmitglied an der gleichen SE leidet wie der Indexpatient. |
| &nbsp;&nbsp;&nbsp;&nbsp;**AndereSE** | 0..* | code | Gibt an, ob das Familienmitglied an einer anderen SE leidet als der Indexpatient. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Penetranz** | 0..1 | code | Gibt an, ob bei fehlender klinscher Penetranz (Wahrscheinlichkeit Genotyp bildet Phaenotyp aus) die genetische Diagnose vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;**FamilienmitgliedVerstorben** | 0..1 | code | Gibt an, ob das Familienmitglied verstorben ist. |
| **TherapieForschung** | 0..* | BackboneElement | Therapie und Forschung |
| &nbsp;&nbsp;&nbsp;&nbsp;**OffLabel** | 0..* | BackboneElement | Off-Label-Gabe |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**OffLabelGabe** | 0..1 | code | Gibt an, ob eine Off-Label-Gabe vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**OffLabelMedikament** | 0..* | code | Gibt an, welches Medikament Off-Label gegeben wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Studie** | 0..* | BackboneElement | Studie |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**StudienID** | 0..1 | Identifier | Eindeutige Identifikation der Studie, an der der SE-Patient teilgenommen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**StudienStatus** | 0..1 | code | Aktueller Status der Studie, an der der SE-Patient teilgenommen hat (Abgeschlossen, Fortlaufend). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Studienzeitraum** | 0..1 | Extension | Zeitraum, in dem der SE-Patient an der Studie teilgenommen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;**Therapie** | 0..* | BackboneElement | Therapie |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Therapieempfehlung** | 0..* | code | Gibt an, welche Therapieempfehlung vorliegt. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**DurchgefuehrteTherapie** | 0..* | code | Tatsaechlich durchgeführte Therapie des SE-Patienten (mit oder ohne Studie mit heilender Intention). |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**StartdatumTherapie** | 0..1 | date | Datum, an dem die Therapie begonnen hat. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**EnddatumTherapie** | 0..1 | date | Datum, an dem die Therapie beendet wurde. |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**GrundEndeTherapie** | 0..* | code | Gibt an, warum die Therapie beendet wurde (z.B. Nebenwirkungen, keine Wirkung). |
<!-- END GENERATED: logical-model-table -->
