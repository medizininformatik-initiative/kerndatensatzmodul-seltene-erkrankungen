Dieses Profil stuft für eine Patientin oder einen Patienten **eine** Kategorie der
WHO-**Internationalen Klassifikation der Funktionsfähigkeit, Behinderung und
Gesundheit (ICF)** ein. Sowohl der JARDIN-MDS-Entwurf als auch das ERDRI-CDS
verlangen, Funktionsfähigkeit und Behinderung auf diese Weise zu erfassen; kein
MII-Modul deckte das bisher ab.

`Observation.code` trägt die ICF-Kategorie, `Observation.component` die
WHO-Beurteilungsmerkmale.

### Warum die Beurteilungsmerkmale Components sind und kein Wert

Ihre Zahl ist je ICF-Kapitel verschieden, ein einzelnes `value[x]` kann sie daher
nicht tragen. `value[x]` ist folglich geschlossen (`0..0`), und je Kapitel regelt
eine Invariante, welche Components auftreten dürfen:

| Kapitel | Gegenstand | Beurteilungsmerkmale |
|---|---|---|
| `b` | Körperfunktionen | Ausmaß der Schädigung |
| `s` | Körperstrukturen | Ausmaß, Art der Schädigung, Lokalisation |
| `d` | Aktivitäten und Partizipation | **Leistungsfähigkeit** und **Leistung** |
| `e` | Umweltfaktoren | Barriere oder Förderfaktor |

Ohne diese Einschränkungen nähme das Profil anstandslos eine anatomische
Lokalisation auf einer Körper*funktion* entgegen — etwas, das die ICF nicht
definiert.

Die Unterscheidung in Kapitel `d` ist das Herzstück der Klassifikation und bei
seltenen Erkrankungen häufig der eigentliche Punkt: **Leistungsfähigkeit**
(capacity) ist, was jemand unter Testbedingungen kann, **Leistung**
(performance), was er in seiner eigenen Umgebung tatsächlich tut. Beide teilen
sich ein BfArM-CodeSystem und werden deshalb am Component-Code auseinandergehalten,
nicht am Wertesystem.

> **Hinweis zur Reihenfolge:** Die ICF selbst nennt in Kapitel `d` zuerst die
> Leistung und dann die Leistungsfähigkeit. Die Slice-Reihenfolge dieses Profils
> ist alphabetisch und bedeutet nichts — maßgeblich ist der Component-Code, nicht
> die Position.

### Terminologie

Aufgelöst gegen das BfArM-FHIR-Paket `bfarm.terminologien.icf`:

* Die Klassifikation erscheint unter dem HL7-Canonical
  `http://hl7.org/fhir/sid/icf`. Ein eigenes URI prägt das BfArM dafür nicht.
* **Deutsch ist kein zweites CodeSystem.** `icf-translation` ist ein
  `content=supplement` gegen dasselbe Canonical — ein CodeSystem, beide Sprachen.
  Hier muss sich nichts für eine Sprache entscheiden, und das ValueSet braucht
  keinen deutschen Zwilling.
* Die **Beurteilungsmerkmale** sind eigene CodeSystems, sieben an der Zahl,
  veröffentlicht unter `https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-*`.
* Das Trennzeichen trägt Bedeutung, und das BfArM hat es **in** die Codes
  gelegt: Das Ausmaß der Schädigung läuft `.0`…`.4`, `.8`, `.9`, Förderfaktoren
  laufen `+0`…`+4`. Barriere und Förderfaktor unterscheiden sich damit am Code
  selbst und nicht an einem Vorzeichen, das ein Parser rekonstruieren müsste.

### Drei offene Punkte

> **Die Bindung löst im Build womöglich nicht auf.** Der MII-Terminologieserver
> führt `http://hl7.org/fhir/sid/icf` derzeit nicht und meldet es als unbekanntes
> CodeSystem. [`mii-vs-seltene-icf`](ValueSet-mii-vs-seltene-icf.html) hat in
> dieser Publikation deshalb keine Expansion, obwohl `code.coding` **required**
> dagegen gebunden ist. Die Lücke liegt beim Serverbetrieb und schließt sich,
> sobald das BfArM-Paket dort geladen ist; die ICF-Codes selbst bleiben gültig.
>
> **Die Edition ist nicht gepinnt.** Das BfArM liefert Release 2005 mit 1495
> Konzepten; `tx.fhir.org` führt unter *demselben* Canonical 2017a, eine
> Expansion dort ergab 1616. Gleiches URI, rund 120 Konzepte Unterschied. Eine
> required-Bindung darf nicht stillschweigend über beides hinweggehen.
>
> **Die Zuständigkeit ist offen — bewusst, nicht aus Versehen.** Dieser
> Datenpunkt ist **nicht** spezifisch für seltene Erkrankungen: Funktionsfähigkeit
> und Behinderung werden bei Schlaganfall, in der Onkologie und in der Geriatrie
> genauso eingestuft, und die ICF ist eine WHO-Klassifikation für die gesamte
> Gesundheit, nicht für eine Indikation. Modelliert ist sie hier, weil der Bedarf
> hier entstand und konkret war — der JARDIN-MDS-Entwurf ist die Datenanforderung
> eines europäischen Referenznetzwerks mit Frist, und kein angebundenes MII-Modul
> deckte sie ab. Ein Modul für **Symptome und den klinischen Phänotyp** wäre der
> naheliegende Ort, sollte eines sie übernehmen; dieselbe Abwägung fiel beim
> Geschlecht bei Geburt anders aus (HDB-782), das ans Basismodul verwiesen wurde,
> weil es dort sowohl einen Standard als auch einen Platz dafür schon gab.
> Rückmeldungen dazu sind im Ballot willkommen.
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
