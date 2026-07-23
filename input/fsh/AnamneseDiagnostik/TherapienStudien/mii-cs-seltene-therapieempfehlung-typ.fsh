// CodeSystem for Therapy Type (Causal vs Symptomatic) from MV GenomSeq
// This aligns with the MV GenomSeq RareDiseasesPlan.recommendedTherapies.therapyType

CodeSystem: MII_CS_Seltene_TherapieempfehlungTyp
Id: mii-cs-seltene-therapieempfehlung-typ
Title: "MII CS SE Therapieempfehlung Typ"
Description: "Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"

* #causal "Kausal"
  "Kausale Therapie - adressiert die zugrundeliegende Ursache der Erkrankung"

* #symptomatic "Symptomatisch"
  "Symptomatische Therapie - behandelt Symptome und Manifestationen der Erkrankung"

// ValueSet for the Therapy Type
ValueSet: MII_VS_Seltene_TherapieempfehlungTyp
Id: mii-vs-seltene-therapieempfehlung-typ
Title: "MII VS SE Therapieempfehlung Typ"
Description: "ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ"
* include codes from system MII_CS_Seltene_TherapieempfehlungTyp
