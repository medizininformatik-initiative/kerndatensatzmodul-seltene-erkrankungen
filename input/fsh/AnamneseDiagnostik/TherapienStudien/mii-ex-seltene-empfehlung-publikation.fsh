Extension: MII_EX_Seltene_Empfehlung_Publikation
Id: mii-ex-seltene-empfehlung-publikation
Context: MedicationRequest, RequestGroup, ServiceRequest
Title: "MII EX SE Empfehlung Publikation"
Description: "Verweis auf Publikation der (einzelnen) Empfehlung"

* value[x] 1..1 MS
* value[x] only string or Identifier

// Research database
* valueIdentifier ^short = "Identifikator Publikation"
* valueIdentifier ^definition = "Eindeutiger Identifikator zur Publikation in einer Publikationsdatenbank"
* valueIdentifier ^comment = "Z.B. Document Object Identifier (DOI): https://doi.org/10.3414/ME18-03-0003 oder PubMed Identifier (PMID): http://www.ncbi.nlm.nih.gov/pubmed/30016818"
* valueIdentifier.system 1..1 MS
* valueIdentifier.system ^comment = "Publikationsdatenbank, z.B. DOI: http://doi.org oder PMID: http://www.ncbi.nlm.nih.gov/pubmed"
* valueIdentifier.value 1..1 MS
* valueIdentifier.value ^comment = "Identifikator zur Publikation, z.B. DOI: 10.1000/182 oder PMID: 30016818"

// Other publication source
* valueString ^short = "Andere Publikationsquelle"
* valueString ^definition = "Publikationsquelle die nicht über eine Publikationsdatenbank referenzierbar ist"
* valueString ^comment = "Z.B. Whitepaper oder Leitlinie"