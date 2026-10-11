#!/usr/bin/env python3
"""Instala o actualiza las skills consolidadas en Claude Code, Codex (ChatGPT) y Gemini CLI.

Uso típico (desde la raíz del repositorio o desde la carpeta Respaldo_Skills_AI):
    python3 instalar_skills.py                      # detecta plataformas e instala o actualiza
    python3 instalar_skills.py --simular            # muestra qué haría, sin tocar nada
    python3 instalar_skills.py --plataformas claude,codex,gemini
    python3 instalar_skills.py --escritura modular  # módulos separados en lugar del motor unificado
    python3 instalar_skills.py --estado             # compara lo instalado con el paquete
    python3 instalar_skills.py --desinstalar
    python3 instalar_skills.py --url https://github.com/USUARIO/REPO --rama main   # descarga el paquete

Alcance de proyecto: ejecútalo desde la carpeta del proyecto con la ruta al clon, por ejemplo
    cd <proyecto> && python3 ~/USAME-PARA-CLAUDE/instalar_skills.py --alcance proyecto

Qué instala:
    claude  skills en ~/.claude/skills/<nombre>/ y comandos en ~/.claude/commands/<comando>.md
    codex   skills en ~/.agents/skills/<nombre>/ y en ~/.codex/skills/<nombre>/
    gemini  skills en ~/.gemini/skills/<nombre>/
Con --alcance proyecto: ./.claude/skills, ./.claude/commands, ./.agents/skills y ./.gemini/skills.

Actualizar es volver a ejecutarlo: compara la suma SHA-256 de cada skill con la instalada,
reemplaza solo lo que cambió y guarda una copia de lo reemplazado en ~/.skills_respaldo/<fecha>/.
Las skills de claude.ai y de ChatGPT web no se instalan por script: se suben los archivos .skill o
.zip a mano (ver INSTALAR.md). Solo usa la biblioteca estándar de Python 3.
"""
import argparse
import atexit
import datetime
import hashlib
import io
import json
import os
import shutil
import sys
import tempfile
import urllib.request
import zipfile

MARCA = ".instalado_respaldo_skills.json"
CARPETA_RESPALDOS = os.path.join(os.path.expanduser("~"), ".skills_respaldo")


def buscar_paquete(origen):
    candidatos = [origen] if origen else []
    aqui = os.path.dirname(os.path.abspath(__file__))
    candidatos += [aqui, os.path.join(aqui, "GoogleDrive_Backup_Skills", "Respaldo_Skills_AI"),
                   os.getcwd(), os.path.join(os.getcwd(), "GoogleDrive_Backup_Skills", "Respaldo_Skills_AI")]
    for c in candidatos:
        if c and os.path.isfile(os.path.join(c, "manifest.json")):
            return os.path.abspath(c)
    return None


def descargar_paquete(url, rama):
    url = url.rstrip("/")
    if url.endswith(".git"):
        url = url[:-4]
    partes = url.split("github.com/")[-1].split("/")
    if len(partes) < 2:
        sys.exit(f"URL de GitHub no reconocida: {url}")
    zip_url = f"https://codeload.github.com/{partes[0]}/{partes[1]}/zip/refs/heads/{rama}"
    print(f"Descargando {zip_url}")
    with urllib.request.urlopen(zip_url, timeout=60) as r:
        datos = r.read()
    destino = tempfile.mkdtemp(prefix="skills_paquete_")
    atexit.register(shutil.rmtree, destino, True)  # la descarga temporal se borra al terminar
    with zipfile.ZipFile(io.BytesIO(datos)) as z:
        z.extractall(destino)
    for raiz, _, archivos in os.walk(destino):
        if "manifest.json" in archivos and raiz.endswith("Respaldo_Skills_AI"):
            return raiz
    sys.exit("El archivo descargado no contiene Respaldo_Skills_AI/manifest.json.")


def suma_carpeta(ruta):
    h = hashlib.sha256()
    for raiz, dirs, archivos in sorted(os.walk(ruta)):
        dirs.sort()
        for a in sorted(archivos):
            if a == MARCA:
                continue
            p = os.path.join(raiz, a)
            h.update(os.path.relpath(p, ruta).replace(os.sep, "/").encode())
            with open(p, "rb") as f:
                h.update(f.read())
    return h.hexdigest()


def suma_archivo(ruta):
    with open(ruta, "rb") as f:
        return hashlib.sha256(f.read()).hexdigest()


def ruta_marca(destino, es_carpeta):
    return os.path.join(destino, MARCA) if es_carpeta else destino + MARCA


def leer_marca(destino):
    p = ruta_marca(destino, os.path.isdir(destino))
    try:
        with open(p, encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return None


def escribir_marca(destino, es_carpeta, datos):
    with open(ruta_marca(destino, es_carpeta), "w", encoding="utf-8") as f:
        json.dump(datos, f)


def destinos(plataformas, alcance):
    base = os.getcwd() if alcance == "proyecto" else os.path.expanduser("~")
    out = {}
    if "claude" in plataformas:
        out["claude"] = {"skills": [os.path.join(base, ".claude", "skills")],
                         "comandos": os.path.join(base, ".claude", "commands")}
    if "codex" in plataformas:
        rutas = [os.path.join(base, ".agents", "skills")]
        if alcance != "proyecto":  # la documentación reciente usa ~/.agents/skills; ~/.codex/skills por compatibilidad
            rutas.append(os.path.join(base, ".codex", "skills"))
        out["codex"] = {"skills": rutas}
    if "gemini" in plataformas:
        out["gemini"] = {"skills": [os.path.join(base, ".gemini", "skills")]}
    return out


def detectar_plataformas():
    home = os.path.expanduser("~")
    encontradas = [p for p, d in (("claude", ".claude"), ("codex", ".codex"), ("gemini", ".gemini"))
                   if os.path.isdir(os.path.join(home, d))]
    return encontradas or ["claude"]


def nueva_carpeta_respaldo():
    """Nombre con microsegundos; si ya existe (dos ejecuciones casi simultáneas), agrega un contador."""
    base = os.path.join(CARPETA_RESPALDOS, datetime.datetime.now().strftime("%Y%m%d-%H%M%S-%f"))
    carpeta, n = base, 1
    while os.path.exists(carpeta):
        n += 1
        carpeta = f"{base}-{n}"
    return {"carpeta": carpeta, "copias": []}


def respaldar(ruta, respaldo, simular):
    """Copia ruta (o el destino de un enlace simbólico) a la carpeta de respaldo. Devuelve la ruta de la copia.

    Nunca aborta por colisión de nombres: si el destino ya existe, prueba con un sufijo numérico.
    """
    if not os.path.exists(ruta):  # incluye enlaces simbólicos rotos: no hay nada que copiar
        return None
    real = os.path.realpath(ruta)
    nombre = ruta.lstrip(os.sep).replace(os.sep, "__")
    if simular:
        print(f"    respaldo (simulado): {ruta}")
        return None
    os.makedirs(respaldo["carpeta"], exist_ok=True)
    n = 1
    while True:
        destino = os.path.join(respaldo["carpeta"], nombre if n == 1 else f"{nombre}-{n}")
        try:
            if os.path.isdir(real):
                shutil.copytree(real, destino)
            else:
                if os.path.exists(destino):
                    raise FileExistsError(destino)
                shutil.copy2(real, destino)
            break
        except FileExistsError:
            n += 1
    respaldo["copias"].append(destino)
    return destino


def retirar_enlace(destino, args, respaldo):
    """Si destino es un enlace simbólico ajeno, respalda su contenido y borra solo el enlace."""
    if not os.path.islink(destino):
        return None
    print(f"  AVISO: {destino} es un enlace simbólico a {os.path.realpath(destino)}; "
          "se respalda su contenido y se reemplaza el enlace (el original no se toca).")
    if args.simular:
        return None
    copia = respaldar(destino, respaldo, False)
    os.unlink(destino)
    return copia


def instalar_carpeta(origen, destino, version, args, respaldo, resumen):
    nueva = suma_carpeta(origen)
    enlace = os.path.islink(destino)
    marca = None if enlace else leer_marca(destino)
    existe = enlace or os.path.isdir(destino)
    if existe and marca and marca.get("sha256") == nueva and not args.forzar:
        resumen["sin cambios"].append(destino)
        return
    accion = "actualizada" if existe else "instalada"
    ajena = None
    if enlace:
        ajena = retirar_enlace(destino, args, respaldo)
    elif existe and not marca:
        print(f"  AVISO: {destino} existe y no fue instalada por este paquete; se respalda y se reemplaza.")
    elif existe and suma_carpeta(destino) != marca.get("sha256"):
        print(f"  AVISO: {destino} tenía cambios locales; quedan en la copia de respaldo ({respaldo}).")
    print(f"  {accion}: {destino}")
    if not args.simular:
        if os.path.lexists(destino):
            copia = respaldar(destino, respaldo, False)
            if not marca:
                ajena = copia
            if os.path.isdir(destino) and not os.path.islink(destino):
                shutil.rmtree(destino)
            else:
                os.remove(destino)
        os.makedirs(os.path.dirname(destino), exist_ok=True)
        shutil.copytree(origen, destino)
        datos = {"version": version, "sha256": nueva, "fecha": datetime.date.today().isoformat()}
        previo = ajena or (marca or {}).get("respaldo_ajeno")
        if previo:
            datos["respaldo_ajeno"] = previo
        escribir_marca(destino, True, datos)
    resumen[accion].append(destino)


def instalar_archivo(origen, destino, version, args, respaldo, resumen):
    nueva = suma_archivo(origen)
    enlace = os.path.islink(destino)
    marca = None if enlace else leer_marca(destino)
    existe = enlace or os.path.isfile(destino)
    if existe and marca and marca.get("sha256") == nueva and not args.forzar:
        resumen["sin cambios"].append(destino)
        return
    accion = "actualizada" if existe else "instalada"
    ajena = None
    if enlace:
        # copiar sobre un enlace escribiría en el archivo original: se quita el enlace primero
        ajena = retirar_enlace(destino, args, respaldo)
    elif existe and not marca:
        print(f"  AVISO: {destino} existe y no fue instalado por este paquete; se respalda y se reemplaza.")
    print(f"  {accion}: {destino}")
    if not args.simular:
        if os.path.lexists(destino):
            copia = respaldar(destino, respaldo, False)
            if not marca:
                ajena = copia
        os.makedirs(os.path.dirname(destino), exist_ok=True)
        shutil.copy2(origen, destino)
        datos = {"version": version, "sha256": nueva}
        previo = ajena or (marca or {}).get("respaldo_ajeno")
        if previo:
            datos["respaldo_ajeno"] = previo
        escribir_marca(destino, False, datos)
    resumen[accion].append(destino)


def quitar(ruta, args, respaldo, resumen):
    if os.path.islink(ruta):
        print(f"  se conserva (es un enlace simbólico que no creó este paquete): {ruta}")
        return
    es_carpeta = os.path.isdir(ruta)
    if not (es_carpeta or os.path.isfile(ruta)):
        return
    marca = leer_marca(ruta)
    if not marca:
        print(f"  se conserva (no la instaló este paquete): {ruta}")
        return
    print(f"  retirada: {ruta}")
    if marca.get("respaldo_ajeno"):
        print(f"    lo que había antes de instalar está respaldado en: {marca['respaldo_ajeno']}")
        resumen["ajenos"].append(marca["respaldo_ajeno"])
    if not args.simular:
        respaldar(ruta, respaldo, False)
        if es_carpeta:
            shutil.rmtree(ruta)
        else:
            os.remove(ruta)
            if os.path.exists(ruta + MARCA):
                os.remove(ruta + MARCA)
    resumen["retirada"].append(ruta)


def estado_carpeta(origen, destino):
    if not os.path.lexists(destino):
        return "no instalada"
    if os.path.islink(destino):
        return "enlace simbólico ajeno (no instalado por este paquete)"
    marca = leer_marca(destino)
    if not marca:
        return "existe, pero no la instaló este paquete"
    situacion = "al día" if marca.get("sha256") == suma_carpeta(origen) else "desactualizada"
    if suma_carpeta(destino) != marca.get("sha256"):
        situacion += ", con cambios locales"
    return f"versión {marca.get('version', '?')}, {situacion}"


def estado_archivo(origen, destino):
    if not os.path.lexists(destino):
        return "no instalado"
    if os.path.islink(destino):
        return "enlace simbólico ajeno (no instalado por este paquete)"
    marca = leer_marca(destino)
    if not marca:
        situacion = "igual al del paquete" if suma_archivo(destino) == suma_archivo(origen) else "distinto del paquete"
        return f"{situacion}, sin marca de este paquete"
    situacion = "al día" if marca.get("sha256") == suma_archivo(origen) else "desactualizado"
    if suma_archivo(destino) != marca.get("sha256"):
        situacion += ", con cambios locales"
    return f"versión {marca.get('version', '?')}, {situacion}"


def main():
    ap = argparse.ArgumentParser(description="Instala o actualiza las skills consolidadas.")
    ap.add_argument("--plataformas", help="claude,codex,gemini (por defecto, las detectadas en tu carpeta personal)")
    ap.add_argument("--alcance", choices=["usuario", "proyecto"], default="usuario",
                    help="proyecto instala en la carpeta actual: ejecútalo desde el proyecto, no desde el clon")
    ap.add_argument("--escritura", choices=["unificada", "modular"], default="unificada",
                    help="motor unificado escritura-humana o los cuatro módulos separados")
    ap.add_argument("--origen", help="carpeta Respaldo_Skills_AI local")
    ap.add_argument("--url", help="URL del repositorio de GitHub para descargar el paquete (tiene prioridad sobre el local)")
    ap.add_argument("--rama", default="main")
    ap.add_argument("--simular", action="store_true")
    ap.add_argument("--forzar", action="store_true", help="reinstala aunque no haya cambios")
    ap.add_argument("--estado", action="store_true")
    ap.add_argument("--desinstalar", action="store_true")
    args = ap.parse_args()

    if args.url:
        paquete = descargar_paquete(args.url, args.rama)
    else:
        paquete = buscar_paquete(args.origen)
        if not paquete:
            sys.exit("No encuentro Respaldo_Skills_AI/manifest.json. Usa --origen <carpeta> o --url <repositorio>.")
    with open(os.path.join(paquete, "manifest.json"), encoding="utf-8") as f:
        manifest = json.load(f)
    version = manifest["version"]
    if args.plataformas:
        alias = {"chatgpt": "codex"}
        plataformas = []
        for p in args.plataformas.split(","):
            p = alias.get(p.strip().lower(), p.strip().lower())
            if p not in ("claude", "codex", "gemini"):
                sys.exit(f"Plataforma desconocida: {p}. Usa claude, codex (o chatgpt) y gemini, separadas por comas.")
            if p not in plataformas:
                plataformas.append(p)
    else:
        plataformas = detectar_plataformas()
    print(f"Paquete: {paquete} (versión {version}, {manifest['fecha']})")
    print(f"Plataformas: {', '.join(plataformas)}; alcance: {args.alcance}; escritura: {args.escritura}")
    if args.alcance == "proyecto":
        print(f"Proyecto: {os.getcwd()}")
        if os.path.realpath(os.getcwd()) in (os.path.realpath(paquete), os.path.realpath(os.path.join(paquete, "..", ".."))):
            print("  AVISO: la carpeta actual es el propio paquete. Para un proyecto, entra en su carpeta y "
                  "ejecuta: python3 <ruta al clon>/instalar_skills.py --alcance proyecto")

    skills = [s for s in manifest["skills"] if s["tipo"] == "motor"]
    modulos = [s for s in manifest["skills"] if s["tipo"] == "modulo"]

    def seleccion(plataforma):
        mods = [m for m in modulos if plataforma in m["rutas"]]
        if args.escritura == "modular" and mods:
            return [s for s in skills if s["nombre"] != "escritura-humana"] + mods, ["escritura-humana"]
        if args.escritura == "modular":
            print("  La variante modular solo existe para Claude; aquí se instala el motor unificado.")
        return skills, [m["nombre"] for m in mods]

    respaldo = nueva_carpeta_respaldo()
    resumen = {"instalada": [], "actualizada": [], "sin cambios": [], "retirada": [], "ajenos": []}
    for plataforma, rutas in destinos(plataformas, args.alcance).items():
        print(f"\n[{plataforma}]")
        elegidas, sobrantes = seleccion(plataforma)
        for base in rutas["skills"]:
            if len(rutas["skills"]) > 1:
                print(f" {base}")
            for s in elegidas:
                destino = os.path.join(base, s["nombre"])
                origen = os.path.join(paquete, s["rutas"][plataforma])
                if args.estado:
                    print(f"  {s['nombre']}: {estado_carpeta(origen, destino)}; paquete {version}")
                    continue
                if args.desinstalar:
                    quitar(destino, args, respaldo, resumen)
                    continue
                instalar_carpeta(origen, destino, version, args, respaldo, resumen)
            if not args.estado:
                for nombre in sobrantes:  # evita tener a la vez el motor unificado y los módulos
                    quitar(os.path.join(base, nombre), args, respaldo, resumen)
        if plataforma == "claude":
            for c in manifest["comandos_claude"]:
                destino = os.path.join(rutas["comandos"], os.path.basename(c))
                origen = os.path.join(paquete, c)
                if args.estado:
                    print(f"  comando /{os.path.splitext(os.path.basename(c))[0]}: {estado_archivo(origen, destino)}")
                elif args.desinstalar:
                    quitar(destino, args, respaldo, resumen)
                else:
                    instalar_archivo(origen, destino, version, args, respaldo, resumen)

    if not args.estado:
        print("\nResumen" + (" (simulación, no se cambió nada)" if args.simular else "") + ":")
        for clave in ("instalada", "actualizada", "sin cambios", "retirada"):
            print(f"  {clave}: {len(resumen[clave])}")
        if respaldo["copias"]:
            print(f"  copia de lo reemplazado o retirado: {respaldo['carpeta']}")
        if args.desinstalar and resumen["ajenos"]:
            print(f"  versiones previas ajenas al paquete (rutas arriba); todos los respaldos están en {CARPETA_RESPALDOS}")
        print("Reinicia Claude Code, Codex o Gemini CLI para que carguen las skills.")
        if not args.desinstalar:
            print("claude.ai y ChatGPT web: sube a mano los archivos de skills_instalables/ y skills_chatgpt_zip/ (ver INSTALAR.md).")


if __name__ == "__main__":
    main()
