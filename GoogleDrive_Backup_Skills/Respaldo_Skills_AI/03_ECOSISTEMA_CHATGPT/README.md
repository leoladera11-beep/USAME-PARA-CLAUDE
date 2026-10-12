# Ecosistema ChatGPT: skills modulares

Los Custom GPTs y su límite de 8000 caracteres quedaron fuera. Las siete skills existen en ChatGPT con la misma profundidad que en Claude y Gemini, en dos formatos de un mismo contenido:

| Carpeta | Formato | Cuándo usarla |
|---|---|---|
| `skills/` | Un archivo Markdown autónomo por skill, con frontmatter (`name`, `description`, `triggers`, `compatibility`) y el manual completo, la calibración para ChatGPT, los anexos y los scripts dentro del mismo archivo. | Projects de ChatGPT: se suben como archivos del proyecto. El número de archivos por Project depende del plan; si no caben los siete, sube solo los que uses. También sirven sueltos, adjuntos en un chat. |
| `projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` | Enrutador maestro con reglas globales y criterios de invocación. | Se pega en las instrucciones del Project. |
| `prompts_activacion/disparadores_rapidos.md` | Frases y prompts listos para copiar. | Para activar una skill de forma explícita. |
| `skills_chatgpt/` y `skills_chatgpt_zip/` | Carpetas en el formato abierto Agent Skills (`SKILL.md`, `references/`, `scripts/`, `agents/openai.yaml`) y sus `.zip`. | La función Skills de ChatGPT (donde el plan la ofrece) y Codex; el instalador `instalar_skills.py` las usa. |

Los archivos de `skills/` no sustituyen a las carpetas Agent Skills: la función Skills de ChatGPT y Codex solo aceptan una carpeta con `SKILL.md`. Por eso se mantienen ambos formatos, generados desde la misma fuente.

## Montar el Project (vía recomendada)

1. En ChatGPT crea un Project, por ejemplo "Skills".
2. En las instrucciones del Project pega el contenido completo de `projects_instructions/SISTEMA_MAESTRO_CHATGPT.md`.
3. En los archivos del Project sube los siete archivos de `skills/`.
4. Prueba con una frase de `prompts_activacion/disparadores_rapidos.md`; por ejemplo, "Ayúdame a resolver estos ejercicios: ...".

Para usar una sola skill sin Project, adjunta su archivo de `skills/` al chat y escribe "Usa esta skill para: ...".

## Función Skills y Codex

- ChatGPT: en la sección de Skills elige Crear y sube cada `.zip` de `skills_chatgpt_zip/`.
- Codex: `python3 instalar_skills.py --plataformas codex` desde la raíz del repositorio, o copia las carpetas de `skills_chatgpt/` a `~/.agents/skills/` o `~/.codex/skills/`.

Detalles en `skills_chatgpt/README.md`.
