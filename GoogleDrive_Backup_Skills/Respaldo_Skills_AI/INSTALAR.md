# Instalar o actualizar las skills

Versión del paquete: 2.0.0 (2026-10-11). Repositorio: https://github.com/leoladera11-beep/USAME-PARA-CLAUDE

Siete skills en español para Claude, ChatGPT (y Codex) y Gemini: escritura humana, tutor pedagógico, auditor de prompts, preparador de clases, identidad de marca, maquetación de PDF y documentos, y ejercicios en dos pasos. La escritura humana existe en dos variantes: motor unificado (por defecto) o cuatro módulos separados.

## Si eres un agente de IA

Te pidieron instalar o actualizar estas skills. Sigue estos pasos en orden y no inventes rutas:

1. Consigue el paquete. Si tienes terminal y git: `git clone https://github.com/leoladera11-beep/USAME-PARA-CLAUDE.git` (o `git pull` si ya está clonado) y entra en la carpeta. Sin git: descarga `https://github.com/leoladera11-beep/USAME-PARA-CLAUDE/archive/refs/heads/main.zip` y descomprímelo.
2. Comprueba Python 3 (`python3 --version`).
3. Muestra al usuario qué va a pasar: `python3 instalar_skills.py --simular`. El script detecta Claude Code (`~/.claude`), Codex (`~/.codex`) y Gemini CLI (`~/.gemini`).
4. Pregunta al usuario solo lo que cambie el resultado: plataformas (si quiere otras que las detectadas), alcance (usuario o solo este proyecto) y variante de escritura (unificada o modular). Si responde "sigue", usa los valores por defecto.
5. Instala o actualiza: `python3 instalar_skills.py` con las opciones elegidas (`--plataformas claude,codex,gemini`, `--alcance proyecto`, `--escritura modular`). Volver a ejecutarlo es actualizar: solo reemplaza las skills que cambiaron y guarda copia de lo reemplazado en `~/.skills_respaldo/`.
6. Verifica con `python3 instalar_skills.py --estado` y pide al usuario que reinicie la aplicación.
7. Para claude.ai, ChatGPT web y Gemini web no hay instalación por script: indica al usuario los archivos que debe subir según la sección "Instalación manual".

Si no tienes terminal (por ejemplo, un chat web), explica al usuario la instalación manual y entrégale los enlaces a los archivos de la sección siguiente.

## Instalación automática (Claude Code, Codex, Gemini CLI)

```bash
git clone https://github.com/leoladera11-beep/USAME-PARA-CLAUDE.git
cd USAME-PARA-CLAUDE
python3 instalar_skills.py --simular   # revisar
python3 instalar_skills.py             # instalar o actualizar
python3 instalar_skills.py --estado    # comprobar
```

Opciones: `--plataformas claude,codex,gemini`, `--alcance proyecto` (instala en `./.claude`, `./.agents` y `./.gemini` del proyecto actual), `--escritura modular`, `--forzar`, `--desinstalar` (solo retira lo que instaló este paquete), `--url https://github.com/leoladera11-beep/USAME-PARA-CLAUDE --rama main` (descarga el paquete sin clonar).

| Plataforma | Dónde instala |
|---|---|
| Claude Code | `~/.claude/skills/<skill>/` y los comandos `/human-write`, `/tutor`, `/audit-prompt`, `/lesson-plan`, `/brand`, `/pdf-doc`, `/ejercicios` en `~/.claude/commands/` |
| Codex (ChatGPT) | `~/.codex/skills/<skill>/`, y también `~/.agents/skills/` si esa carpeta existe |
| Gemini CLI | `~/.gemini/skills/<skill>/` (en versiones con soporte de Agent Skills; si la tuya no lo tiene, usa `02_ECOSISTEMA_GEMINI/system_instructions/00_sistema_unificado.md` como `GEMINI.md`) |

La variante modular de escritura existe solo para Claude; en Codex y Gemini se instala el motor unificado aunque pidas la modular.

## Instalación manual

Todas las rutas son relativas a `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/` en el repositorio (o a la carpeta `Respaldo_Skills_AI` en Google Drive).

- claude.ai y Claude Cowork: en la configuración de capacidades, sección Skills, sube cada archivo de `01_ECOSISTEMA_CLAUDE/skills_instalables/*.skill` (un `.skill` es un zip con la carpeta de la skill en la raíz; si la interfaz solo acepta `.zip`, cambia la extensión). Para la variante modular, sube los cuatro de `skills_instalables/modulos_separados/` y no subas `escritura-humana.skill`.
- ChatGPT web: en la sección de Skills elige Crear y sube cada `.zip` de `03_ECOSISTEMA_CHATGPT/skills_chatgpt_zip/`. Según la documentación pública, las skills personales están en planes Business, Enterprise y Edu; si tu plan no las tiene, usa como respaldo el prompt de `03_ECOSISTEMA_CHATGPT/chatgpt_standalone/<skill>.md` en un Project.
- Gemini web (Gems): crea un Gem por skill con `02_ECOSISTEMA_GEMINI/system_instructions/<skill>.md` (pega solo lo que está debajo de "PEGA DESDE AQUÍ") y sube como archivo `02_ECOSISTEMA_GEMINI/skills_nativas/<skill>/SKILL.md`.
- Claude Projects: instrucciones de `01_ECOSISTEMA_CLAUDE/projects_cowork/instrucciones_proyecto.md` y archivos de `projects_cowork/knowledge/`.

## Actualizar

Vuelve a obtener el paquete (`git pull` o una descarga nueva) y ejecuta `python3 instalar_skills.py`. El script compara la suma SHA-256 de cada skill con la instalada (la guarda en `.instalado_respaldo_skills.json` dentro de cada skill) y solo reemplaza lo que cambió. En claude.ai y ChatGPT web, borra la skill antigua y sube el archivo nuevo. La versión y las sumas de cada skill están en `manifest.json`.

## Qué contiene cada skill

Cada skill trae su manual completo (`SKILL.md`), con modos, reglas, casos límite, dos ejemplos completos y antipatrones, más sus anexos en `references/` cuando los tiene. La auditoría completa, las decisiones y el historial de cambios están en `MATRIZ_AUDITORIA_Y_COMPARATIVA.md`.
