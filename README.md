# Skills consolidadas para Claude, ChatGPT y Gemini

Siete skills en español, auditadas y calibradas para cada plataforma, que sustituyen a 16 skills originales:

| Skill | Comando en Claude Code | Para qué sirve |
|---|---|---|
| escritura-humana | `/human-write` | Redactar, reescribir, pulir y auditar textos en español sin rasgos de IA; incluye ensayo académico |
| motor-pedagogico | `/tutor` | Tutoría exprés, socrática y de largo plazo; auditoría de prompts de estudio |
| auditor-de-prompts | `/audit-prompt` | Auditar y reescribir prompts, briefs y SOPs |
| preparador-de-clases | `/lesson-plan` | Sesiones de clase listas para aula (CNEB Perú por defecto) |
| identidad-de-marca | `/brand` | Territorios de logo y prompts de imagen |
| maquetacion-pdf-documentos | `/pdf-doc` | Documentos técnicos en PDF y DOCX, A4 |
| ejercicios-dos-pasos | `/ejercicios` | Ejercicios resueltos en dos pasos con LaTeX |

## Instalar con un agente de IA

Pídele a tu agente (Claude Code, Codex, Gemini CLI u otro con terminal):

> Instala (o actualiza) las skills de https://github.com/leoladera11-beep/USAME-PARA-CLAUDE siguiendo su archivo INSTALAR.md.

El agente clona el repositorio y ejecuta `python3 instalar_skills.py`, que detecta tus plataformas, instala o actualiza solo lo que cambió y guarda copia de lo reemplazado. Detalles, opciones e instalación manual en claude.ai, ChatGPT web y Gemini web: [INSTALAR.md](INSTALAR.md).

## Contenido

- `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/`: el paquete completo (también respaldado en Google Drive).
  - `00_BACKUP_ORIGINAL_RAW/`: las 16 skills originales sin cambios.
  - `01_ECOSISTEMA_CLAUDE/`: skills, archivos `.skill` instalables, comandos, `CLAUDE.md`, Projects y prompts de chat; módulos separados de escritura para comparar.
  - `02_ECOSISTEMA_GEMINI/`: skills nativas, instrucciones de sistema para Gems y AI Studio, prompts de chat.
  - `03_ECOSISTEMA_CHATGPT/`: skills (formato Agent Skills, para ChatGPT y Codex), sus zips y prompts de respaldo para planes sin skills.
  - `manifest.json`, `instalar_skills.py`, `INSTALAR.md` y `MATRIZ_AUDITORIA_Y_COMPARATIVA.md` (auditoría, decisiones y guías).
- `instalar_skills.py` e `INSTALAR.md` en la raíz: el instalador y su guía.
- `herramientas/construir_respaldo.py`: regenera y valida todo el paquete desde `herramientas/fuentes/`.
