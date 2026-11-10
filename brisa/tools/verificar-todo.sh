#!/usr/bin/env bash
# Ejecuta todas las comprobaciones que no necesitan teléfono ni Windows. Úsalo antes de cada commit.
#   BRISA_CHROMIUM=/ruta/a/chromium bash tools/verificar-todo.sh
# Requiere: tools/herramientas-android.py ejecutado y «npm ci» en windows/.
set -euo pipefail
cd "$(dirname "$0")/.."
step() { printf '\n== %s\n' "$1"; }
step "Interfaz generada desde common/";            python3 tools/build-web.py --comprobar
step "Enganches smali";                            python3 tools/parches-4.0.0.py --comprobar
step "Lógica nativa de Android (JVM)";             bash tools/probar-android.sh | grep -E "comprobaciones|passed"
step "Rust: salida de descargas y rutas"
for name in download_output storage_paths; do
  rustc --edition 2021 --test "windows/desktop/src/$name.rs" -o "/tmp/brisa-test-$name" 2>/dev/null
  "/tmp/brisa-test-$name" | grep "test result"
done
cd windows
step "JavaScript";                                 npm test 2>&1 | grep -E "^# (pass|fail)"
step "Interfaz de Windows (Chromium)";             npx playwright test --trace off 2>&1 | grep -E "✘|passed|failed"
step "Interfaz de Android (Chromium)";             npx playwright test --config playwright.android.config.js --trace off 2>&1 | grep -E "✘|passed|failed"
cd ..
if [[ -f dist/Brisa-4.0.0-A30.apk && -n "$(ls -d build-tools/dex-tools-*/ 2>/dev/null)" ]]; then
  step "Verificación estática de la APK";          bash tools/verificar-apk.sh
fi
printf '\nTodo correcto.\n'
