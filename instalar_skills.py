#!/usr/bin/env python3
"""Instala o actualiza las skills consolidadas en Claude Code, Codex (ChatGPT) y Gemini CLI.

Uso típico (desde la raíz del repositorio o desde la carpeta Respaldo_Skills_AI):
    python3 instalar_skills.py                      # detecta plataformas e instala o actualiza
    python3 instalar_skills.py --simular            # muestra qué haría, sin tocar nada
    python3 instalar_skills.py --plataformas claude,codex,gemini
    python3 instalar_skills.py --alcance proyecto   # en ./.claude, ./.agents y ./.gemini del proyecto actual
    python3 instalar_skills.py --escritura modular  # módulos separados en lugar del motor unificado
    python3 instalar_skills.py --estado             # versión instalada frente a la del paquete
    python3 instalar_skills.py --desinstalar
    python3 instalar_skills.py --url https://github.com/USUARIO/REPO --rama main   # descarga el paquete

Qué instala:
    claude  skills en ~/.claude/skills/<nombre>/ y comandos en ~/.claude/commands/<comando>.md
    codex   skills en ~/.codex/skills/<nombre>/ (y en ~/.agents/skills/ si esa carpeta existe)
    gemini  skills en ~/.gemini/skills/<nombre>/
Con --alcance proyecto: ./.claude/skills, ./.claude/commands, ./.agents/skills y ./.gemini/skills.

Actualizar es volver a ejecutarlo: compara la suma SHA-256 de cada skill con la instalada,
reemplaza solo lo que cambió y guarda una copia de lo reemplazado en ~/.skills_respaldo/<fecha>/.
Las skills de claude.ai y de ChatGPT web no se instalan por script: se suben los archivos .skill o
.zip a mano (ver INSTALAR.md). Solo usa la biblioteca estándar de Python 3.
"""
import argparse
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


def leer_marca(destino):
    p = os.path.join(destino, MARCA) if os.path.isdir(destino) else destino + MARCA
    try:
        with open(p, encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return None


def destinos(plataformas, alcance):
    base = os.getcwd() if alcance == "proyecto" else os.path.expanduser("~")
    out = {}
    if "claude" in plataformas:
        out["claude"] = {"skills": [os.path.join(base, ".claude", "skills")],
                         "comandos": os.path.join(base, ".claude", "commands")}
    if "codex" in plataformas:
        rutas = [os.path.join(base, ".agents", "skills")] if alcance == "proyecto" else [os.path.join(base, ".codex", "skills")]
        if alcance != "proyecto" and os.path.isdir(os.path.join(base, ".agents")):
            rutas.append(os.path.join(base, ".agents", "skills"))
        out["codex"] = {"skills": rutas}
    if "gemini" in plataformas:
        out["gemini"] = {"skills": [os.path.join(base, ".gemini", "skills")]}
    return out


def detectar_plataformas():
    home = os.path.expanduser("~")
    encontradas = [p for p, d in (("claude", ".claude"), ("codex", ".codex"), ("gemini", ".gemini"))
                   if os.path.isdir(os.path.join(home, d))]
    return encontradas or ["claude"]


def respaldar(ruta, carpeta_respaldo, simular):
    if not os.path.exists(ruta):
        return
    destino = os.path.join(carpeta_respaldo, ruta.lstrip(os.sep).replace(os.sep, "__"))
    if simular:
        print(f"    respaldo (simulado): {ruta}")
        return
    os.makedirs(carpeta_respaldo, exist_ok=True)
    if os.path.isdir(ruta):
        shutil.copytree(ruta, destino)
    else:
        shutil.copy2(ruta, destino)


def instalar_carpeta(origen, destino, version, args, respaldo, resumen):
    nueva = suma_carpeta(origen)
    marca = leer_marca(destino)
    if os.path.isdir(destino) and marca and marca.get("sha256") == nueva and not args.forzar:
        resumen["sin cambios"].append(destino)
        return
    accion = "actualizada" if os.path.isdir(destino) else "instalada"
    if os.path.isdir(destino) and not marca and not args.forzar:
        print(f"  AVISO: {destino} existe y no fue instalada por este paquete; se respalda y se reemplaza.")
    print(f"  {accion}: {destino}")
    if not args.simular:
        respaldar(destino, respaldo, False)
        if os.path.isdir(destino):
            shutil.rmtree(destino)
        shutil.copytree(origen, destino)
        with open(os.path.join(destino, MARCA), "w", encoding="utf-8") as f:
            json.dump({"version": version, "sha256": nueva, "fecha": datetime.date.today().isoformat()}, f)
    resumen[accion].append(destino)


def instalar_archivo(origen, destino, version, args, respaldo, resumen):
    nueva = suma_archivo(origen)
    marca = leer_marca(destino)
    if os.path.isfile(destino) and marca and marca.get("sha256") == nueva and not args.forzar:
        resumen["sin cambios"].append(destino)
        return
    accion = "actualizada" if os.path.isfile(destino) else "instalada"
    print(f"  {accion}: {destino}")
    if not args.simular:
        respaldar(destino, respaldo, False)
        os.makedirs(os.path.dirname(destino), exist_ok=True)
        shutil.copy2(origen, destino)
        with open(destino + MARCA, "w", encoding="utf-8") as f:
            json.dump({"version": version, "sha256": nueva}, f)
    resumen[accion].append(destino)


def quitar(ruta, args, respaldo, resumen):
    es_carpeta = os.path.isdir(ruta)
    if not (es_carpeta or os.path.isfile(ruta)):
        return
    if not leer_marca(ruta):
        print(f"  se conserva (no la instaló este paquete): {ruta}")
        return
    print(f"  retirada: {ruta}")
    if not args.simular:
        respaldar(ruta, respaldo, False)
        if es_carpeta:
            shutil.rmtree(ruta)
        else:
            os.remove(ruta)
            if os.path.exists(ruta + MARCA):
                os.remove(ruta + MARCA)
    resumen["retirada"].append(ruta)


def main():
    ap = argparse.ArgumentParser(description="Instala o actualiza las skills consolidadas.")
    ap.add_argument("--plataformas", help="claude,codex,gemini (por defecto, las detectadas en tu carpeta personal)")
    ap.add_argument("--alcance", choices=["usuario", "proyecto"], default="usuario")
    ap.add_argument("--escritura", choices=["unificada", "modular"], default="unificada",
                    help="motor unificado escritura-humana o los cuatro módulos separados")
    ap.add_argument("--origen", help="carpeta Respaldo_Skills_AI local")
    ap.add_argument("--url", help="URL del repositorio de GitHub para descargar el paquete")
    ap.add_argument("--rama", default="main")
    ap.add_argument("--simular", action="store_true")
    ap.add_argument("--forzar", action="store_true", help="reinstala aunque no haya cambios")
    ap.add_argument("--estado", action="store_true")
    ap.add_argument("--desinstalar", action="store_true")
    args = ap.parse_args()

    paquete = buscar_paquete(args.origen)
    if not paquete:
        if not args.url:
            sys.exit("No encuentro Respaldo_Skills_AI/manifest.json. Usa --origen <carpeta> o --url <repositorio>.")
        paquete = descargar_paquete(args.url, args.rama)
    with open(os.path.join(paquete, "manifest.json"), encoding="utf-8") as f:
        manifest = json.load(f)
    version = manifest["version"]
    plataformas = [p.strip() for p in args.plataformas.split(",")] if args.plataformas else detectar_plataformas()
    print(f"Paquete: {paquete} (versión {version}, {manifest['fecha']})")
    print(f"Plataformas: {', '.join(plataformas)}; alcance: {args.alcance}; escritura: {args.escritura}")

    skills = [s for s in manifest["skills"] if s["tipo"] == "motor"]
    modulos = [s for s in manifest["skills"] if s["tipo"] == "modulo"]

    def seleccion(plataforma):
        mods = [m for m in modulos if plataforma in m["rutas"]]
        if args.escritura == "modular" and mods:
            return [s for s in skills if s["nombre"] != "escritura-humana"] + mods, ["escritura-humana"]
        if args.escritura == "modular":
            print("  La variante modular solo existe para Claude; aquí se instala el motor unificado.")
        return skills, [m["nombre"] for m in mods]

    respaldo = os.path.join(os.path.expanduser("~"), ".skills_respaldo",
                            datetime.datetime.now().strftime("%Y%m%d-%H%M%S"))
    resumen = {"instalada": [], "actualizada": [], "sin cambios": [], "retirada": []}
    for plataforma, rutas in destinos(plataformas, args.alcance).items():
        print(f"\n[{plataforma}]")
        elegidas, sobrantes = seleccion(plataforma)
        for base in rutas["skills"]:
            for s in elegidas:
                destino = os.path.join(base, s["nombre"])
                if args.estado:
                    marca = leer_marca(destino)
                    print(f"  {s['nombre']}: instalada {marca['version'] if marca else 'no'}; paquete {version}")
                    continue
                if args.desinstalar:
                    quitar(destino, args, respaldo, resumen)
                    continue
                instalar_carpeta(os.path.join(paquete, s["rutas"][plataforma]), destino, version, args, respaldo, resumen)
            if not args.estado:
                for nombre in sobrantes:  # evita tener a la vez el motor unificado y los módulos
                    quitar(os.path.join(base, nombre), args, respaldo, resumen)
        if plataforma == "claude" and not args.estado:
            for c in manifest["comandos_claude"]:
                destino = os.path.join(rutas["comandos"], os.path.basename(c))
                if args.desinstalar:
                    quitar(destino, args, respaldo, resumen)
                else:
                    instalar_archivo(os.path.join(paquete, c), destino, version, args, respaldo, resumen)

    if not args.estado:
        print("\nResumen" + (" (simulación, no se cambió nada)" if args.simular else "") + ":")
        for clave, lista in resumen.items():
            print(f"  {clave}: {len(lista)}")
        if not args.simular and any(resumen[k] for k in ("actualizada", "retirada")):
            print(f"  copia de lo reemplazado: {respaldo}")
        print("Reinicia Claude Code, Codex o Gemini CLI para que carguen las skills.")
        print("claude.ai y ChatGPT web: sube a mano los archivos de skills_instalables/ y skills_chatgpt_zip/ (ver INSTALAR.md).")


if __name__ == "__main__":
    main()
