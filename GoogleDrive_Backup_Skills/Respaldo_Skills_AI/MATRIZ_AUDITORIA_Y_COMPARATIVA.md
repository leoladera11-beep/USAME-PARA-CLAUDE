# Matriz de auditoría y comparativa

Respaldo generado el 2026-10-12 en `GoogleDrive_Backup_Skills/Respaldo_Skills_AI`. Contiene las 16 skills originales sin alterar, siete motores consolidados y sus versiones calibradas para Claude, Gemini y ChatGPT (110 archivos Markdown nuevos, además del respaldo original).

## 1. Resumen

| Antes | Después |
|---|---|
| 16 skills, cuatro jerarquías de reglas distintas, tres módulos de auditoría de prompts solapados y dependencias en círculo | 7 motores con una sola jerarquía, un dueño por función y un enrutador explícito |
| Reglas de estilo repetidas en cinco archivos con umbrales que no coincidían | Una fuente de verdad por regla (manual del motor) y anexos de consulta |
| Una plataforma (Claude) | Tres plataformas, con skills nativas en las tres y formatos adicionales (comandos de Claude Code, Gems, prompts autosuficientes); instalador automático para Claude Code, Codex y Gemini CLI |
| Sin ejemplos de entrada y salida en la mayoría de las skills | Cada motor con casos típicos, casos límite, dos ejemplos completos y antipatrones |

Fase 1 (detección de Google Drive): el sistema donde se ejecutó la tarea es un contenedor Linux sin ninguna unidad de Google Drive montada; se revisaron `G:\Mi unidad`, `G:\My Drive`, `~/Google Drive`, `~/Library/CloudStorage/GoogleDrive*`, `/Volumes/GoogleDrive*` y equivalentes. Por eso el destino es la carpeta local `GoogleDrive_Backup_Skills/Respaldo_Skills_AI/`, lista para subir a Drive (sección 10).

## 2. Herramientas originales frente a herramientas consolidadas

| # | Skill original | Tamaño | Motor de destino | Qué se conservó | Qué cambió |
|---|---|---|---|---|---|
| 1 | `humanizer` | 31.7 KB | `escritura-humana` | Los 26 patrones, en anexo traducido con su equivalencia | Raya prohibida aunque la muestra la use; integrado en el catálogo P1 a P12 |
| 2 | `ejercicios-dos-pasos` | 2.4 KB | `ejercicios-dos-pasos` | Disparador exclusivo, dos pasos, LaTeX, esquema visual | Verificación silenciosa, convenciones técnicas, casos límite, ejemplos |
| 3 | `tutor-comprension-profunda` | 8.6 KB | `motor-pedagogico` | Mapa del tema, enseñanza por bloques, controles, cierre | Modo socratico; espaciado unificado; ciclo de dos pasos |
| 4 | `identidad-de-marca` | 7.8 KB | `identidad-de-marca` | Método completo de territorios y prompts de imagen | Casos, ejemplos y antipatrones; se descarta la versión verbal del Sistema Auditado |
| 5 | `maquetacion-pdf-documentos` | 19.1 KB | `maquetacion-pdf-documentos` | Secciones 0 a 2 íntegras | Secciones 3 a 7 reconstruidas; ejemplos; calibración Gemini con ejecución de código |
| 6 | `tutor-adaptativo` | 4.0 KB | `motor-pedagogico` | Entrevista, arquitectura, bloques, sesiones | Modos expres y largo-plazo |
| 7 | `principios-aprendizaje` | 6.2 KB | `motor-pedagogico` | Todo el núcleo científico | Sección 2 del motor, fuente única; deja de ser dependencia circular |
| 8 | `escritura-humana-core` | 36.5 KB | `escritura-humana` | Regla cero, fases, 9 patrones, validación de fidelidad | Jerarquía única; patrones renumerados P1 a P12 |
| 9 | `escritura-humana` | 60.0 KB | `escritura-humana` | 12 patrones, conectores, sobrecorrecciones, rúbrica | Base del manual; se elimina la duplicación con core |
| 10 | `preparador-de-clases` | 20.2 KB | `preparador-de-clases` | Método completo (secciones 1 a 10) | Casos, ejemplos y antipatrones |
| 11 | `mejorador-de-textos` | 12.2 KB | `escritura-humana y auditor-de-prompts` | Modos ligeros y auditoría de 10 ejes | Dividido por función: comunicación al motor de escritura, instrucciones al auditor |
| 12 | `auditor-prompts-aprendizaje` | 4.3 KB | `motor-pedagogico` | Checklist obligatoria y condicional | Modo auditoria |
| 13 | `escritura-de-calidad` | 18.5 KB | `escritura-humana` | Triaje, brief, tesis, arquitectura, niveles de intervención | Fases 0 a 6 y modos redactar y reescribir; sin voseo |
| 14 | `escritura-humana-conectores` | 21.6 KB | `escritura-humana` | Criterios, distinciones semánticas, régimen, 22 categorías | Sección 4 y anexo; umbrales unificados |
| 15 | `escritura-humana-ensayos` | 19.2 KB | `escritura-humana` | Ficha de consigna, estructura, fuentes, negrita adaptativa | Modo ensayo; extensión por defecto unificada |
| 16 | `escritura-humana-vocabulario` | 11.6 KB | `escritura-humana` | Léxico vetado, término vetado, raya, casos de prueba | Sección 3; añade la categoría de suspenso narrativo |

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
| Preguntar antes de ejecutar | Sección 1.1 del motor de escritura; comandos de Claude Code (punto 3 de la interpretación de argumentos); `CLAUDE.md`, instrucciones de Project, Gemini, skills de ChatGPT y prompts de respaldo de ChatGPT; cabeceras de preparador, identidad, maquetación y auditor |
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
| Skills en lugar de Custom GPTs (decisión del usuario en esta sesión) | Se retiraron `custom_gpts/` y `knowledge_files/`; ChatGPT queda con skills modulares: archivos autónomos para Projects (`skills/`), enrutador maestro y carpetas Agent Skills (`skills_chatgpt/` y zips); sin límite de 8000 caracteres |
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
| ChatGPT y Codex | `03_ECOSISTEMA_CHATGPT/skills_chatgpt/` | Skills en formato Agent Skills: `SKILL.md`, `references/`, `scripts/` y `agents/openai.yaml`; zips listos en `skills_chatgpt_zip/` | Sección de calibración: herramienta de Python, búsqueda con citas, lienzo, generación de imágenes, notación `\( \)` y `\[ \]`, prioridad de la skill sobre la memoria |
| ChatGPT (Projects) | `03_ECOSISTEMA_CHATGPT/skills/` | Un archivo Markdown autónomo por skill: frontmatter con `name`, `description`, `triggers` y `compatibility`; manual completo, calibración, anexos y scripts dentro del mismo archivo | Paridad con Claude y Gemini sin el límite de 8000 caracteres: las skills van como archivos del Project, no en un formulario |
| ChatGPT (Projects) | `03_ECOSISTEMA_CHATGPT/projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` | Enrutador maestro, reglas globales y criterios de invocación | Se pega en las instrucciones del Project |
| ChatGPT | `03_ECOSISTEMA_CHATGPT/prompts_activacion/disparadores_rapidos.md` | Frases de activación y prompts listos por skill | Invocación explícita |
| Todas | `manifest.json`, `instalar_skills.py`, `instalar_sin_internet.py`, `INSTALAR.md` | Versión, rutas y sumas SHA-256 de cada skill; instalador; guía para personas y agentes | Instalar o actualizar con solo el enlace del repositorio |

## 8. Validación automática

- Rayas (U+2014) y semirrayas (U+2013): 0 en todos los archivos nuevos. El único ejemplo que necesitaba mostrar una raya del usuario la representa como `[raya]`.
- Emojis: 0.
- Frontmatter YAML: válido en todas las skills y comandos.
- El término vetado no aparece escrito en ningún archivo generado; el generador falla si aparece.
- El instalador se probó en una carpeta personal temporal: instalación, estado, reejecución sin cambios, actualización con respaldo, cambio a la variante modular, alcance de proyecto y desinstalación.
- El pipeline `herramientas/verificar_calidad.py` repite todo lo anterior de forma independiente, añade léxico inflado, etiquetas XML, casos límite, integridad de paquetes y una prueba del instalador, y escribe `QA_VERIFICACION_TECNICA.md` con el resultado numérico.
- Tamaño de las skills autónomas de ChatGPT y del sistema maestro (informativo; ya no rige el límite de 8000 porque las skills van como archivos del Project):

| Archivo | Caracteres |
|---|---|
| `projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` | 6281 |
| `skills/auditor_prompts.md` | 21016 |
| `skills/ejercicios_dos_pasos.md` | 8681 |
| `skills/escritura_humana_master.md` | 142928 |
| `skills/identidad_marca.md` | 19595 |
| `skills/maquetacion_documentos.md` | 36957 |
| `skills/preparador_clases.md` | 38448 |
| `skills/tutor_aprendizaje_integral.md` | 30457 |

### 8.1 Paridad funcional entre plataformas

| Motor | Claude | Gemini | ChatGPT |
|---|---|---|---|
| Manual completo (casos límite, dos ejemplos, antipatrones) | Skill y Project | Skill nativa y Gem (archivo) | Skill autónoma de Projects y skill Agent Skills |
| Anexos (`references/`) | Skill y Project | Skill nativa | Dentro del archivo autónomo y en la skill Agent Skills |
| Scripts (`revisar_texto.py`) | Skill | Skill nativa | Dentro del archivo autónomo y en la skill Agent Skills |
| Invocación explícita | Slash commands | Gem por motor | `disparadores_rapidos.md` y `$nombre` en Codex |
| Enrutador global | `CLAUDE.md`, `instrucciones_proyecto.md` | `00_sistema_unificado.md` | `SISTEMA_MAESTRO_CHATGPT.md` |
| Recálculo por código | Python en Claude Code | Ejecución de código (Python y SymPy) | Herramienta de Python |
| Instalación por script | Claude Code | Gemini CLI | Codex |

## 9. Guía de importación paso a paso

### 9.0 Instalación automática con un agente de IA

La vía recomendada para Claude Code, Codex y Gemini CLI: pedirle al agente "Instala (o actualiza) las skills de https://github.com/leoladera11-beep/USAME-PARA-CLAUDE siguiendo su archivo INSTALAR.md". El agente clona el repositorio y ejecuta `python3 instalar_skills.py` (primero con `--simular`). Las guías siguientes cubren las plataformas web, donde la instalación es manual.

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

### 9.8 ChatGPT: Project con skills modulares (vía recomendada)

1. Crea un Project en ChatGPT.
2. Pega `03_ECOSISTEMA_CHATGPT/projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` en las instrucciones del Project.
3. Sube como archivos del Project los siete archivos de `03_ECOSISTEMA_CHATGPT/skills/`.
4. Activa cada skill con sus frases o con los prompts de `prompts_activacion/disparadores_rapidos.md`.

### 9.9 ChatGPT (función Skills) y Codex

1. En ChatGPT, abre la sección de Skills, elige Crear y sube cada `.zip` de `03_ECOSISTEMA_CHATGPT/skills_chatgpt_zip/`. Según la documentación pública, las skills personales están en planes Business, Enterprise y Edu; en otros planes usa la guía 9.8.
2. En Codex, copia las carpetas de `03_ECOSISTEMA_CHATGPT/skills_chatgpt/` a la carpeta de skills de tu instalación (`~/.codex/skills/`, `~/.agents/skills/` o `.agents/skills/` del repositorio) e invócalas con `$nombre` o `/skills`.
3. Detalles en `03_ECOSISTEMA_CHATGPT/skills_chatgpt/README.md`.

Para usar una sola skill sin Project, adjunta su archivo de `skills/` al chat y escribe "Usa esta skill para: ...".

## 10. Cómo llevar este respaldo a Google Drive

1. En drive.google.com elige Nuevo, Subir carpeta, y selecciona `Respaldo_Skills_AI`.
2. Con Google Drive para escritorio, copia `Respaldo_Skills_AI` dentro de `Mi unidad` (por ejemplo, `G:\Mi unidad\` en Windows o `~/Library/CloudStorage/GoogleDrive-<cuenta>/Mi unidad/` en macOS).
3. Si ejecutas `python3 herramientas/construir_respaldo.py` (en el repositorio) en un equipo con Drive montado, el generador detectará la ruta y escribirá directamente en `<Mi unidad>/Respaldo_Skills_AI/`.

## 11. Mantenimiento

- Generador: `herramientas/construir_respaldo.py` reconstruye todo el árbol desde `herramientas/fuentes/` (manuales, versiones compactas y piezas de plataforma) y el zip original, y repite las validaciones (rayas, emojis, término vetado, frontmatter); después se ejecuta `python3 herramientas/verificar_calidad.py`, que escribe `QA_VERIFICACION_TECNICA.md`. También regenera `manifest.json`, el instalador y `INSTALAR.md`. Edita las fuentes y vuelve a ejecutarlo en lugar de editar las copias a mano.
- Fuente de verdad: el manual de cada motor (`knowledge/motor_<nombre>.md`, idéntico a `skills/<nombre>/SKILL.md` sin frontmatter). Las versiones compactas de comandos y Gems, y las skills autónomas de ChatGPT, se derivan de él.
- Si cambias una regla absoluta (raya, término vetado, conectores), cámbiala en el manual del motor de escritura y en los bloques de reglas globales de `CLAUDE.md`, `instrucciones_proyecto.md`, `00_sistema_unificado.md` y las constantes `REGLAS_GLOBALES`, `GEMINI_VERACIDAD` y `CHATGPT_COMUN` del generador.
- Restauración: `00_BACKUP_ORIGINAL_RAW/` conserva las 16 skills byte a byte, el paquete `para_claude_projects/`, el zip original y el documento "Sistema Auditado"; las sumas SHA-256 están en su `README.md`.

## 12. Versión e historial de cambios

Versión actual: 2.3.0. Para publicar una versión nueva, cambia `VERSION` en el generador, regenera y sube los cambios; el instalador detecta por suma SHA-256 qué skills cambiaron.

| Versión | Cambios |
|---|---|
| 1.0.0 | Consolidación de 16 skills en 7 motores; respaldo original; versiones para Claude, Gemini y ChatGPT; matriz de auditoría. |
| 1.1.0 | Skills para ChatGPT y Codex en formato Agent Skills; zips para claude.ai y ChatGPT; script `revisar_texto.py`. |
| 2.0.0 | Memoria del usuario integrada (sección 5); el término vetado desaparece de todas las versiones finales; excepción técnica solo para la fuerza de una cuerda; módulos separados de escritura para comparar; archivos `.skill` instalables; correcciones de dos rondas de jueces externos; se retiran los Custom GPTs por decisión del usuario (que indica que OpenAI prevé retirarlos) y quedan skills en las tres plataformas; instalador `instalar_skills.py`, `manifest.json` e `INSTALAR.md` para instalar o actualizar con solo el enlace. |
| 2.1.0 | Ronda final de seis jueces externos: módulo de conectores activo con todo texto para otro lector; ejemplos de cierre de argumento recuperados; revisión final de conectores (4.6); detector de emojis ampliado y rangos numéricos en `revisar_texto.py`; ejemplos corregidos en auditor, identidad, tutor, preparador y maquetación; QA de maquetación sin tolerancia de espacios vacíos; comandos que encuentran el manual en `~/.claude/skills/`; instalador con respaldos sin colisiones, estado por suma SHA-256, enlaces simbólicos y carpeta `~/.agents/skills` de Codex. |
| 2.2.0 | ChatGPT pasa a skills modulares: `skills/` con archivos autónomos (frontmatter con `triggers` y `compatibility`, anexos y scripts incluidos), `projects_instructions/SISTEMA_MAESTRO_CHATGPT.md` y `prompts_activacion/disparadores_rapidos.md`; se retiran los prompts de respaldo y el límite de 8000 caracteres. Pipeline determinista `herramientas/verificar_calidad.py` y reporte `QA_VERIFICACION_TECNICA.md`. Tercera ronda de jueces aplicada (plan B del preparador, salvedad del solucionador en Gemini, mensajes del instalador). |
| 2.3.0 | Instalador sin internet `instalar_sin_internet.py`: un solo archivo con el paquete comprimido dentro, para agentes cuyo entorno no puede clonar ni descargar; sección "Sin internet" en `INSTALAR.md`; se retiran las indicaciones de la rama de trabajo porque el paquete ya está en `main`. |

## 13. Árbol generado

```text
Respaldo_Skills_AI/
├── 00_BACKUP_ORIGINAL_RAW/
│   ├── para_claude_projects/
│   │   └── (16 archivos)
│   ├── skills/
│   │   └── (25 archivos)
│   ├── README.md
│   ├── README_paquete_original.md
│   ├── Sistema_Auditado_y_Optimizado_para_Claude.md
│   └── mis_skills_claude.zip
├── 01_ECOSISTEMA_CLAUDE/
│   ├── .claude/
│   │   ├── commands/
│   │   │   └── (7 archivos)
│   │   └── skills/
│   │       └── (15 archivos)
│   ├── chat_standalone/
│   │   ├── auditor-de-prompts.md
│   │   ├── ejercicios-dos-pasos.md
│   │   ├── escritura-humana.md
│   │   ├── identidad-de-marca.md
│   │   ├── maquetacion-pdf-documentos.md
│   │   ├── motor-pedagogico.md
│   │   └── preparador-de-clases.md
│   ├── modulos_separados/
│   │   ├── escritura-humana-conectores/
│   │   │   └── (1 archivo)
│   │   ├── escritura-humana-core/
│   │   │   └── (6 archivos)
│   │   ├── escritura-humana-ensayos/
│   │   │   └── (2 archivos)
│   │   ├── escritura-humana-vocabulario/
│   │   │   └── (1 archivo)
│   │   └── README.md
│   ├── projects_cowork/
│   │   ├── knowledge/
│   │   │   └── (14 archivos)
│   │   └── instrucciones_proyecto.md
│   ├── skills_instalables/
│   │   ├── modulos_separados/
│   │   │   └── (4 archivos)
│   │   ├── auditor-de-prompts.skill
│   │   ├── ejercicios-dos-pasos.skill
│   │   ├── escritura-humana.skill
│   │   ├── identidad-de-marca.skill
│   │   ├── maquetacion-pdf-documentos.skill
│   │   ├── motor-pedagogico.skill
│   │   └── preparador-de-clases.skill
│   └── CLAUDE.md
├── 02_ECOSISTEMA_GEMINI/
│   ├── gemini_standalone/
│   │   ├── auditor-de-prompts.md
│   │   ├── ejercicios-dos-pasos.md
│   │   ├── escritura-humana.md
│   │   ├── identidad-de-marca.md
│   │   ├── maquetacion-pdf-documentos.md
│   │   ├── motor-pedagogico.md
│   │   └── preparador-de-clases.md
│   ├── skills_nativas/
│   │   ├── auditor-de-prompts/
│   │   │   └── (1 archivo)
│   │   ├── ejercicios-dos-pasos/
│   │   │   └── (1 archivo)
│   │   ├── escritura-humana/
│   │   │   └── (9 archivos)
│   │   ├── identidad-de-marca/
│   │   │   └── (1 archivo)
│   │   ├── maquetacion-pdf-documentos/
│   │   │   └── (1 archivo)
│   │   ├── motor-pedagogico/
│   │   │   └── (1 archivo)
│   │   └── preparador-de-clases/
│   │       └── (1 archivo)
│   └── system_instructions/
│       ├── 00_sistema_unificado.md
│       ├── auditor-de-prompts.md
│       ├── ejercicios-dos-pasos.md
│       ├── escritura-humana.md
│       ├── identidad-de-marca.md
│       ├── maquetacion-pdf-documentos.md
│       ├── motor-pedagogico.md
│       └── preparador-de-clases.md
├── 03_ECOSISTEMA_CHATGPT/
│   ├── projects_instructions/
│   │   └── SISTEMA_MAESTRO_CHATGPT.md
│   ├── prompts_activacion/
│   │   └── disparadores_rapidos.md
│   ├── skills/
│   │   ├── auditor_prompts.md
│   │   ├── ejercicios_dos_pasos.md
│   │   ├── escritura_humana_master.md
│   │   ├── identidad_marca.md
│   │   ├── maquetacion_documentos.md
│   │   ├── preparador_clases.md
│   │   └── tutor_aprendizaje_integral.md
│   ├── skills_chatgpt/
│   │   ├── auditor-de-prompts/
│   │   │   └── (2 archivos)
│   │   ├── ejercicios-dos-pasos/
│   │   │   └── (2 archivos)
│   │   ├── escritura-humana/
│   │   │   └── (10 archivos)
│   │   ├── identidad-de-marca/
│   │   │   └── (2 archivos)
│   │   ├── maquetacion-pdf-documentos/
│   │   │   └── (2 archivos)
│   │   ├── motor-pedagogico/
│   │   │   └── (2 archivos)
│   │   ├── preparador-de-clases/
│   │   │   └── (2 archivos)
│   │   └── README.md
│   ├── skills_chatgpt_zip/
│   │   ├── auditor-de-prompts.zip
│   │   ├── ejercicios-dos-pasos.zip
│   │   ├── escritura-humana.zip
│   │   ├── identidad-de-marca.zip
│   │   ├── maquetacion-pdf-documentos.zip
│   │   ├── motor-pedagogico.zip
│   │   └── preparador-de-clases.zip
│   └── README.md
├── INSTALAR.md
├── MATRIZ_AUDITORIA_Y_COMPARATIVA.md
├── QA_VERIFICACION_TECNICA.md
├── instalar_sin_internet.py
├── instalar_skills.py
└── manifest.json
```
