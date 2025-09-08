// CodeSystem for Therapy Recommendation Strategy Types from MV GenomSeq
// This aligns with the MV GenomSeq RareDiseasesPlan.recommendedTherapies.strategy

CodeSystem: MII_CS_SE_TherapieempfehlungStrategie
Id: mii-cs-se-therapieempfehlung-strategie
Title: "MII CS SE Therapieempfehlung Strategie"
Description: "Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-se-therapieempfehlung-strategie"

* #systemic-medication "Systemische Medikation"
  "Systemische medikamentöse Therapie, die den gesamten Körper betrifft"

* #targeted-medication "Zielgerichtete Medikation"
  "Zielgerichtete medikamentöse Therapie basierend auf molekularen Targets"

* #prevention-medication "Präventive Medikation"
  "Medikamentöse Therapie zur Prävention von Krankheitsmanifestationen"

* #gene-therapy "Gentherapie"
  "Therapeutische Intervention durch Genmodifikation oder Genersatz"

* #prophylactic "Prophylaxe"
  "Vorbeugende Maßnahmen zur Verhinderung von Komplikationen"

* #early-detection "Früherkennung"
  "Maßnahmen zur frühzeitigen Erkennung von Krankheitszeichen"

* #combination "Kombinationstherapie"
  "Kombinierte Anwendung mehrerer Therapieansätze"

* #nutrition "Ernährungstherapie"
  "Therapeutische Intervention durch spezielle Ernährungsmaßnahmen"

* #other "Sonstige"
  "Andere Therapiestrategien, die nicht in die definierten Kategorien fallen"

// ValueSet for the Therapy Recommendation Strategy (Complete set for Modellvorhaben GenomSeq)
ValueSet: MII_VS_SE_TherapieempfehlungStrategie
Id: mii-vs-se-therapieempfehlung-strategie
Title: "MII VS SE Therapieempfehlung Strategie"
Description: "ValueSet für Strategietypen von Therapieempfehlungen bei seltenen Erkrankungen (Modellvorhaben GenomSeq)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-therapieempfehlung-strategie"
* include codes from system MII_CS_SE_TherapieempfehlungStrategie

// Sub-ValueSet for MEDICATION Therapy Strategies
ValueSet: MII_VS_SE_TherapieempfehlungStrategieMedikamentoes
Id: mii-vs-se-therapieempfehlung-strategie-medikamentoes
Title: "MII VS SE Therapieempfehlung Strategie - Medikamentös"
Description: "ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-therapieempfehlung-strategie-medikamentoes"
* MII_CS_SE_TherapieempfehlungStrategie#systemic-medication "Systemische Medikation"
* MII_CS_SE_TherapieempfehlungStrategie#targeted-medication "Zielgerichtete Medikation"
* MII_CS_SE_TherapieempfehlungStrategie#prevention-medication "Präventive Medikation"
* MII_CS_SE_TherapieempfehlungStrategie#gene-therapy "Gentherapie"
* MII_CS_SE_TherapieempfehlungStrategie#combination "Kombinationstherapie"

// Sub-ValueSet for NON-MEDICATION Therapy Strategies
ValueSet: MII_VS_SE_TherapieempfehlungStrategieNichtMedikamentoes
Id: mii-vs-se-therapieempfehlung-strategie-nicht-medikamentoes
Title: "MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös"
Description: "ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-therapieempfehlung-strategie-nicht-medikamentoes"
* MII_CS_SE_TherapieempfehlungStrategie#prophylactic "Prophylaxe"
* MII_CS_SE_TherapieempfehlungStrategie#early-detection "Früherkennung"
* MII_CS_SE_TherapieempfehlungStrategie#nutrition "Ernährungstherapie"
* MII_CS_SE_TherapieempfehlungStrategie#other "Sonstige"