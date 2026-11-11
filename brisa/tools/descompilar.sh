#!/usr/bin/env bash
# Descompila una APK a Java legible en build-tools/jadx-out, solo para LEER el código recuperado.
# Los nombres de jadx (AbstractC0427a, C0434h…) no son los reales: el nombre verdadero de cada
# clase es el del comentario «renamed from» y el de su archivo smali. Ver documentacion/MAPA-ANDROID.md.
#   python3 tools/herramientas-extra.py analisis    una vez
#   bash tools/descompilar.sh [ruta.apk]
set -euo pipefail
cd "$(dirname "$0")/.."
APK=${1:-$(ls dist/Brisa-*-A30.apk | tail -1)}
JADX="${BRISA_TOOLS:-$PWD/build-tools}/jadx/bin/jadx"
[[ -x "$JADX" ]] || { echo "Falta jadx. Ejecuta: python3 tools/herramientas-extra.py analisis" >&2; exit 1; }
unset JAVA_TOOL_OPTIONS
rm -rf build-tools/jadx-out
"$JADX" -q --no-res -j 4 -d build-tools/jadx-out "$APK" || true
echo "Código legible en build-tools/jadx-out/sources/com/brisa/local"
