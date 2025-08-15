ValueSet: MII_VS_SE_Blutgruppe
Id: mii-vs-se-blutgruppe
Title: "MII VS SE Blutgruppe"
Description: "ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-se/ValueSet/mii-vs-se-blutgruppe"
* ^status = #active
* ^experimental = false

// LOINC Answer codes for blood groups
* $LNC#LA21321-7 "O Pos"
* $LNC#LA21322-5 "O Neg"
* $LNC#LA21327-4 "B Pos"
* $LNC#LA21328-2 "B Neg"
* $LNC#LA21323-3 "AB Pos"
* $LNC#LA21324-1 "AB Neg"
* $LNC#LA21325-8 "A Pos"
* $LNC#LA21326-6 "A Neg"

// Additional SNOMED CT codes for blood groups
* SNOMED_CT#278147001 "Blood group O Rh(D) positive (finding)"
* SNOMED_CT#278148006 "Blood group O Rh(D) negative (finding)"
* SNOMED_CT#278150003 "Blood group B Rh(D) positive (finding)"
* SNOMED_CT#278153001 "Blood group B Rh(D) negative (finding)"
* SNOMED_CT#278151004 "Blood group AB Rh(D) positive (finding)"
* SNOMED_CT#278154007 "Blood group AB Rh(D) negative (finding)"
* SNOMED_CT#278149003 "Blood group A Rh(D) positive (finding)"
* SNOMED_CT#278152006 "Blood group A Rh(D) negative (finding)"