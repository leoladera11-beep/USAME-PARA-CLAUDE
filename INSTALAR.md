# Instalar o actualizar las skills

Versión del paquete: 2.2.0 (2026-10-12). Repositorio: https://github.com/leoladera11-beep/USAME-PARA-CLAUDE

Siete skills en español para Claude, ChatGPT (y Codex) y Gemini: escritura humana, tutor pedagógico, auditor de prompts, preparador de clases, identidad de marca, maquetación de PDF y documentos, y ejercicios en dos pasos. La escritura humana existe en dos variantes: motor unificado (por defecto) o cuatro módulos separados.

## Si eres un agente de IA

Te pidieron instalar o actualizar estas skills. Sigue estos pasos en orden y no inventes rutas:

1. Consigue el paquete en una ubicación estable, para actualizar después con `git -C ~/USAME-PARA-CLAUDE pull`. Si tienes terminal y git: `git clone https://github.com/leoladera11-beep/USAME-PARA-CLAUDE.git ~/USAME-PARA-CLAUDE` (o `git -C ~/USAME-PARA-CLAUDE pull` si ya está clonado). Sin git: descarga `https://github.com/leoladera11-beep/USAME-PARA-CLAUDE/archive/refs/heads/main.zip` y descomprímelo como `~/USAME-PARA-CLAUDE`. Si tras clonar no existe `instalar_skills.py`, el paquete aún está en la rama de trabajo; cámbiate a ella sobre el mismo clon: `git -C ~/USAME-PARA-CLAUDE fetch origin claude/skills-audit-multiplatform-backup-s42slg && git -C ~/USAME-PARA-CLAUDE checkout claude/skills-audit-multiplatform-backup-s42slg` (después, `pull` funciona igual). Sin git, descarga `https://github.com/leoladera11-beep/USAME-PARA-CLAUDE/archive/refs/heads/claude/skills-audit-multiplatform-backup-s42slg.zip` y descomprímelo también como `~/USAME-PARA-CLAUDE`. La opción `--url` solo sirve cuando ya tienes `instalar_skills.py`.
2. Comprueba Python 3 (`python3 --version`).
3. Muestra al usuario qué va a pasar: `python3 ~/USAME-PARA-CLAUDE/instalar_skills.py --simular`. El script detecta Claude Code (`~/.claude`), Codex (`~/.codex`) y Gemini CLI (`~/.gemini`).
4. Pregunta al usuario solo lo que cambie el resultado: plataformas (si quiere otras que las detectadas), alcance (usuario o solo este proyecto) y variante de escritura (unificada o modular). Si responde "sigue", usa los valores por defecto.
5. Instala o actualiza: `python3 ~/USAME-PARA-CLAUDE/instalar_skills.py` con las opciones elegidas (`--plataformas claude,codex,gemini`, `--alcance proyecto`, `--escritura modular`). El alcance de proyecto instala en la carpeta actual, así que se ejecuta desde la carpeta del proyecto con la ruta al clon: `cd <proyecto> && python3 ~/USAME-PARA-CLAUDE/instalar_skills.py --alcance proyecto` (si lo ejecutas dentro del clon, instala en el clon). Volver a ejecutarlo es actualizar: solo reemplaza las skills que cambiaron y guarda copia de lo reemplazado en `~/.skills_respaldo/`.
6. Verifica con `python3 ~/USAME-PARA-CLAUDE/instalar_skills.py --estado` (con las mismas opciones; indica "al día" o "desactualizada" para cada skill y comando) y pide al usuario que reinicie la aplicación.
7. Para claude.ai, ChatGPT web y Gemini web no hay instalación por script: indica al usuario los archivos que debe subir según la sección "Instalación manual".

Si no tienes terminal (por ejemplo, un chat web), explica al usuario la instalación manual y entrégale los enlaces a los archivos de la sección siguiente.

## Instalación automática (Claude Code, Codex, Gemini CLI)

```bash
git clone https://github.com/leoladera11-beep/USAME-PARA-CLAUDE.git ~/USAME-PARA-CLAUDE
cd ~/USAME-PARA-CLAUDE
python3 instalar_skills.py --simular   # revisar
python3 instalar_skills.py             # instalar o actualizar
python3 instalar_skills.py --estado    # comprobar
```

Para un solo proyecto, ejecútalo desde la carpeta de ese proyecto (no desde el clon):

```bash
cd <proyecto>
python3 ~/USAME-PARA-CLAUDE/instalar_skills.py --alcance proyecto
```

Opciones: `--plataformas claude,codex,gemini`, `--alcance proyecto` (instala en `./.claude`, `./.agents` y `./.gemini` de la carpeta actual), `--escritura modular`, `--forzar` (reinstala aunque no haya cambios y también restaura las skills y comandos con cambios locales, que sin esta opción se conservan; lo reemplazado queda en `~/.skills_respaldo/`), `--desinstalar` (solo retira lo que instaló este paquete e indica dónde quedó respaldado lo que había antes), `--url https://github.com/leoladera11-beep/USAME-PARA-CLAUDE --rama main` (descarga el paquete sin clonar; si lo pasas, tiene prioridad sobre el paquete local; mientras `main` no tenga el paquete, usa `--rama claude/skills-audit-multiplatform-backup-s42slg`).

| Plataforma | Dónde instala |
|---|---|
| Claude Code | `~/.claude/skills/<skill>/` y los comandos `/human-write`, `/tutor`, `/audit-prompt`, `/lesson-plan`, `/brand`, `/pdf-doc`, `/ejercicios` en `~/.claude/commands/` |
| Codex (ChatGPT) | `~/.agents/skills/<skill>/` y `~/.codex/skills/<skill>/` |
| Gemini CLI | `~/.gemini/skills/<skill>/` (en versiones con soporte de Agent Skills; si la tuya no lo tiene, usa `02_ECOSISTEMA_GEMINI/system_instructions/00_sistema_unificado.md` como `GEMINI.md`) |

La variante modular de escritura existe solo para Claude; en Codex y Gemini se instala el motor unificado aunque pidas la modular. El comando `/human-write` funciona con ambas variantes.

Si en el destino ya hay una skill o un comando con el mismo nombre que no instaló este paquete (o un enlace simbólico), el script avisa, guarda una copia en `~/.skills_respaldo/` y lo reemplaza; el destino original de un enlace no se modifica.

## Instalación manual

Todas las rutas son relativas a `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/` en el repositorio (o a la carpeta `Respaldo_Skills_AI` en Google Drive).

- claude.ai y Claude Cowork: en la configuración de capacidades, sección Skills, sube cada archivo de `01_ECOSISTEMA_CLAUDE/skills_instalables/*.skill` (un `.skill` es un zip con la carpeta de la skill en la raíz; si la interfaz solo acepta `.zip`, cambia la extensión). Para la variante modular, sube los cuatro de `skills_instalables/modulos_separados/` y no subas `escritura-humana.skill`.
- ChatGPT web: en la sección de Skills elige Crear y sube cada `.zip` de `03_ECOSISTEMA_CHATGPT/skills_chatgpt_zip/`. Según la documentación pública, las skills personales están en planes Business, Enterprise y Edu; en los planes con Projects, la vía equivalente es un Project con `03_ECOSISTEMA_CHATGPT/projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` en las instrucciones y los siete archivos de `03_ECOSISTEMA_CHATGPT/skills/` subidos como archivos del proyecto (el número de archivos por Project depende del plan; si no caben, sube solo los que uses; ver `03_ECOSISTEMA_CHATGPT/README.md`).
- Gemini web (Gems): crea un Gem por skill con `02_ECOSISTEMA_GEMINI/system_instructions/<skill>.md` (pega solo lo que está debajo de "PEGA DESDE AQUÍ") y sube como archivo `02_ECOSISTEMA_GEMINI/skills_nativas/<skill>/SKILL.md` y, si existe, el contenido de su carpeta `references/`.
- Claude Projects: instrucciones de `01_ECOSISTEMA_CLAUDE/projects_cowork/instrucciones_proyecto.md` y archivos de `projects_cowork/knowledge/`.

## Actualizar

Vuelve a obtener el paquete (`git -C ~/USAME-PARA-CLAUDE pull` o una descarga nueva) y ejecuta `python3 instalar_skills.py`. El script compara la suma SHA-256 de cada skill con la instalada (la guarda en `.instalado_respaldo_skills.json` dentro de cada skill) y solo reemplaza lo que cambió. En claude.ai y ChatGPT web, borra la skill antigua y sube el archivo nuevo. La versión y las sumas de cada skill están en `manifest.json`.

## Qué contiene cada skill

Cada skill trae su manual completo (`SKILL.md`), con modos, reglas, casos límite, dos ejemplos completos y antipatrones, más sus anexos en `references/` cuando los tiene. La auditoría completa, las decisiones y el historial de cambios están en `MATRIZ_AUDITORIA_Y_COMPARATIVA.md`.
