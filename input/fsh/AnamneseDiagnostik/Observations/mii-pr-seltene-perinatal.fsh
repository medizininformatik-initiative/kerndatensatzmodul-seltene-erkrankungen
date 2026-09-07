// -----------------------------------------------------------------------------
// Prä-/perinatale Informationen
//
// Herkunft: der JARDIN-MDS-Entwurf sieht — optional, falls relevant — prä- und
// perinatale Angaben vor: Gestationsalter, Geburtsgewicht, Geburtslänge,
// Mehrlingsschwangerschaften und vor der Geburt diagnostizierte Fehlbildungen.
// Tracking: GitHub Issue #35, Ballot-Ticket HDB-783.
//
// VORFRAGE DES TICKETS BEANTWORTET ("werden diese Informationen bereits
// strukturiert in einem angebundenen Modul abgebildet?"). Nein, geprüft am
// 2026-09-01:
//   * Ein MII-KDS-Modul Neonatologie existiert nicht (Registry-Abfrage).
//   * Das Modul ICU (Dependency dieses Moduls) führt zwar Körpergewicht,
//     Körpergröße und Körperlänge, aber nichts Perinatales — kein
//     Gestationsalter, kein Geburtsgewicht als eigenständiges Konzept.
//   * Die Module Person und Studie decken es ebenfalls nicht ab.
// Die drei quantitativen Angaben werden daher hier profiliert.
//
// BEWUSST NICHT PROFILIERT, weil FHIR bzw. bestehende Profile es schon leisten:
//   * MEHRLINGSSCHWANGERSCHAFT — FHIR-Kern hat Patient.multipleBirth[x]
//     (boolean für "ja/nein", integer für die Ordnungszahl der Geburt). Ein
//     eigenes Profil dafür wäre eine Dopplung des Kernmodells.
//   * VOR DER GEBURT DIAGNOSTIZIERTE FEHLBILDUNGEN — das sind Diagnosen und
//     gehören in die bestehenden Condition-Profile dieses Moduls. Der pränatale
//     Zeitbezug wird über Condition.onset[x] ausgedrückt; für den Beginn "vor
//     der Geburt" bietet die HPO-Onset-Achse dieses Moduls bereits
//     HP:0011461 |Fetal onset| und HP:0011460 |Embryonal onset|
//     (siehe mii-vs-seltene-hpo-age-of-onset).
//
// Alle LOINC-Codes am 2026-09-01 per CodeSystem/$lookup auf tx.fhir.org
// bestätigt (Status ACTIVE, Displays wörtlich übernommen).
//
// ZUSTAENDIGKEIT — bewusst hier, aber nicht selbstverstaendlich:
// Dieser Datenpunkt ist NICHT auf seltene Erkrankungen beschraenkt. Gestationsalter, Geburtsgewicht und Geburtslaenge werden fuer jedes
// Neugeborene erhoben, unabhaengig von einer seltenen Erkrankung.
// Modelliert wird er hier, weil der Bedarf hier konkret entstanden ist: der
// JARDIN-MDS-Entwurf ist der Datenbedarf eines europaeischen Referenznetzwerks
// mit Termin, kein Wunschzettel, und kein angebundenes MII-Modul deckt ihn ab
// (geprueft 2026-09-01: kein Modul Neonatologie, ICU fuehrt nur
// Koerpergewicht/-groesse/-laenge).
//
// Die Zustaendigkeitsfrage bleibt damit offen, nicht beantwortet. Beim
// Geburtsgeschlecht (Issue #34, HDB-782) ist dieselbe Abwaegung anders
// ausgegangen: dort gab es mit der Gender-Harmony-Extension bereits einen
// Standard und mit MII_PR_Person_Patient bereits einen Ort, also wurde der
// Punkt an das Base-Modul verwiesen statt hier modelliert. Fuer diesen
// Datenpunkt gab es beides nicht. Sollte ein allgemeineres Modul ihn
// aufnehmen, gehoert er dorthin.
// -----------------------------------------------------------------------------

Profile:     MII_PR_Seltene_Gestationsalter
Id:          mii-pr-seltene-gestationsalter
Parent:      Observation
Title:       "MII PR SE Gestationsalter bei Geburt"
Description: "Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann."
* insert PR_CS_VS_Version
* insert Publisher

* id MS
* meta MS
* meta.profile MS
* status MS
* category MS

* code MS
* code = $LNC#76516-4 "Gestational age--at birth"
* code ^short = "Gestationsalter bei Geburt"

* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.system 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code 1..1
* valueQuantity.code = #wk
* valueQuantity.unit = "Wochen"
* valueQuantity ^short = "Vollendete Schwangerschaftswochen"
* valueQuantity ^comment = "In vollendeten Wochen (UCUM wk). Die in der Geburtsmedizin übliche Schreibweise 'SSW+Tage' ist hier nicht darstellbar; für tagesgenaue Angaben ist der Wert als Dezimalbruch der Woche anzugeben oder auf Tage (UCUM d) auszuweichen, was dann von diesem Profil abweicht."


Profile:     MII_PR_Seltene_Geburtsgewicht
Id:          mii-pr-seltene-geburtsgewicht
Parent:      Observation
Title:       "MII PR SE Geburtsgewicht"
Description: "Gemessenes Geburtsgewicht. Bei seltenen Erkrankungen ein Ausgangswert für die Beurteilung von Gedeihstörungen, Makrosomie und intrauteriner Wachstumsrestriktion."
* insert PR_CS_VS_Version
* insert Publisher

* id MS
* meta MS
* meta.profile MS
* status MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vitalSigns 1..1 MS
* category[vitalSigns] = $observation-category#vital-signs

* code MS
* code = $LNC#8339-4 "Birth weight Measured"
* code ^short = "Geburtsgewicht (gemessen)"
* code ^comment = "Bewusst der Code für das GEMESSENE Gewicht. LOINC führt mit 56056-5 |Birth weight - Reported| einen eigenen Code für die anamnestisch berichtete Angabe; wer diese meint, sollte nicht dieses Profil verwenden."

* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.system 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code 1..1
* valueQuantity.code = #g
* valueQuantity.unit = "Gramm"


Profile:     MII_PR_Seltene_Geburtslaenge
Id:          mii-pr-seltene-geburtslaenge
Parent:      Observation
Title:       "MII PR SE Geburtslänge"
Description: "Gemessene Körperlänge bei Geburt. Zusammen mit Geburtsgewicht und Kopfumfang der anthropometrische Ausgangsbefund, gegen den spätere Wachstumsverläufe bewertet werden."
* insert PR_CS_VS_Version
* insert Publisher

* id MS
* meta MS
* meta.profile MS
* status MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vitalSigns 1..1 MS
* category[vitalSigns] = $observation-category#vital-signs

* code MS
* code = $LNC#89269-5 "Body height Measured --at birth"
* code ^short = "Geburtslänge (gemessen)"
* code ^comment = "89269-5 ist der Code für die Länge BEI GEBURT. Der naheliegende 8305-5 |Body height --post partum| meint den Zeitraum nach der Entbindung und ist hier nicht gemeint."

* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.system 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code 1..1
* valueQuantity.code = #cm
* valueQuantity.unit = "Zentimeter"


// Ergaenzt 2026-09-04: Mapping auf das Logical Model. Das Profil bestand seit
// 2026-09-02 ohne Gegenstueck im Datenmodell — die Elemente sind mit diesem
// Commit dort nachgetragen worden.
Mapping:     SE-LogicalModel-Gestationsalter
Id:          SE-LogicalModel
Title:       "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source:      MII_PR_Seltene_Gestationsalter
Target:      "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* value[x] -> "perinatal.gestationsalter" "Gestationsalter bei Geburt"


// Ergaenzt 2026-09-04: Mapping auf das Logical Model. Das Profil bestand seit
// 2026-09-02 ohne Gegenstueck im Datenmodell — die Elemente sind mit diesem
// Commit dort nachgetragen worden.
Mapping:     SE-LogicalModel-Geburtsgewicht
Id:          SE-LogicalModel
Title:       "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source:      MII_PR_Seltene_Geburtsgewicht
Target:      "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* value[x] -> "perinatal.geburtsgewicht" "Geburtsgewicht"


// Ergaenzt 2026-09-04: Mapping auf das Logical Model. Das Profil bestand seit
// 2026-09-02 ohne Gegenstueck im Datenmodell — die Elemente sind mit diesem
// Commit dort nachgetragen worden.
Mapping:     SE-LogicalModel-Geburtslaenge
Id:          SE-LogicalModel
Title:       "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source:      MII_PR_Seltene_Geburtslaenge
Target:      "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* value[x] -> "perinatal.geburtslaenge" "Geburtslänge"
