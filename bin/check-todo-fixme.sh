#!/usr/bin/env bash
set -euo pipefail

PASS=0

for file in "$@"; do
    if grep -q "TODO_FIXME" "$file"; then
        echo "Erreur dans $file : présence de 'TODO_FIXME'"
        PASS=1
    fi
done

exit $PASS
