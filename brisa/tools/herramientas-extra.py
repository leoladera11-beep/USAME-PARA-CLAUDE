#!/usr/bin/env python3
"""Herramientas opcionales: análisis de la APK y compilación cruzada de Windows desde Linux.

  jadx        github.com/skylot/jadx          descompila la APK a Java legible (solo para leer)
  dex2jar     github.com/pxb1988/dex2jar      convierte la APK a clases para el verificador de tipos
  llvm-mingw  github.com/mstorsjo/llvm-mingw  compilador cruzado para generar el .exe en Linux

Se guardan en build-tools/ (no se sube al repositorio). Uso:
  python3 tools/herramientas-extra.py analisis     jadx y dex2jar (unos 135 MB)
  python3 tools/herramientas-extra.py windows      llvm-mingw (unos 85 MB comprimido)
"""
import hashlib
import os
import subprocess
import sys
import zipfile
from pathlib import Path
from urllib.request import urlopen

GROUPS = {
    'analisis': [
        ('jadx.zip', 'https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip',
         '12fd966431903b8e15c36e5007f19343475be7d8f2a55f082e7a929eeabc937e', 'jadx'),
        ('dex2jar.zip', 'https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip',
         'ee7c45eb3c1d2474a6145d8d447e651a736a22d9664b6d3d3be5a5a817dda23a', '.'),
    ],
    'windows': [
        ('llvm-mingw.tar.xz', 'https://github.com/mstorsjo/llvm-mingw/releases/download/20261104/llvm-mingw-20261104-ucrt-ubuntu-22.04-x86_64.tar.xz',
         '919380403de87dca3c581c2053230cd298af5e891286628ba0613b7fed370926', '.'),
    ],
}


def fetch(folder, name, url, expected):
    target = folder / name
    if target.is_file() and hashlib.sha256(target.read_bytes()).hexdigest() == expected:
        return target
    print('descargando ' + name + ' …')
    part = target.with_name(name + '.part')
    digest = hashlib.sha256()
    try:
        with urlopen(url, timeout=180) as response, part.open('wb') as out:
            if not response.geturl().startswith('https://'):
                raise SystemExit('Redirección no segura para ' + name)
            for chunk in iter(lambda: response.read(1 << 20), b''):
                digest.update(chunk)
                out.write(chunk)
            out.flush()
            os.fsync(out.fileno())
        if digest.hexdigest() != expected:
            raise SystemExit(name + ' no coincide con su SHA-256. No se usará.')
        part.replace(target)
    finally:
        part.unlink(missing_ok=True)
    return target


def main():
    wanted = sys.argv[1:] or list(GROUPS)
    folder = Path(__file__).resolve().parents[1] / 'build-tools'
    folder.mkdir(parents=True, exist_ok=True)
    for group in wanted:
        if group not in GROUPS:
            raise SystemExit(__doc__)
        for name, url, expected, where in GROUPS[group]:
            archive = fetch(folder, name, url, expected)
            destination = folder / where
            destination.mkdir(parents=True, exist_ok=True)
            if name.endswith('.zip'):
                with zipfile.ZipFile(archive) as z:
                    z.extractall(destination)
            else:
                subprocess.run(['tar', '-xJf', str(archive), '-C', str(destination)], check=True)
            print('listo      ' + name)
    for script in list(folder.glob('jadx/bin/jadx')) + list(folder.glob('dex-tools-*/*.sh')):
        script.chmod(0o755)
    print('Herramientas en ' + str(folder))


if __name__ == '__main__':
    main()
