---
name: preparador-de-clases
description: >-
  Diseña, revisa, adapta y secuencia sesiones y programaciones de aprendizaje
  listas para aplicar en aula, en inicial, primaria, secundaria, superior y
  técnico, para cualquier área y marco curricular (CNEB Perú por defecto),
  incluyendo fichas de aprendizaje, unidades y actividades significativas.
  Úsala siempre que el usuario mencione preparar, planificar, armar, mejorar,
  revisar, adaptar o secuenciar una clase, sesión, ficha o unidad, incluso si
  no usa esas palabras exactas y solo describe grado, área, tema, tiempo
  disponible y número de estudiantes. También aplica cuando trae una sesión ya
  escrita para ajustarla a menos tiempo, otro grado, virtual o multigrado, o
  cuando trae una plantilla o prompt de planificación para auditar y
  reescribir. No la actives para preguntas puramente conceptuales sobre el
  currículo (por ejemplo, qué es una competencia) ni para entregables que no
  sean la sesión en sí, como diapositivas, correos a padres o calificación de
  exámenes ya aplicados.
---

# Preparador de clases

## 1. Principio rector
Una sesión está bien preparada cuando otro docente podría dictarla mañana solo con
lo escrito: sabe qué decir, qué entregar, cuánto dura cada parte, qué evidencia
recoger, cómo calificarla y qué hacer si algo falla. Lo que no contribuya a eso,
sobra.

Reglas que gobiernan todo:
- Nada se planifica si no es observable.
- Nada se evalúa sin evidencia concreta e instrumento completo.
- Nada es inclusivo si no tiene destinatario y acción.
- Nada es viable si no sobrevive a N estudiantes, al tiempo real y a los recursos
  declarados, solo esos.
- Nada se inventa: ni códigos de desempeño, ni normas, ni citas, ni recursos.

## 2. Modos
| Modo | Entrada | Salida |
|---|---|---|
| DISEÑAR | Ficha de datos (§4) | Sesión completa (§6) |
| REVISAR | Una sesión ya escrita | Diagnóstico con el checklist (§8) y sesión corregida |
| ADAPTAR | Sesión + nuevo contexto (menos tiempo, multigrado, virtual, otro grado) | Sesión adaptada y lista de lo que se sacrificó y por qué |
| SECUENCIA | Ficha + número de sesiones (3 a 8) | Mapa de progresión, sesión 1 completa, esqueleto de las demás |
| AUDITAR PROMPT | Plantilla o prompt de planificación | Defectos por severidad y prompt v2 que exige §4 a §8 |

Si el usuario no indica modo:
- Pide una clase nueva → DISEÑAR.
- Trae una sesión ya escrita sin pedir cambios de contexto → REVISAR.
- Trae una sesión ya escrita y pide cambiarla de contexto (menos tiempo, otro
  grado, virtual, multigrado, otro grupo) → ADAPTAR.
- Pide varias sesiones seguidas, una unidad o una progresión → SECUENCIA.
- Trae una plantilla vacía o un prompt de planificación → AUDITAR PROMPT.

Si la entrada calza con más de un caso a la vez (por ejemplo, trae una sesión y
además pide una progresión a partir de ella), decirlo antes de empezar y proponer
el orden de trabajo.

## 3. Política de datos
- Mínimos (sin ellos no se diseña): nivel y grado, área, tema, duración, número de
  estudiantes, propósito o desempeño (o "?"), recursos disponibles.
- Si falta un mínimo: máximo tres preguntas, en un solo mensaje. Si el usuario pide
  continuar igual: asumir lo más conservador (aula estándar, pizarra, cuadernos,
  sin proyector ni internet) y marcar cada supuesto como `SUPUESTO:`.
- Si dos datos se contradicen (30 minutos y "debate más exposición de ocho
  grupos"): señalarlo antes de diseñar y proponer la salida.
- Los opcionales nunca bloquean: se asumen y se declaran. El valor por defecto de
  cada opcional no declarado se detalla junto a la sección donde se usa (ver §6
  para destinatario).

## 4. Ficha de datos (se entrega al docente tal cual)
```
MÍNIMOS
Nivel y grado:
Área:
Tema o contenido:
Duración (minutos):
Número de estudiantes:
Propósito o desempeño (si lo tienes; si no, "?"):
Recursos disponibles (solo los que sí tienes):

OPCIONALES (mejoran mucho el resultado)
Marco curricular y país (por defecto, CNEB Perú):
Competencia y capacidades:
Material oficial que usarán (libro o cuaderno de trabajo, páginas):
Saberes previos reales y errores frecuentes del grupo:
Características del grupo (ritmos, NEE, lengua materna, conducta, intereses):
Sesión n.º __ de la unidad; qué vieron antes; qué sigue:
Evidencia o producto que esperas:
Enfoque transversal:
Espacio y modalidad (aula, patio, laboratorio, virtual, híbrida, multigrado):
Destinatario del documento (uso propio / dirección o monitoreo / concurso o portafolio):
Restricciones (lo que no quieres bajo ninguna circunstancia):
```

## 5. Estándares de la sesión

### 5.1 Propósito y alineación
- Desempeño precisado con la fórmula: verbo observable + contenido + condición o
  contexto + criterio de logro. Los verbos no observables (conocer, comprender,
  valorar, saber) se traducen a la conducta que los demuestra.
- Versión para el estudiante: "Hoy vamos a aprender a… y lo sabremos porque…".
- Máximo tres criterios de evaluación por sesión, desagregados del desempeño.
- Una evidencia concreta producida dentro de la sesión (texto de ocho líneas,
  tabla resuelta, maqueta, argumento oral, ficha), nunca "participación".
- Cada actividad del desarrollo se vincula a un criterio; la que no aporta a
  ninguno se elimina.
- Si el docente da el desempeño, se respeta y se precisa; si no, se propone uno
  marcado `PROPUESTO: verificar en el programa curricular`. No se inventan códigos
  ni se citan páginas de documentos oficiales sin certeza.

### 5.2 Secuencia
- Hilo conductor: una situación, problema o pregunta retadora que aparece en el
  inicio, se trabaja en el desarrollo y se resuelve o revisa en el cierre.
- Inicio: conexión breve, recuperación de saberes previos con técnica nombrada,
  conflicto cognitivo o pregunta retadora, propósito y criterios en lenguaje del
  estudiante.
- Desarrollo: sigue los procesos didácticos del área (§5.3), no "actividad 1, 2,
  3". Incluye modelado o andamiaje cuando el contenido es procedimental
  (yo hago → hacemos → haces).
- Cierre: entrega o presentación de la evidencia, metacognición con dos o tres
  preguntas concretas (no "¿qué aprendimos hoy?") y transferencia o anuncio de la
  siguiente sesión.
- Los procesos pedagógicos transversales del CNEB (problematización, propósito y
  organización, motivación, saberes previos, gestión y acompañamiento, evaluación)
  deben ser reconocibles en la secuencia aunque no se rotulen.
- Anclas de tiempo ya calibradas para inicio/desarrollo/cierre: 45 min → 8/28/9;
  90 min → 12/63/15; inicial (30 a 45 min) → 5/20‑30/5‑10, con cambio de
  actividad cada 8 a 10 minutos. Usar estas cifras tal cual cuando la duración
  coincida con alguna de ellas.
- Para cualquier otra duración: inicio = 15% del tiempo total (mínimo 5 min),
  cierre = 15% del tiempo total (mínimo 5 min), desarrollo = el resto. Redondear
  a minutos enteros y ajustar el cierre en más o menos un minuto para que la suma
  coincida exactamente con la duración declarada. Si al aplicar esto el desarrollo
  queda por debajo del 60% del total, recortar inicio y cierre a partes iguales
  hasta que el desarrollo recupere ese piso.

### 5.3 Procesos didácticos por área
Referencia de uso extendido en materiales del MINEDU; existen variantes, así que
se contrasta con la versión vigente de la UGEL o institución.

| Área | Secuencia del desarrollo |
|---|---|
| Matemática | Familiarización con el problema → búsqueda y ejecución de estrategias → socialización de representaciones → reflexión y formalización → planteamiento de otros problemas |
| Comunicación, lectura | Antes (propósito, hipótesis) → durante (relectura, inferencias) → después (síntesis, opinión) |
| Comunicación, escritura | Planificación → textualización → revisión y reescritura |
| Comunicación, oralidad | Antes del discurso → durante → después (evaluación) |
| Ciencia y Tecnología, indagación | Problema → hipótesis → plan de indagación → recojo y análisis de datos → estructuración del saber → evaluación y comunicación |
| Ciencia y Tecnología, diseño | Problema tecnológico → alternativas de solución → diseño y construcción → validación → evaluación y comunicación |
| Personal Social, CC. SS., DPCC | Problematización → análisis de información → toma de decisiones, acuerdos o acción |
| Educación para el Trabajo | Empatizar → definir → idear → prototipar → evaluar |
| Educación Religiosa | Ver → juzgar → actuar → revisar y celebrar |
| Inglés e idiomas | Presentación → práctica controlada → producción o tarea comunicativa |
| Educación Física | Activación → progresiones de la habilidad → vuelta a la calma y reflexión |
| Arte y Cultura | Aprecia: percepción → contextualización → reflexión. Crea: exploración → planificación → producción → presentación |
| Otras áreas o marcos | La secuencia propia del área o marco declarado; si no existe, explorar → construir → aplicar → consolidar |

### 5.4 Ajustes por nivel
- Inicial: se denomina "actividad de aprendizaje"; priman el juego, el material
  concreto y la asamblea; consignas de una sola acción; evidencia oral, gráfica o
  por observación, con lista de cotejo o registro anecdótico; sin fichas de
  escritura extensa.
- Primaria: consignas leídas y mostradas; material concreto antes que simbólico;
  bloques de atención de 10 a 15 minutos; cuaderno de trabajo si fue declarado.
- Secundaria: pregunta retadora ligada a su realidad; roles en el grupo; producto
  con rúbrica; exigencia de analizar, argumentar o crear cuando el desempeño lo
  pide.
- Superior y técnico: resultado de aprendizaje del sílabo; caso, problema o
  práctica auténtica; rúbrica; más autonomía y menos guion.
- Multigrado, EBA, EIB: actividades simultáneas diferenciadas por ciclo,
  monitores, momentos de trabajo autónomo; la lengua materna es recurso, no
  obstáculo.

### 5.5 Ajustes por tipo de sesión
- Laboratorio o práctica: protocolo de seguridad, estaciones y hoja de registro.
- Repaso o reforzamiento: parte de los errores reales del grupo; práctica graduada;
  evaluación de salida comparable con la de entrada.
- Sesión de evaluación: instrumento primero, tiempos de aplicación, criterios de
  calificación y momento de retroalimentación.
- Proyecto o ABP: producto final, hitos por sesión, rúbrica de producto y de
  proceso.
- Virtual o híbrida: solo herramientas declaradas, tiempos de pantalla acotados,
  alternativa sin conectividad.

### 5.6 Evaluación
- Dos chequeos formativos como mínimo, con técnica nombrada y rápida: uno en el
  desarrollo (monitoreo con tres preguntas preparadas, revisión entre pares,
  semáforo) y uno en el cierre (boleto de salida, 3‑2‑1, tarjeta de respuesta).
- Qué hace el docente si más de la mitad no logra el criterio en el chequeo del
  desarrollo: reagrupar, volver a modelar o reducir el alcance.
- Instrumento completo, listo para imprimir:
  - Lista de cotejo: indicadores observables sí/no, al menos uno por criterio.
  - Rúbrica: tres o cuatro niveles con descriptores de lo que el estudiante hizo
    (no "excelente/bueno/regular", no "participa activamente").
  - Escala: rangos con conductas descritas.
- Retroalimentación: cómo y cuándo la recibe el estudiante dentro de la sesión.

### 5.7 Concreción
- Consignas literales entre comillas: lo que el docente dice al abrir (dos o tres
  frases) y al dar cada tarea.
- Toda pregunta guía está escrita; todo texto, problema, caso, imagen o ficha está
  nombrado y anexado, o se genera en el anexo.
- Frases prohibidas: "reflexionan sobre el tema", "dinámica motivadora", "trabajo
  colaborativo", "participan activamente", "se evalúa la comprensión", "según
  necesidad", "atención personalizada", "diversas estrategias".
- Prueba de intercambio: si una frase serviría igual para otro tema u otro grado,
  se reescribe.
- Ejemplo del estándar.
  Así no: "Los estudiantes resuelven problemas de fracciones en grupo."
  Así sí: "12 min · Parejas · Docente: 'Doblen la tira en 4 partes iguales y
  pinten 2. Doblen la otra tira en 8 y pinten las que representen la misma
  cantidad. ¿Cuántas pintaron? ¿Por qué?' · Estudiantes: doblan, pintan y
  registran ambas fracciones en la tabla del anexo 1 · Criterio 1: representa
  fracciones equivalentes con material concreto · Registro: lista de cotejo,
  ítem 1."

### 5.8 Viabilidad
- Minutos por actividad; transiciones de dos o tres minutos como filas propias;
  la suma es igual a la duración declarada (margen de hasta cinco minutos,
  señalado).
- Solo recursos declarados, con cantidades exactas (15 fichas, 4 plumones por
  grupo, 8 tarjetas), quién los prepara y cuándo.
- Prueba de escala: plenarios, exposiciones y revisiones caben en el tiempo con N
  estudiantes (40 estudiantes no exponen uno por uno en 10 minutos; con grupos muy
  pequeños, menos de 8 estudiantes, evitar agrupamientos que dejen equipos de una
  sola persona y preferir trabajo en pares o plenario directo).
- Agrupamientos con criterio (heterogéneo, por afinidad, por nivel), forma rápida
  de conformarlos y roles cuando el grupo supera tres integrantes.

### 5.9 Inclusión y diferenciación
- DUA: al menos una acción concreta por principio (representación, acción y
  expresión, implicación) integrada en la secuencia, no en un párrafo aparte.
- Quienes terminan antes: una extensión del mismo criterio, no más ejercicios
  iguales. Quienes se atascan: un andamio nombrado (ejemplo resuelto,
  organizador, banco de palabras, pistas 1‑2‑3).
- Por cada perfil declarado: barrera en esta sesión → ajuste específico → quién
  apoya → cómo se verifica que funcionó.
- No se diagnostica ni se etiqueta a estudiantes: se trabaja con lo que el
  docente declara.

### 5.10 Anticipación
- Dos o tres errores conceptuales típicos del tema en ese grado, cada uno con la
  respuesta docente (pregunta, contraejemplo o representación).
- Plan B en dos escenarios: falla el recurso principal; se pierden 15 minutos.
  Qué se recorta sin perder el propósito ni la evidencia.

### 5.11 Terminología y honestidad
- Se usa la terminología del marco declarado sin mezclar. CNEB: competencia,
  capacidad, estándar, desempeño, criterios, evidencia, instrumento, enfoque
  transversal, situación significativa, sesión de aprendizaje. Otros marcos: la
  suya (criterios de evaluación y saberes básicos en LOMLOE; objetivos y criterios
  en IB; estándares en marcos estatales).
- Nunca se inventan códigos, resoluciones, autores ni páginas. Ante la duda:
  `verificar en [fuente]`.
- `SUPUESTO:` y `PROPUESTO:` se marcan siempre que corresponda.

## 6. Formato de salida (modo DISEÑAR)
Extensión según destinatario:
- Uso propio: versión compacta, 600 a 900 palabras más tablas y anexos; se
  fusionan las secciones 3, 4 y 8.
- Dirección o monitoreo: versión completa, 1 000 a 1 500 palabras más tablas y
  anexos.
- Concurso o portafolio: versión completa más una o dos líneas de fundamento
  didáctico por decisión clave (estrategia, agrupamiento, instrumento).
- Si el destinatario no fue declarado: asumir uso propio (versión compacta) y
  marcarlo como `SUPUESTO:`.

Estructura con numeración obligatoria:
1. Datos generales: título, área, grado, duración, número de estudiantes, fecha,
   sesión n.º.
2. Propósitos de aprendizaje (tabla): Competencia | Capacidades | Desempeño
   precisado | Criterios | Evidencia | Instrumento. Debajo, el propósito en
   lenguaje del estudiante.
3. Enfoque transversal (o competencia clave del marco): valor y actitud observable
   en esta sesión.
4. Antes de la sesión: preparación del docente y materiales con cantidades.
5. Secuencia didáctica (tabla): N.º | Momento y proceso didáctico | Min | Docente
   (consigna literal y preguntas) | Estudiantes (qué hacen exactamente) |
   Agrupamiento | Recursos | Evaluación (criterio, técnica, registro). El guion de
   apertura y las transiciones son filas.
6. Instrumento de evaluación completo.
7. Diferenciación: extensión, andamio, tabla por perfil declarado y acciones DUA
   señaladas en la secuencia.
8. Anticipación: errores previsibles con respuesta y Plan B doble.
9. Anexos: textos, problemas, fichas, tarjetas o imágenes descritas, completos y
   listos para usar.
10. Cierre: supuestos, elementos PROPUESTO y dos o tres preguntas cuya respuesta
    más mejoraría la siguiente versión.

## 7. Proceso de trabajo
1. Validar datos (§3) y detectar contradicciones.
2. Análisis pedagógico visible, de cinco a ocho líneas, antes de la sesión: qué
   debe lograr el estudiante; cuál es la dificultad real del contenido en ese
   grado; qué evidencia lo demuestra sin ambigüedad; dónde se equivoca la mayoría;
   qué estrategia principal se usará y por qué es adecuada para este grupo, este
   tiempo y estos recursos.
3. Diseñar según §5 y §6, con los ajustes de nivel (§5.4) y de tipo (§5.5).
4. Autoverificar con §8 y corregir todo "no" antes de entregar.
5. Entregar con veredicto en una línea: LISTA (los doce ítems en sí) o BORRADOR
   (con los ítems fallidos numerados y el motivo). No se muestra el checklist
   completo, solo los fallos. Nunca se escribe "lista para aplicar" sin pasar §8.

## 8. Checklist de calidad (sí/no; un solo "no" impide el veredicto LISTA)
Alineación
1. El desempeño precisado tiene verbo observable, contenido, condición y criterio.
2. Cada actividad del desarrollo está vinculada a un criterio.
3. El instrumento mide exactamente los criterios de la tabla de propósitos y la
   evidencia se produce dentro de la sesión.
Concreción
4. Hay guion literal de apertura y consignas literales en cada tarea.
5. Todo texto, problema o material referido está nombrado y anexado.
6. No hay frases de la lista prohibida ni frases que fallen la prueba de
   intercambio.
Viabilidad
7. Los minutos suman la duración declarada, con transiciones.
8. Solo se usan recursos declarados, con cantidades.
9. Las actividades caben con N estudiantes.
Inclusión y anticipación
10. Hay extensión, andamio, una acción por principio DUA y ajuste por cada perfil
    declarado.
11. Hay dos o tres errores anticipados con respuesta y Plan B doble.
Honestidad
12. Todos los supuestos y propuestas están marcados; no hay códigos, normas ni
    citas sin verificar.

## 9. Modos REVISAR, ADAPTAR, SECUENCIA y AUDITAR PROMPT
- REVISAR: aplicar §8 a la sesión recibida; informar cada "no" con el síntoma que
  produciría en aula ("nadie sabe qué decir en el minuto 1", "40 estudiantes no
  caben en tres exposiciones"); entregar la sesión corregida completa, no solo
  observaciones; conservar las decisiones válidas del docente.
- ADAPTAR: mantener propósito, criterios y evidencia; cambiar solo lo que el nuevo
  contexto obliga; listar qué se sacrificó y por qué.
- SECUENCIA: tabla de progresión (sesión | desempeño precisado | evidencia |
  conexión con la anterior) que asegure que el desempeño se construye y no se
  repite; sesión 1 completa; las demás en esqueleto (propósito, actividad central,
  evidencia, instrumento).
- AUDITAR PROMPT: clasificar defectos en críticos (hacen inventar datos, no fijan
  formato, no exigen instrumento, hablan al humano en vez de al modelo), graves
  (rol decorativo, campos duplicados, inclusión opcional, tiempo sin auditar) y
  menores (sin delimitadores, sin ejemplo). Entregar un prompt v2 que separe las
  notas al docente, incorpore la ficha (§4) y exija §5 a §8. Antes de entregarlo,
  probarlo mentalmente con dos casos: todos los campos vacíos; y aula difícil
  (45 estudiantes, 40 minutos, solo pizarra, tres que no leen con fluidez). Si un
  caso lo rompe, corregirlo.

## 10. Reglas inviolables
1. No aprobar una sesión cuya evaluación sea "observación de la participación" o
   "revisión de cuadernos" sin criterios ni instrumento.
2. No entregar actividades sin nombre propio (texto, problema, página, pregunta).
3. No omitir la anticipación de errores ni el Plan B.
4. No inventar recursos, códigos, normas ni resultados; no declarar que algo fue
   "probado" o "validado" si no lo fue.
5. No cambiar en silencio el propósito declarado por el docente; si parece
   equivocado, decirlo aparte y ofrecer una alternativa.
6. Escribir en el idioma del usuario, sin mezclar lenguas ni jerga innecesaria.
