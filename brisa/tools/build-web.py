#!/usr/bin/env python3
"""Genera la interfaz de Android y de Windows a partir de una sola fuente en common/.

  common/index.template.html   plantilla con bloques  <!--@android-->  <!--@windows-->  <!--@end-->
  common/*.css, common/*.js    archivos idénticos en las dos plataformas

Cada plataforma conserva en su carpeta solo los módulos que de verdad son distintos (puentes
nativos, vídeo, Drive). Tras copiar, se comprueba que todo identificador que el JavaScript busca
en la página existe en el HTML generado, para que un cambio de plantilla no rompa nada en silencio.

Uso:  python3 tools/build-web.py            genera
      python3 tools/build-web.py --comprobar  falla si lo generado no coincide con common/
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
COMMON = ROOT / 'common'
TARGETS = {'android': ROOT / 'android' / 'decoded' / 'assets', 'windows': ROOT / 'windows' / 'web'}
SHARED = ['brisa.css', 'app.js', 'home.js', 'downloads.js', 'sound.js', 'sound-desktop.js', 'presentation.js',
          'drive-token.js', 'music.js', 'storage.js', 'lyric-tools.js', 'lyric-ui.js', 'ai.js', 'ai-worker.js']
OBSOLETE = ['style.css', 'update.css', 'glass.css']
# Elementos que el propio JavaScript crea al arrancar.
DYNAMIC = {'videoSettings', 'videoSettingsTitle', 'videoSpeed', 'videoSound', 'videoBack', 'brisaWorkerSource'}
BLOCK = re.compile(r'<!--@(android|windows)-->\n?(.*?)<!--@end-->\n?', re.S)
LOOKUP = re.compile(r"(?:\$|\bel|getElementById)\('([A-Za-z][\w-]*)'\)(\??)")
GUARD = re.compile(r"if\s*\(\s*!?\s*(?:\$|el)\('([A-Za-z][\w-]*)'\)\s*\)")


def render(platform):
    template = (COMMON / 'index.template.html').read_text(encoding='utf-8')
    return BLOCK.sub(lambda m: m.group(2) if m.group(1) == platform else '', template)


def check_ids(platform, folder, html):
    present = set(re.findall(r'\bid="([^"]+)"', html)) | DYNAMIC
    problems = []
    for script in sorted(folder.glob('*.js')):
        text = script.read_text(encoding='utf-8')
        optional = {name for name, mark in LOOKUP.findall(text) if mark} | set(GUARD.findall(text))
        for name in sorted({name for name, _ in LOOKUP.findall(text)} - optional - present):
            problems.append(f'{platform}: {script.name} busca #{name} y no existe en index.html')
    duplicated = {name for name in re.findall(r'\bid="([^"]+)"', html) if html.count(f'id="{name}"') > 1}
    problems += [f'{platform}: el identificador #{name} está repetido' for name in sorted(duplicated)]
    return problems


def main():
    check_only = '--comprobar' in sys.argv
    problems, written = [], 0
    for platform, folder in TARGETS.items():
        html = render(platform)
        outputs = {'index.html': html}
        for name in SHARED:
            outputs[name] = (COMMON / name).read_text(encoding='utf-8')
        for name, text in outputs.items():
            target = folder / name
            current = target.read_text(encoding='utf-8') if target.exists() else None
            if current == text:
                continue
            if check_only:
                problems.append(f'{platform}: {name} no coincide con common/. Ejecuta tools/build-web.py')
            else:
                target.write_text(text, encoding='utf-8')
                written += 1
        for name in OBSOLETE:
            if (folder / name).exists():
                if check_only:
                    problems.append(f'{platform}: {name} es de la interfaz anterior y debe eliminarse')
                else:
                    (folder / name).unlink()
        problems += check_ids(platform, folder, html)
    for line in problems:
        print('ERROR ' + line)
    print(f'{written} archivos actualizados, {len(problems)} problemas')
    sys.exit(1 if problems else 0)


if __name__ == '__main__':
    main()
