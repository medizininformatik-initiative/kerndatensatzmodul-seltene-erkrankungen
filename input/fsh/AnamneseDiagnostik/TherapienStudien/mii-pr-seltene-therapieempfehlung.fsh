Profile: MII_PR_Seltene_Therapieempfehlung
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Id: mii-pr-seltene-therapieempfehlung
Title: "MII PR SE Therapieempfehlung Systemische Therapie"
Description: "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* status ^short = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* intent 1..1 MS
* intent ^short = "proposal | option"
* intent ^definition = "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."

* medication[x] 1..1 MS
* medicationReference only Reference(MII_PR_Medikation_Medication) // + Medication (restricted by parent profile to profile only)

// Category slice for therapy strategy type (specific for Modellvorhaben GenomSeq)
* category MS
// Discriminator auf #value/coding.system statt #pattern/$this (Sweep-Befund, in
// keinem Issue gemeldet). Die beiden Slices unterschieden sich bisher AUSSCHLIESSLICH
// durch ihr required-Binding auf zwei verschiedene ValueSets — und ein Binding ist in
// FHIR R4 kein auswertbares Unterscheidungsmerkmal: die zulaessigen Discriminator-Typen
// sind value, exists, pattern, type und profile, kein binding. Beide Slices sind
// CodeableConcept ohne Pattern, der Validator kann eine Instanz also keinem von beiden
// zuordnen. Da die beiden ValueSets aus zwei getrennten CodeSystems ziehen, genuegt es,
// coding.system je Slice festzunageln.
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq"
* category contains
    MVGenomSeqTherapieStrategie 0..1 MS and
    MVGenomSeqTherapieTyp 0..1 MS
* category[MVGenomSeqTherapieStrategie] from MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes (required)
* category[MVGenomSeqTherapieStrategie] ^short = "Modellvorhaben GenomSeq Therapiestrategie-Typ (Medikamentös)"
* category[MVGenomSeqTherapieStrategie] ^definition = "Kategorisierung der medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq Strategietyp"
* category[MVGenomSeqTherapieStrategie] ^comment = "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für medikamentöse Strategien: systemic-medication, targeted-medication, prevention-medication, gene-therapy, combination."
* category[MVGenomSeqTherapieStrategie].coding 1..1
* category[MVGenomSeqTherapieStrategie].coding.system 1..
* category[MVGenomSeqTherapieStrategie].coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie"
* category[MVGenomSeqTherapieStrategie].coding.code 1..
* category[MVGenomSeqTherapieTyp] from MII_VS_Seltene_TherapieempfehlungTyp (required)
* category[MVGenomSeqTherapieTyp] ^short = "Modellvorhaben GenomSeq Therapietyp (Kausal/Symptomatisch)"
* category[MVGenomSeqTherapieTyp] ^definition = "Kategorisierung der Therapieempfehlung nach Therapietyp (kausal vs. symptomatisch) gemäß Modellvorhaben GenomSeq"
* category[MVGenomSeqTherapieTyp] ^comment = "Dieses Feld ermöglicht die Unterscheidung, ob die Therapie die zugrundeliegende Ursache der Erkrankung adressiert (kausal) oder Symptome und Manifestationen behandelt (symptomatisch). Entspricht RareDiseasesPlan.recommendedTherapies.therapyType aus MV GenomSeq."
* category[MVGenomSeqTherapieTyp].coding 1..1
* category[MVGenomSeqTherapieTyp].coding.system 1..
* category[MVGenomSeqTherapieTyp].coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
* category[MVGenomSeqTherapieTyp].coding.code 1..

* reasonReference 0..* MS
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* reasonReference ^slicing.ordered = false

// Die Extension MII_EX_Seltene_Empfehlung_Evidenzgraduierung wurde hier entfernt
// (Modulverantwortlicher, 2026-08-31; GitHub-Issues #25/#27, Ballot-Ticket HDB-543).
// Sie war eine Kopie der MTB-Fassung und seit ihrer ersten Fassung unfertig: der
// system-Discriminator hatte nie einen Wert, wodurch der Pflicht-Slice Evidenzgrad 1..1
// von keiner Instanz erfuellbar war — die Extension war publiziert, aber unbenutzbar.
// Die offene Frage, welche Skala hier gilt, gehoert zu HDB-543 und ist onkologisch
// gepraegt (NCT m1A-m4, ESMO, ASCO); fuer dieses Modul war sie nie beantwortet.
// Statt eine Tumorskala zu importieren, faellt der Punkt hier weg und bleibt bei MTB.
* extension contains
    MII_EX_Seltene_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_Seltene_Empfehlung_Publikation named Publikation 0..* MS

