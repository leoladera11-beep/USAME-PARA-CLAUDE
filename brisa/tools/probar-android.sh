#!/usr/bin/env bash
# Ejecuta en una JVM normal las pruebas de la lógica nativa de Android (sin teléfono).
set -euo pipefail
cd "$(dirname "$0")/.."
API=${BRISA_API:-"$PWD/build-tools/android-all.jar"}
[[ -f "$API" ]] || { echo "Falta $API. Ejecuta: python3 tools/herramientas-android.py" >&2; exit 1; }
unset JAVA_TOOL_OPTIONS
rm -rf test-classes && mkdir -p test-classes/stubs
javac -encoding UTF-8 -source 8 -target 8 -Xlint:-options -nowarn -cp "$API" -d test-classes/stubs $(find android/stubs -name '*.java') 2>/dev/null
javac -encoding UTF-8 -source 8 -target 8 -Xlint:-options -nowarn -cp "$API:test-classes/stubs" -d test-classes $(find android/src android/tests -name '*.java')
for name in SoundCoreTest VideoGestureEngineTest VideoBackgroundPolicyTest OfflineCopyTest StreamRelayTest Brisa4LogicTest TokenSessionTest; do
  java -cp "test-classes:$API" com.brisa.local.$name
done
python3 tests/downloads/benchmark.py --android-classpath test-classes --pruebas-android
