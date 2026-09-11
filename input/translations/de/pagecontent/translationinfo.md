<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung der Quellseite input/pagecontent/translationinfo.md
     (Englisch ist die Standardsprache der IG). Mechanik: siehe
     docs/recipes/add-translation.md. -->
### Übersetzungsinformationen

Dieser Leitfaden ist **englischsprachig** (Standardsprache); **Deutsch** ist die
Übersetzung. Englisch ist damit sowohl die Basis-Darstellung des Leitfadens als
auch die `/en/`-Darstellung; über den Sprachumschalter oben rechts wechseln Sie
zwischen `/en/` und `/de/`.

Übersetzte Seiten liegen unter `input/translations/de/pagecontent/` (gleicher
Dateiname wie die englische Seite); Ressourcen-Übersetzungen als `.po`-Dateien
unter `input/translations/de/`. Details:
[`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/blob/main/docs/recipes/add-translation.md) in diesem Repository.

**Übersetzungsstand** (v2027.0.0-ballot.rc1):

| Teil | Stand |
|---|---|
| Erzählende Seiten | 22 von 22 übersetzt |
| Seitentitel, Brotkrumen, Inhaltsverzeichnis | 25 von 25 Einheiten übersetzt (eine `.po`-Datei) |
| Navigationsmenü | je Sprache eigenständig gepflegt (`includes/menu.xml`) |
| Titel und Beschreibungen von Profilen, ValueSets und CodeSystems | **nicht übersetzt** — alle 64 Artefakte erscheinen in beiden Sprachbäumen englisch |

> **Bekannte Lücke:** die letzte Zeile. Titel und Beschreibungen der Artefakte
> erreichen die Lesenden aus den Ressourcen selbst und nicht aus den Seitenquellen;
> sie zu übersetzen heißt daher, je Element Übersetzungseinheiten anzulegen, statt
> eine Seite zu bearbeiten. Das hat das Modul nicht getan, und wer auf `/de/`
> unterwegs ist, trifft deshalb auf jeder Artefaktseite auf englischen Text. Das ist
> eine Lücke in der Abdeckung, nicht in der Richtigkeit: Die deutschen Seiten
> erläutern jedes Artefakt, und Codes wie Bindings sind sprachunabhängig.
{: .ig-highlight .ig-highlight-grey}

Ein Hinweis zur Herkunft: Der Vorgänger-Leitfaden auf Simplifier war deutsch
verfasst. Die von dort übernommenen Kapitel wurden bei der Migration maschinell ins
Englische übersetzt und stehen in redaktioneller Durchsicht; für diese Seiten ist
die deutsche Fassung also die ältere der beiden.
