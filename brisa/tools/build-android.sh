#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
BRISA_JDK=${BRISA_JDK:-/workspace/work/tools/jdk-21.0.9+10}
BRISA_BT=${BRISA_BT:-/workspace/work/tools/sdk-direct/android-16}
BRISA_API=${BRISA_API:-/workspace/work/tools/sdk37/android-37.0/android.jar}
BRISA_APKTOOL=${BRISA_APKTOOL:-/workspace/work/tools/apktool.jar}
BRISA_FRAMEWORK=${BRISA_FRAMEWORK:-"$PWD/android/framework"}
export PATH="$BRISA_JDK/bin:$PATH"
mkdir -p android/classes android/stub-classes android/dex logs
find android/classes android/stub-classes android/dex -type f -delete
"$BRISA_JDK/bin/javac" -source 8 -target 8 -Xlint:-options -cp "$BRISA_API" -d android/stub-classes $(find android/stubs -name '*.java')
"$BRISA_JDK/bin/javac" -source 8 -target 8 -Xlint:-options -cp "$BRISA_API:android/stub-classes" -d android/classes $(find android/src -name '*.java')
"$BRISA_BT/d8" --lib "$BRISA_API" --classpath android/stub-classes --min-api 26 --output android/dex $(find android/classes -name '*.class')
python3 - <<'PY'
from zipfile import ZipFile
with ZipFile('android/helper.apk','w') as z:
 z.write('android/dex/classes.dex','classes.dex')
 z.writestr('AndroidManifest.xml',open('android/helper-manifest.bin','rb').read())
PY
java -jar "$BRISA_APKTOOL" d -f -p "$BRISA_FRAMEWORK" android/helper.apk -o android/helper-decoded > logs/helper-decode.log 2>&1
python3 - <<'PY'
from pathlib import Path
import shutil
src=Path('android/helper-decoded/smali');dst=Path('android/decoded/smali_classes3')
if dst.exists():shutil.rmtree(dst)
shutil.copytree(src,dst)
assert not (dst/'G').exists()
assert not (dst/'com/brisa/local/PlaybackService.smali').exists()
shutil.move(str(dst/'com/brisa/local/Y.smali'),'android/decoded/smali/com/brisa/local/Y.smali')
PY
for BRISA_PROFILE in f8 a30; do
 python3 - "$BRISA_PROFILE" <<'PYPROFILE'
from pathlib import Path
import json,re,sys
profile=sys.argv[1]
Path('android/decoded/assets/brisa-profile.json').write_text(json.dumps({'profile':profile}))
p=Path('android/decoded/apktool.yml')
s=re.sub(r'versionName: .*', 'versionName: 3.0.2-'+('F8-Pro' if profile=='f8' else 'A30'),p.read_text())
p.write_text(s)
PYPROFILE
 java -jar "$BRISA_APKTOOL" b -p "$BRISA_FRAMEWORK" android/decoded -o "android/$BRISA_PROFILE-unsigned.apk" > "logs/android-$BRISA_PROFILE-build.log" 2>&1
 if [[ -n "${BRISA_KEYSTORE:-}" && -n "${BRISA_KEYSTORE_PASSWORD_FILE:-}" ]]; then
  "$BRISA_BT/zipalign" -f -P 16 4 "android/$BRISA_PROFILE-unsigned.apk" "android/$BRISA_PROFILE-aligned.apk"
  BRISA_LABEL=F8-Pro; [[ "$BRISA_PROFILE" == a30 ]] && BRISA_LABEL=A30
  mkdir -p dist
  "$BRISA_BT/apksigner" sign --ks "$BRISA_KEYSTORE" --ks-key-alias brisa --ks-pass "file:$BRISA_KEYSTORE_PASSWORD_FILE" --out "dist/Brisa-Local-3.0.2-$BRISA_LABEL.apk" "android/$BRISA_PROFILE-aligned.apk"
  "$BRISA_BT/apksigner" verify --verbose --print-certs "dist/Brisa-Local-3.0.2-$BRISA_LABEL.apk" > "logs/verify-$BRISA_PROFILE.log"
 fi
done
