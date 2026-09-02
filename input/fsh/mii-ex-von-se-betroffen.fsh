// Umbenannt 2026-09-02 (Nutzerentscheid): Id von "von-seltene-betroffen" auf
// "mii-ex-von-se-betroffen". Die bisherige Id folgte keiner der beiden im Modul
// vorhandenen Konventionen — weder mii-ex- noch mii-ext- — und war die einzige
// Extension ohne Praefix. Da kein ^url gesetzt ist, leitet SUSHI den Canonical aus
// der Id ab; er aendert sich damit mit. BREAKING CHANGE gegenueber 2026.0.1,
// bewusst in Kauf genommen. Das zugehoerige ValueSet behaelt vorerst die Id
// von-seltene-betroffen-vs, weil es einen eigenen ^url traegt und separat
// entschieden werden sollte.
Extension: VonSEBetroffen
Id: mii-ex-von-se-betroffen
Description: "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist."
* value[x] only CodeableConcept
* value[x] from VonSEBetroffenVS (required)
