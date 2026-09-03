// Benennung 2026-09-03 an die Modulkonvention angeglichen (Nutzerentscheid:
// noch niemand hat das Modul umgesetzt, ein Bruch ist daher unkritisch).
//
// Verlauf: Die Id hiess urspruenglich "von-seltene-betroffen" und folgte
// keiner Konvention. Am 2026-09-02 auf "mii-ex-von-se-betroffen" geaendert —
// das erfuellte die QC-Regel qc/custom.rules.yaml aber immer noch nicht, die
// ^mii-(pr|ex|...)-seltene verlangt. Jetzt "mii-ex-seltene-von-se-betroffen".
// Da kein ^url gesetzt ist, leitet SUSHI den Canonical aus der Id ab; er
// aendert sich mit. BREAKING CHANGE gegenueber 2026.0.1, bewusst in Kauf
// genommen. Das ValueSet ist im selben Zug auf mii-vs-seltene-von-se-betroffen
// gezogen worden, inklusive seines expliziten ^url.
Extension: MII_EX_Seltene_VonSEBetroffen
Id: mii-ex-seltene-von-se-betroffen
Description: "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist."
* insert PR_CS_VS_Version
* value[x] only CodeableConcept
* value[x] from MII_VS_Seltene_VonSEBetroffen (required)
