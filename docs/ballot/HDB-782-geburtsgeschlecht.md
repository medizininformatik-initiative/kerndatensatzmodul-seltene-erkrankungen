Rückmeldung aus der Umsetzung im Modul Seltene Erkrankungen — mit einem begründeten Gegenvorschlag zum Ort.

**Vorschlag: den Datenpunkt im Modul Person führen, nicht im Modul SE.**

Der Ticketvorschlag lautet, das Geburtsgeschlecht „über das MII KDS Modul SE" zu ergänzen. Bei der Umsetzung im Modul SE hat sich gezeigt, dass das der falsche Ort ist:

1. Es ist ein **demografisches Attribut der Person**, kein Befund einer seltenen Erkrankung. Ein Kind mit einer Störung der Geschlechtsentwicklung hat ein Geburtsgeschlecht — aber das gilt für jede Person, unabhängig davon, ob eine seltene Erkrankung vorliegt.
2. HL7 **Gender Harmony** standardisiert genau diesen Datenpunkt bereits, und zwar als Extension `individual-recordedSexOrGender` (in `hl7.fhir.uv.extensions.r4`). Deren `context` ist `Patient` — und Patient gehört dem Modul Person. Eine Umsetzung im Modul SE hieße, in die Zuständigkeit eines anderen Moduls hinein zu profilieren.
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

**Konsequenz im Modul SE:** Der Datenpunkt wurde dort testweise als eigenständige Observation modelliert und nach dieser Abwägung wieder entfernt. Das Modul SE führt ihn nicht; die Umsetzung wird hiermit dem Modul Person vorgeschlagen. Die übrigen JARDIN-Punkte aus derselben Gegenüberstellung (prä-/perinatale Angaben, ICF, Registerteilnahme) sind im Modul SE umgesetzt, weil sie dort inhaltlich hingehören.
