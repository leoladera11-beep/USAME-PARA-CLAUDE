#!/usr/bin/env python3
"""Instalador sin internet de las skills consolidadas (versión {{VERSION}}).

Para entornos que no pueden clonar repositorios ni descargar archivos: este único archivo lleva dentro,
comprimido, el paquete completo que necesita el instalador (skills de Claude, Codex y Gemini, comandos de
Claude Code, manifest e instalar_skills.py). Súbelo al entorno del agente y ejecútalo con Python 3.

Uso (acepta las mismas opciones que instalar_skills.py):
    python3 instalar_sin_internet.py --simular        # muestra qué haría, sin escribir nada
    python3 instalar_sin_internet.py                  # instala o actualiza
    python3 instalar_sin_internet.py --estado         # comprueba
    python3 instalar_sin_internet.py --plataformas codex
    python3 instalar_sin_internet.py --extraer CARPETA  # solo descomprime el paquete (instalación manual)

Solo biblioteca estándar. No usa la red.
"""
import base64
import io
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile


def main():
    args = sys.argv[1:]
    datos = base64.b64decode("".join(PAQUETE.split()))
    if args[:1] == ["--extraer"]:
        if len(args) < 2:
            print("Uso: python3 instalar_sin_internet.py --extraer CARPETA")
            return 2
        zipfile.ZipFile(io.BytesIO(datos)).extractall(args[1])
        print(f"Paquete descomprimido en {os.path.abspath(args[1])}. Instala con: "
              f"python3 {os.path.join(args[1], 'instalar_skills.py')}")
        return 0
    carpeta = tempfile.mkdtemp(prefix="skills_sin_internet_")
    try:
        zipfile.ZipFile(io.BytesIO(datos)).extractall(carpeta)
        return subprocess.call([sys.executable, "-B", os.path.join(carpeta, "instalar_skills.py"), "--origen", carpeta] + args)
    finally:
        shutil.rmtree(carpeta, ignore_errors=True)


# Paquete comprimido (zip en base64). No lo edites: se regenera con herramientas/construir_respaldo.py.
