#!/usr/bin/env bash
# Compila la app de Windows 11 x64 desde Linux con Rust y LLVM MinGW.
#   python3 tools/herramientas-extra.py windows          una vez: compilador cruzado
#   rustup target add x86_64-pc-windows-gnullvm          una vez
#   python3 tools/descargar-dependencias.py --solo-motor una vez: yt-dlp verificado
#   bash tools/build-windows.sh
# El resultado queda en windows/desktop/target/x86_64-pc-windows-gnullvm/release/brisa-local.exe
# (o en $CARGO_TARGET_DIR). En Windows nativo usa: cd windows && npm ci && npm run desktop:build
set -euo pipefail
cd "$(dirname "$0")/.."
MINGW=$(ls -d "${BRISA_TOOLS:-$PWD/build-tools}"/llvm-mingw-*/ 2>/dev/null | head -1)
[[ -n "$MINGW" ]] || { echo "Falta LLVM MinGW. Ejecuta: python3 tools/herramientas-extra.py windows" >&2; exit 1; }
export PATH="${MINGW}bin:$PATH"
export CC_x86_64_pc_windows_gnullvm=x86_64-w64-mingw32-clang CXX_x86_64_pc_windows_gnullvm=x86_64-w64-mingw32-clang++ AR_x86_64_pc_windows_gnullvm=llvm-ar
python3 tools/build-web.py --comprobar
cargo build --manifest-path windows/desktop/Cargo.toml --target x86_64-pc-windows-gnullvm --release --locked
echo "libunwind.dll: ${MINGW}x86_64-w64-mingw32/bin/libunwind.dll"
