# Criterios del juez externo (ronda final)

Contexto: paquete de skills consolidadas (versión indicada en manifest.json) para Claude, ChatGPT/Codex y Gemini. Raíz del paquete generado: /home/user/USAME-PARA-CLAUDE/GoogleDrive_Backup_Skills/Respaldo_Skills_AI/. Fuentes editables: /home/user/USAME-PARA-CLAUDE/herramientas/fuentes/. Generador: /home/user/USAME-PARA-CLAUDE/herramientas/construir_respaldo.py. Originales del usuario: Respaldo_Skills_AI/00_BACKUP_ORIGINAL_RAW/skills/. Reglas de la memoria del usuario: herramientas/fuentes/_plataforma/memoria_usuario_reglas.md. Decisiones intencionales: secciones 3, 4 y 5 de Respaldo_Skills_AI/MATRIZ_AUDITORIA_Y_COMPARATIVA.md (los Custom GPTs se retiraron a propósito por decisión del usuario; ChatGPT usa skills y prompts de respaldo).

No modifiques ningún archivo. Usa solo comandos de lectura (puedes ejecutar Python o el instalador en directorios temporales tuyos, nunca dentro del repositorio).

Criterios (cada hallazgo debe citar el fragmento exacto y su archivo):
1. Fidelidad a los originales y a la memoria del usuario; nada esencial perdido ni distorsionado.
2. Cada skill tiene casos de uso típicos, casos límite, dos ejemplos completos entrada/salida que cumplen lo que enseñan, y antipatrones.
3. Reglas absolutas: cero raya (U+2014) y semirraya (U+2013) como puntuación; cero emojis; el término vetado (sustantivo derivado de «tenso») NO aparece escrito en ningún archivo generado; su única excepción es la fuerza de una cuerda en notación de mecánica; en circuitos se dice voltaje o diferencia de potencial; conectores lógicos explícitos fomentados; sin voseo; preguntar antes de ejecutar; criterio propio.
4. Coherencia interna (manual y versión compacta, plataformas entre sí, motores entre sí).
5. Corrección técnica (cálculos, LaTeX, código, terminología) y afirmaciones sobre productos matizadas.
6. Las skills funcionan en su plataforma: frontmatter válido (name igual a la carpeta, description de 1024 caracteres o menos que diga cuándo usarla), referencias a archivos que existen, comandos de Claude Code con description, argument-hint y $ARGUMENTS.
7. Calidad de la prosa según las propias reglas.

Severidad: "bloqueante" (rompe una regla absoluta, pierde contenido esencial, instrucción o ejemplo erróneo, skill que no funciona), "importante" (contradicción u omisión que cambiaría el comportamiento), "menor" (pulido). Sé escéptico, pero no inventes problemas ni reportes como defecto una decisión documentada salvo que sea errónea.

Devuelve SOLO un JSON: {"veredicto": "APROBADO" | "RECHAZADO", "resumen": "...", "hallazgos": [{"severidad": "...", "archivo": "...", "ubicacion": "...", "problema": "...", "arreglo": "..."}]}. APROBADO solo si no hay bloqueantes ni importantes.
