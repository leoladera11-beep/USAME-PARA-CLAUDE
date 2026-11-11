#!/usr/bin/env bash
# Reconstruye las APK de Brisa (perfiles F8 Pro y A30) y, si hay clave, las firma.
#
#   python3 tools/herramientas-android.py      una vez: descarga y verifica las herramientas
#   bash tools/crear-clave.sh                  una vez: crea tu clave de firma privada
#   bash tools/build-android.sh                compila; con clave/ presente también firma
#
# Requiere Java 21 y Python 3. Con el SDK oficial instalado puedes apuntar BRISA_API a su
# android.jar y BRISA_D8_JAR / BRISA_SIGNER_JAR a tus propios jar.
set -euo pipefail
cd "$(dirname "$0")/.."
VERSION=4.1.0
TOOLS=${BRISA_TOOLS:-"$PWD/build-tools"}
API=${BRISA_API:-"$TOOLS/android-all.jar"}
D8_JAR=${BRISA_D8_JAR:-"$TOOLS/r8lib.jar"}
APKTOOL=${BRISA_APKTOOL:-"$TOOLS/apktool.jar"}
SIGNER_JAR=${BRISA_SIGNER_JAR:-"$TOOLS/uber-apk-signer.jar"}
KEYSTORE=${BRISA_KEYSTORE:-"$PWD/clave/brisa.jks"}
KEYPASS=${BRISA_KEYSTORE_PASSWORD_FILE:-"$PWD/clave/brisa-clave.txt"}
JAVA=${BRISA_JDK:+$BRISA_JDK/bin/}java
JAVAC=${BRISA_JDK:+$BRISA_JDK/bin/}javac
for file in "$API" "$D8_JAR" "$APKTOOL"; do
  [[ -f "$file" ]] || { echo "Falta $file. Ejecuta: python3 tools/herramientas-android.py" >&2; exit 1; }
done
unset JAVA_TOOL_OPTIONS

python3 tools/parches-4.0.0.py --comprobar

mkdir -p android/classes android/stub-classes android/dex logs dist
find android/classes android/stub-classes android/dex -type f -delete
"$JAVAC" -encoding UTF-8 -source 8 -target 8 -Xlint:-options -cp "$API" -d android/stub-classes $(find android/stubs -name '*.java')
"$JAVAC" -encoding UTF-8 -source 8 -target 8 -Xlint:-options -cp "$API:android/stub-classes" -d android/classes $(find android/src -name '*.java')
"$JAVA" -cp "$D8_JAR" com.android.tools.r8.D8 --lib "$API" --classpath android/stub-classes --min-api 26 --output android/dex $(find android/classes -name '*.class')

# Los auxiliares compilados se integran como smali en el proyecto recuperado de la APK.
python3 - <<'PY'
from zipfile import ZipFile
with ZipFile('android/helper.apk', 'w') as z:
    z.write('android/dex/classes.dex', 'classes.dex')
    z.writestr('AndroidManifest.xml', open('android/helper-manifest.bin', 'rb').read())
PY
"$JAVA" -jar "$APKTOOL" d -f android/helper.apk -o android/helper-decoded > logs/helper-decode.log 2>&1
python3 - <<'PY'
from pathlib import Path
import shutil
src = Path('android/helper-decoded/smali'); dst = Path('android/decoded/smali_classes3')
if dst.exists():
    shutil.rmtree(dst)
shutil.copytree(src, dst)
# Las clases de android/stubs solo existen para compilar: nunca deben entrar en la APK.
assert not (dst / 'G').exists()
assert not (dst / 'com/brisa/local/PlaybackService.smali').exists()
shutil.move(str(dst / 'com/brisa/local/Y.smali'), 'android/decoded/smali/com/brisa/local/Y.smali')
PY

for PROFILE in f8 a30; do
  LABEL=F8-Pro; [[ "$PROFILE" == a30 ]] && LABEL=A30
  python3 - "$PROFILE" "$VERSION-$LABEL" <<'PY'
from pathlib import Path
import json, re, sys
Path('android/decoded/assets/brisa-profile.json').write_text(json.dumps({'profile': sys.argv[1]}))
p = Path('android/decoded/apktool.yml')
p.write_text(re.sub(r'versionName: .*', 'versionName: ' + sys.argv[2], p.read_text()))
PY
  rm -rf android/decoded/build
  "$JAVA" -jar "$APKTOOL" b android/decoded -o "android/$PROFILE-unsigned.apk" > "logs/android-$PROFILE-build.log" 2>&1
  python3 tools/zipalign.py "android/$PROFILE-unsigned.apk" "android/$PROFILE-aligned.apk"
  if [[ -f "$KEYSTORE" && -f "$KEYPASS" ]]; then
    OUT="dist/Brisa-$VERSION-$LABEL.apk"
    "$JAVA" -cp "$SIGNER_JAR" com.android.apksigner.ApkSignerTool sign --ks "$KEYSTORE" --ks-key-alias brisa \
      --ks-pass "file:$KEYPASS" --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
      --out "$OUT" "android/$PROFILE-aligned.apk"
    rm -f "$OUT.idsig"
    "$JAVA" -cp "$SIGNER_JAR" com.android.apksigner.ApkSignerTool verify --verbose --print-certs "$OUT" > "logs/verify-$PROFILE.log"
    python3 tools/zipalign.py --comprobar "$OUT"
    echo "Firmada: $OUT"
  else
    echo "Sin clave en $KEYSTORE: queda android/$PROFILE-aligned.apk sin firmar. Para actualizar la app instalada copia aqui la carpeta clave/ del propietario; tools/crear-clave.sh solo sirve para una instalacion nueva."
  fi
done
rm -rf android/decoded/build
