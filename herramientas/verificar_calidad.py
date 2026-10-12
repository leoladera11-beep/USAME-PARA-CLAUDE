#!/usr/bin/env python3
"""Pipeline de verificación técnica determinista del paquete de skills.

Uso:
    python3 herramientas/verificar_calidad.py [--paquete RUTA] [--sin-instalador]

Revisa las tres ramas optimizadas (01_ECOSISTEMA_CLAUDE, 02_ECOSISTEMA_GEMINI, 03_ECOSISTEMA_CHATGPT),
los documentos de la raíz del paquete y el contenido de los .skill y .zip, y escribe
QA_VERIFICACION_TECNICA.md en la raíz del paquete. 00_BACKUP_ORIGINAL_RAW queda fuera porque es la copia
literal de las skills originales.

Pruebas:
  1. Frontmatter YAML válido y campos obligatorios por tipo de archivo.
  2. Raya tipográfica, semirraya como puntuación y doble guion como raya.
  3. Léxico inflado usado (las menciones dentro de reglas, listas o comillas se cuentan aparte).
  4. Término vetado (solo admisible como fuerza de una cuerda en notación de mecánica).
  5. Emojis y caracteres gráficos decorativos.
  6. Etiquetas XML huérfanas o mal cerradas.
  7. Casos límite y cumplimiento perezoso: conectores explícitos en las skills de redacción, recálculo
     por código y LaTeX en las skills cuantitativas, y el script revisar_texto.py frente a textos de prueba.
  8. Integridad: sumas SHA-256 del manifest y .skill/.zip idénticos a sus carpetas.
  9. Instalador: instalación, estado y desinstalación en una carpeta personal temporal, con
     instalar_skills.py y con instalar_sin_internet.py (sin red).
  10. Sensibilidad: cada defecto conocido (36 casos de las pruebas 1 a 6) se siembra por separado en un
      paquete mínimo y su prueba debe detectarlo, para que el linter no pase por estar vacío; once textos
      legítimos (Arquímedes, faros y tapices literales, una opción de comando y una enumeración de palabras
      vigiladas) no deben fallar.
Código de salida: 0 si todas las pruebas pasan, 1 si alguna falla. Requiere PyYAML.
"""
import argparse
import datetime
import hashlib
import io
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import textwrap
import unicodedata
import zipfile

import yaml

sys.dont_write_bytecode = True

AQUI = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(AQUI)
PAQUETE_DEFECTO = os.path.join(REPO, "GoogleDrive_Backup_Skills", "Respaldo_Skills_AI")
RAMAS = ("01_ECOSISTEMA_CLAUDE", "02_ECOSISTEMA_GEMINI", "03_ECOSISTEMA_CHATGPT")
TEXTO = (".md", ".py", ".yaml", ".json")

RAYA = re.compile("\u2014")
SEMIRRAYA = re.compile("\u2013")
# Doble guion como raya: pegado entre letras, suelto entre espacios, al inicio de línea (diálogo) o como inciso
# emparejado («equipo --según el informe-- creció»); una opción de comando aislada (--simular) no cuenta.
DOBLE_GUION = re.compile(r"(?<=[^\W\d_])--(?=[^\W\d_])|(?<=\s)--(?=\s)|^\s*--(?=[^\W\d_])"
                         r"|(?<=[\s(\[«])--(?=[^\W\d_])(?:[^\n-]|-(?!-)){1,120}?(?<=[^\W\d_])--(?=[\s.,;:)\]»]|$)")
VETADO = re.compile(r"\btensi(?:ón|ones|on)\b", re.I)
CONTEXTO_MECANICA = re.compile(r"\$T\$|\\\(T\\\)|símbolo T|fuerza de (?:la )?cuerda|fuerza del cable", re.I)
EMOJI = re.compile(
    "[\U0001F000-\U0001FAFF\u2600-\u2604\u2606-\u260f\u2611-\u2669\u266b-\u2712\u2714-\u27bf"
    "\u2b05-\u2b07\u2934\u2935\u3030\u303d\u3297\u3299\u2b50\u2b55\u2b1b\u2b1c\u231a\u231b\u23e9-\u23f3\u23f8-\u23fa\u20e3\ufe0f]")
DECORATIVO = re.compile("[\u2605\u2606\u2713\u2714\u2717\u2718\u27a4\u25ba\u25c6\u25c7\u2756\u2726\u2727\u2764]")
# Léxico inflado (rico tapiz, faro de esperanza, vertiginoso mundo, sumérgete en, desentrañar, sinergia) con sus
# flexiones. «Tapiz», «faro» y «sumergir» solo cuentan en su uso metafórico, para no marcar un tapiz de lana, el faro
# de un logo ni un bloque sumergido en agua (Arquímedes).
_DET = r"(?:el|la|los|las|lo|este|esta|estos|estas|ese|esa|esos|esas|nuestro|nuestra|nuestros|nuestras|un|una|su|sus|tu|tus|mi|mis)"
# Solo cuenta como metáfora cuando el complemento es abstracto; el uso literal (se sumerge en el mar, el faro de la
# costa, los tapices de Ayacucho) no se marca.
_ABSTRACTO = (r"(?:fascinante\s+|apasionante\s+|maravillos[oa]\s+|incre[ií]ble\s+)?"
              r"(?:mundo|universo|historia|tema|cultura|viaje|experiencia|detalles?|ideas?|secretos?|conocimiento|"
              r"aventura|esencia|profundidades|magia|fascinante|apasionante)")
_INFLADO = (
    r"tapi(?:z|ces)(?!\s+de\s+(?:lana|seda|algod[oó]n|yute|lino|nudos|(?-i:[A-ZÁÉÍÓÚÑ])))"
    r"|vertiginos\w*|desentra[ñn]\w*|sinergi(?!stas?\b)\w*|sin[eé]rgic\w*"
    r"|sum[eé]rgete|sumergirse|sumergirte|sumergirnos|sumerj[aá]monos|sumerg[aá]monos|sum[eé]rjase|sum[eé]rjanse"
    r"|sum[eé]r[gj]\w*\s+en\s+" + _DET + r"\s+" + _ABSTRACTO + r"\w*"
    r"|faros?\s+de\s+(?:la\s+)?(?:esperanza|luz|gu[ií]a|inspiraci[oó]n|innovaci[oó]n|excelencia|educaci[oó]n|ciencia|cambio|calidad)"
    r"|es\s+un\s+(?:verdadero\s+)?faro\s+(?:para|de\s+(?:esperanza|luz))|faro\s+en\s+la\s+oscuridad"
    r"|(?:en|como)\s+(?:un\s+)?(?:verdadero\s+)?faro\s+(?:para|que|de\s+(?:esperanza|luz|gu[ií]a)|del?\s+(?!la\s+costa|puerto|la\s+bah)\w+)"
    r"|un\s+mar\s+de\s+(?:datos|informaci[oó]n|posibilidades|dudas|oportunidades)"
)
INFLADO_RE = re.compile(r"\b(" + _INFLADO + r")\b", re.I)
# Enumeración real: palabras vigiladas separadas solo por coma, barra, punto y coma, «y» u «o», sin palabras
# intermedias (salvo el complemento fijo de la propia expresión, como «faro de esperanza»). Solo quedan exentas
# las apariciones que caen dentro del tramo enumerado.
_VIGILADA = (r"(?:rico\s+tapiz|tapi(?:z|ces)|faro\s+de\s+esperanza|faro\s+en\s+la\s+oscuridad|faros?|vertiginos\w*"
             r"|sum[eé]rgete\s+en|sum[eé]r[gj]\w*|desentra[ñn]\w*|sinergi\w*|sin[eé]rgic\w*)")
ENUMERACION = re.compile(r"\b" + _VIGILADA + r"(?:\s*(?:[,/;]|\s[yo]\s)\s*" + _VIGILADA + r")+\b", re.I)
# Una aparición es mención (no uso) solo si va entre comillas, cursiva o código, si la línea es una enumeración
# de palabras vigiladas, si lleva un marcador metalingüístico explícito o si está en una sección que cataloga el
# léxico (vocabulario, reemplazos, antes y después, antipatrones). Las salidas de los ejemplos no quedan exentas.
MARCAS_MENCION = re.compile(
    r"léxico inflado|palabras como|antes:|prohib|vigilad|grandilocuen|inflad[oa]s?\b|marca de IA|"
    r"(?:no|nunca) (?:uses|escribas)\s+(?:[«\"`]|(?:\w+\s){0,2}?(?:tapiz|faro|vertiginos|sum[eé]rg|desentra|sinergi))|"
    r"metáfora de|uso literal", re.I)
MARCA_P3 = re.compile(r"\bP3\b")
SECCION_MENCION = re.compile(
    r"léxico|vocabulario|vigilad|reemplaz|antes y después|catálogo|antipatr|Serie [AB]|señales|Rechazo autom", re.I)
ETIQUETA = re.compile(r'<(/?)([a-z_][a-z0-9_]*)((?:\s+[a-z_-]+="[^"]*")*)\s*>')


def relativa(p, base):
    return os.path.relpath(p, base)


def archivos(base, extensiones=TEXTO):
    for rama in RAMAS:
        for raiz, _, fs in os.walk(os.path.join(base, rama)):
            for f in sorted(fs):
                if f.endswith(extensiones):
                    yield os.path.join(raiz, f)
    for f in sorted(os.listdir(base)):
        p = os.path.join(base, f)
        if os.path.isfile(p) and f.endswith(extensiones) and f != "QA_VERIFICACION_TECNICA.md":
            yield p


def contenido_zips(base):
    """Devuelve (nombre virtual, texto) de cada archivo de texto dentro de los .skill y .zip de las ramas."""
    for rama in RAMAS:
        for raiz, _, fs in os.walk(os.path.join(base, rama)):
            for f in sorted(fs):
                if f.endswith((".skill", ".zip")):
                    p = os.path.join(raiz, f)
                    with zipfile.ZipFile(p) as z:
                        for n in z.namelist():
                            if n.endswith(TEXTO):
                                yield f"{relativa(p, base)}!{n}", unicodedata.normalize("NFC", z.read(n).decode("utf-8"))


def leer(p):
    with open(p, encoding="utf-8") as f:
        return unicodedata.normalize("NFC", f.read())  # tildes descompuestas cuentan igual


def sin_codigo_en_linea(linea):
    return re.sub(r"`[^`]*`", "", linea)


def frontmatter(texto):
    if not texto.startswith("---\n"):
        return None
    fin = texto.find("\n---", 4)
    return yaml.safe_load(texto[4:fin]) if fin > 0 else None


class Prueba:
    def __init__(self, numero, nombre):
        self.numero, self.nombre, self.revisados, self.fallos, self.notas = numero, nombre, 0, [], []

    @property
    def ok(self):
        return not self.fallos


# ---------------------------------------------------------------- 1. frontmatter
def prueba_yaml(base):
    t = Prueba(1, "Frontmatter YAML y campos obligatorios")
    reglas = [
        (r"01_ECOSISTEMA_CLAUDE/\.claude/skills/([^/]+)/SKILL\.md$", ("name", "description")),
        (r"01_ECOSISTEMA_CLAUDE/modulos_separados/([^/]+)/SKILL\.md$", ("name", "description")),
        (r"02_ECOSISTEMA_GEMINI/skills_nativas/([^/]+)/SKILL\.md$", ("name", "description")),
        (r"03_ECOSISTEMA_CHATGPT/skills_chatgpt/([^/]+)/SKILL\.md$", ("name", "description")),
        (r"01_ECOSISTEMA_CLAUDE/\.claude/commands/([^/]+)\.md$", ("description", "argument-hint")),
        (r"03_ECOSISTEMA_CHATGPT/skills/([^/]+)\.md$", ("name", "description", "triggers", "compatibility")),
    ]
    for p in archivos(base, (".md",)):
        r = relativa(p, base)
        for patron, campos in reglas:
            m = re.search(patron, r)
            if not m:
                continue
            t.revisados += 1
            texto = leer(p)
            try:
                fm = frontmatter(texto)
            except yaml.YAMLError as e:
                t.fallos.append(f"{r}: YAML inválido ({str(e).splitlines()[0]})")
                continue
            if not isinstance(fm, dict):
                t.fallos.append(f"{r}: sin frontmatter")
                continue
            for c in campos:
                if not fm.get(c):
                    t.fallos.append(f"{r}: falta el campo {c}")
            if "SKILL.md" in r and fm.get("name") != m.group(1):
                t.fallos.append(f"{r}: name ({fm.get('name')}) distinto de la carpeta")
            if len(str(fm.get("description", ""))) > 1024:
                t.fallos.append(f"{r}: description de más de 1024 caracteres")
            if "triggers" in campos and not (isinstance(fm.get("triggers"), list) and all(isinstance(x, str) for x in fm["triggers"])):
                t.fallos.append(f"{r}: triggers debe ser una lista de frases")
            if "/commands/" in r and "$ARGUMENTS" not in texto:
                t.fallos.append(f"{r}: falta $ARGUMENTS")
    for p in archivos(base, (".yaml",)):
        t.revisados += 1
        try:
            d = yaml.safe_load(leer(p))
            i = d["interface"]
            assert i["display_name"] and i["short_description"] and i["default_prompt"]
            assert isinstance(d["policy"]["allow_implicit_invocation"], bool)
        except Exception as e:  # noqa: BLE001
            t.fallos.append(f"{relativa(p, base)}: openai.yaml inválido ({e})")
    try:
        json.loads(leer(os.path.join(base, "manifest.json")))
        t.revisados += 1
    except Exception as e:  # noqa: BLE001
        t.fallos.append(f"manifest.json inválido ({e})")
    return t


# ---------------------------------------------------------------- 2 a 6. linter de restricciones
def recorrer_texto(base):
    for p in archivos(base):
        yield relativa(p, base), leer(p)
    yield from contenido_zips(base)


def prueba_rayas(base):
    t = Prueba(2, "Raya, semirraya como puntuación y doble guion")
    for nombre, texto in recorrer_texto(base):
        t.revisados += 1
        en_codigo = False
        for n, linea in enumerate(texto.split("\n"), 1):
            if re.match(r"^\s*(```|~~~)", linea) and not re.match(r"^\s*~~~~(markdown|xml)", linea):
                en_codigo = not en_codigo
            if RAYA.search(linea):
                t.fallos.append(f"{nombre}:{n}: raya")
            if SEMIRRAYA.search(linea):
                t.fallos.append(f"{nombre}:{n}: semirraya")
            if nombre.endswith(".md") and not en_codigo and DOBLE_GUION.search(sin_codigo_en_linea(linea)) and not linea.lstrip().startswith(("python3", "$")):
                t.fallos.append(f"{nombre}:{n}: doble guion como raya")
    return t


def prueba_inflado(base):
    t = Prueba(3, "Léxico inflado")
    menciones = 0
    for nombre, texto in recorrer_texto(base):
        if not nombre.endswith((".md", ".yaml")):
            continue
        t.revisados += 1
        en_codigo, seccion = False, ""
        for n, linea in enumerate(texto.split("\n"), 1):
            if re.match(r"^\s*(```|~~~)", linea) and not re.match(r"^\s*~~~~markdown", linea):
                en_codigo = not en_codigo
                continue
            if re.match(r"^#{1,6} ", linea):
                seccion = linea
            for m in INFLADO_RE.finditer(linea):
                antes, despues = linea[:m.start()], linea[m.end():]
                rectas = len(re.findall(r'(?<!\d)"', antes))  # la comilla de pulgadas (15") no abre cita
                entre_comillas = (antes.count("«") > antes.count("»") or rectas % 2 == 1
                                  or antes.count("`") % 2 == 1 or despues.startswith(("»", '"', "`"))
                                  or (antes.endswith(("*", "_")) and despues.startswith(("*", "_"))))
                if nombre.endswith(".yaml"):
                    entre_comillas = False  # en openai.yaml los valores van entre comillas y se muestran tal cual
                lista = any(e.start() <= m.start() < e.end() for e in ENUMERACION.finditer(linea))
                if (en_codigo or entre_comillas or lista or MARCAS_MENCION.search(linea) or MARCA_P3.search(linea)
                        or SECCION_MENCION.search(seccion)):
                    menciones += 1
                else:
                    t.fallos.append(f"{nombre}:{n}: «{m.group(0)}» usado | {linea.strip()[:100]}")
    t.notas.append(f"Menciones metalingüísticas (listas de prohibición, ejemplos de antes y después, regex): {menciones}")
    return t


def prueba_vetado(base):
    t = Prueba(4, "Término vetado")
    tecnicas = 0
    for nombre, texto in recorrer_texto(base):
        t.revisados += 1
        for n, linea in enumerate(texto.split("\n"), 1):
            for _ in VETADO.finditer(linea):
                if CONTEXTO_MECANICA.search(linea):
                    tecnicas += 1
                else:
                    t.fallos.append(f"{nombre}:{n}: término vetado fuera de notación de mecánica")
    t.notas.append(f"Apariciones en notación de mecánica (admitidas): {tecnicas}")
    return t


def prueba_emojis(base):
    t = Prueba(5, "Emojis y caracteres gráficos decorativos")
    for nombre, texto in recorrer_texto(base):
        t.revisados += 1
        for n, linea in enumerate(texto.split("\n"), 1):
            for m in EMOJI.finditer(linea):
                t.fallos.append(f"{nombre}:{n}: emoji U+{ord(m.group(0)):04X}")
            for m in DECORATIVO.finditer(linea):
                t.fallos.append(f"{nombre}:{n}: carácter decorativo U+{ord(m.group(0)):04X}")
    return t


def prueba_xml(base):
    t = Prueba(6, "Etiquetas XML huérfanas o mal cerradas")
    con_etiquetas = 0
    for nombre, texto in recorrer_texto(base):
        if not nombre.endswith(".md"):
            continue
        t.revisados += 1
        pila, hubo = [], False
        en_codigo = False
        lineas = texto.split("\n")
        fin_fm = lineas.index("---", 1) + 1 if lineas and lineas[0] == "---" and "---" in lineas[1:] else 0
        for n, linea in enumerate(lineas, 1):
            if n <= fin_fm:
                continue
            if re.match(r"^\s*```", linea):
                en_codigo = not en_codigo
                continue
            if en_codigo:
                continue
            for m in ETIQUETA.finditer(sin_codigo_en_linea(linea)):
                hubo = True
                cierre, etiqueta = m.group(1) == "/", m.group(2)
                if not cierre:
                    pila.append((etiqueta, n))
                elif not pila:
                    t.fallos.append(f"{nombre}:{n}: </{etiqueta}> sin apertura")
                elif pila[-1][0] != etiqueta:
                    t.fallos.append(f"{nombre}:{n}: </{etiqueta}> cierra <{pila[-1][0]}> (línea {pila[-1][1]})")
                    pila.pop()
                else:
                    pila.pop()
        for etiqueta, n in pila:
            t.fallos.append(f"{nombre}:{n}: <{etiqueta}> sin cierre")
        con_etiquetas += hubo
    t.notas.append(f"Archivos con estructura XML: {con_etiquetas}")
    return t


# ---------------------------------------------------------------- 7. casos límite y cumplimiento perezoso
def salidas_de(base, motor, archivo_chatgpt):
    rutas = [f"01_ECOSISTEMA_CLAUDE/.claude/skills/{motor}/SKILL.md", f"01_ECOSISTEMA_CLAUDE/chat_standalone/{motor}.md",
             f"02_ECOSISTEMA_GEMINI/skills_nativas/{motor}/SKILL.md", f"02_ECOSISTEMA_GEMINI/system_instructions/{motor}.md",
             f"02_ECOSISTEMA_GEMINI/gemini_standalone/{motor}.md", f"03_ECOSISTEMA_CHATGPT/skills_chatgpt/{motor}/SKILL.md",
             f"03_ECOSISTEMA_CHATGPT/skills/{archivo_chatgpt}"]
    return [r for r in rutas if os.path.exists(os.path.join(base, r))]


def prueba_casos(base):
    t = Prueba(7, "Casos límite y cumplimiento perezoso")
    comprobaciones = {
        ("escritura-humana", "escritura_humana_master.md"): [
            ("conectores lógicos explícitos", re.compile(r"[Cc]onectores lógicos explícitos|conectores precisos|relaciones visibles con conectores")),
            ("no eliminar conectores como marca de IA", re.compile(r"(no la ausencia de conectores|Nunca los prohíbas|no se mide por la ausencia de conectores|no los elimines|nunca quites un conector|Humanizar sin empobrecer|humanizar sin empobrecer)", re.I)),
            ("abuso de y/que", re.compile(r'abus\w* de "y"|abuso de "y"|"y" ni de "que"|"y" ni "que"', re.I)),
        ],
        ("maquetacion-pdf-documentos", "maquetacion_documentos.md"): [
            ("recálculo por código", re.compile(r"(recalcul|verifica\w* (el contenido |cada resultado )?con código|SymPy|Validación técnica)", re.I)),
            ("LaTeX o notación matemática", re.compile(r"LaTeX|mathtext|\$[^$]+\$", re.I)),
        ],
        ("ejercicios-dos-pasos", "ejercicios_dos_pasos.md"): [
            ("recálculo por código", re.compile(r"(verif[ií]c\w*|recalcul\w*)[^.\n]{0,80}(Python|código|SymPy)|(Python|código)[^.\n]{0,60}(verif[ií]c|recalcul)", re.I)),
            ("LaTeX estricto", re.compile(r"LaTeX")),
            ("bloque de fórmulas", re.compile(r"\$\$|\\\[")),
        ],
    }
    for (motor, archivo), lista in comprobaciones.items():
        for r in salidas_de(base, motor, archivo):
            t.revisados += 1
            texto = leer(os.path.join(base, r))
            for etiqueta, patron in lista:
                if not patron.search(texto):
                    t.fallos.append(f"{r}: falta {etiqueta}")
    # El script de revisión frente a textos de prueba (cumplimiento perezoso: un borrador flojo debe fallar).
    script = os.path.join(base, "01_ECOSISTEMA_CLAUDE/.claude/skills/escritura-humana/scripts/revisar_texto.py")
    casos = [
        ("borrador flojo", "En la era digital, sumergirse en este rico tapiz \u2014 crucial \u2014 es clave. \U0001F680\n\nLa tensión crece.\n", 1),
        ("texto limpio", "El informe llega el lunes porque el proveedor envió los datos tarde; por eso el cierre se mueve una semana.\n", 0),
        ("rango numérico permitido", "Las páginas 10\u201320 resumen el método.\n", 0),
        ("doble guion pegado", "La empresa--según el informe--creció.\n", 1),
        ("inciso con doble guion", "El equipo --según el informe-- creció.\n", 1),
        ("inciso con doble guion al final", "El equipo creció --según el informe--\n", 1),
        ("opción de comando", "Ejecuta el instalador con --simular antes de instalar.\n", 0),
    ]
    for etiqueta, texto, esperado in casos:
        t.revisados += 1
        r = subprocess.run([sys.executable, "-B", script, "-"], input=texto, capture_output=True, text=True)
        if r.returncode != esperado:
            t.fallos.append(f"revisar_texto.py, caso {etiqueta}: código {r.returncode}, se esperaba {esperado}")
    return t


# ---------------------------------------------------------------- 8. integridad
def suma_carpeta(ruta):
    h = hashlib.sha256()
    for raiz, dirs, fs in os.walk(ruta):
        dirs.sort()
        for f in sorted(fs):
            if f.startswith(".instalado_respaldo_skills"):
                continue
            p = os.path.join(raiz, f)
            h.update(os.path.relpath(p, ruta).replace(os.sep, "/").encode())
            with open(p, "rb") as fh:
                h.update(fh.read())
    return h.hexdigest()


def prueba_integridad(base):
    t = Prueba(8, "Integridad del manifest y de los paquetes")
    import importlib.util
    spec = importlib.util.spec_from_file_location("instalador_qa", os.path.join(base, "instalar_skills.py"))
    instalador = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(instalador)
    suma_carpeta = instalador.suma_carpeta  # la misma suma que usa la instalación
    manifest = json.loads(leer(os.path.join(base, "manifest.json")))
    for s in manifest["skills"]:
        for plataforma, ruta in s.get("rutas", {}).items():
            t.revisados += 1
            p = os.path.join(base, ruta)
            if not os.path.isdir(p):
                t.fallos.append(f"manifest: no existe {ruta}")
            elif suma_carpeta(p) != s.get("sha256", {}).get(plataforma):
                t.fallos.append(f"manifest: suma distinta en {ruta}")
    for rama in RAMAS:
        for raiz, _, fs in os.walk(os.path.join(base, rama)):
            for f in fs:
                if not f.endswith((".skill", ".zip")):
                    continue
                t.revisados += 1
                pz = os.path.join(raiz, f)
                with zipfile.ZipFile(pz) as z:
                    raiz_zip = z.namelist()[0].split("/")[0]
                    candidatos = [os.path.join(dp, raiz_zip) for dp, dn, _ in os.walk(os.path.join(base, rama)) if raiz_zip in dn]
                    candidatos = [c for c in candidatos if os.path.exists(os.path.join(c, "SKILL.md"))]
                    iguales = False
                    for c in candidatos:
                        locales = {os.path.relpath(os.path.join(dp, x), os.path.dirname(c)).replace(os.sep, "/")
                                   for dp, _, xs in os.walk(c) for x in xs}
                        if locales == set(z.namelist()) and all(
                                z.read(n) == open(os.path.join(os.path.dirname(c), n), "rb").read() for n in z.namelist()):
                            iguales = True
                            break
                    if not iguales:
                        t.fallos.append(f"{relativa(pz, base)}: no coincide con ninguna carpeta")
    return t


# ---------------------------------------------------------------- 9. instalador
def prueba_instalador(base):
    t = Prueba(9, "Instalador en carpeta personal temporal")
    casa = tempfile.mkdtemp(prefix="qa_home_")
    try:
        for d in (".claude", ".codex", ".gemini"):
            os.makedirs(os.path.join(casa, d))
        entorno = dict(os.environ, HOME=casa)
        inst = [sys.executable, "-B", os.path.join(base, "instalar_skills.py"), "--origen", base]
        pasos = [("instalación", [], r"instalada"), ("estado", ["--estado"], r"al día"),
                 ("reejecución sin cambios", [], r"sin cambios"), ("desinstalación", ["--desinstalar"], r"")]
        for etiqueta, extra, esperado in pasos:
            t.revisados += 1
            r = subprocess.run(inst + extra, capture_output=True, text=True, env=entorno, cwd=casa)
            if r.returncode != 0 or (esperado and not re.search(esperado, r.stdout)):
                t.fallos.append(f"{etiqueta}: código {r.returncode}; {(r.stdout + r.stderr).strip()[-200:]}")
            if etiqueta == "instalación":
                t.notas.append("Elementos instalados: " + str(len(re.findall(r"instalada: \S*/", r.stdout))))
        restos = [os.path.join(dp, f) for dp, _, fs in os.walk(casa) for f in fs if ".skills_respaldo" not in dp]
        if restos:
            t.fallos.append(f"quedaron {len(restos)} archivos tras desinstalar")
        # Instalador sin internet: un solo archivo con el paquete dentro, ejecutado fuera del repositorio.
        offline = os.path.join(base, "instalar_sin_internet.py")
        copia = os.path.join(casa, "instalar_sin_internet.py")
        shutil.copy(offline, copia)
        for etiqueta, extra, esperado in (("sin internet: instalación", [], r"instalada"), ("sin internet: estado", ["--estado"], r"al d\u00eda"),
                                          ("sin internet: desinstalaci\u00f3n", ["--desinstalar"], r"")):
            t.revisados += 1
            r = subprocess.run([sys.executable, "-B", copia] + extra, capture_output=True, text=True,
                               env=dict(entorno, http_proxy="http://0.0.0.0:9", https_proxy="http://0.0.0.0:9"), cwd=casa)
            if r.returncode != 0 or (esperado and not re.search(esperado, r.stdout)):
                t.fallos.append(f"{etiqueta}: c\u00f3digo {r.returncode}; {(r.stdout + r.stderr).strip()[-200:]}")
            if etiqueta == "sin internet: instalaci\u00f3n":
                t.notas.append("Elementos instalados con instalar_sin_internet.py: " + str(len(re.findall(r"instalada: \S*/", r.stdout))))
    finally:
        shutil.rmtree(casa, ignore_errors=True)
        for raiz, dirs, _ in os.walk(base):
            if "__pycache__" in dirs:
                shutil.rmtree(os.path.join(raiz, "__pycache__"), ignore_errors=True)
    return t


# ---------------------------------------------------------------- 10. sensibilidad del linter
def prueba_sensibilidad(base):
    """Siembra cada defecto por separado en un paquete mínimo temporal y exige que su prueba lo detecte."""
    t = Prueba(10, "Sensibilidad: defectos sembrados detectados")
    prosa = "03_ECOSISTEMA_CHATGPT/projects_instructions/siembra.md"
    skill = "03_ECOSISTEMA_CHATGPT/skills/siembra.md"
    fm_sin_compat = '---\nname: siembra\ndescription: "Prueba"\ntriggers:\n  - "prueba"\n---\n\nCuerpo.\n'
    casos = [
        ("campo compatibility ausente", prueba_yaml, skill, fm_sin_compat),
        ("raya", prueba_rayas, prosa, "El proyecto avanza \u2014 r\u00e1pido.\n"),
        ("semirraya como inciso", prueba_rayas, prosa, "El proyecto avanza \u2013 r\u00e1pido.\n"),
        ("doble guion pegado", prueba_rayas, prosa, "La empresa--seg\u00fan el informe--creci\u00f3.\n"),
        ("\u00abrico tapiz\u00bb en prosa", prueba_inflado, prosa, "Nos adentramos en este rico tapiz de ideas.\n"),
        ("\u00abSum\u00e9rgete\u00bb en prosa", prueba_inflado, prosa, "Sum\u00e9rgete en la historia de la marca.\n"),
        ("flexi\u00f3n \u00abdesentra\u00f1a\u00bb", prueba_inflado, prosa, "El docente desentra\u00f1a el problema.\n"),
        ("flexi\u00f3n \u00abvertiginosa\u00bb", prueba_inflado, prosa, "El mercado cambia a una velocidad vertiginosa.\n"),
        ("\u00absinergia\u00bb tras \u00abPor ejemplo\u00bb", prueba_inflado, prosa, "Por ejemplo, la marca logra sinergia con su p\u00fablico.\n"),
        ("\u00absinergia\u00bb tras \u00abevitar\u00bb", prueba_inflado, prosa, "Para evitar retrasos, el equipo trabaja en sinergia.\n"),
        ("frase t\u00edpica con dos palabras vigiladas", prueba_inflado, prosa, "Sum\u00e9rgete en este rico tapiz de colores.\n"),
        ("\u00abvertiginoso\u00bb y \u00absinergia\u00bb en prosa", prueba_inflado, prosa, "En este vertiginoso mundo digital, la sinergia entre equipos es clave.\n"),
        ("\u00abno uses\u00bb ajeno a la regla", prueba_inflado, prosa, "No uses atajos: busca sinergia con el usuario.\n"),
        ("comilla de pulgadas", prueba_inflado, prosa, "La pantalla de 15\" logra sinergia con el teclado.\n"),
        ("doble guion de di\u00e1logo", prueba_rayas, prosa, "--Hola, dijo.\n"),
        ("flecha emoji", prueba_emojis, prosa, "Sube \u2b06\n"),
        ("dos palabras vigiladas con palabras intermedias", prueba_inflado, prosa, "La sinergia y un ritmo vertiginoso definen al equipo.\n"),
        ("coma seguida de oraci\u00f3n", prueba_inflado, prosa, "El ritmo es vertiginoso, y la sinergia del equipo lo sostiene.\n"),
        ("\u00absumergiremos en los\u00bb", prueba_inflado, prosa, "Nos sumergiremos en los detalles del proyecto.\n"),
        ("\u00absum\u00e9rjase\u00bb (usted)", prueba_inflado, prosa, "Sum\u00e9rjase en el mundo de la marca.\n"),
        ("\u00abfaro\u00bb metaf\u00f3rico", prueba_inflado, prosa, "La marca se convirti\u00f3 en un faro para la comunidad.\n"),
        ("\u00abvertiginosamente\u00bb", prueba_inflado, prosa, "Los precios suben vertiginosamente.\n"),
        ("inciso con doble guion", prueba_rayas, prosa, "El equipo --seg\u00fan el informe-- creci\u00f3.\n"),
        ("inciso con doble guion al final de l\u00ednea", prueba_rayas, prosa, "El equipo creci\u00f3 --seg\u00fan el informe--\n"),
        ("inciso con doble guion y palabra compuesta", prueba_rayas, prosa, "El equipo --seg\u00fan el socio-director-- creci\u00f3.\n"),
        ("\u00abhol\u00edstico y sinergias\u00bb", prueba_inflado, prosa, "Un enfoque hol\u00edstico y sinergias entre \u00e1reas.\n"),
        ("\u00abtapiz sonoro\u00bb", prueba_inflado, prosa, "El audio es un tapiz sonoro.\n"),
        ("\u00abtapiz de la vida\u00bb", prueba_inflado, prosa, "En el gran tapiz de la vida, cada decisi\u00f3n cuenta.\n"),
        ("\u00abcomo un faro que gu\u00eda\u00bb", prueba_inflado, prosa, "El docente act\u00faa como un faro que gu\u00eda a sus estudiantes.\n"),
        ("t\u00e9rmino vetado", prueba_vetado, prosa, "La tensi\u00f3n del equipo crece.\n"),
        ("t\u00e9rmino vetado con tilde descompuesta", prueba_vetado, prosa, "La tensio\u0301n sube.\n"),
        ("t\u00e9rmino vetado junto a \u00abcuerda\u00bb sin notaci\u00f3n", prueba_vetado, prosa, "Hay tensi\u00f3n en el equipo, como una cuerda floja.\n"),
        ("emoji", prueba_emojis, prosa, "Listo \U0001F680\n"),
        ("car\u00e1cter decorativo", prueba_emojis, prosa, "Hecho \u2605\n"),
        ("etiqueta sin cierre", prueba_xml, prosa, "<regla>sin cierre\n"),
        ("cierre sin apertura", prueba_xml, prosa, "texto</regla>\n"),
    ]
    for etiqueta, fn, ruta, contenido in casos:
        t.revisados += 1
        base_min = tempfile.mkdtemp(prefix="qa_siembra_")
        try:
            os.makedirs(os.path.join(base_min, os.path.dirname(ruta)))
            for rama in RAMAS:
                os.makedirs(os.path.join(base_min, rama), exist_ok=True)
            with open(os.path.join(base_min, "manifest.json"), "w", encoding="utf-8") as f:
                f.write("{}")
            with open(os.path.join(base_min, ruta), "w", encoding="utf-8") as f:
                f.write(contenido)
            if fn(base_min).ok:
                t.fallos.append(f"defecto no detectado: {etiqueta}")
        finally:
            shutil.rmtree(base_min, ignore_errors=True)
    # Falsos positivos: vocabulario t\u00e9cnico legítimo que no debe fallar.
    legitimos = [("bloque sumergido en agua (Arqu\u00edmedes)", prueba_inflado, "Un bloque sumergido en agua recibe un empuje de 9.8 N.\n"),
                 ("faro de un logo", prueba_inflado, "El logo del puerto muestra un faro rojo.\n"),
                 ("tapiz literal", prueba_inflado, "Usa el tapiz de lana como fondo de la foto.\n"),
                 ("cubo que se sumerge en el mar", prueba_inflado, "El cubo se sumerge en el mar y flota la mitad.\n"),
                 ("esfera sumergida en una soluci\u00f3n", prueba_inflado, "La esfera sumergida en una soluci\u00f3n salina recibe un empuje de 3 N.\n"),
                 ("faro de la costa", prueba_inflado, "El logo se inspira en el faro de la costa de Paracas.\n"),
                 ("faro de la bah\u00eda", prueba_inflado, "Territorio 2: un faro de la bah\u00eda como s\u00edmbolo.\n"),
                 ("tapices de Ayacucho", prueba_inflado, "Tapices de Ayacucho como referencia visual.\n"),
                 ("m\u00fasculos sinergistas", prueba_inflado, "Los m\u00fasculos agonistas, antagonistas y sinergistas trabajan juntos.\n"),
                 ("enumeraci\u00f3n de palabras vigiladas", prueba_inflado, "Evita estas palabras: tapiz, sinergia, desentra\u00f1ar.\n"),
                 ("opci\u00f3n de comando", prueba_rayas, "Ejecuta el instalador con --simular antes de instalar.\n")]
    for etiqueta, fn, contenido in legitimos:
        t.revisados += 1
        base_min = tempfile.mkdtemp(prefix="qa_legitimo_")
        try:
            for rama in RAMAS:
                os.makedirs(os.path.join(base_min, rama), exist_ok=True)
            os.makedirs(os.path.join(base_min, os.path.dirname(prosa)), exist_ok=True)
            with open(os.path.join(base_min, prosa), "w", encoding="utf-8") as f:
                f.write(contenido)
            if not fn(base_min).ok:
                t.fallos.append(f"falso positivo: {etiqueta}")
        finally:
            shutil.rmtree(base_min, ignore_errors=True)
    t.notas.append("Defectos sembrados, uno por paquete m\u00ednimo: " + "; ".join(c[0] for c in casos))
    t.notas.append("Textos leg\u00edtimos que no deben fallar: " + "; ".join(c[0] for c in legitimos))
    return t


# ---------------------------------------------------------------- reporte
def reporte(base, pruebas, comando):
    total_rev = sum(p.revisados for p in pruebas)
    total_fallos = sum(len(p.fallos) for p in pruebas)
    filas = "\n".join(f"| {p.numero} | {p.nombre} | {p.revisados} | {len(p.fallos)} | {'PASA' if p.ok else 'FALLA'} |" for p in pruebas)
    detalle = []
    for p in pruebas:
        detalle.append(f"### {p.numero}. {p.nombre}\n")
        detalle.append(f"Elementos revisados: {p.revisados}. Fallos: {len(p.fallos)}.")
        detalle += [f"- {n}" for n in p.notas]
        detalle += [f"- FALLO: {f}" for f in p.fallos[:50]]
        if len(p.fallos) > 50:
            detalle.append(f"- y {len(p.fallos) - 50} fallos más")
        detalle.append("")
    historial = os.path.join(AQUI, "fuentes", "_plataforma", "qa_historial.md")
    texto = (f"# QA_VERIFICACION_TECNICA\n\nFecha: {datetime.date.today().isoformat()}. Paquete: `Respaldo_Skills_AI`. "
             f"Comando: `{comando}`.\n\n## Resultado\n\n"
             f"{sum(p.ok for p in pruebas)} de {len(pruebas)} pruebas pasan; {total_rev} elementos revisados; {total_fallos} fallos.\n\n"
             "| N.º | Prueba | Revisados | Fallos | Estado |\n|---|---|---|---|---|\n" + filas + "\n\n"
             "## Qué revisa cada prueba\n\n" + textwrap.dedent(__doc__.split("Pruebas:")[1].split("Código de salida")[0]).strip() + "\n\n"
             "## Detalle\n\n" + "\n".join(detalle) + "\n" + leer(historial).strip() + "\n")
    with open(os.path.join(base, "QA_VERIFICACION_TECNICA.md"), "w", encoding="utf-8") as f:
        f.write(texto)
    return total_rev, total_fallos


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--paquete", default=PAQUETE_DEFECTO)
    ap.add_argument("--sin-instalador", action="store_true")
    args = ap.parse_args()
    base = os.path.abspath(args.paquete)
    funciones = [prueba_yaml, prueba_rayas, prueba_inflado, prueba_vetado, prueba_emojis, prueba_xml, prueba_casos, prueba_integridad,
                 prueba_sensibilidad]
    if not args.sin_instalador:
        funciones.insert(8, prueba_instalador)
    pruebas = []
    for fn in funciones:
        p = fn(base)
        pruebas.append(p)
        print(f"[{'PASA' if p.ok else 'FALLA'}] {p.numero}. {p.nombre}: {p.revisados} revisados, {len(p.fallos)} fallos")
        for n in p.notas:
            print(f"       {n}")
        for f in p.fallos[:10]:
            print(f"       FALLO: {f}")
    comando = ("python3 herramientas/verificar_calidad.py"
               + ("" if base == os.path.abspath(PAQUETE_DEFECTO) else f" --paquete {relativa(base, REPO)}")
               + (" --sin-instalador" if args.sin_instalador else ""))
    rev, fallos = reporte(base, pruebas, comando)
    print(f"\nTotal: {sum(p.ok for p in pruebas)}/{len(pruebas)} pruebas pasan, {rev} elementos revisados, {fallos} fallos.")
    print(f"Reporte: {os.path.join(base, 'QA_VERIFICACION_TECNICA.md')}")
    return 0 if fallos == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
