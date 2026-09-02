Rückmeldung aus der Umsetzung im Modul Seltene Erkrankungen — mit einem begründeten Gegenvorschlag zum Ort.

**Vorschlag: den Datenpunkt am MII-Patient-Profil führen (`mii-pr-person-patient`, Linie 2027), nicht im Modul SE.**

Entschieden am 2026-09-02. Im Base-Repository ist die Aufnahme der Extension bereits als Issue registriert — kerndatensatz-basis#81 „Patient - Person Recorded Sex Or Gender", eröffnet 2026-07-23; die hier zusammengetragenen Befunde sind dort als Kommentar ergänzt. Konkreter Ort: `medizininformatik-initiative/kerndatensatz-basis`, Datei `input/fsh/profiles/MII_PR_Person_Patient.fsh`, ausgeliefert im Paket `de.medizininformatikinitiative.kerndatensatz.base` — bereits Dependency aller aufsetzenden Module, unter anderem des Moduls SE.

Der Ticketvorschlag lautet, das Geburtsgeschlecht „über das MII KDS Modul SE" zu ergänzen. Bei der Umsetzung im Modul SE hat sich gezeigt, dass das der falsche Ort ist:

1. Es ist ein **demografisches Attribut der Person**, kein Befund einer seltenen Erkrankung. Ein Kind mit einer Störung der Geschlechtsentwicklung hat ein Geburtsgeschlecht — aber das gilt für jede Person, unabhängig davon, ob eine seltene Erkrankung vorliegt.
2. HL7 **Gender Harmony** standardisiert genau diesen Datenpunkt bereits, und zwar als Extension `individual-recordedSexOrGender` (in `hl7.fhir.uv.extensions.r4`). Deren `context` ist `Patient` — eine Ressource, die das Modul SE nicht besitzt. Eine Umsetzung dort hieße, in fremde Zuständigkeit hinein zu profilieren. Da der Datenpunkt für jede Person gilt, gehört er an das MII-Patient-Profil, von dem alle Module erben.
3. **Auffindbarkeit:** Wer das Geburtsgeschlecht abfragt (FDPG, ein DIC, ein europäischer Registerabgleich), sucht es bei `Patient`. Ein zweiter Ort im Modul SE würde dafür sorgen, dass die Angabe für Personen ohne SE-Bezug gar nicht existiert und für Personen mit SE-Bezug an einer unerwarteten Stelle steht.

**Wie Gender Harmony es löst**, und warum das gut zum Ticket passt: Das Projekt trennt drei bisher in `Patient.gender` vermischte Konzepte — Gender Identity, Sex Parameter for Clinical Use, und Recorded Sex or Gender. „Sex assigned at birth" ist kein eigenes Element, sondern ein `type` unter Recorded Sex or Gender, gebunden an `recorded-sex-or-gender-type` mit LOINC **`76689-9` „Sex assigned at birth"**. Die Extension trägt daneben Provenienz-Felder (`sourceDocument`, `sourceField`, `jurisdiction`, `acquisitionDate`) — für den deutschen Kontext passend, weil das PStG im Geburtenregister auch die offene Angabe zulässt und „welches Register, welches Feld" damit eine echte Information ist. Das deckt sich mit der Ticketaussage, dass der Wert vom administrativen Gender abweichen kann: Gender Harmony sagt ausdrücklich, dass eine erfasste Angabe eine Aussage eines Dokuments ist und nicht dieselbe Aussage wie `Patient.gender`.

**Ein konkreter Terminologie-Befund, der bei der Umsetzung aufgefallen ist und den Vorschlag betrifft:**

Der naheliegende Weg wäre, die LOINC-eigene Antwortliste zu `76689-9` zu verwenden. Das trägt nicht. `LL3324-2` enthält, geprüft über `ValueSet/$expand` auf tx.fhir.org, genau drei Codes:

| Code | Display |
| --- | --- |
| LA2-8 | Male |
| LA3-6 | Female |
| LA4489-6 | **Unknown** |

Das Ticket und der ERDRI-CDS verlangen aber **Male / Female / Undetermined**, und das ist nicht dasselbe: *unknown* heißt „nicht erhoben", *undetermined* heißt „bei Geburt nicht bestimmbar". Für Störungen der Geschlechtsentwicklung — die selbst seltene Erkrankungen sind und genau den Anwendungsfall bilden — ist die Unterscheidung keine Spitzfindigkeit, sondern der eigentliche Informationsgehalt.

SNOMED CT deckt es ab. Vorschlag für das ValueSet, alle Codes per `CodeSystem/$lookup` auf tx.fhir.org bestätigt:

| Code | Display |
| --- | --- |
| 248153007 | Male |
| 248152002 | Female |
| 37791004 | Indeterminate sex |
| 261665006 | Unknown (für „nicht erhoben", ausdrücklich abzugrenzen von Indeterminate sex) |

Das ist umsetzbar, weil die Bindung von `individual-recordedSexOrGender.value` nur die Stärke `example` hat (gegen `administrative-gender`) — eine nationale Festlegung ist dort also ausdrücklich vorgesehen und kein Konflikt mit dem internationalen Standard.

**Wo genau, und in welcher Form — geprüft an `de.basisprofil.r4` 1.6.0:**

Die Deutschen Basisprofile enthalten **kein Patient-Profil**; der Canonical `patient-de-basis` kommt im Paket nicht vor. Das Paket liefert stattdessen Extensions, Datentypen und Bindungen, die andere anwenden. Der Vorschlag lautet daher ausdrücklich *nicht*, dort ein Patient-Profil anzulegen.

Die Vorlage steht schon im selben Paket: **`gender-amtlich-de`** (`http://fhir.de/StructureDefinition/gender-amtlich-de`) ist eine Extension mit `context = Patient.gender` (plus RelatedPerson, Person, Practitioner, Patient.contact) und existiert genau deshalb, weil das deutsche Personenstandsrecht eine Differenzierung braucht, die das internationale FHIR-Modell nicht mitbringt. Das Geburtsgeschlecht ist der Schwesterfall.

Anders als damals muss dafür **keine neue Extension geprägt werden**: `individual-recordedSexOrGender` existiert bereits in `hl7.fhir.uv.extensions.r4`. Der deutsche Beitrag beschränkt sich damit auf zwei Dinge:

1. eine **nationale ValueSet-Bindung** für `individual-recordedSexOrGender.value` mit dem oben vorgeschlagenen SNOMED-Satz — möglich, weil die Bindung im Standard nur `example` ist;
2. die **Festlegung, dass `type` auf LOINC `76689-9` gesetzt wird**, damit „Geburtsgeschlecht" bundesweit an derselben Stelle und mit demselben Marker steht.

Damit erben alle Module, die auf den Basisprofilen aufsetzen, den Datenpunkt — einschließlich Person und SE — ohne dass ein Modul in die Zuständigkeit eines anderen hineinprofiliert.

**Der Anwendungsort in der MII ist ebenfalls schon vorhanden, und das Muster dort ebenfalls.** Das Paket `de.medizininformatikinitiative.kerndatensatz.base` liefert `mii-pr-person-patient` (Canonical `.../core/modul-person/StructureDefinition/Patient`) — und dieses Profil wendet die Basisprofil-Extension bereits genau so an, wie hier vorgeschlagen: es slict `Patient.gender.extension` und bindet den Slice `other-amtlich` an `gender-amtlich-de`. Die Arbeitsteilung — Basisprofile definieren die Extension, das MII-Patient-Profil wendet sie als benannten Slice an — ist also nicht neu zu erfinden, sondern gelebte Praxis.

Für das Geburtsgeschlecht sähe der Slice analog aus, mit einem Unterschied: `gender-amtlich-de` hat `context = Patient.gender` und verfeinert damit das Gender-Element, während `individual-recordedSexOrGender` `context = Patient` hat und deshalb auf `Patient.extension` sitzt. Skizze:

```
* extension contains
    $individual-recordedSexOrGender named geburtsgeschlecht 0..1 MS
* extension[geburtsgeschlecht].extension[type].valueCodeableConcept = $LNC#76689-9
* extension[geburtsgeschlecht].extension[value].valueCodeableConcept from <nationales VS> (required)
```

Der `type`-Slice ist dabei nicht Zierde: `individual-recordedSexOrGender` ist wiederholbar und trägt verschiedene Arten erfassten Geschlechts, `type` grenzt den Geburtsgeschlecht-Eintrag von den übrigen ab.

**Konsequenz im Modul SE:** Der Datenpunkt wurde dort testweise als eigenständige Observation modelliert und nach dieser Abwägung wieder entfernt. Das Modul SE führt ihn nicht. Die übrigen JARDIN-Punkte aus derselben Gegenüberstellung (prä-/perinatale Angaben, ICF, Registerteilnahme) sind im Modul SE umgesetzt, weil sie dort inhaltlich hingehören.
