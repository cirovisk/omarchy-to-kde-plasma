#!/usr/bin/env bash
set -euo pipefail

pacote=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
dados=${XDG_DATA_HOME:-"$HOME/.local/share"}

for pasta in color-schemes plasma/look-and-feel; do
    mkdir -p -- "$dados/$pasta"
    cp -a -- "$pacote/$pasta/." "$dados/$pasta/"
done

printf '24 temas instalados em %s\n' "$dados"
printf 'Abra Configurações do Sistema → Cores e temas → Tema global.\n'
