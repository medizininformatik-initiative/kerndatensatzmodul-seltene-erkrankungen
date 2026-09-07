// KURATIERT, nicht ontologie-generiert: die Leitanalyten der Zielkrankheiten des
// deutschen Neugeborenenscreenings nach der G-BA Kinder-Richtlinie (Fassung
// 15.05.2025, in Kraft ab 01.01.2026), § 17 Absatz 1 — 20 Zielkrankheiten — sowie
// § 23 ff. für das rechtlich eigenständige Mukoviszidose-Screening.
//
// Die Zuordnung Analyt ↔ Zielkrankheit ist nicht 1:1, in beide Richtungen nicht:
// Propionylcarnitin (C3, 53160-8) ist der Leitanalyt für DREI Zielkrankheiten zugleich
// (Vitamin-B12-Mangel, Propionazidämie, Methylmalonazidurie) und steht deshalb nur einmal
// darin; umgekehrt braucht die eine Zielkrankheit "Carnitinzyklusdefekte" DREI Analyte
// (CPT-I, CPT-II, CACT). Aus 20 Zielkrankheiten plus Mukoviszidose werden so 21 Codes.
// Alle Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// ABGRENZUNG: Dieses ValueSet nennt je Zielkrankheit den LEITANALYTEN. Die vollständige
// Analytik eines Screeninglabors ist breiter — dafür sind die ontologie-generierten
// ValueSets mii-vs-seltene-nbs-*-dbs gedacht. Die Zuordnung Analyt → Zielkrankheit ist
// eine fachliche Aussage der Richtlinie und KEINE Ableitung aus der Terminologie.
ValueSet: MII_VS_Seltene_NBS_TargetAnalyte
Id: mii-vs-seltene-nbs-target-analyte
Title: "MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten"
Description: "Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-target-analyte"
* ^status = #active
* ^experimental = false

* $loinc#29575-8 "Thyrotropin [Units/volume] in DBS" // Hypothyreose (TSH)
* $loinc#38473-5 "17-Hydroxyprogesterone [Mass/volume] in DBS" // Adrenogenitales Syndrom (17-OH-Progesteron)
* $loinc#75217-0 "Biotinidase [Enzymatic activity/volume] in DBS" // Biotinidasemangel (Biotinidase-Aktivität)
* $loinc#54084-9 "Galactose [Mass/volume] in DBS" // Galaktosämie (Galaktose gesamt)
* $loinc#29573-3 "Phenylalanine [Moles/volume] in DBS" // Phenylketonurie / Hyperphenylalaninämie (Phenylalanin)
* $loinc#47679-6 "Leucine [Moles/volume] in DBS" // Ahornsirupkrankheit (Leucin)
* $loinc#53175-6 "Octanoylcarnitine (C8) [Moles/volume] in DBS" // MCAD-Mangel (Octanoylcarnitin C8)
* $loinc#50125-4 "3-Hydroxypalmitoylcarnitine (C16-OH) [Moles/volume] in DBS" // LCHAD-Mangel (C16-OH)
* $loinc#53191-3 "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS" // VLCAD-Mangel (C14:1)
* $loinc#38481-8 "Carnitine free (C0) [Moles/volume] in DBS" // Carnitinzyklusdefekt CPT-I (freies Carnitin C0)
* $loinc#53199-6 "Palmitoylcarnitine (C16) [Moles/volume] in DBS" // Carnitinzyklusdefekt CPT-II (Palmitoylcarnitin C16)
* $loinc#53235-8 "Carnitine free (C0)/Palmitoylcarnitine (C16)+Stearoylcarnitine (C18) [Molar ratio] in DBS" // Carnitinzyklusdefekt CACT (C0/(C16+C18))
* $loinc#45207-8 "Glutarylcarnitine (C5-DC) [Moles/volume] in DBS" // Glutarazidurie Typ I (Glutarylcarnitin C5-DC)
* $loinc#42920-9 "Isovalerylcarnitine (C5) [Moles/volume] in DBS" // Isovalerianazidämie (Isovalerylcarnitin C5)
* $loinc#53231-7 "Succinylacetone [Moles/volume] in DBS" // Tyrosinämie Typ I (Succinylaceton)
* $loinc#62320-7 "T-cell receptor excision circle [#/volume] in DBS by NAA with probe detection" // SCID (TREC)
// Der zunächst naheliegende Code 54104-5 "Hemoglobin pattern in DBS by HPLC" trägt in
// LOINC den Status DISCOURAGED — gefunden hat das der IG-Publisher, nicht die Recherche.
// Ersetzt durch den Panel-Code des Hämoglobinopathie-Screenings (ACTIVE); der spezifische
// Leitbefund der Sichelzellkrankheit ist die HbS-Fraktion 56476-5, die im generierten
// ValueSet mii-vs-seltene-nbs-hemoglobin-dbs enthalten ist.
* $loinc#54081-5 "Hemoglobinopathies newborn screening panel" // Sichelzellkrankheit (Hämoglobinopathie-Screening-Panel)
* $loinc#92002-5 "SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection" // SMA (5q) (SMN1 PCR)
* $loinc#53160-8 "Propionylcarnitine (C3) [Moles/volume] in DBS" // Vitamin-B12-Mangel / Propionazidämie / Methylmalonazidurie (Propionylcarnitin C3)
* $loinc#47700-0 "Methionine [Moles/volume] in DBS" // Homocystinurie (Methionin)
* $loinc#48633-2 "Trypsinogen I Free [Mass/volume] in DBS" // Mukoviszidose (IRT)
