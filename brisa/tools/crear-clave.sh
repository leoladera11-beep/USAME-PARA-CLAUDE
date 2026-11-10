#!/usr/bin/env bash
# Crea tu clave privada de firma para Brisa (una sola vez).
#
# Android solo instala una actualización encima de la app si lleva la MISMA firma. Guarda la
# carpeta clave/ en un lugar seguro (por ejemplo una carpeta privada de tu Drive o un USB):
# si la pierdes, la siguiente versión habrá que instalarla desinstalando antes la anterior.
# La carpeta clave/ nunca se sube al repositorio (.gitignore).
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p clave
if [[ -f clave/brisa.jks ]]; then
  echo "Ya existe clave/brisa.jks. No se sobrescribe." >&2
else
  umask 077
  python3 -c "import secrets;print(secrets.token_urlsafe(24))" > clave/brisa-clave.txt
  keytool -genkeypair -keystore clave/brisa.jks -storetype PKCS12 -alias brisa -keyalg RSA -keysize 3072 -sigalg SHA256withRSA \
    -validity 10950 -dname "CN=Brisa, O=Uso personal" -storepass:file clave/brisa-clave.txt -keypass:file clave/brisa-clave.txt 2>/dev/null
  echo "Clave creada en clave/brisa.jks (contraseña en clave/brisa-clave.txt)."
fi
echo
echo "Huella SHA-1 para crear el cliente OAuth de Android en Google Cloud:"
keytool -list -v -keystore clave/brisa.jks -alias brisa -storepass:file clave/brisa-clave.txt 2>/dev/null | grep -E "SHA1:|SHA256:" | sed 's/^[[:space:]]*/  /'
