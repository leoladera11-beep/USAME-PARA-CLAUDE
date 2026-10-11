# Skills para ChatGPT y Codex

Siete skills en el formato abierto Agent Skills, el mismo que usan ChatGPT y Codex: una carpeta por skill con `SKILL.md` (nombre y descripción en el encabezado, instrucciones en el cuerpo), `references/` con los anexos, `scripts/` cuando hay herramientas ejecutables y `agents/openai.yaml` con los datos de interfaz que lee Codex.

| Carpeta | Para qué |
|---|---|
| `escritura-humana/` | Redactar, reescribir, pulir y auditar textos en español. Incluye `scripts/revisar_texto.py`, que la herramienta de Python de ChatGPT puede ejecutar para detectar raya, término vetado, emojis y fórmulas de plantilla. |
| `motor-pedagogico/` | Tutoría exprés, socrática y de largo plazo, y auditoría de prompts de estudio. |
| `auditor-de-prompts/` | Auditoría de prompts, briefs y SOPs con 10 ejes. |
| `preparador-de-clases/` | Sesiones de clase listas para aula (CNEB Perú por defecto). |
| `identidad-de-marca/` | Territorios de logo y prompts de imagen. |
| `maquetacion-pdf-documentos/` | Documentos técnicos en PDF y DOCX con verificación por código. |
| `ejercicios-dos-pasos/` | Ejercicios resueltos en dos pasos con LaTeX. |

Diferencias frente a las skills de Claude y Gemini: cada `SKILL.md` termina con una sección "Calibración para ChatGPT" que indica cuándo usar la herramienta de Python, la búsqueda web con citas, el lienzo (canvas) y la generación de imágenes; ajusta la notación matemática a la que ChatGPT muestra bien (`\( \)` y `\[ \]`); y establece que las reglas de la skill ganan a recuerdos o instrucciones personalizadas que las contradigan.

## Instalar en ChatGPT

1. Usa los archivos ya comprimidos de `../skills_chatgpt_zip/` (un `.zip` por skill, con la carpeta en la raíz).
2. En ChatGPT abre la sección de Skills (según la versión, aparece como pestaña dentro del directorio de plugins), elige Crear y luego la opción de subir desde tu computadora.
3. Sube un `.zip` por skill. ChatGPT revisa los archivos antes de activarlos; puedes leerlos antes en esta carpeta.
4. Disponibilidad: según la documentación pública a la fecha del respaldo, las skills personales están en planes Business, Enterprise, Edu y similares (en algunos, el administrador debe activarlas). Si tu plan no las tiene, usa los Custom GPTs de `../custom_gpts/` o los prompts de `../chatgpt_standalone/`, que contienen las mismas reglas.

## Instalar en Codex (CLI, IDE o app)

1. Copia cada carpeta a la ubicación de skills que use tu versión de Codex: la carpeta de usuario (`~/.codex/skills/` o `~/.agents/skills/`) o la carpeta `.agents/skills/` dentro del repositorio.
2. Reinicia Codex. Las skills se activan solas cuando la tarea coincide con su descripción (`allow_implicit_invocation: true` en `agents/openai.yaml`), o de forma explícita con `$nombre-de-la-skill` o el comando `/skills`.

## Comprobar una skill antes de subirla

```bash
python3 escritura-humana/scripts/revisar_texto.py escritura-humana/SKILL.md
```

Las skills no contienen el término vetado (el generador lo comprueba), así que el script no debería informar ningún ABSOLUTO; los REVISAR corresponden a las listas de palabras vigiladas que la propia skill enseña.
