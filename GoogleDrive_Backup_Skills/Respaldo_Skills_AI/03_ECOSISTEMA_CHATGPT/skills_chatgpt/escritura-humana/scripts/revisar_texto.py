#!/usr/bin/env python3
"""Revisión mecánica de un texto en español contra las reglas del motor escritura-humana.

Uso:
    python3 revisar_texto.py archivo.md [otro.md ...]
    echo "texto" | python3 revisar_texto.py -

Detecta lo que se puede detectar sin entender el texto:
  ABSOLUTO  raya (U+2014), semirraya como puntuación (U+2013 que no está entre cifras),
            doble guion, emojis y el término vetado (sustantivo derivado de «tenso»).
            Los emojis incluyen los pictogramas habituales, cualquier carácter seguido
            del selector de presentación emoji (U+FE0F), las teclas numéricas (U+20E3)
            y las banderas (un par de indicadores regionales cuenta como un solo hallazgo).
  REVISAR   semirraya entre cifras (rango, con o sin espacios: se muestra el rango
            completo), léxico inflado, fórmulas de contraste, andamiaje, muletillas y
            abuso de "y" o "que" (más de cuatro por cada 120 palabras de un párrafo).
Se ignoran los bloques de código entre ``` o ~~~, los bloques de código sangrados (cuatro
espacios tras una línea en blanco, fuera de una lista abierta) y el código en línea. Una
línea sangrada que continúa un ítem de lista sí se revisa. Las apariciones del término
vetado se informan con la línea completa: solo son legítimas en notación de mecánica (la
fuerza de una cuerda o cable) y la decisión es humana (o del modelo, leyendo el contexto).

Para el recuento de "y" y "que" solo cuentan las formas exactas en minúscula; las filas
de tabla (líneas que empiezan por |) quedan fuera, y en las citas se quita el prefijo >
(una línea > vacía separa párrafos).

Código de salida: 1 si hay hallazgos ABSOLUTO, 0 en otro caso. Solo biblioteca estándar.
"""
import re
import sys
import unicodedata

RAYA = "\u2014"
SEMIRRAYA = "\u2013"

_VS16 = "\ufe0f"  # selector de presentación emoji
_EMOJI_BASE = (
    "[\U0001F000-\U0001FAFF\u2600-\u2604\u2606-\u260f\u2611-\u2669\u266b-\u2712\u2714-\u27bf\u2b50\u2705\u2b06\u2b07\u2934\u2935"
    "\u231a\u231b\u23e9-\u23f3\u23f8-\u23fa\u25fb-\u25fe\u2b1b\u2b1c\u2b55"
    "\u3030\u303d\u3297\u3299\u20e3]"
)
_EMOJI_UNIDAD = (
    "(?:[\U0001F1E6-\U0001F1FF]{2}"           # bandera: par de indicadores regionales
    "|[0-9#*]" + _VS16 + "?\u20e3"            # tecla numérica
    "|" + _EMOJI_BASE + _VS16 + "?"           # pictograma
    "|[^\\s" + _VS16 + "]" + _VS16 + ")"      # cualquier carácter con presentación emoji
    "[\U0001F3FB-\U0001F3FF]?"                # tono de piel
)
EMOJI = re.compile(_EMOJI_UNIDAD + "(?:\u200d" + _EMOJI_UNIDAD + ")*")

ABSOLUTOS = [
    ("raya (U+2014)", re.compile(RAYA)),
    ("semirraya como puntuación (U+2013)", re.compile(
        r"(?:[^\s" + SEMIRRAYA + r"]+\s?)?"
        r"(?:(?<!\d)(?<!\d\s)" + SEMIRRAYA + r"|" + SEMIRRAYA + r"(?!\s?\d))"
        r"(?:\s?[^\s" + SEMIRRAYA + r"]+)?")),
    ("doble guion como raya", re.compile(r"(?<![-\w!])--(?![-\w>])")),
    ("emoji", EMOJI),
    ("término vetado (verificar si es notación de mecánica)", re.compile(r"\btensi(?:ón|ones|on)\b", re.I)),
]

REVISAR = [
    ("semirraya en un rango numérico", re.compile(r"\d+\s?" + SEMIRRAYA + r"\s?\d+")),
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
ES_SANGRADA = re.compile(r"^(?: {4}|\t)")
PREFIJO_CITA = re.compile(r"^\s*(?:>\s?)+")


def lineas_de_prosa(texto):
    """Devuelve (número, línea) de las líneas de prosa, sin bloques de código.

    Un bloque de código sangrado empieza con una línea sangrada (cuatro espacios o
    tabulador) precedida de una línea en blanco y fuera de una lista abierta, y sigue
    mientras las líneas no vacías estén sangradas. Una línea sangrada que sigue a un ítem
    de lista o a su continuación se considera parte del ítem y se revisa.
    """
    en_cercado = False
    en_sangrado = False
    en_lista = False
    previa_en_blanco = True
    for n, linea in enumerate(texto.splitlines(), 1):
        if re.match(r"^\s*(```|~~~)", linea):
            en_cercado = not en_cercado
            en_sangrado = False
            previa_en_blanco = False
            continue
        if en_cercado:
            continue
        if not linea.strip():
            previa_en_blanco = True
            yield n, linea
            continue
        if ES_SANGRADA.match(linea):
            if en_sangrado or (previa_en_blanco and not en_lista):
                en_sangrado = True
                previa_en_blanco = False
                continue
        else:
            en_sangrado = False
            if ES_ENCABEZADO.match(linea):
                en_lista = False
            elif ES_LISTA.match(linea):
                en_lista = True
            elif previa_en_blanco and not linea[0].isspace():
                en_lista = False
        if ES_LISTA.match(linea):
            en_lista = True
        previa_en_blanco = False
        yield n, linea


def bloques_de_prosa(texto):
    """Agrupa párrafos; cada encabezado e ítem de lista abre un bloque propio.

    Se quita el prefijo de cita (>) y una cita vacía separa párrafos. Las filas de tabla
    (líneas que empiezan por |) no entran en ningún bloque y cierran el que esté abierto.
    """
    bloques, actual, inicio = [], [], None
    for n, linea in lineas_de_prosa(texto):
        es_tabla = linea.lstrip().startswith("|")
        linea = PREFIJO_CITA.sub("", linea)
        nuevo_bloque = (es_tabla or not linea.strip() or ES_LISTA.match(linea)
                        or ES_ENCABEZADO.match(linea))
        if nuevo_bloque and actual:
            bloques.append((inicio, " ".join(actual)))
            actual, inicio = [], None
        if linea.strip() and not es_tabla and not ES_ENCABEZADO.match(linea):
            inicio = inicio or n
            actual.append(linea.strip())
    if actual:
        bloques.append((inicio, " ".join(actual)))
    return bloques


def revisar(nombre, texto):
    texto = unicodedata.normalize("NFC", texto)  # tildes descompuestas cuentan igual
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
        palabras = re.findall(r"\w+", re.sub(r"`[^`]*`", "", parrafo))
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
