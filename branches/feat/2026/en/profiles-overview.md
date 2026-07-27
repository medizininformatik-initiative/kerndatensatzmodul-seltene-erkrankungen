# FHIR-Profile (Übersicht) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## FHIR-Profile (Übersicht)

Die Arbeiten der Kerndatensatzspezifikationen basieren, falls möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](https://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen FHIR Basisprofile](https://simplifier.net/basisprofil-de-r4) von HL7 Deutschland. Außerdem wird Kompatibilität zu den FHIR-Spezifikationen der [Kassenärztlichen Bundesvereinigung (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) und der [Gematik](https://simplifier.net/organization/gematik) angestrebt.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Implementierungshinweis für krankheitsspezifische Codes

> **Hinweis:** Die technische Implementierung von Profilen für krankheitsspezifische Codes (inkl. relevanter Diagnosen, Symptome, Prozeduren, Medikationen etc.) kann beispielsweise als projektspezifische Spezifikation erfolgen und langfristig ins Modul Seltene Erkrankungen migriert werden. Dies ermöglicht eine flexible Anpassung an spezielle Anforderungen einzelner Projekte, während gleichzeitig eine spätere Standardisierung und Integration in das Kernmodul angestrebt wird.

