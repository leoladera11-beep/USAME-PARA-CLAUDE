#!/usr/bin/env bash
# Verificación estática de una APK sin teléfono ni emulador.
#
# Convierte la APK a clases Java y las enlaza con el verificador de tipos de la JVM. El código
# recuperado de la APK original ya produce 9 avisos por la propia conversión; están anotados en
# tools/verificacion/avisos-conocidos.txt. Si un cambio en smali rompe tipos o firmas, aparece un
# aviso nuevo y este script falla. No sustituye a probar en un teléfono: detecta errores de
# enganche (registro equivocado, firma que no existe), no errores de comportamiento.
#
#   python3 tools/herramientas-extra.py analisis    una vez
#   bash tools/verificar-apk.sh [ruta.apk]
set -euo pipefail
cd "$(dirname "$0")/.."
APK=${1:-$(ls dist/Brisa-*-A30.apk | tail -1)}
TOOLS=${BRISA_TOOLS:-"$PWD/build-tools"}
D2J=$(ls -d "$TOOLS"/dex-tools-*/ 2>/dev/null | head -1)
[[ -n "$D2J" && -f "$TOOLS/android-all.jar" ]] || { echo "Faltan herramientas. Ejecuta tools/herramientas-android.py y tools/herramientas-extra.py analisis" >&2; exit 1; }
unset JAVA_TOOL_OPTIONS
WORK=$(mktemp -d); trap 'rm -rf "$WORK"' EXIT
sh "${D2J}d2j-dex2jar.sh" -f -o "$WORK/app.jar" "$APK" > /dev/null 2>&1
python3 tools/verificacion/reversion.py "$WORK/app.jar" "$WORK/app49.jar"
javac -nowarn -d "$WORK" tools/verificacion/Verify.java
java -Xverify:all -cp "$WORK" Verify "$WORK/app49.jar" "$TOOLS/android-all.jar" com/brisa/local/ 2>/dev/null | grep -v '^Picked up' > "$WORK/salida.txt" || true
head -1 "$WORK/salida.txt"
grep '^  ' "$WORK/salida.txt" | sed 's/^  //' | sort > "$WORK/avisos.txt" || true
NEW=$(comm -23 "$WORK/avisos.txt" <(sort tools/verificacion/avisos-conocidos.txt) || true)
if [[ -n "$NEW" ]]; then
  echo "AVISOS NUEVOS (revisa el smali que cambiaste):"; echo "$NEW"; exit 1
fi
echo "Sin avisos nuevos respecto al código original."
