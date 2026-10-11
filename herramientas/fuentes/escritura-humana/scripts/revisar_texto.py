#!/usr/bin/env python3
"""Revisión mecánica de un texto en español contra las reglas del motor escritura-humana.

Uso:
    python3 revisar_texto.py archivo.md [otro.md ...]
    echo "texto" | python3 revisar_texto.py -

Detecta lo que se puede detectar sin entender el texto:
  ABSOLUTO  raya (U+2014), semirraya (U+2013), doble guion, emojis y el término vetado.
  REVISAR   léxico inflado, fórmulas de contraste, andamiaje, muletillas y párrafos
            con abuso de "y" o "que" (más de cuatro en menos de 120 palabras).
Los bloques de código entre ``` o ~~~ se ignoran. Las apariciones del término vetado se
informan con la línea completa: solo son legítimas en notación de mecánica (la fuerza de
una cuerda, cable o polea) y la decisión es humana (o del modelo, leyendo el contexto).

Código de salida: 1 si hay hallazgos ABSOLUTO, 0 en otro caso. Solo biblioteca estándar.
"""
import re
import sys

ABSOLUTOS = [
    ("raya (U+2014)", re.compile("—")),
    ("semirraya (U+2013)", re.compile("–")),
    ("doble guion como raya", re.compile(r"(?<![-\w])--(?![-\w])|\s--\s")),
    ("emoji", re.compile("[\U0001F300-\U0001FAFF☀-➿⭐✅]")),
    ("término vetado (verificar si es notación técnica)", re.compile(r"\btensi(?:ón|ones|on)\b", re.I)),
]

REVISAR = [
    ("léxico inflado (P3)", re.compile(
        r"\b(tapiz|faro|sumerg\w+|adentr\w+|desentra\w+|sinergia\w*|hol[ií]stic\w+|"
        r"vertiginoso|era digital|navegar (?:la|el|por) (?:complejidad|incertidumbre|mundo))\b", re.I)),
    ("valoración que exige respaldo (P3)", re.compile(r"\b(crucial|fundamental|vital|clave|revolucionari\w+|transformador\w*)\b", re.I)),
    ("posible contraste fabricado (P1)", re.compile(r"\bno (?:es|se trata de)\b[^.]{0,80}?,\s*(?:es|sino)\b|\bno solo\b|\bmás que\b|\blejos de ser\b", re.I)),
    ("andamiaje o cierre de plantilla (P6, P8)", re.compile(r"\b(en conclusión|en resumen|en primer lugar|para finalizar|en definitiva)\b", re.I)),
    ("muletilla (P3)", re.compile(r"\b(cabe (?:destacar|señalar|mencionar)|es importante (?:destacar|señalar|mencionar)|vale la pena (?:mencionar|señalar)|sin lugar a dudas)\b", re.I)),
    ("revelación teatral (P10)", re.compile(r"¿el resultado\?|la clave:|aquí está el truco|spoiler:", re.I)),
]


def lineas_de_prosa(texto):
    en_codigo = False
    for n, linea in enumerate(texto.splitlines(), 1):
        if re.match(r"^\s*(```|~~~)", linea):
            en_codigo = not en_codigo
            continue
        if not en_codigo:
            yield n, linea


def revisar(nombre, texto):
    absolutos, revisar_ = [], []
    for n, linea in lineas_de_prosa(texto):
        limpia = re.sub(r"`[^`]*`", "", linea)  # ignora código en línea
        for etiqueta, patron in ABSOLUTOS:
            for m in patron.finditer(limpia):
                absolutos.append((n, etiqueta, m.group(0), linea.strip()))
        for etiqueta, patron in REVISAR:
            for m in patron.finditer(limpia):
                revisar_.append((n, etiqueta, m.group(0), linea.strip()))
    parrafo, inicio = [], None
    bloques = []
    for n, linea in list(lineas_de_prosa(texto)) + [(None, "")]:
        if linea.strip():
            inicio = inicio or n
            parrafo.append(linea)
        elif parrafo:
            bloques.append((inicio, " ".join(parrafo)))
            parrafo, inicio = [], None
    for inicio, p in bloques:
        palabras = re.findall(r"\w+", p.lower())
        if 0 < len(palabras) < 120:
            for w in ("y", "que"):
                c = palabras.count(w)
                if c > 4:
                    revisar_.append((inicio, f"abuso de \"{w}\" en el párrafo ({c} veces en {len(palabras)} palabras)", w, p[:120]))
    print(f"== {nombre}")
    for titulo, lista in (("ABSOLUTO", absolutos), ("REVISAR", revisar_)):
        print(f"{titulo}: {len(lista)}")
        for n, etiqueta, hallazgo, linea in lista:
            corta = linea if len(linea) <= 140 else linea[:137] + "..."
            print(f"  línea {n}: {etiqueta}: «{hallazgo}» | {corta}")
    return len(absolutos)


def main(args):
    if not args:
        print(__doc__)
        return 2
    total = 0
    for a in args:
        texto = sys.stdin.read() if a == "-" else open(a, encoding="utf-8").read()
        total += revisar("entrada estándar" if a == "-" else a, texto)
    return 1 if total else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
