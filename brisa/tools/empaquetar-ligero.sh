#!/usr/bin/env bash
# Arma el paquete de entrega ligero (menos de 50 MB) a partir de lo que ya está en el repositorio:
#   apps/      las dos APK firmadas y el ZIP de Windows, tal cual están en brisa/apps
#   fuentes/   el código fuente SIN los .exe de resources/ (ya van dentro del ZIP de Windows)
#   clave/     tu clave de firma privada, si existe en brisa/clave
#   capturas/  unas pocas imágenes reducidas
#   documentacion/ y licencias/
# Falla si el resultado supera el límite. Antes hay que haber generado las apps con
# tools/build-android.sh, tools/build-windows.sh y tools/empaquetar.sh.
#   bash tools/empaquetar-ligero.sh [carpeta de salida] [carpeta con capturas PNG]
set -euo pipefail
cd "$(dirname "$0")/.."
VERSION=$(sed -n 's/^VERSION=//p' tools/build-android.sh | head -1)
OUT=${1:-"$PWD/dist/entrega-ligera"}
SHOTS=${2:-}
LIMIT=${BRISA_LIMITE_MB:-50}
NAME="Brisa-$VERSION"
for f in "apps/$NAME-A30.apk" "apps/$NAME-F8-Pro.apk" "apps/$NAME-Windows-x64.zip"; do
  [[ -f "$f" ]] || { echo "Falta $f. Genera las apps primero (tools/empaquetar.sh)." >&2; exit 1; }
done
rm -rf "$OUT" && mkdir -p "$OUT/$NAME"/{apps,documentacion,licencias,fuentes}
cp "apps/$NAME-A30.apk" "apps/$NAME-F8-Pro.apk" "apps/$NAME-Windows-x64.zip" apps/SHA256SUMS.txt "$OUT/$NAME/apps/"
cp documentacion/*.md "$OUT/$NAME/documentacion/"
cp LICENSE THIRD_PARTY_NOTICES.txt "$OUT/$NAME/licencias/"
cp -r windows/desktop/resources/licenses/. "$OUT/$NAME/licencias/"
cp vendor/newpipe/LICENSE "$OUT/$NAME/licencias/NewPipe-GPL-3.0.txt"
cp vendor/nanojson/LICENSE "$OUT/$NAME/licencias/nanojson-LICENSE.txt"
if [[ -f clave/brisa.jks ]]; then
  mkdir -p "$OUT/$NAME/clave" && cp clave/brisa.jks clave/brisa-clave.txt "$OUT/$NAME/clave/"
  printf 'Clave privada con la que se firmaron las APK de Brisa %s.\nGuardala en un lugar seguro y no la compartas: con ella podras instalar futuras versiones encima\nde esta sin desinstalar. Alias: brisa. La contrasena esta en brisa-clave.txt.\nPara compilar, copia esta carpeta como clave/ dentro del codigo fuente.\n' "$VERSION" > "$OUT/$NAME/clave/LEEME.txt"
fi
# Código fuente sin los motores de Windows: ya están en el ZIP de Windows (resources/).
git archive --format=zip -9 --prefix="Brisa-$VERSION-codigo/" -o "$OUT/$NAME/fuentes/Brisa-$VERSION-codigo.zip" HEAD . \
  ':(exclude)apps/Brisa-*' ':(exclude)windows/desktop/resources/*.exe'
# Capturas reducidas (JPEG de 900 px de ancho máximo), solo las más útiles.
if [[ -d "$SHOTS" ]]; then
  mkdir -p "$OUT/$NAME/capturas"
  python3 - "$SHOTS" "$OUT/$NAME/capturas" <<'PY'
import sys
from pathlib import Path
from PIL import Image
src, dst = Path(sys.argv[1]), Path(sys.argv[2])
for name in ['brisa4-f8-1-inicio', 'brisa4-f8-3-reproductor', 'brisa4-f8-8-token-2', 'brisa4-a30-1-inicio', 'brisa4-pc-1-inicio']:
    path = src / (name + '.png')
    if not path.exists():
        continue
    image = Image.open(path).convert('RGB')
    image.thumbnail((900, 900))
    image.save(dst / (name + '.jpg'), quality=78, optimize=True)
PY
fi
cat > "$OUT/$NAME/EMPIEZA-AQUI.md" <<TXT
# Brisa $VERSION

1. documentacion/INSTALAR.md: como instalar en el Galaxy A30, el F8 Pro y Windows 11.
2. documentacion/GUIA-DE-USO.md: consejos para usarla bien y evitar fallos. Leela antes de empezar.
3. documentacion/CONFIGURAR_GOOGLE_DRIVE.md: como conectar Drive (con un token, al instante).
4. documentacion/CAMBIOS-$VERSION.md y VALIDACION-$VERSION.md: que cambio y que esta probado.

apps/      las dos APK firmadas y el ZIP de Windows (ya incluye el motor de descargas)
clave/     tu clave de firma privada: guardala y no la compartas
fuentes/   el codigo fuente sin los .exe de Windows (estan dentro del ZIP de Windows)
licencias/ licencias del proyecto y de sus componentes

Codigo completo, historial y guias para agentes de IA:
https://github.com/leoladera11-beep/USAME-PARA-CLAUDE (pull request 3, carpeta brisa/).
Para compilar Windows desde fuentes/, copia ffmpeg.exe, ffprobe.exe y qjs.exe de la carpeta
resources/ del ZIP de Windows a windows/desktop/resources/ del codigo.
TXT
(cd "$OUT/$NAME" && find . -type f ! -name SHA256SUMS.txt | sort | xargs sha256sum > SHA256SUMS.txt)
(cd "$OUT" && rm -f "$NAME.zip" && zip -q -r -9 "$NAME.zip" "$NAME")
BYTES=$(stat -c %s "$OUT/$NAME.zip")
printf '%s: %d bytes (%d.%d MB, limite %d MB)\n' "$OUT/$NAME.zip" "$BYTES" $((BYTES/1048576)) $((BYTES*10/1048576%10)) "$LIMIT"
(( BYTES <= LIMIT*1048576 )) || { echo "ERROR: supera el limite de $LIMIT MB" >&2; exit 1; }
