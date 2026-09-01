// -----------------------------------------------------------------------------
// Beispiele zu den JARDIN-Datenpunkten (Issues #34, #35, #36, #38)
//
// Angebunden an patient-sma-001 aus dem bestehenden SMA-Fallbeispiel: ein
// neugeborenes Mädchen mit im Screening entdeckter SMA Typ 1, geboren am
// 2024-07-01. Das ist kein beliebiger Aufhänger — bei SMA Typ 1 sind die hier
// modellierten Datenpunkte gleichzeitig einschlägig: perinatale Ausgangswerte als Bezug für
// spätere Verläufe, eine ICF-Einstufung, deren Kern der Abstand zwischen
// Leistungsfähigkeit und Leistung ist, und die Teilnahme an einem ERN-Register
// (ERN EURO-NMD für neuromuskuläre Erkrankungen).
//
// Die ICF-Beispiele decken bewusst ALLE VIER Kapitel ab, weil jedes eine andere
// Zahl von Beurteilungsmerkmalen trägt und die Invarianten mii-icf-1..5 sonst
// ungeprüft blieben.
// -----------------------------------------------------------------------------

// ── #34 Geschlecht bei Geburt — NICHT in diesem Modul ────────────────────────
// Entscheidung des Modulverantwortlichen (2026-09-01): der Datenpunkt wird hier
// NICHT modelliert, sondern als Ballotierungskommentar an das MII KDS Modul
// Person adressiert (HDB-782). Begruendung: es ist ein demografisches Attribut
// der Person, kein Befund einer seltenen Erkrankung, und HL7 Gender Harmony
// standardisiert es bereits als Extension individual-recordedSexOrGender mit
// type = LOINC 76689-9 — deren Context ist Patient, und Patient gehoert dem
// Modul Person. Es hier zu modellieren hiesse, in fremde Zustaendigkeit hinein
// zu profilieren und einen zweiten Ort dafuer zu schaffen.
// Das urspruengliche Ticket schlaegt ausdruecklich den Weg ueber das Modul SE
// vor; der Kommentar widerspricht dem begruendet.

// ── #35 Prä-/perinatale Informationen ────────────────────────────────────────

Instance:    mii-exa-seltene-gestationsalter
InstanceOf:  MII_PR_Seltene_Gestationsalter
Usage:       #example
Title:       "Beispiel Gestationsalter bei Geburt"
Description: "Reifgeborenes in der 38. Woche. Bei SMA Typ 1 wichtig als Abgrenzung: die Muskelschwäche ist nicht durch Frühgeburtlichkeit erklärbar."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter)
* status = #final
* code = $LNC#76516-4 "Gestational age--at birth"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-01"
* valueQuantity = 38 'wk' "Wochen"

Instance:    mii-exa-seltene-geburtsgewicht
InstanceOf:  MII_PR_Seltene_Geburtsgewicht
Usage:       #example
Title:       "Beispiel Geburtsgewicht"
Description: "Geburtsgewicht im Normbereich. Ausgangswert für die Beurteilung der bei SMA Typ 1 häufigen späteren Gedeihstörung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtsgewicht)
* status = #final
* category[vitalSigns] = $observation-category#vital-signs
* code = $LNC#8339-4 "Birth weight Measured"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-01"
* valueQuantity = 3240 'g' "Gramm"

Instance:    mii-exa-seltene-geburtslaenge
InstanceOf:  MII_PR_Seltene_Geburtslaenge
Usage:       #example
Title:       "Beispiel Geburtslänge"
Description: "Körperlänge bei Geburt, gemessen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge)
* status = #final
* category[vitalSigns] = $observation-category#vital-signs
* code = $LNC#89269-5 "Body height Measured --at birth"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2024-07-01"
* valueQuantity = 50 'cm' "Zentimeter"

// ── #36 ICF — je ein Beispiel pro Kapitel ────────────────────────────────────
// Alle Einstufungen zum selben Zeitpunkt (Alter 12 Monate), damit sie als
// zusammenhängendes Funktionsprofil lesbar sind.

Instance:    mii-exa-seltene-icf-koerperfunktion
InstanceOf:  MII_PR_Seltene_ICFAssessment
Usage:       #example
Title:       "ICF example — body function (chapter b), one qualifier"
Description: "Muscle power functions in SMA type 1, graded as a complete problem. Chapter b takes exactly one qualifier; invariant mii-icf-1 rejects any other component here."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment)
* status = #final
* category[survey] = $observation-category#survey
* code.coding = $icf#b730 "Muscle power functions"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2025-07-01"
* component[extentOfImpairment].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#extent-of-impairment
* component[extentOfImpairment].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-ausmass-der-schaedigung#.4 "Schädigung voll ausgeprägt (komplett, total ...) 96-100 %"

Instance:    mii-exa-seltene-icf-koerperstruktur
InstanceOf:  MII_PR_Seltene_ICFAssessment
Usage:       #example
Title:       "ICF example — body structure (chapter s), three qualifiers"
Description: "Spinal cord in SMA type 1: degeneration of the anterior horn cells. The only chapter that takes three qualifiers at once — extent, nature of the change and anatomical location. This is the case a single value[x] could never have carried, which is why the profile uses components."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment)
* status = #final
* category[survey] = $observation-category#survey
* code.coding = $icf#s120 "Spinal cord and related structures"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2025-07-01"
* component[extentOfImpairmentBodyStructure].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#extent-of-impairment-structure
* component[extentOfImpairmentBodyStructure].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-ausmass-der-schaedigung-s#.3 "Schädigung erheblich ausgeprägt (hoch, äußerst ...) 50-95 %"
* component[natureOfChange].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#nature-of-change
* component[natureOfChange].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-art-oder-veraenderung-in-der-entsprechenden-koerperstruktur#7 "qualitative Strukturveränderung, einschließlich Ansammlung von Flüssigkeit"
* component[anatomicalLocation].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#anatomical-location
* component[anatomicalLocation].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-anatomische-lokalisation#3 "beidseitig"

Instance:    mii-exa-seltene-icf-aktivitaet
InstanceOf:  MII_PR_Seltene_ICFAssessment
Usage:       #example
Title:       "ICF example — activities and participation (chapter d), capacity vs performance"
Description: "Eating in SMA type 1, and the reason chapter d takes two qualifiers rather than one. Without assistance the child cannot feed orally at all — capacity is a complete problem. With a gastrostomy in place, nutrition in daily life is only moderately impaired — performance is markedly better. The gap between the two IS the measured effect of the assistive device; a model with a single value would have had to discard one of the two numbers and would have said something false either way."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment)
* status = #final
* category[survey] = $observation-category#survey
* code.coding = $icf#d550 "Eating"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2025-07-01"
* component[capacity].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#capacity
* component[capacity].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-leistungsfaehigkeit-und-leistung#.4 "Problem voll ausgeprägt (komplett, total ...) 96-100 %"
* component[performance].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#performance
* component[performance].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-leistungsfaehigkeit-und-leistung#.2 "Problem mäßig ausgeprägt (mittel, ziemlich ...) 25-49 %"
* note.text = "Leistungsfähigkeit ohne Hilfsmittel beurteilt, Leistung mit liegender PEG. Die Differenz beziffert den Nutzen der Sondenernährung."

Instance:    mii-exa-seltene-icf-umweltfaktor
InstanceOf:  MII_PR_Seltene_ICFAssessment
Usage:       #example
Title:       "ICF example — environmental factor (chapter e), facilitator"
Description: "Assistive products for mobility, graded as a substantial FACILITATOR. Environmental factors are the one chapter with a two-sided scale, and BfArM resolves it by putting the sign into the code itself: facilitators run +0 to +4, barriers .0 to .4. Invariant mii-icf-5 forbids grading the same factor as both at once."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment)
* status = #final
* category[survey] = $observation-category#survey
* code.coding = $icf#e1201 "Assistive products and technology for personal indoor and outdoor mobility and transportation"
* subject = Reference(patient-sma-001)
* effectiveDateTime = "2025-07-01"
* component[facilitator].code = MII_CS_Seltene_ICFBeurteilungsmerkmal#facilitator
* component[facilitator].valueCodeableConcept = https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-foerderfaktoren#+3 "Förderfaktor erheblich ausgeprägt (hoch, äußerst ...) 50-95%"
* note.text = "Angepasste Sitzschale und Lagerungshilfen."

// ── #38 Registerteilnahme ────────────────────────────────────────────────────
// Zeigt die im Profil dokumentierte Konsequenz: study ist in R4 PFLICHT und
// zeigt auf eine ResearchStudy, das Register muss also als ResearchStudy
// vorliegen. Der Library-Katalogeintrag steht optional daneben.

Instance:    mii-exa-seltene-register-euro-nmd
InstanceOf:  ResearchStudy
Usage:       #example
Title:       "Beispiel Register als ResearchStudy — ERN EURO-NMD"
Description: "Das Register des European Reference Network für neuromuskuläre Erkrankungen, als ResearchStudy geführt. Ein Register ist inhaltlich eine Beobachtungsstudie; das ist keine Verlegenheitslösung, sondern die Voraussetzung dafür, dass ResearchSubject.study überhaupt darauf zeigen kann."
* identifier.system = "https://ern-euro-nmd.eu/fhir/sid/registry"
* identifier.value = "EURO-NMD-REG"
* title = "ERN EURO-NMD Patient Registry"
* status = #active
* category = $SCT#415145008 "Research study"
* description = "Registry of the European Reference Network for Rare Neuromuscular Diseases."

Instance:    mii-exa-seltene-register-katalog-euro-nmd
InstanceOf:  Library
Usage:       #example
Title:       "Beispiel Register-Katalogeintrag (Library)"
Description: "Derselbe Registerbestand als Katalogeintrag nach dem Profil mii-pr-studie-register des Moduls Studie. Steht neben der ResearchStudy, nicht an ihrer Stelle — eine Library kann kein Ziel von ResearchSubject.study sein."
* identifier.system = "https://ern-euro-nmd.eu/fhir/sid/registry"
* identifier.value = "EURO-NMD-REG"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* name = "ERNEuroNMDRegistry"
* title = "ERN EURO-NMD Patient Registry — Katalogeintrag"
* relatedArtifact[0].type = #documentation
* relatedArtifact[=].document.url = "https://ern-euro-nmd.eu/registry/"

Instance:    mii-exa-seltene-register-einwilligung
InstanceOf:  Consent
Usage:       #example
Title:       "Beispiel Einwilligung zur Registerteilnahme"
Description: "Das Probanden-Profil des Moduls Studie fordert consent mit 1..1 — bei einer Registeraufnahme ist die Einwilligung der Sorgeberechtigten ohnehin die Grundlage, die Pflichtangabe deckt sich also mit der Praxis und ist keine zusaetzliche Huerde."
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#research
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#research
* patient = Reference(patient-sma-001)
* dateTime = "2024-08-15"
* policyRule = http://terminology.hl7.org/CodeSystem/consentpolicycodes#cric

Instance:    mii-exa-seltene-registerteilnahme
InstanceOf:  MII_PR_Seltene_Registerteilnahme
Usage:       #example
Title:       "Beispiel Registerteilnahme — ERN EURO-NMD"
Description: "Teilnahme des SMA-Kindes am EURO-NMD-Register. Die Kennung ist das registereigene Pseudonym, nicht die Patienten-ID des Standorts."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme)
* extension[register].valueReference = Reference(mii-exa-seltene-register-katalog-euro-nmd)
* identifier.system = "https://ern-euro-nmd.eu/fhir/sid/subject"
* identifier.value = "NMD-DE-004712"
* status = #on-study
* period.start = "2024-08-15"
* study = Reference(mii-exa-seltene-register-euro-nmd)
* individual = Reference(patient-sma-001)
* consent = Reference(mii-exa-seltene-register-einwilligung)
