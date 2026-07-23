CodeSystem: MII_CS_Seltene_NARSE_Therapietyp
Id: mii-cs-seltene-narse-therapietyp
Title: "MII CS Seltene Erkrankungen NARSE Therapietyp"
Description: "CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "Status of the concept"
* ^property[=].type = #code

* #keine "Keine"
    "Keine Therapie"
* #pharmakotherapie "Pharmakotherapie"
    "Medikamentöse Therapie mit konventionellen Arzneimitteln"
* #gentherapie "Gentherapie"
    "Therapie mit genetisch veränderten Zellen oder direkter Genmodifikation"
* #mrna-therapie "mRNA Therapie"
    "Therapie mit mRNA-basierten Therapeutika"
* #antikoerpertherapie "Antikörpertherapie"
    "Therapie mit monoklonalen oder polyklonalen Antikörpern"
* #cart-zelltherapie "CAR-T-Zelltherapie"
    "Chimäre Antigenrezeptor-T-Zelltherapie"
* #stammzelltransplantation "Stammzelltransplantation"
    "Hämatopoetische Stammzelltransplantation (autolog oder allogen)"
* #stoffwechseltherapie "Stoffwechseltherapie"
    "Therapie zur Korrektur von Stoffwechselstörungen (z.B. Enzymersatztherapie, Substratreduktion)"
* #sonstiges "Sonstiges"
    "Andere Therapieform, nicht näher spezifiziert"
* #unbekannt "Unbekannt"
    "Therapietyp ist nicht bekannt"