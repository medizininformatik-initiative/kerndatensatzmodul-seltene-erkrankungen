#!/usr/bin/env bash
# workflow-placeholder-check.sh — aktive {{PLACEHOLDER}} in Workflows finden.
#
# Anlass (2026-09-07): Der erste Trockenlauf von go-publish.yml scheiterte am
# ersten Gatter mit "Unexpected package id: de.medizininformatikinitiative.
# kerndatensatz.seltene". Ursache war nicht das Modul, sondern der Workflow
# selbst: sein env:-Block trug noch vier unersetzte Platzhalter der Vorlage.
#
#   EXPECTED_CANONICAL        .../fhir/modul-{{MODULE_SLUG}}
#   EXPECTED_PUBLICATION_BASE https://{{GITHUB_ORG}}.github.io/{{REPO_NAME}}
#   EXPECTED_PACKAGE_ID       de.medizininformatikinitiative.kerndatensatz.{{MODULE_SLUG}}
#   release_ref default       v{{CALVER_VERSION}}
#
# Der Bootstrap ersetzt Platzhalter in sushi-config.yaml und ig.ini, und der
# guard-Job von module-release.yml prueft sushi-config darauf. Die WORKFLOWS
# hat niemand geprueft — und ihr Fehler zeigt sich erst beim Publizieren, also
# genau dann, wenn es teuer ist.
#
# Kommentarzeilen sind ausgenommen: die Workflows dokumentieren ihre eigenen
# Platzhalter im Kopf, und das soll so bleiben (dieselbe Falle wie beim guard,
# der ohne diese Ausnahme jedes fertige Modul fuer die Vorlage hielt).
#
#   scripts/workflow-placeholder-check.sh
#
# Exit 0 = sauber, 1 = aktiver Platzhalter gefunden.
set -u
cd "$(dirname "$0")/.." || exit 1

# Auf dem Vorlagen-Repo sind die Platzhalter der Sollzustand.
if [ -f sushi-config.yaml ] && grep -v '^[[:space:]]*#' sushi-config.yaml | grep -q '{{'; then
  echo "workflow-placeholder-check: Vorlagen-Repo erkannt (sushi-config.yaml traegt aktive Platzhalter) — uebersprungen."
  exit 0
fi

hits="$(grep -nE '\{\{[A-Z_]+\}\}' .github/workflows/*.yml 2>/dev/null \
        | grep -vE '^[^:]+:[0-9]+:[[:space:]]*#' \
        | grep -v 'PLACEHOLDER')"

if [ -z "$hits" ]; then
  echo "workflow-placeholder-check: keine aktiven Platzhalter in .github/workflows/."
  exit 0
fi

echo "$hits"
cat >&2 <<'MSG'

Aktive {{PLACEHOLDER}} in einem Workflow gefunden (siehe oben).

Diese Werte werden erst beim Publizieren geprueft — dort brechen sie den Lauf
mit einer Meldung ab, die nach einem Modulfehler aussieht ("Unexpected package
id", "Unexpected canonical"), es aber nicht ist.

Die richtigen Werte stehen in sushi-config.yaml (canonical, packageId, version)
und in publication-request.json (path). NICHT den Platzhalter mechanisch durch
den Modul-Slug ersetzen: die Vorlage schreibt .../fhir/modul-<slug>, waehrend
ein Modul auch .../fhir/ext/modul-<slug> fuehren kann. Den Wert uebernehmen,
nicht ableiten.

Kommentarzeilen sind ausgenommen; ein Platzhalter im Kopfkommentar ist
Dokumentation und kein Befund.
MSG
exit 1
