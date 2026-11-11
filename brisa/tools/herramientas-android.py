#!/usr/bin/env python3
"""Descarga las herramientas para reconstruir las APK sin instalar el SDK de Android.

Todas provienen de sus publicaciones oficiales y se comprueban con SHA-256 antes de usarse:
  apktool      github.com/iBotPeaches/Apktool            desmonta y vuelve a montar la APK
  r8lib (D8)   storage.googleapis.com/r8-releases        convierte las clases Java a DEX
  android-all  repo1.maven.org (Robolectric)             API de Android para compilar los auxiliares
  apksigner    github.com/patrickfav/uber-apk-signer     incluye el apksigner oficial de Google

Se guardan en build-tools/, que no se sube al repositorio (unos 290 MB).
Si ya tienes el SDK oficial puedes saltarte este paso y definir BRISA_API, BRISA_D8_JAR,
BRISA_APKTOOL y BRISA_SIGNER_JAR antes de ejecutar tools/build-android.sh.
"""
import hashlib
import os
import sys
from pathlib import Path
from urllib.request import urlopen

TOOLS = {
    'apktool.jar': ('https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar',
                    '66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa'),
    'r8lib.jar': ('https://storage.googleapis.com/r8-releases/raw/8.9.35/r8lib.jar',
                  '204b2fc2b0f4e888dc0ef748b58090def1bf4185068d36abbb94841dbc7107a8'),
    'uber-apk-signer.jar': ('https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar',
                            'e1299fd6fcf4da527dd53735b56127e8ea922a321128123b9c32d619bba1d835'),
    'android-all.jar': ('https://repo1.maven.org/maven2/org/robolectric/android-all/17-robolectric-16653203/android-all-17-robolectric-16653203.jar',
                        '60f983b8bf180fa0790596c22a130c79ecf18b6d991b719de23100d4d6ff61a1'),
}


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''):
            h.update(chunk)
    return h.hexdigest()


def main():
    folder = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parents[1] / 'build-tools'
    folder.mkdir(parents=True, exist_ok=True)
    for name, (url, expected) in TOOLS.items():
        target = folder / name
        if target.is_file() and digest(target) == expected:
            print('listo      ' + name)
            continue
        print('descargando ' + name + ' …')
        part = target.with_name(name + '.part')
        try:
            h = hashlib.sha256()
            with urlopen(url, timeout=120) as response, part.open('wb') as f:
                if not response.geturl().startswith('https://'):
                    raise SystemExit('Redirección no segura para ' + name)
                for chunk in iter(lambda: response.read(1 << 20), b''):
                    h.update(chunk)
                    f.write(chunk)
                f.flush()
                os.fsync(f.fileno())
            if h.hexdigest() != expected:
                raise SystemExit(name + ' no coincide con su SHA-256. No se usará.')
            part.replace(target)
        finally:
            part.unlink(missing_ok=True)
        print('verificado ' + name)
    print('Herramientas en ' + str(folder))


if __name__ == '__main__':
    main()
