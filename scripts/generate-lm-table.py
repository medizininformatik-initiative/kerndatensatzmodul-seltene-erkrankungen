#!/usr/bin/env python3
"""Erzeugt die Datensatz-Tabelle des Logical Models als Markdown.

Warum ein Generator und keine Liquid-Einbindung: Die Tabelle soll in BEIDEN
Sprachbaeumen identisch rendern und auch dann noch stehen, wenn das Template
seine Include-Mechanik aendert. Statisches Markdown ist dafuer die robusteste
Form — es kostet den Preis, dass es nach jeder Aenderung am Modell neu erzeugt
werden muss, und genau dafuer gibt es dieses Skript.

Quelle ist der von SUSHI erzeugte Snapshot, nicht die FSH-Datei: so steht in
der Tabelle, was tatsaechlich publiziert wird.

Aufruf:  python3 scripts/generate-lm-table.py
"""
import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
SD = ROOT / "fsh-generated/resources/StructureDefinition-mii-lm-seltene.json"

# Zwischen diesen Markern wird ersetzt; alles ausserhalb bleibt unangetastet,
# damit handgeschriebener Text der Seite nicht verloren geht.
BEGIN = "<!-- BEGIN GENERATED: logical-model-table (scripts/generate-lm-table.py) -->"
END = "<!-- END GENERATED: logical-model-table -->"

PAGES = {
    ROOT / "input/pagecontent/logical-models.md": "en",
    ROOT / "input/translations/de/pagecontent/logical-models.md": "de",
}

HEAD = {
    "en": ("Element", "Card.", "Type", "Description"),
    "de": ("Element", "Kard.", "Typ", "Beschreibung"),
}

INTRO = {
    "en": (
        "The table below is generated from the published logical model "
        "(`mii-lm-seltene`) and lists every data element with its cardinality, "
        "type and description. Indentation reflects nesting."
    ),
    "de": (
        "Die folgende Tabelle wird aus dem publizierten Logical Model "
        "(`mii-lm-seltene`) erzeugt und listet jedes Datenelement mit "
        "Kardinalität, Typ und Beschreibung. Die Einrückung bildet die "
        "Verschachtelung ab."
    ),
}


def cell(text):
    """Markdown-Tabellenzellen vertragen keine rohen Pipes und Umbrueche."""
    if not text:
        return ""
    text = re.sub(r"\s+", " ", str(text)).strip()
    return text.replace("|", "\\|")


def build_rows(elements):
    rows = []
    for el in elements:
        path = el.get("id") or el.get("path") or ""
        parts = path.split(".")
        if len(parts) < 2:  # das Wurzelelement selbst ist keine Zeile
            continue
        depth = len(parts) - 2
        name = parts[-1]
        types = ", ".join(
            t.get("code", "").rsplit("/", 1)[-1] for t in el.get("type", []) if t.get("code")
        )
        card = ""
        if el.get("min") is not None or el.get("max"):
            card = "%s..%s" % (el.get("min", ""), el.get("max", ""))
        desc = el.get("definition") or el.get("short") or ""
        label = ("&nbsp;" * 4 * depth) + "**" + cell(name) + "**"
        rows.append((label, cell(card), cell(types), cell(desc)))
    return rows


def render(rows, lang):
    head = HEAD[lang]
    out = [INTRO[lang], "", "| %s | %s | %s | %s |" % head, "| --- | --- | --- | --- |"]
    out += ["| %s | %s | %s | %s |" % r for r in rows]
    return "\n".join(out)


def main():
    if not SD.exists():
        sys.exit("Snapshot fehlt: %s — bitte zuerst SUSHI laufen lassen." % SD)
    sd = json.loads(SD.read_text(encoding="utf-8"))
    elements = (sd.get("snapshot") or sd.get("differential") or {}).get("element", [])
    rows = build_rows(elements)
    if not rows:
        sys.exit("Keine Elemente gefunden — wurde das Logical Model gebaut?")

    for page, lang in PAGES.items():
        if not page.exists():
            print("  übersprungen (fehlt): %s" % page.relative_to(ROOT))
            continue
        text = page.read_text(encoding="utf-8")
        block = "%s\n%s\n%s" % (BEGIN, render(rows, lang), END)
        if BEGIN in text and END in text:
            text = re.sub(
                re.escape(BEGIN) + r".*?" + re.escape(END), block, text, flags=re.S
            )
        else:
            text = text.rstrip() + "\n\n" + block + "\n"
        page.write_text(text, encoding="utf-8")
        print("  %-52s %d Zeilen" % (page.relative_to(ROOT), len(rows)))

    print("Fertig: %d Datenelemente." % len(rows))


if __name__ == "__main__":
    main()
