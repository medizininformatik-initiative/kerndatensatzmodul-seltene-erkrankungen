<!-- Deutsche Fassung von input/pagecontent/newborn-screening.md — beide Dateien müssen dasselbe sagen.
     Die hier beschriebenen ValueSets werden von scripts/generate-nbs-valuesets.py erzeugt; wenn die
     Zahlen auf dieser Seite und in den ValueSets auseinandergehen, gelten die ValueSets. -->

Im Neugeborenenscreening wird eine Seltene Erkrankung am häufigsten zuerst gefunden. Es ist in
Deutschland das einzige bevölkerungsweite Programm, das seltene Erkrankungen systematisch vor dem
Auftreten von Symptomen erkennt — und damit ein natürlicher Ausgangspunkt für die
Patientenverläufe, die dieses Modul beschreibt.

> **Was diese Seite ist und was nicht.** Dieses Modul spezifiziert das Neugeborenenscreening
> **nicht**. Die [Modulbeschreibung](index.html) nennt ein eigenes KDS-Modul Neugeborenenscreening
> als perspektivisch sinnvoll; diese Seite ist Vorarbeit dafür: eine Terminologie-Handreichung, die
> festhält, welche Codes existieren, welche nicht, und wie ein Screeningbefund abgebildet würde,
> wenn ein Projekt ihn heute braucht. Nichts hier ist für dieses Modul normativ, und kein Profil
> dieses Moduls setzt es voraus.
{: .ig-highlight .ig-highlight-grey}

### Die Zielkrankheiten

Die G-BA Kinder-Richtlinie (Fassung vom 15.05.2025, in Kraft seit 01.01.2026) nennt in § 17
Absatz 1 **20 Zielkrankheiten**. Das Screening auf Mukoviszidose ist ein rechtlich eigenständiges
Programm nach § 23 ff. und unten separat aufgeführt. Seit Mai 2026 gehören Vitamin-B12-Mangel,
Homocystinurie, Propionazidämie und Methylmalonazidurie dazu — vier Ergänzungen, die ältere
Übersichten „des deutschen Neugeborenenscreenings" nicht enthalten.

Jede Zielkrankheit wird über einen **Leitanalyten** erkannt. Die Zuordnung ist in beide Richtungen
nicht 1:1: Propionylcarnitin (C3) ist der Leitanalyt für drei Zielkrankheiten zugleich, während die
eine Zielkrankheit „Carnitinzyklusdefekte" drei Analyte braucht. Deshalb enthält das zugehörige
ValueSet 21 Codes und nicht 21 Krankheiten.

| # | Erkrankung | Leitanalyt | LOINC | ORPHA | ICD-10-GM |
|---|---|---|---|---|---|
| 1 | Hypothyreose | TSH | `29575-8` | 442 | E03.1 |
| 2 | Adrenogenitales Syndrom (AGS) | 17-OH-Progesteron | `38473-5` | 418 | E25.0 |
| 3 | Biotinidasemangel | Biotinidase-Aktivität | `75217-0` | 79241 | E53.8 |
| 4 | Galaktosämie | Galaktose gesamt | `54084-9` | 79239 | E74.2 |
| 5 | Phenylketonurie / Hyperphenylalaninämie | Phenylalanin | `29573-3` | 716 | E70.0 / E70.1 |
| 6 | Ahornsirupkrankheit (MSUD) | Leucin | `47679-6` | 511 | E71.0 |
| 7 | MCAD-Mangel | Octanoylcarnitin (C8) | `53175-6` | 42 | E71.3 |
| 8 | LCHAD-Mangel | C16-OH | `50125-4` | 5 | E71.3 |
| 9 | VLCAD-Mangel | C14:1 | `53191-3` | 26793 | E71.3 |
| 10 | Carnitinzyklusdefekte — CPT-I | freies Carnitin (C0) | `38481-8` | 156 | E71.3 |
| 10 | Carnitinzyklusdefekte — CPT-II | Palmitoylcarnitin (C16) | `53199-6` | 157 | E71.3 |
| 10 | Carnitinzyklusdefekte — CACT | C0/(C16+C18) | `53235-8` | 159 | E71.3 |
| 11 | Glutarazidurie Typ I | Glutarylcarnitin (C5-DC) | `45207-8` | 25 | E72.3 |
| 12 | Isovalerianazidämie | Isovalerylcarnitin (C5) | `42920-9` | 33 | E71.1 |
| 13 | Tyrosinämie Typ I | Succinylaceton | `53231-7` | 882 | E70.2 |
| 14 | Schwere kombinierte Immundefekte (SCID) | TREC | `62320-7` | 183660 | D81.0 / D81.1 / D81.2 |
| 15 | Sichelzellkrankheit | Hämoglobinopathie-Screening-Panel | `54081-5` | 232 | D57.0 / D57.1 |
| 16 | Spinale Muskelatrophie (5q) | SMN1 (PCR) | `92002-5` | 70 | G12.0 / G12.1 |
| 17 | Vitamin-B12-Mangel | Propionylcarnitin (C3) | `53160-8` | — siehe *Grenzen* | E53.8 / D51.9 |
| 18 | Homocystinurie | Methionin | `47700-0` | 394 | E72.1 |
| 19 | Propionazidämie | Propionylcarnitin (C3) | `53160-8` | 35 | E71.1 |
| 20 | Methylmalonazidurie | Propionylcarnitin (C3) | `53160-8` | 27 | E71.1 |
| § 23 | Mukoviszidose (eigenständiges Programm) | IRT | `48633-2` | 586 | E84.0 / E84.9 |

ICD-10-GM ist gröber als das Programm: E71.3 umfasst MCAD, LCHAD, VLCAD **und** alle drei
Carnitinzyklusdefekte, E71.1 fasst Isovalerianazidämie, Propionazidämie und Methylmalonazidurie
zusammen. Nur ORPHA trennt sie — genau das Argument, das dieses Modul durchgängig für die
ORPHAcode-Kodierung macht.

### Die ValueSets und woher sie kommen

Sechs ValueSets gehören zu diesem Modul. Fünf davon sind **aus der LOINC-SNOMED-Ontologie
generiert**, eines ist **aus der Richtlinie kuratiert**. Der Unterschied ist wichtig für alle, die
ihnen vertrauen oder sie erweitern wollen.

| ValueSet | Codes | Wie bestimmt |
|---|---|---|
| [NBS-Leitanalyten](ValueSet-mii-vs-seltene-nbs-target-analyte.html) | 21 | kuratiert: § 17 Abs. 1 und § 23 ff. der Richtlinie |
| [Acylcarnitine in Trockenblut](ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.html) | 78 | ECL über die Ontologie |
| [Aminosäuren in Trockenblut](ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.html) | 96 | ECL über die Ontologie |
| [Enzymaktivitäten in Trockenblut](ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.html) | 34 | ECL über die Ontologie |
| [Quotienten in Trockenblut](ValueSet-mii-vs-seltene-nbs-ratio-dbs.html) | 47 | ECL über die Ontologie |
| [Hämoglobin-Fraktionen in Trockenblut](ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.html) | 9 | ECL über die Ontologie |
| [Alle Trockenblut-Analyte](ValueSet-mii-vs-seltene-nbs-dbs-all.html) | 608 | intensional über die LOINC-Eigenschaft `SYSTEM` |

Die fünf generierten gehen von einem Ausdruck aus, der „alles, was in Trockenblut gemessen wird"
beschreibt:

```
< 363787002 |Observable entity| :
    704327008 |Direct site| = 440500007 |Dried blood spot specimen|
```

Die LOINC-SNOMED-Edition beantwortet ihn mit 335 Konzepten. Jedes ValueSet grenzt diese Menge dann
entlang einer Achse der Ontologie ein — über die Komponente (`<< 102651000 |Acylcarnitine|`,
`<< 52518006 |Amino acid|`, `<< 38082009 |Hemoglobin|`) oder über die Property
(`118524006 |Catalytic concentration|`, `118563004 |Substance ratio|`). Die Zugehörigkeit ist damit
eine Tatsache der Ontologie und keine redaktionelle Entscheidung;
`scripts/generate-nbs-valuesets.py --check` leitet die Dateien neu ab und schlägt fehl, wenn sie
abgedriftet sind.

**Warum die ValueSets LOINC-Codes enthalten, obwohl die Abfrage gegen SNOMED läuft.** Jedes
LOINC-SNOMED-Konzept trägt seinen LOINC-Code als `alternateIdentifier`. Die Ontologie wählt also
die Konzepte aus, LOINC liefert die Codes. Diese Indirektion ist beabsichtigt: tx.fhir.org — der
Terminologieserver, gegen den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht,
ein intensionales ECL-ValueSet ließe sich dort gar nicht expandieren. Alle 264 Codes wurden vor dem
Schreiben einzeln per `CodeSystem/$lookup` bestätigt.

Die generierten ValueSets beschreiben, **was in Trockenblut messbar ist**, nicht was das deutsche
Programm misst. Sie enthalten deshalb auch Analyte, die nicht dazugehören — die lysosomalen Enzyme
international gescreenter Erkrankungen und einige Analyte für ganz andere Zwecke. Wer das deutsche
Programm meint, nutzt das kuratierte Leitanalyten-ValueSet.

**Und sie sind gegenüber LOINC nicht vollständig — Gliederung kostet Abdeckung.** Die
LOINC-SNOMED-Edition bildet nur den nach SNOMED gemappten Teil von LOINC ab: 335 Konzepte gegenüber
**608 LOINC-Codes**, deren `SYSTEM` Trockenblut ist. Rund 45 % der LOINC-Codes fehlen damit in der
Ontologie, und die fehlenden sind keine Exoten — `50086-8` (C5-OH, Leitmetabolit des
3-MCC-Mangels) und `53166-5` (C4) gehören dazu, ebenso die meisten daraus gebildeten
diagnostischen Quotienten. Je Gruppe gemessen: die Acylcarnitine decken etwa die Hälfte der
LOINC-Trockenblut-Acylcarnitine ab, die Hämoglobin-Fraktionen etwa ein Drittel.

Deshalb gibt es ein sechstes ValueSet. [Alle Trockenblut-Analyte](ValueSet-mii-vs-seltene-nbs-dbs-all.html)
bindet intensional an die LOINC-eigene Eigenschaft `SYSTEM` (`LP21304-8`) und ist damit per
Konstruktion vollständig und alterungsfrei — ein neuer Trockenblut-Code von LOINC ist enthalten,
ohne dass jemand eine Datei anfasst. Was es nicht bietet, ist die klinische Gliederung: Analyte,
Quotienten, Panels, Interpretationscodes und fachfremde Analytik (Medikamentenspiegel, Serologie,
PSA) stehen nebeneinander. **Für eine klinisch abgegrenzte Liste die gruppierten Sets, für
Abdeckung das vollständige.**

### Abbildung eines Befunds

Ein Einzelwert ist eine `Observation`. Der LOINC-Analytcode trägt Material (Trockenblut) und
Property bereits in sich; der Code allein beantwortet also „was wurde worin und als welche Art von
Größe gemessen":

* `code` — der Analytcode aus der Tabelle oben
* `value[x]` — `valueQuantity` in µmol/L (UCUM `umol/L`) bei den `[Moles/volume]`-Codes; eine
  einheitenlose `valueQuantity` (UCUM `1`) bei Quotienten; ein `valueCodeableConcept` bei
  `[Presence]`-Codes
* `interpretation` — im Screening-Kontext sind die LOINC-LA-Antwortcodes präziser als die
  generischen HL7-Interpretationscodes: `LA18592-8` *In range*, `LA18593-6` *Out of range*
* `category` — `laboratory`
* `specimen` — ein `Specimen` vom Typ SNOMED `440500007` *Dried blood spot specimen*

Ein vollständiger Befund staffelt sich über drei Ebenen: das Report-Panel `57128-1`, eine
Gesamtinterpretation `57130-7` (beantwortet mit Codes wie `LA12428-1` *All screening is in range
for the conditions tested* oder `LA18944-1` *Screen is out of range for at least one condition*) und
krankheitsbezogene Interpretationen, die zwischen Panel und Einzelanalyten sitzen.

```
57128-1  Newborn Screening Report summary panel
 ├─ hasMember → 57130-7  Gesamtinterpretation          → LA12428-1 / LA18944-1 …
 ├─ hasMember → 46752-2  MCAD/GA-2-Interpretation      → LA18592-8 / LA18593-6
 │    └─ derivedFrom → 53175-6  C8       (valueQuantity µmol/L)
 │    └─ derivedFrom → 53177-2  C8/C10   (valueQuantity 1)
 └─ hasMember → 46762-1  Hypothyreose-Interpretation   → LA18592-8 …
      └─ derivedFrom → 29575-8  TSH      (valueQuantity)
```

Führt ein Screeningbefund zu einer Diagnose, gehört diese in die Profile dieses Moduls: Ein
Screening-Verdacht ist eine
[klinische Diagnose](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) mit
`verificationStatus = unconfirmed`, seine genetische Bestätigung eine
[genetische Diagnose](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html). Das
[SMA-Fallbeispiel](sma-example-annotations.html) geht genau diesen Weg, vom positiven
Neugeborenenscreening bis zur molekulargenetischen Bestätigung.

### Grenzen — was LOINC nicht hergibt

Diese Lücken wurden durch Suchen festgestellt, nicht angenommen. Sie sind wichtig, weil an jeder
von ihnen sonst ein Code erfunden wird.

| Fehlt | Kontext | Was es stattdessen gibt |
|---|---|---|
| 3-OH-Propionsäure in Trockenblut | Second-Tier-Parameter der Zielkrankheiten 17–20 | nur Plasma (`47536-8`), Urin (`29625-1`), Liquor, Fruchtwasser — kein DBS-Code |
| PAP (Pankreatitis-assoziiertes Protein) | zweite Stufe des CF-Programms | überhaupt kein LOINC-Code, in keinem Material |
| Interpretationscode Vitamin-B12-Mangel | Zielkrankheit 17 | keiner unter den NBS-Interpretationscodes. Der nächstliegende, `46747-2` *Propionic/Methylmalonic Acidemias*, ist selbst DISCOURAGED; der aktive Rückfall ist der Gruppencode `46744-9` *Organic acidemias*, der noch breiter ist |
| SMN1-Deletionsnachweis in Trockenblut | Zielkrankheit 16, wo die Richtlinie die homozygote SMN1-Deletion fordert | nur `92002-5`, ein Ct-Wert — kein Deletionsbefund |
| Acylcarnitin-/Aminosäure-**Panel** für Trockenblut | Sammelcode für das MS/MS-Profil | Panel-Codes gibt es nur für Serum, Plasma und Urin; für Trockenblut nur Einzelanalyt-Codes |
| ORPHA für „Vitamin-B12-Mangel" | Zielkrankheit 17 | kein Code trifft den breiten Begriff der Richtlinie, der auch den erworbenen (maternal bedingten) Mangel umfasst |

**LOINC hat die meisten krankheitsspezifischen Interpretationscodes zurückgezogen.** Ein zweiter
Prüfdurchgang über den gesamten Codebestand fand **18 DISCOURAGED-Codes**; für acht davon gibt es
keinen aktiven krankheitsspezifischen Nachfolger, sondern nur Gruppencodes wie `46736-5` *Fatty acid
oxidation defects*, `46744-9` *Organic acidemias* und `46733-2` *Amino acidemias*. Betroffen sind
LCHAD, VLCAD, CPT2/CACT, Glutarazidurie I, Propion- und Methylmalonazidämie, Homocystinurie und
Tyrosinämie. Wer die einzelne Zielkrankheit weiter benennen will, muss die Spezifität anderswo
tragen — über den Gruppencode in `Observation.code` **plus** einen Bezug zur `Condition` oder über
die zugrunde liegenden Analyt-Observations. Zwei Codes, die sich als Nachfolger anbieten würden,
`46766-2` und `46767-0`, sind selbst DISCOURAGED.

Derselbe Durchgang zeigte, dass sich das Sichelzell-Screening nicht nur im Code, sondern im
Abbildungsmuster geändert hat: Die drei methodenspezifischen „Hemoglobin pattern"-Codes (`54104-5`,
`54103-7`, `54105-2`) sind alle DISCOURAGED. LOINC modelliert den Befund jetzt als Rangfolge der
tatsächlich nachgewiesenen Hämoglobine (`64117-5` *Most predominant hemoglobin in DBS* und
Geschwistercodes) plus einen Verdachtscode (`71592-0`). Die Tabelle oben nutzt den
Screening-Panel-Code `54081-5`; wer den Befund selbst braucht und nicht die Tatsache, dass
gescreent wurde, nimmt `64117-5`.

**Einen Code hat der Build gefunden, nicht die Recherche.** `54104-5` *Hemoglobin pattern in DBS by
HPLC* löst einwandfrei auf und wirkt wie der offensichtliche Leitanalyt der Sichelzellkrankheit —
LOINC führt ihn aber mit dem Status **DISCOURAGED**, was der IG-Publisher meldete, nachdem das
ValueSet schon existierte. Ersetzt durch den Panel-Code `54081-5` (ACTIVE); der spezifische Befund
der Sichelzellkrankheit ist die HbS-Fraktion `56476-5`, die im generierten Hämoglobin-ValueSet
enthalten ist. Der Generator liest jetzt die LOINC-Eigenschaft `STATUS` mit, damit ein
discouraged oder deprecated Code gemeldet statt stillschweigend publiziert wird.

Eine methodische Einschränkung: Die Anzeigetexte stammen von tx.fhir.org, das die
LOINC-Eigenschaft `LONG_COMMON_NAME` nicht als eigene Property ausliefert. Es sind die
`display`-Werte des Servers — die, gegen die ein FHIR-`Coding.display` validiert wird — und wurden
nicht zusätzlich gegen die offizielle LOINC-Release-Datei abgeglichen.

### Quellen

* G-BA Kinder-Richtlinie, Fassung vom 15.05.2025, in Kraft 01.01.2026 — § 17 (Zielkrankheiten), § 23 ff. (Mukoviszidose)
* LOINC 2.82 über tx.fhir.org
* LOINC-SNOMED-Edition, Snowstorm-Branch `MAIN/SNOMEDCT-LOINC`, Version 2026-03-21
* ORPHA 2025 und ICD-10-GM 2026 über den MII-Ontoserver
