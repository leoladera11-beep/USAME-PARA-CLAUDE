#!/usr/bin/env bash
# Arma la carpeta de entrega: APK firmadas, app portable de Windows, clave, documentación,
# licencias y código fuente. Requiere haber compilado antes Android y Windows.
set -euo pipefail
cd "$(dirname "$0")/.."
VERSION=4.1.0
OUT=${1:-"$PWD/dist/entrega"}
TARGET=${CARGO_TARGET_DIR:-"$PWD/windows/desktop/target"}/x86_64-pc-windows-gnullvm/release
UNWIND=${BRISA_LIBUNWIND:-$(ls build-tools/llvm-mingw-*/x86_64-w64-mingw32/bin/libunwind.dll 2>/dev/null | head -1)}
[[ -n "$UNWIND" ]] || { echo "No se encuentra libunwind.dll: ejecuta tools/herramientas-extra.py windows o define BRISA_LIBUNWIND" >&2; exit 1; }
NAME="Brisa-$VERSION"
rm -rf "$OUT" && mkdir -p "$OUT/$NAME"/{apps,documentacion,licencias,fuentes}
cp "dist/Brisa-$VERSION-A30.apk" "dist/Brisa-$VERSION-F8-Pro.apk" "$OUT/$NAME/apps/"

WIN="$OUT/win/Brisa-$VERSION-Windows-x64"
mkdir -p "$WIN/resources"
cp "$TARGET/brisa-local.exe" "$WIN/Brisa Local.exe"
cp "$TARGET/WebView2Loader.dll" "$WIN/"
cp "$UNWIND" "$WIN/libunwind.dll"
cp windows/portable/ABRIR-BRISA.cmd windows/portable/Preparar-Brisa.ps1 LICENSE THIRD_PARTY_NOTICES.txt "$WIN/"
cp documentacion/INSTALAR.md documentacion/CAMBIOS-$VERSION.md "$WIN/"
cp -r windows/desktop/resources/licenses "$WIN/resources/"
cp windows/desktop/resources/{ffmpeg.exe,ffprobe.exe,qjs.exe,hashes.json,versions.json} "$WIN/resources/"
# El motor de descargas va dentro para que la app funcione al abrir el .exe, sin pasos previos.
# ABRIR-BRISA.cmd sigue sirviendo: comprueba el motor y, si faltara, lo descarga verificado.
[[ -f windows/desktop/resources/yt-dlp.exe ]] && cp windows/desktop/resources/yt-dlp.exe "$WIN/resources/"
(cd "$OUT/win" && zip -q -r -9 "$OUT/$NAME/apps/Brisa-$VERSION-Windows-x64.zip" "Brisa-$VERSION-Windows-x64")
rm -rf "$OUT/win"

cp documentacion/*.md "$OUT/$NAME/documentacion/"
cp LICENSE THIRD_PARTY_NOTICES.txt "$OUT/$NAME/licencias/"
cp -r windows/desktop/resources/licenses/. "$OUT/$NAME/licencias/"
cp vendor/newpipe/LICENSE "$OUT/$NAME/licencias/NewPipe-GPL-3.0.txt"
cp vendor/nanojson/LICENSE "$OUT/$NAME/licencias/nanojson-LICENSE.txt"
if [[ -d clave ]]; then
  mkdir -p "$OUT/$NAME/clave" && cp clave/brisa.jks clave/brisa-clave.txt "$OUT/$NAME/clave/"
  printf 'Clave privada con la que se firmaron las APK de Brisa %s.\nGuardala en un lugar seguro y no la compartas: con ella podras instalar futuras versiones encima\nde esta sin desinstalar. Alias: brisa. La contrasena esta en brisa-clave.txt.\nPara compilar, copia esta carpeta como clave/ dentro del codigo fuente.\n' "$VERSION" > "$OUT/$NAME/clave/LEEME.txt"
fi
[[ -d "${BRISA_CAPTURAS:-}" ]] && mkdir -p "$OUT/$NAME/capturas" && cp "$BRISA_CAPTURAS"/*.png "$OUT/$NAME/capturas/"
# Código fuente tal como está en el repositorio (sin claves, sin herramientas descargadas y sin las apps compiladas, que ya van en apps/).
git archive --format=zip -9 --prefix="Brisa-$VERSION-codigo/" -o "$OUT/$NAME/fuentes/Brisa-$VERSION-codigo.zip" HEAD . ':(exclude)apps/Brisa-*'
cat > "$OUT/$NAME/EMPIEZA-AQUI.md" <<TXT
# Brisa $VERSION

1. Lee documentacion/INSTALAR.md para instalar en el Galaxy A30, el F8 Pro y Windows 11.
2. documentacion/CAMBIOS-$VERSION.md explica cada cambio y su motivo.
3. documentacion/CONFIGURAR_GOOGLE_DRIVE.md: un paso unico para usar Drive en el telefono.
4. documentacion/VALIDACION-$VERSION.md: que esta probado y que debes comprobar en tus equipos.

apps/      las dos APK firmadas y el ZIP portable de Windows
clave/     tu clave de firma privada: guardala y no la compartas
fuentes/   el codigo fuente completo
licencias/ licencias del proyecto y de sus componentes
capturas/  la interfaz nueva en cada tamano de pantalla
TXT
(cd "$OUT/$NAME" && find . -type f ! -name SHA256SUMS.txt | sort | xargs sha256sum > SHA256SUMS.txt)
(cd "$OUT" && rm -f "$NAME.zip" && zip -q -r -9 "$NAME.zip" "$NAME")
# Copia publicable de las apps (sin la clave) para el repositorio: apps/
mkdir -p apps && rm -f apps/Brisa-* apps/SHA256SUMS.txt
cp "$OUT/$NAME/apps/"* apps/
(cd apps && sha256sum Brisa-* > SHA256SUMS.txt)
ls -la "$OUT/$NAME.zip"
