# Extensions - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Diese Seite listet die FHIR-Extensions, die das Modul **Seltene Erkrankungen** definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.md).

Das Modul definiert die folgenden Extensions.

| | | |
| :--- | :--- | :--- |
| MII EX SE Empfehlung Priorität | [`mii-ex-seltene-empfehlung-prioritaet`](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md) | Priorität der (einzelnen) Empfehlung |
| MII EX SE Empfehlung Publikation | [`mii-ex-seltene-empfehlung-publikation`](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md) | Verweis auf Publikation der (einzelnen) Empfehlung |
| MII EX SE Penetrance | [`mii-ex-seltene-penetrance`](StructureDefinition-mii-ex-seltene-penetrance.md) | Extension to capture the penetrance of genetic variants associated with a rare disease |
| MII EX SE Register | [`mii-ex-seltene-register`](StructureDefinition-mii-ex-seltene-register.md) | Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt. |
| MII_EX_Seltene_VonSEBetroffen | [`mii-ex-seltene-von-se-betroffen`](StructureDefinition-mii-ex-seltene-von-se-betroffen.md) | Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist. |

