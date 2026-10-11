#!/usr/bin/env python3
"""Revisión mecánica de un texto en español contra las reglas del motor escritura-humana.

Uso:
    python3 revisar_texto.py archivo.md [otro.md ...]
    echo "texto" | python3 revisar_texto.py -

Detecta lo que se puede detectar sin entender el texto:
  ABSOLUTO  raya (U+2014), semirraya como puntuación (U+2013), doble guion, emojis y el
            término vetado (sustantivo derivado de «tenso»).
  REVISAR   semirraya entre cifras (rango), léxico inflado, fórmulas de contraste,
            andamiaje, muletillas y abuso de "y" o "que" (más de cuatro por cada 120
            palabras de un párrafo).
Se ignoran los bloques de código entre ``` o ~~~, las líneas sangradas con cuatro espacios
fuera de las listas y el código en línea. Las apariciones del término vetado se informan
con la línea completa: solo son legítimas en notación de mecánica (la fuerza de una
cuerda o cable) y la decisión es humana (o del modelo, leyendo el contexto).

Código de salida: 1 si hay hallazgos ABSOLUTO, 0 en otro caso. Solo biblioteca estándar.
"""
import re
import sys

RAYA = "\u2014"
SEMIRRAYA = "\u2013"
EMOJI = re.compile("[\U0001F000-\U0001FAFF\u2600-\u27bf\u2b50\u2705\u2b06\u2b07\u2934\u2935]")

ABSOLUTOS = [
    ("raya (U+2014)", re.compile(RAYA)),
    ("semirraya como puntuación (U+2013)", re.compile(r"(?<!\d)\s*" + SEMIRRAYA + r"|" + SEMIRRAYA + r"\s*(?!\d)")),
    ("doble guion como raya", re.compile(r"(?<![-\w])--(?![-\w])")),
    ("emoji", EMOJI),
    ("término vetado (verificar si es notación de mecánica)", re.compile(r"\btensi(?:ón|ones|on)\b", re.I)),
]

REVISAR = [
    ("semirraya en un rango numérico", re.compile(r"\d" + SEMIRRAYA + r"\d")),
    ("léxico inflado (P3)", re.compile(
        r"\b(tapiz|faro|sumerg\w+|adentr\w+|desentra\w+|sinergia\w*|hol[ií]stic\w+|"
        r"vertiginoso|era digital|navegar (?:la|el|por) (?:complejidad|incertidumbre|mundo))\b", re.I)),
    ("valoración que exige respaldo (P3)", re.compile(
        r"\b(crucial|fundamental|esencial|vital|clave|revolucionari\w+|transformador\w*)\b", re.I)),
    ("posible contraste fabricado (P1)", re.compile(
        r"\bno (?:es|se trata de)\b[^.]{0,80}?,\s*(?:es|sino)\b|\bno solo\b|\bmás que\b|\blejos de ser\b", re.I)),
    ("andamiaje o cierre de plantilla (P6, P8)", re.compile(
        r"\b(en conclusión|en resumen|en primer lugar|para finalizar|en definitiva)\b", re.I)),
    ("muletilla (P3)", re.compile(
        r"\b(cabe (?:destacar|señalar|mencionar)|es importante (?:destacar|señalar|mencionar)|"
        r"vale la pena (?:mencionar|señalar)|sin lugar a dudas)\b", re.I)),
    ("revelación teatral (P10)", re.compile(r"¿el resultado\?|la clave:|aquí está el truco|spoiler:", re.I)),
]

ES_LISTA = re.compile(r"^\s*(?:[-*+]|\d+[.)])\s")
ES_ENCABEZADO = re.compile(r"^\s*#{1,6}\s")


def lineas_de_prosa(texto):
    """Devuelve (número, línea) de las líneas de prosa, sin bloques de código."""
    en_codigo = False
    for n, linea in enumerate(texto.splitlines(), 1):
        if re.match(r"^\s*(```|~~~)", linea):
            en_codigo = not en_codigo
            continue
        if en_codigo:
            continue
        if linea.startswith("    ") and not ES_LISTA.match(linea):
            continue
        yield n, linea


def bloques_de_prosa(texto):
    """Agrupa párrafos; cada encabezado e ítem de lista abre un bloque propio."""
    bloques, actual, inicio = [], [], None
    for n, linea in lineas_de_prosa(texto):
        nuevo_bloque = not linea.strip() or ES_LISTA.match(linea) or ES_ENCABEZADO.match(linea)
        if nuevo_bloque and actual:
            bloques.append((inicio, " ".join(actual)))
            actual, inicio = [], None
        if linea.strip() and not ES_ENCABEZADO.match(linea):
            inicio = inicio or n
            actual.append(linea)
    if actual:
        bloques.append((inicio, " ".join(actual)))
    return bloques


def revisar(nombre, texto):
    absolutos, por_revisar = [], []
    for n, linea in lineas_de_prosa(texto):
        limpia = re.sub(r"`[^`]*`", "", linea)  # ignora código en línea
        for etiqueta, patron in ABSOLUTOS:
            for m in patron.finditer(limpia):
                absolutos.append((n, etiqueta, m.group(0).strip() or m.group(0), linea.strip()))
        for etiqueta, patron in REVISAR:
            for m in patron.finditer(limpia):
                por_revisar.append((n, etiqueta, m.group(0), linea.strip()))
    for inicio, parrafo in bloques_de_prosa(texto):
        palabras = re.findall(r"\w+", parrafo.lower())
        if not palabras:
            continue
        limite = 4 * max(1, len(palabras) / 120)
        for w in ("y", "que"):
            c = palabras.count(w)
            if c > limite:
                por_revisar.append((inicio, f"abuso de \"{w}\" en el párrafo ({c} veces en {len(palabras)} palabras)",
                                    w, parrafo[:120]))
    print(f"== {nombre}")
    for titulo, lista in (("ABSOLUTO", absolutos), ("REVISAR", por_revisar)):
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
