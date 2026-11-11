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
step "Rust: salida de descargas, rutas y token de Drive"
for name in download_output storage_paths drive_token; do
  rustc --edition 2021 --test "windows/desktop/src/$name.rs" -o "/tmp/brisa-test-$name" 2>/dev/null
  "/tmp/brisa-test-$name" | grep "test result"
done
cd windows
step "JavaScript";                                 npm test 2>&1 | grep -E "^# (pass|fail)"
step "Interfaz de Windows (Chromium)";             npx playwright test --trace off 2>&1 | grep -E "✘|passed|failed"
step "Interfaz de Android (Chromium)";             npx playwright test --config playwright.android.config.js --trace off 2>&1 | grep -E "✘|passed|failed"
cd ..
step "Windows: código de Drive frente a un Drive simulado (HTTP real)"
HOST_TARGET=${CARGO_TARGET_DIR:+$CARGO_TARGET_DIR-host}; HOST_TARGET=${HOST_TARGET:-$PWD/windows/desktop/host-tests/target}
CARGO_TARGET_DIR="$HOST_TARGET" cargo test --quiet --manifest-path windows/desktop/host-tests/Cargo.toml 2>&1 | grep "test result" | grep -v " 0 passed"
CARGO_TARGET_DIR="$HOST_TARGET" cargo build --quiet --manifest-path windows/desktop/host-tests/Cargo.toml --bin bridge
step "Reproducción real por los puentes de streaming (Chromium)"
BRISA_BRIDGE="$HOST_TARGET/debug/bridge" node tools/probar-streaming.cjs | grep -E "FALLO|reproducciones"
if [[ -n "$(ls dist/Brisa-*-A30.apk 2>/dev/null)" && -n "$(ls -d build-tools/dex-tools-*/ 2>/dev/null)" ]]; then
  step "Verificación estática de la APK";          bash tools/verificar-apk.sh
fi
printf '\nTodo correcto.\n'
