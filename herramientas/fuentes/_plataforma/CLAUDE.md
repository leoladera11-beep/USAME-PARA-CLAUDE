# Proyecto: sistema consolidado de skills (7 motores)

Este proyecto usa siete motores que sustituyen a 16 skills originales. Cada motor tiene una skill en `.claude/skills/<motor>/` (se activa sola por su descripción) y un slash command en `.claude/commands/` (invocación explícita con `$ARGUMENTS`).

## Comandos

| Comando | Motor | Uso |
|---|---|---|
| `/human-write [modo] <texto o ruta>` | escritura-humana | pulir, reescribir, redactar, ensayo, mejorar, auditar |
| `/tutor [modo] <tema>` | motor-pedagogico | expres, socratico, largo-plazo, auditoria |
| `/audit-prompt <prompt o ruta> [destino]` | auditor-de-prompts | prompts, briefs, SOPs; destino claude, chatgpt, gemini o persona |
| `/lesson-plan [modo] <datos>` | preparador-de-clases | DISEÑAR, REVISAR, ADAPTAR, SECUENCIA, AUDITAR |
| `/brand <marca> [brief]` | identidad-de-marca | territorios visuales y prompts de logo |
| `/pdf-doc <tema o ruta> [pdf\|docx\|ambos]` | maquetacion-pdf-documentos | documentos técnicos en PDF y DOCX |
| `/ejercicios <ejercicios o ruta>` | ejercicios-dos-pasos | solución directa en dos pasos |

## Reglas globales (ganan a cualquier preferencia de estilo)

1. Veracidad: no inventes cifras, fuentes, citas, códigos curriculares ni experiencias. Marca huecos como `[DATO: ...]`, `[CITA]` o `SUPUESTO:`.
2. Sin raya (U+2014) ni semirraya como puntuación en texto propio, ni en commits, comentarios o documentación. Usa comas, paréntesis, dos puntos o punto según la función.
3. Nunca «tensión» ni «tensiones» en textos de comunicación; en notación de mecánica y circuitos la magnitud conserva su nombre técnico, y en resistencia de materiales se dice «esfuerzo».
4. Conectores lógicos explícitos cuando hay causa, consecuencia, contraste o condición. No los elimines como "marca de IA"; corrige solo el uso mecánico.
5. Sin emojis. Español latinoamericano neutro, sin voseo. Responde en el idioma del usuario.
6. Matemáticas en LaTeX: `$...$` en línea y `$$...$$` en bloque.

## Política de comandos de terminal

- Lee antes de escribir: inspecciona un archivo antes de editarlo o sobrescribirlo.
- Permitido sin preguntar: lectura (`ls`, `cat`, `grep`, `find`), `python3` para verificar cálculos o generar figuras y documentos dentro del proyecto, `pdftoppm` y `pdffonts` para QA.
- Pregunta antes de: borrar archivos, instalar paquetes, ejecutar scripts descargados, operaciones git que reescriben historia o publican (`push`, `reset --hard`, `rebase`), y cualquier acción fuera del directorio del proyecto.
- Los scripts generados son completos y ejecutables: sin `...` ni marcadores sin explicar.
- Al editar prosa en archivos (modo archivo), cambia solo la prosa: bloques de código, comandos, rutas, YAML y enlaces quedan intactos.

## Formato de respuesta

- Directo, sin preámbulos ni ofrecimientos finales.
- Prosa entregada en el chat sin negritas decorativas; tablas solo para datos paralelos.
- Rutas citadas como `ruta:línea`.
- Si un motor pide confirmación antes de una intervención profunda (nivel 3 de reescritura, plan de ensayo, plan de documento), espera la respuesta.

## Enrutamiento entre motores

- Correo, artículo, ensayo o texto de comunicación: escritura-humana.
- Prompt, brief, SOP o plantilla que alguien debe ejecutar: auditor-de-prompts.
- Prompt de tutoría o plan de estudio: motor-pedagogico, modo auditoria.
- Plantilla de planificación de clases: preparador-de-clases, modo AUDITAR.
- "Ayúdame a resolver estos ejercicios": ejercicios-dos-pasos. "Explícame cómo se resuelve": motor-pedagogico.
- Documento imprimible con ejercicios resueltos: maquetacion-pdf-documentos.
