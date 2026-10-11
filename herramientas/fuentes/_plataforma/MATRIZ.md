# Matriz de auditoría y comparativa

Respaldo generado el {{FECHA}} en `{{RUTA}}`. Contiene las 16 skills originales sin alterar, siete motores consolidados y sus versiones calibradas para Claude, Gemini y ChatGPT ({{CONTEO}} archivos Markdown nuevos, además del respaldo original).

## 1. Resumen

| Antes | Después |
|---|---|
| 16 skills, cuatro jerarquías de reglas distintas, tres módulos de auditoría de prompts solapados y dependencias en círculo | 7 motores con una sola jerarquía, un dueño por función y un enrutador explícito |
| Reglas de estilo repetidas en cinco archivos con umbrales que no coincidían | Una fuente de verdad por regla (manual del motor) y anexos de consulta |
| Una plataforma (Claude) | Tres plataformas, con skills nativas en las tres y formatos adicionales (comandos, Gems, Custom GPTs, prompts autosuficientes) |
| Sin ejemplos de entrada y salida en la mayoría de las skills | Cada motor con casos típicos, casos límite, dos ejemplos completos y antipatrones |

Fase 1 (detección de Google Drive): el sistema donde se ejecutó la tarea es un contenedor Linux sin ninguna unidad de Google Drive montada; se revisaron `G:\Mi unidad`, `G:\My Drive`, `~/Google Drive`, `~/Library/CloudStorage/GoogleDrive*`, `/Volumes/GoogleDrive*` y equivalentes. Por eso el destino es la carpeta local `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/`, lista para subir a Drive (sección 10).

## 2. Herramientas originales frente a herramientas consolidadas

| # | Skill original | Tamaño | Motor de destino | Qué se conservó | Qué cambió |
|---|---|---|---|---|---|
{{TABLA_ORIGINALES}}

Resultado: de 16 skills a 7 motores.

| Motor | Nombre de arquitectura | Comando Claude Code | Modos | Skills absorbidas |
|---|---|---|---|---|
| `escritura-humana` | HUMAN-WRITER-ENGINE | `/human-write` | pulir, reescribir, redactar, ensayo, mejorar, auditar | 8 (7 completas y el modo ligero de mejorador-de-textos) |
| `motor-pedagogico` | COGNITIVE-TUTOR-ENGINE | `/tutor` | expres, socratico, largo-plazo, auditoria | 4 |
| `auditor-de-prompts` | PROMPT-AUDITOR | `/audit-prompt` | completo, compacto; destino claude, chatgpt, gemini o persona | modo profundo de mejorador-de-textos y enrutamiento de las tres auditorías |
| `preparador-de-clases` | CURRICULUM-ARCHITECT | `/lesson-plan` | DISEÑAR, REVISAR, ADAPTAR, SECUENCIA, AUDITAR PROMPT | 1 |
| `identidad-de-marca` | BRAND-IDENTITY-SYSTEM | `/brand` | proceso completo, territorio único | 1 |
| `maquetacion-pdf-documentos` | DOC-STYLIST-PDF | `/pdf-doc` | PDF, DOCX o ambos | 1 (secciones 3 a 7 reconstruidas) |
| `ejercicios-dos-pasos` | TWO-STEP-SOLVER | `/ejercicios` | único | 1 |

## 3. Diagnóstico del inventario original

### 3.1 Redundancias eliminadas

1. `escritura-humana` (autosuficiente) duplicaba casi por completo a `escritura-humana-core`, `-vocabulario` y `-conectores`, con números de patrón distintos (12 frente a 9) y umbrales distintos.
2. La lista de léxico inflado aparecía en cinco archivos (`escritura-humana`, `-core`, `-vocabulario`, `humanizer`, `escritura-de-calidad`).
3. Las reglas de la raya y del término vetado estaban escritas tres veces con matices diferentes (por ejemplo, la categoría "suspenso narrativo" solo existía en una de ellas).
4. Tres skills tenían un modo de auditoría de prompts: `mejorador-de-textos` (modo profundo), `auditor-prompts-aprendizaje` y `preparador-de-clases` (AUDITAR PROMPT). Ahora cada tipo de prompt tiene un dueño y el auditor general enruta.
5. `tutor-adaptativo` (modo exprés) y `tutor-comprension-profunda` (ritmo rápido) cubrían el mismo caso con procesos distintos.
6. El paquete `para_claude_projects/` repetía cada skill con sus anexos combinados; el respaldo lo conserva, pero los motores ya no lo necesitan.

### 3.2 Dependencias circulares resueltas

| Ciclo original | Resolución |
|---|---|
| `escritura-humana-core` remite a `-vocabulario`, `-conectores` y `-ensayos`; cada uno remite de vuelta al núcleo | Un solo manual con secciones numeradas; los anexos ya no remiten a otros módulos |
| `escritura-de-calidad` suma `-ensayos`, y `-ensayos` delega el proceso general en `escritura-de-calidad` | El proceso (fases 0 a 6) y el modo ensayo viven en el mismo manual |
| `principios-aprendizaje` declara que lo consultan `tutor-adaptativo` y `auditor-prompts-aprendizaje`; ambos lo consultan; el auditor además reescribe "usando tutor-adaptativo" | El núcleo científico es la sección 2 del motor pedagógico y los cuatro modos lo aplican |
| `tutor-comprension-profunda` deriva a `tutor-adaptativo`, que a su vez cubre el modo exprés | Un enrutador de modos al inicio del motor |

### 3.3 Contradicciones entre skills y decisión tomada

| # | Contradicción | Decisión |
|---|---|---|
| 1 | `humanizer` permitía rayas si la muestra del usuario las usaba; el resto las prohibía sin excepción | Prohibición absoluta: es regla del usuario y gana a la muestra de voz |
| 2 | `escritura-de-calidad` admitía tratamiento "vos"; la familia escritura-humana prohibía el voseo | Sin voseo por defecto; otra variante solo por pedido explícito de una tarea |
| 3 | Umbral de aperturas mecánicas: "más de dos" (core), "tres o más" (conectores), "dos o más" (escritura-de-calidad) | Dos seguidas, señal de revisión; tres o más, mecánicas por defecto |
| 4 | `escritura-humana` prohibía repetir un conector en el párrafo; `-conectores` permitía repetir los frecuentes | Los simples y frecuentes pueden repetirse; los marcadores no |
| 5 | `humanizer` pedía alternar longitudes de frase; `-core` lo prohibía como firma | El ritmo sale del contenido; frase de más de 35 palabras se parte o se justifica |
| 6 | Extensión por defecto del ensayo: 900 a 1200 (`-ensayos`) frente a 1500 (`brief-defaults`) | 900 a 1200, declarado al entregar |
| 7 | Espaciado: 1, 3, 7, 14, 30 días (`principios`) frente a día 1, día 3, semana 1, semana 3 (`tutor-comprension-profunda`) | Escala de `principios`, comprimida según los días disponibles |
| 8 | Longitud de turno del tutor: 250 palabras (original) frente a 180 (Sistema Auditado) | 250 palabras como tope y una pregunta conceptual por turno |
| 9 | "Sin negritas en el chat" frente al esquema en negrita de `ejercicios-dos-pasos` | La regla rige para prosa de comunicación; la notación técnica queda fuera |
| 10 | Prohibición del término vetado frente a la notación técnica en `maquetacion` y `ejercicios` (la skill de vocabulario también exceptuaba el voltaje de circuitos) | Por la memoria del usuario y su respuesta en esta sesión: única excepción, la fuerza de una cuerda en mecánica; en circuitos, voltaje o diferencia de potencial; en materiales, esfuerzo. Además, el término no aparece escrito en ninguna versión final |
| 11 | Descripciones en inglés (`humanizer`, `-conectores`, `-vocabulario`) en un sistema en español | Todas las descripciones en español |

### 3.4 Defectos de las skills originales

- `maquetacion-pdf-documentos` estaba truncada: termina en la sección 2.7 y cita secciones 3 a 7 (y los apartados 4.1, 4.8 y 5.5) que no existen en el paquete. Se reconstruyeron de forma compacta a partir de sus referencias internas y están marcadas como reconstrucción.
- `ejercicios-dos-pasos` no verificaba los resultados; ahora exige verificación silenciosa (con código cuando la plataforma lo permite).
- La mayoría de las skills no tenía ejemplos de entrada y salida ni lista de antipatrones.

## 4. Correcciones al documento "Sistema Auditado y Optimizado para Claude"

Se adoptó su arquitectura de macromotores y sus nombres de comando. Estas propuestas se corrigieron porque contradecían las skills originales o las reglas del usuario:

| Propuesta del documento | Problema | Decisión |
|---|---|---|
| Prohibir sin excepción "Además", "Por lo tanto", "En resumen" | Contradice la preferencia expresa del usuario por conectores lógicos explícitos | Se corrige solo el uso mecánico |
| Alternar frases de 3 a 7 y de 18 a 28 palabras | Un ritmo impuesto por norma se convierte en firma de máquina | El ritmo sale del contenido |
| Omitir la raya y el término vetado en `/human-write` | Eran las dos restricciones absolutas del usuario | Restituidas como sección 3 del motor |
| Ejemplo de salida "La clave no está en deslumbrarse... sino en medir..." | Es un contraste fabricado (patrón P1) e inventa contenido ("competidores más ágiles") | Ejemplo sustituido por uno que marca el hueco en vez de inventar |
| Fusionar `ejercicios-dos-pasos` dentro del tutor | Filosofías opuestas: el tutor retiene la respuesta; el solucionador la entrega | Motores separados con frontera explícita |
| Feynman "para un niño de 12 años" | `principios-aprendizaje` lo prohíbe porque pierde precisión | Explicación a un colega con criterio |
| Plan de clase con porcentajes 10/25/30/25/10 | Ignora las anclas calibradas (45 min, 8/28/9), el CNEB, la ficha y el checklist | Se conserva el método original completo |
| `/brand` como sistema de voz verbal | El original es identidad visual y logo | Se conserva el alcance visual; la voz verbal se resuelve con el motor de escritura |
| `/pdf-doc` con Pandoc y Typst y salto de página antes de cada encabezado | El usuario usa ReportLab y python-docx (y pdflatex para solo PDF) | Se conserva el flujo original |
| Frontmatter con `parameters:` y variables `$mode`, `$topic` | Claude Code no reconoce ese campo; los comandos reciben `$ARGUMENTS` (o `$1`, `$2`) | Frontmatter con `description` y `argument-hint`, y lectura de `$ARGUMENTS` |
| `CLAUDE.md` con la palabra "sin省略ciones" | Caracteres chinos por error | Corregido en el nuevo `CLAUDE.md` |
| `/audit-prompt` limitado a prompts pedagógicos con puntuación sobre 25 | Dejaba fuera briefs, SOPs y prompts generales del `mejorador-de-textos` | Auditor general de 10 ejes con enrutamiento; los prompts pedagógicos van al motor pedagógico |

## 5. Integración de la memoria del usuario

La memoria exportada por el usuario se integró en todas las plataformas. Cada fila indica dónde quedó aplicada.

| Regla de la memoria | Dónde se aplicó |
|---|---|
| Preguntar antes de ejecutar | Sección 1.1 del motor de escritura; comandos de Claude Code (punto 3 de la interpretación de argumentos); `CLAUDE.md`, instrucciones de Project, Gemini y GPT; cabeceras de preparador, identidad, maquetación y auditor |
| Sin emojis; sin raya | Ya vigentes; validación automática en el generador |
| Término vetado: nunca en versiones finales de skills, aunque la fuente lo use; confirmar si estaba | El término no aparece escrito en ningún archivo generado (validación automática que hace fallar el generador); se nombra como "el término vetado (sustantivo derivado de «tenso»)" y los ejemplos usan `[término vetado]`; el cuerpo original de maquetación se corrige al copiarlo; los motores confirman de forma explícita al entregar si la fuente lo traía |
| Excepción técnica solo para la fuerza de una cuerda en mecánica | Motor de escritura (3.2), ejercicios, maquetación y reglas globales; en circuitos, voltaje; en materiales, esfuerzo |
| "Ansiedad" entre las alternativas emocionales | Añadida a la tabla, con la precaución de no usarla como reemplazo automático |
| Nueve reglas contra la escritura de máquina | P1 a P9 se identifican como las nueve reglas del usuario; P10 a P12 como señales ampliadas |
| Español latinoamericano neutro; tratamiento como campo del brief | Sección 3.4; "vos" solo por pedido explícito de un texto |
| Ensayos: estructura por defecto, sin "Mini-conclusión", texto limpio en el chat, resumen solo si se pide, citas conservadas, plan antes del texto completo | Modo `ensayo` y módulo de ensayos |
| Etiquetas "Argumento 1:" sin subtítulo descriptivo | Por la respuesta del usuario en esta sesión: prosa continua por defecto; etiquetas simples solo si el encargo las pide |
| Preguntar antes de corregir datos dudosos en ensayos y textos con datos | Secciones 1.1, 9.1 y 9.3.9 del motor de escritura; módulo de ensayos (ejemplo 2) |
| No abusar de "y", "que" ni de palabras repetidas | Regla 6 bis de la fase 3, antipatrones y señal automática en `scripts/revisar_texto.py` |
| Humanizar sin empobrecer | Sección 1.1 y antipatrones del motor de escritura |
| Criterio propio, sin sicofancia | Reglas globales y principios del motor pedagógico |
| Textos ajenos: siempre texto y dudas la primera vez | Sección 9.1 del motor de escritura |
| Intensificadores vacíos (incluido "esencial") | Patrón P3; las tablas D1 a D4 del documento 2 no venían en el paquete y el recordatorio quedó en el módulo de vocabulario |
| Imágenes de 24 cm de alto por 17 cm de ancho por defecto (no documentos) | Identidad de marca: cada prompt termina con "vertical 17:24 canvas"; reglas globales |
| A4 sin deformaciones, sin espacios vacíos, aprovechando el margen | Maquetación: cabecera, QA (punto 4) y antipatrones; preparador para anexos imprimibles |
| Maquetación: convive con pdflatex; tipografía de estilo Times New Roman; colores suaves por tipo de bloque | Maquetación: 0.1 (flujo pdflatex), 2.6 (Liberation Serif, equivalente métrico de Times New Roman), paleta suave y categorías por tipo de bloque (2.4 y 2.5) |
| Temas del tutor casi siempre para exámenes en pocos días | Motor pedagógico: por defecto modo socrático con ritmo rápido, declarado en una línea |
| Skills terminadas como archivo .skill instalable | `01_ECOSISTEMA_CLAUDE/skills_instalables/` (7 motores) y `skills_instalables/modulos_separados/` (4 módulos) |
| Módulos separados (decisión previa) frente a motor unificado (encargo actual) | Por la respuesta del usuario: se entregan las dos versiones en `01_ECOSISTEMA_CLAUDE` para compararlas; no deben instalarse juntas |

No se integró: la contraseña que aparece en la memoria (dato sensible, ajeno a las skills) ni las preferencias de reels, que no corresponden a ninguna skill del paquete. La memoria menciona módulos `escritura-humana-fluidez` y `escritura-humana-deteccion` y la skill `checklist-ingreso-skills`, que no venían en el paquete.

## 6. Enriquecimiento aplicado a cada motor

Cada manual incluye: modos y enrutamiento; reglas con su excepción; casos de uso típicos; casos límite; dos ejemplos completos de entrada del usuario y salida esperada, con la explicación de por qué la salida es correcta; y antipatrones. Los ejemplos cumplen las mismas reglas que enseñan (sin datos inventados, sin raya y sin el término vetado fuera de la notación técnica).

## 7. Cambios de arquitectura por plataforma

| Plataforma | Carpeta | Formato | Calibración |
|---|---|---|---|
| Claude Code | `01_ECOSISTEMA_CLAUDE/.claude/commands/` | Slash commands con frontmatter `description` y `argument-hint`, cuerpo que lee `$ARGUMENTS`, detecta modo y ruta de archivo | Reglas operativas completas en el comando; remite a la skill para tablas y ejemplos |
| Claude Code | `01_ECOSISTEMA_CLAUDE/.claude/skills/` | Skills con `name` y `description` y carpeta `references/` | Se activan solas por su descripción; también sirven para subir como skill en claude.ai |
| Claude (claude.ai) | `01_ECOSISTEMA_CLAUDE/skills_instalables/` | Archivos `.skill` instalables, uno por motor, y cuatro módulos separados de escritura | Preferencia del usuario: las skills terminadas se entregan como `.skill` |
| Claude (comparación) | `01_ECOSISTEMA_CLAUDE/modulos_separados/` | Núcleo, vocabulario, conectores y ensayos como skills independientes | Misma regla que el motor unificado, en módulos; vocabulario y conectores en un solo archivo sin referencias |
| Claude Code | `01_ECOSISTEMA_CLAUDE/CLAUDE.md` | Directivas globales, política de terminal, formato y enrutamiento | Conciso: solo lo que debe valer en todo el proyecto |
| Claude Projects y Cowork | `01_ECOSISTEMA_CLAUDE/projects_cowork/` | `instrucciones_proyecto.md` (operativo, en XML) y `knowledge/` (manuales y anexos) | Separación de instrucciones y conocimiento estático para ahorrar ventana de contexto |
| Claude chat | `01_ECOSISTEMA_CLAUDE/chat_standalone/` | Un prompt por motor, en etiquetas XML, con ejemplos | Autosuficiente; no necesita archivos |
| Gemini | `02_ECOSISTEMA_GEMINI/skills_nativas/` | `SKILL.md` con `name` y `description` concisos, cuerpo completo y `references/` | Bloques de veracidad estricta y groundedness; ejecución de código Python y SymPy en `ejercicios-dos-pasos` y `maquetacion-pdf-documentos` |
| Gemini | `02_ECOSISTEMA_GEMINI/system_instructions/` | Instrucciones de sistema por motor y `00_sistema_unificado.md` | Para Gems y Google AI Studio; incluyen raya, término vetado y conectores explícitos |
| Gemini | `02_ECOSISTEMA_GEMINI/gemini_standalone/` | Prompt de arranque por motor, con ejemplos | Para pegar al inicio de un chat |
| ChatGPT | `03_ECOSISTEMA_CHATGPT/custom_gpts/` | `instrucciones.md` (con Action Triggers y encabezados `### Directiva`) y `configuracion.md` por GPT, más un GPT unificado | Todas las instrucciones por debajo de 8000 caracteres; tablas y ejemplos trasladados a Knowledge |
| ChatGPT | `03_ECOSISTEMA_CHATGPT/knowledge_files/` | Manual completo y anexos de cada motor, con nombres planos | Listos para la sección Knowledge (máximo 20 archivos por GPT) |
| ChatGPT y Codex | `03_ECOSISTEMA_CHATGPT/skills_chatgpt/` | Skills en formato Agent Skills: `SKILL.md`, `references/`, `scripts/` y `agents/openai.yaml`; zips listos en `skills_chatgpt_zip/` | Sección de calibración: herramienta de Python, búsqueda con citas, lienzo, generación de imágenes, notación `\( \)` y `\[ \]`, prioridad de la skill sobre la memoria |
| ChatGPT | `03_ECOSISTEMA_CHATGPT/chatgpt_standalone/` | System prompt autosuficiente por motor | Para Projects o chat, sin Knowledge |

## 8. Validación automática

- Rayas (U+2014) y semirrayas (U+2013): 0 en todos los archivos nuevos. El único ejemplo que necesitaba mostrar una raya del usuario la representa como `[raya]`.
- Emojis: 0.
- Frontmatter YAML: válido en todas las skills y comandos.
- Caracteres de las instrucciones de ChatGPT (límite 8000):

| Archivo | Caracteres |
|---|---|
{{TABLA_LIMITES}}

## 9. Guía de importación paso a paso

### 9.1 Claude Code

1. Copia `01_ECOSISTEMA_CLAUDE/.claude/` y `01_ECOSISTEMA_CLAUDE/CLAUDE.md` a la raíz del proyecto donde trabajarás. Si ya existe un `CLAUDE.md`, añade su contenido al final.
2. Para tenerlos en todos tus proyectos, copia `commands/` a `~/.claude/commands/` y `skills/` a `~/.claude/skills/`.
3. Abre Claude Code en ese proyecto y escribe `/` para ver los comandos (`/human-write`, `/tutor`, `/audit-prompt`, `/lesson-plan`, `/brand`, `/pdf-doc`, `/ejercicios`).
4. Uso: `/human-write pulir docs/informe.md` o `/tutor socratico derivadas`. Sin comando, las skills se activan solas cuando la petición coincide con su descripción.

### 9.2 Claude Projects (claude.ai)

1. Crea un Project nuevo.
2. En las instrucciones del Project pega el contenido de `projects_cowork/instrucciones_proyecto.md`.
3. En el conocimiento del Project sube los archivos de `projects_cowork/knowledge/`. Si quieres ahorrar espacio, sube solo los manuales de los motores que usarás (`motor_<nombre>.md`) y, para escritura, sus anexos.
4. Prueba con: "Usa el motor pedagógico en modo socrático para explicarme el principio de Le Chatelier".

### 9.3 Claude Cowork y skills de claude.ai

1. Usa los archivos `.skill` de `01_ECOSISTEMA_CLAUDE/skills_instalables/` (uno por motor). Para probar la versión modular de escritura, usa en su lugar los cuatro de `skills_instalables/modulos_separados/` y no subas `escritura-humana.skill`.
2. En claude.ai abre la configuración de capacidades, sección Skills, y sube cada archivo `.skill` (es un zip con la carpeta en la raíz; si tu interfaz solo acepta `.zip`, cambia la extensión). Requiere un plan con Skills habilitadas.
3. Las skills activadas en tu cuenta quedan disponibles para Cowork y para los chats; si prefieres trabajar por proyecto, usa la guía 9.2.

### 9.4 Claude chat sin Project

Abre un chat nuevo y pega como primer mensaje el bloque del archivo del motor en `chat_standalone/`.

### 9.5 Gemini: Gems (gemini.google.com)

1. Abre el gestor de Gems y crea un Gem nuevo.
2. En Instrucciones pega `system_instructions/<motor>.md` (un Gem por motor) o `system_instructions/00_sistema_unificado.md` (un solo Gem para todo).
3. Pega solo lo que está debajo de la línea PEGA DESDE AQUÍ. En Conocimiento sube `skills_nativas/<motor>/SKILL.md` y los archivos de su carpeta `references/`.
4. Guarda y prueba con uno de los casos de uso del manual.

### 9.6 Gemini: Google AI Studio

1. Crea un prompt nuevo y pega `system_instructions/<motor>.md` en "System instructions".
2. Para `ejercicios-dos-pasos` y `maquetacion-pdf-documentos`, activa la herramienta de ejecución de código.
3. Si quieres respuestas con fuentes web, activa la búsqueda de Google como herramienta de grounding.

### 9.7 Gemini CLI y chat de Gemini

1. Si tu versión de Gemini CLI admite Agent Skills, copia las carpetas de `skills_nativas/` a `~/.gemini/skills/` (o a `.gemini/skills/` dentro del proyecto). Si no las admite, pega `system_instructions/00_sistema_unificado.md` en el archivo de contexto `GEMINI.md` del proyecto.
2. En el chat de Gemini sin Gem, pega como primer mensaje el archivo del motor en `gemini_standalone/`.

### 9.8 ChatGPT: Custom GPTs

1. En chatgpt.com abre la sección GPTs, elige Crear y pasa a la pestaña Configurar.
2. Rellena nombre, descripción e iniciadores de conversación con los datos de `custom_gpts/<motor>/configuracion.md`.
3. En Instructions pega `custom_gpts/<motor>/instrucciones.md` completo.
4. En Knowledge sube los archivos que lista `configuracion.md` desde `knowledge_files/`.
5. Activa Code Interpreter en los GPT de ejercicios y maquetación; activa la generación de imágenes en el de identidad de marca si quieres probar los prompts de logo.
6. Alternativa de un solo GPT: `custom_gpts/00_gpt_unificado/` con los siete manuales en Knowledge.

### 9.9 ChatGPT y Codex: skills

1. En ChatGPT, abre la sección de Skills, elige Crear y sube cada `.zip` de `03_ECOSISTEMA_CHATGPT/skills_chatgpt_zip/`. Según la documentación pública, las skills personales están en planes Business, Enterprise y Edu; si tu plan no las tiene, usa la guía 9.8 o 9.10.
2. En Codex, copia las carpetas de `03_ECOSISTEMA_CHATGPT/skills_chatgpt/` a la carpeta de skills de tu instalación (`~/.codex/skills/`, `~/.agents/skills/` o `.agents/skills/` del repositorio) e invócalas con `$nombre` o `/skills`.
3. Detalles en `03_ECOSISTEMA_CHATGPT/skills_chatgpt/README.md`.

### 9.10 ChatGPT: Projects y chat

Crea un Project, pega `chatgpt_standalone/<motor>.md` (el bloque interior) en las instrucciones del Project y, si quieres más detalle, añade el manual del motor como archivo. En un chat suelto, pega el mismo bloque como primer mensaje.

## 10. Cómo llevar este respaldo a Google Drive

1. En drive.google.com elige Nuevo, Subir carpeta, y selecciona `Respaldo_Skills_AI`.
2. Con Google Drive para escritorio, copia `Respaldo_Skills_AI` dentro de `Mi unidad` (por ejemplo, `G:\Mi unidad\` en Windows o `~/Library/CloudStorage/GoogleDrive-<cuenta>/Mi unidad/` en macOS).
3. Si ejecutas `python3 herramientas/construir_respaldo.py` (en el repositorio) en un equipo con Drive montado, el generador detectará la ruta y escribirá directamente en `<Mi unidad>/Respaldo_Skills_AI/`.

## 11. Mantenimiento

- Generador: `herramientas/construir_respaldo.py` reconstruye todo el árbol desde `herramientas/fuentes/` (manuales, versiones compactas y piezas de plataforma) y el zip original, y repite las validaciones (rayas, emojis, límite de 8000 caracteres). Edita las fuentes y vuelve a ejecutarlo en lugar de editar las {{CONTEO}} copias a mano.
- Fuente de verdad: el manual de cada motor (`knowledge/motor_<nombre>.md`, idéntico a `skills/<nombre>/SKILL.md` sin frontmatter). Las versiones compactas de comandos, Gems y GPT se derivan de él.
- Si cambias una regla absoluta (raya, término vetado, conectores), cámbiala en el manual del motor de escritura y en los bloques de reglas globales de `CLAUDE.md`, `instrucciones_proyecto.md`, `00_sistema_unificado.md`, el GPT unificado y las constantes `REGLAS_GLOBALES`, `GEMINI_VERACIDAD` y `CHATGPT_COMUN` del generador.
- Restauración: `00_BACKUP_ORIGINAL_RAW/` conserva las 16 skills byte a byte, el paquete `para_claude_projects/`, el zip original y el documento "Sistema Auditado"; las sumas SHA-256 están en su `README.md`.

## 12. Árbol generado

```text
{{ARBOL}}
```
