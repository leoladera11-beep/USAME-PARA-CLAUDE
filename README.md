# USAME-PARA-CLAUDE

Respaldo, auditoría y versiones multiplataforma de 16 skills, consolidadas en 7 motores.

- `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/`: carpeta lista para subir a Google Drive.
  - `00_BACKUP_ORIGINAL_RAW/`: las 16 skills originales sin cambios, con inventario y sumas SHA-256.
  - `01_ECOSISTEMA_CLAUDE/`: slash commands, skills, `CLAUDE.md`, Projects y Cowork, prompts para chat.
  - `02_ECOSISTEMA_GEMINI/`: skills nativas, instrucciones de sistema para Gems y AI Studio, prompts para chat.
  - `03_ECOSISTEMA_CHATGPT/`: Custom GPTs (instrucciones de menos de 8000 caracteres), archivos de Knowledge, prompts para Projects y chat.
  - `MATRIZ_AUDITORIA_Y_COMPARATIVA.md`: auditoría, decisiones y guía de importación paso a paso.
- `herramientas/construir_respaldo.py`: regenera todo el árbol desde `herramientas/fuentes/` y valida el resultado.

| Motor | Comando Claude Code | Sustituye a |
|---|---|---|
| escritura-humana | `/human-write` | escritura-humana, -core, -vocabulario, -conectores, -ensayos, escritura-de-calidad, humanizer, mejorador-de-textos (modo ligero) |
| motor-pedagogico | `/tutor` | principios-aprendizaje, tutor-adaptativo, tutor-comprension-profunda, auditor-prompts-aprendizaje |
| auditor-de-prompts | `/audit-prompt` | mejorador-de-textos (modo profundo) |
| preparador-de-clases | `/lesson-plan` | preparador-de-clases |
| identidad-de-marca | `/brand` | identidad-de-marca |
| maquetacion-pdf-documentos | `/pdf-doc` | maquetacion-pdf-documentos |
| ejercicios-dos-pasos | `/ejercicios` | ejercicios-dos-pasos |
