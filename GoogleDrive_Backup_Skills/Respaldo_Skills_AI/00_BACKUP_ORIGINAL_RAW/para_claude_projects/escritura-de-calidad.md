---
name: escritura-de-calidad
description: Proceso completo para escribir o reescribir textos donde la estructura y la calidad de la prosa importan; ensayos, artículos, columnas de opinión, discursos, cartas de motivación y statements, newsletters, textos de presentación, prólogos, guiones narrados, informes con narrativa. Actívalo cuando el usuario pida redactar, reescribir a fondo o mejorar sustancialmente un texto de más de ~300 palabras con lector real, y siempre que sea un ensayo académico completo, sin importar la extensión. No lo actives para respuestas informativas, mensajes cortos, listas, código, tablas, traducciones, resúmenes mecánicos ni correcciones puntuales. Se apoya en la familia escritura-humana para vocabulario, conectores y estructura de ensayos, sin repetirlas.
---

# Escritura de calidad

## Relación con la familia escritura-humana

Esta skill gobierna el proceso de escribir un texto de peso, desde el brief hasta la entrega. No decide qué palabras están prohibidas, cómo se usan los conectores ni cómo se estructura un ensayo peruano: eso ya lo deciden otras skills y esta no lo repite.

- Cualquier texto en español activa además `escritura-humana-core` (los nueve patrones prohibidos) y `escritura-humana-vocabulario` (léxico prohibido, "tensión", guion largo). Esto pasa siempre, sin que el usuario lo pida.
- Si el texto tiene más de tres párrafos, se suma `escritura-humana-conectores` para decidir cuándo un conector está justificado y cuándo es un tic mecánico.
- Si el texto es un ensayo académico, se suma `escritura-humana-ensayos` para miniconclusiones por argumento, manejo de citas y términos de rúbrica.

Cuando este documento pide "revisar señales de máquina" o "verificar el vocabulario", la revisión real vive en esas skills, no aquí. Consúltalas, no las reconstruyas de memoria ni inventes una lista propia: dos listas independientes que cubren lo mismo terminan separándose con el tiempo.

## Principio

Un texto bueno no sale de una plantilla. Sale de tres cosas: una idea central que se puede decir en una frase, material concreto (hechos, escenas, cifras, ejemplos con nombre) y una voz que toma posición. Este proceso existe para asegurar esas tres cosas antes de escribir la primera frase bonita. Cuando falte una, pídela; no la sustituyas con generalidades.

Un texto está terminado cuando:

- Un lector puede decir en una frase qué sostiene.
- Cada párrafo hace algo que ningún otro párrafo hace.
- Hay detalles concretos (nombres, cifras, lugares, escenas) al menos cada 150-200 palabras.
- Empieza en algo concreto y termina en un lugar distinto del que empezó.
- Suena a una persona con criterio, no a un comité ni a una enciclopedia.
- No contiene ni un dato, cita o fuente inventados.
- Cumple extensión, formato, registro e idioma pedidos.

## 0. Triaje

Antes de nada, decide cuánto proceso merece el pedido.

- **Proceso completo** (pasos 1 a 6): textos de más de ~300 palabras con lector real, cualquier ensayo académico completo sin importar la extensión, o cualquier texto que el usuario califique de importante.
- **Proceso comprimido**: el usuario pide "algo rápido" o "un borrador", o el texto es de 300-500 palabras, de bajo riesgo y no es un ensayo académico. Entonces: una línea de tesis, sin esquema visible, redacción y una sola pasada de revisión (la 5, aplicación de la familia escritura-humana).
- **No aplica**: respuesta informativa, mensaje corto, lista, código, traducción, corrección puntual. Responde con normalidad y olvida esta skill.
- **Mejora de un texto del usuario**: salta a la sección "Cuando el usuario trae un texto".

## 1. Brief

Lo que necesitas saber, por orden de importancia:

1. **Postura**: qué piensa el autor de verdad sobre el tema. Sin esto no hay ensayo.
2. **Lector y contexto**: quién lo lee, qué sabe, qué opina antes de leer, dónde lo lee.
3. **Propósito**: qué debe pensar, sentir o hacer al terminar.
4. **Material propio**: anécdotas, datos, lecturas, experiencias del autor.
5. **Extensión, idioma, registro, tratamiento y variedad** (citas, formato de entrega). Tratamiento: tú, usted o vos, según destinatario y género; si no se indica, infiérelo del contexto y decláralo como supuesto al entregar. Variedad regional: por defecto, español latinoamericano neutro sin argentinismos, la regla fija de la familia escritura-humana; si el destinatario o el contexto piden otra variedad puntual, por ejemplo un correo en es-MX, es una excepción de esa tarea, no un cambio del default general.
6. **Restricciones**: qué no puede faltar, qué no debe decirse.
7. **Muestra de voz**: un texto escrito por el autor, para imitar cómo escribe.

Reglas para preguntar:

- Si el pedido ya trae 1, 2 y 5, aunque sea de forma implícita, **no preguntes**. Asume el resto con criterio y declara los supuestos al entregar.
- Si falta algo de 1 a 3, o falta 4 en un texto personal o de opinión, haz **máximo 3 preguntas en un solo mensaje**, cada una con un valor por defecto entre paréntesis (modelos en `references/brief-defaults.md`). Cierra con: "Si respondes 'sigue', uso los valores por defecto".
- Nunca preguntes lo que ya está en el mensaje. Nunca preguntes dos veces para el mismo texto. Nunca preguntes una cosa por turno.
- Si el usuario no aporta material propio, no lo inventes: usa ejemplos públicos verificables y deja marcado con `[TU EJEMPLO: ...]` el lugar donde iría el suyo.

## 2. Idea central

Antes de estructurar, escribe la frase de tesis:

> Este texto sostiene que ___ porque ___, y quiero que el lector ___.

Si no puedes completarla, no tienes texto todavía: vuelve al brief.

Prueba la tesis con tres preguntas. Si falla alguna, afínala:

- ¿Alguien razonable podría discrepar? ("La tecnología tiene ventajas y desventajas" no pasa.)
- ¿Es específica? ¿Nombra un caso, un mecanismo, una consecuencia?
- ¿Aporta algo que el lector no daba por sentado?

Busca el ángulo de entrada: cuál es la parte contraintuitiva, qué sabe el autor que el lector no sabe, qué caso concreto contiene el problema entero.

Decide el final antes de empezar. Un texto que no sabe dónde termina se arrastra.

## 3. Arquitectura

Haz un esquema antes de redactar. Cada punto del esquema es una idea que se puede decir en una línea; si no puedes decirla, son dos ideas o ninguna.

Reglas del esquema:

- El orden lo dicta la lógica del argumento, no la fórmula introducción-tres párrafos-conclusión. Pregunta: qué necesita aceptar el lector primero para que lo siguiente le llegue.
- La apertura entra por algo concreto: una escena, un dato, un caso, una situación conflictiva. Nunca por una definición, una generalidad sobre la humanidad o "desde tiempos inmemoriales". La tesis aparece pronto, no necesariamente en la primera frase.
- En textos argumentativos, reserva un lugar para la objeción más fuerte, tratada con honestidad.
- El cierre va a un sitio nuevo: una implicación, una consecuencia, el regreso a la imagen inicial con algo cambiado, una petición concreta. Nunca un resumen.
- Asimetría deliberada: la idea más importante recibe más espacio. No todo pesa igual.

Dónde va el plan (tesis + esquema):

- En modelos con razonamiento oculto, ahí.
- Si no, escríbelo en 5-8 líneas bajo el rótulo **Plan**, separado del texto entregable. Un plan no escrito es un plan que no existe.
- Para textos de más de ~1500 palabras, cuando el usuario lo pida, o cuando el texto sea un ensayo académico completo sin importar la extensión, detente después del plan y espera su visto bueno antes de redactar.

Esqueletos por género (adáptalos, no los rellenes): ver `references/esqueletos-genero.md` para la plantilla de cada uno. Si el género es ensayo académico, complementa ese esqueleto con `escritura-humana-ensayos` para miniconclusiones por argumento y manejo de fuentes, que se aplican por defecto sin que el usuario tenga que pedirlas.

## 4. Redacción

Párrafo:

- Longitudes variadas. Un párrafo de una línea se permite cuando carga peso, no como adorno.
- Las transiciones se apoyan en conectores explícitos que enlazan la idea de un párrafo con la del siguiente, no en cortar todo en oraciones sueltas separadas por punto. Ver `escritura-humana-conectores` para el criterio completo: un conector está justificado cuando conecta explícitamente una idea con la siguiente dentro del desarrollo; es mecánico solo cuando la misma categoría de conector abre dos o más párrafos seguidos.
- Sin metacomentario: ni "en este ensayo analizaremos", ni "como mencioné antes", ni "a continuación".
- Sin carraspeo inicial: la primera frase del párrafo ya dice algo.

Frase:

- Varía la longitud. Después de una frase larga, una corta. Ninguna frase de más de 35 palabras sin una razón.
- Voz activa por defecto. El verbo carga el significado: "decidió", no "tomó la decisión de".
- Una idea por frase. Máximo dos niveles de subordinación.
- Elimina las cautelas vacías ("en cierta medida", "de alguna manera", "podría decirse"). Conserva las que son verdad.
- Elimina intensificadores ("muy", "realmente", "sumamente"). El sustantivo y el verbo hacen el trabajo.

Palabra:

- Concreto sobre abstracto: un nombre, una cifra, un lugar, una fecha, un objeto. "Una panadería de Valparaíso pasó de tres empleados a dos".
- Palabra llana sobre palabra de traje: usar (no utilizar), mostrar (no evidenciar), empezar (no dar inicio a), ayudar (no coadyuvar).
- Vocabulario de máquina bajo sospecha: ver `escritura-humana-vocabulario`, que ya incluye el léxico grandilocuente y las muletillas de relleno académico y corporativo.
- Metáforas solo si son nuevas y exactas. La primera que se te ocurra es un lugar común.
- Ninguna palabra repetida de forma llamativa en el mismo párrafo, salvo anáfora intencional.

Voz:

- Con muestra del autor: extrae longitud media y variación de sus frases, signos que usa y evita, formalidad, humor, frecuencia de la primera persona, construcciones típicas, vocabulario recurrente. Imita el promedio; no lo parodies.
- Sin muestra: voz por defecto = una persona que sabe del tema hablándole a un amigo inteligente. Directa, concreta, cálida sin halagos, capaz de decir "esto no funciona".
- El texto toma posición. Puede reconocer complejidad, pero no equilibrando cada frase con un "sin embargo".
- Primera persona cuando el género lo admite. No te escondas en "se considera que".
- Confía en el lector: no repitas, no expliques la metáfora, no anuncies la gracia.
- Se permite el riesgo: una opinión que alguien puede rechazar, una confesión ("no sé si esto es cierto, pero"), una frase seca. Es lo que distingue a una persona de un comité.

Hechos:

- Nunca inventes citas, cifras, estudios ni referencias bibliográficas. Si una afirmación necesita un dato que el autor no aportó, escribe `[DATO: qué falta]` o pregunta.
- Si citas algo de memoria, márcalo con `[verificar]`.
- Un número sin fuente, o va marcado, o no va.

## 5. Revisión (obligatoria, en este orden)

1. **Fidelidad al brief**: repasa cada requisito uno por uno. Extensión dentro de ±10 %. Formato, registro e idioma pedidos.
2. **Argumento**: escribe una línea por párrafo. ¿Forman una cadena? Un párrafo que se puede quitar sin pérdida, se quita. ¿La tesis es la misma al principio y al final? ¿Está tratada la objeción más fuerte?
3. **Apertura y cierre**: ¿la primera frase es concreta? ¿Un lector seguiría después de la segunda? ¿El final va a algún sitio o repite?
4. **Prosa**: lee buscando ritmo. Cada frase de más de 35 palabras: partir o justificar. Cada enumeración de tres: conservar solo si los tres elementos son reales. Cada pregunta retórica: borrar o convertir en afirmación. Cada "no es X, sino Y": reescribir. Palabras repetidas: sustituir.
5. **Aplicación de la familia escritura-humana**: pasa el checklist de `escritura-humana-core`, el de `escritura-humana-vocabulario` y, si corresponde, el de `escritura-humana-conectores` y el de `escritura-humana-ensayos`. No reconstruyas esa revisión aquí; esas skills son la fuente de verdad.
6. **Hechos**: cada cifra, nombre, fecha y cita, ¿viene del material del usuario, es de conocimiento común o está marcada?

No entregues sin las seis pasadas. Si el proceso es comprimido, al menos la 5.

## 6. Entrega

- Entrega el texto limpio. Prosa en prosa: sin negritas, viñetas ni encabezados salvo que el género los pida (artículos explicativos, informes). Si el texto es un ensayo con rúbrica, la negrita en los términos de rúbrica que exige `escritura-humana-ensayos` se aplica solo cuando el ensayo se entrega como documento, nunca en el texto dentro del chat.
- Debajo, en 2-4 líneas como máximo: supuestos que hiciste, huecos `[DATO]` o `[TU EJEMPLO]` por rellenar, y una o dos decisiones concretas que podrías cambiar ("Puse la objeción en el cuarto párrafo; si prefieres abrir con ella, la muevo").
- Nada de "espero que te sirva", ni elogios al propio texto, ni "avísame si quieres cambios".
- Si el usuario pregunta cómo lo hiciste o qué prompt usaste: muestra el Plan que escribiste. Si no quedó escrito, dilo y ofrece el esquema que se deduce del texto, presentado como deducción y no como registro.
- Responde en el idioma del usuario. El texto va en el idioma que el usuario pidió, que puede ser otro. Si el texto es en español, además del proceso de esta skill rige el registro de la familia escritura-humana: español latinoamericano neutro, sin argentinismos ni modismos.
- Si falta material para llegar a la extensión pedida, no infles: entrega más corto, di qué falta y pide lo que necesitas.

## Cuando el usuario trae un texto para mejorar

1. **Diagnóstico primero**, en 3-5 líneas: qué intenta decir el texto, qué funciona, y los dos o tres problemas principales por orden de gravedad: estructura, luego argumento, luego prosa. No pulas frases de un texto cuya estructura no se sostiene.
2. **Propón el nivel de intervención** en una escala de tres y actúa:
   - Nivel 1, limpieza: borra señales de IA y relleno, conserva frases y estructura casi intactas, cambio mínimo visible. Hazla directamente.
   - Nivel 2, estilo: reescribe frases y párrafos enteros, conserva estructura y orden de las ideas. Hazla directamente si el diagnóstico no exige tocar la arquitectura.
   - Nivel 3, profunda: reordena, funde o corta secciones enteras, cambia la arquitectura. Si el diagnóstico la exige, propónla y espera el visto bueno antes de tocar, porque puedes destruir lo que el autor quería.

   Si no pides un nivel, lo infiero de la gravedad del diagnóstico y lo declaro al entregar.
3. **Conserva la voz del autor**. No le "mejores" el vocabulario. Respeta sus idiosincrasias salvo que dañen la claridad. Esto no exime de aplicar los reemplazos duros de `escritura-humana-vocabulario` (guion largo, "tensión", léxico prohibido) ni los nueve patrones de `escritura-humana-core`: esas son restricciones del sistema, no parte de la voz del autor.
4. **Elige el modo de salida** y entrega según corresponda:
   - Solo texto: únicamente el texto revisado, sin diagnóstico ni lista de cambios.
   - Texto + cambios (default): versión revisada más una lista corta de los cambios principales y su motivo. Si el texto es largo, por secciones.
   - Texto + dudas: versión revisada más las decisiones que convendría confirmar, registro elegido, datos que parecen erróneos, pasajes ambiguos, en vez de la lista de cambios.

   Si no indicas el modo, uso texto + cambios. En un texto ajeno (de un jefe o cliente tuyo) que se edita por primera vez, el default sugerido es texto + dudas.
5. Pasa igualmente las revisiones 4, 5 y 6 sobre el resultado.

## Referencia

Ver `references/esqueletos-genero.md` para la plantilla completa de cada género.
Ver `references/brief-defaults.md` para las preguntas de brief con su valor por defecto y las extensiones de referencia por género.


---
# ANEXO / REFERENCIA: references/esqueletos-genero.md

# Esqueletos por género

Adáptalos, no los rellenes. Cada esqueleto describe el movimiento lógico del texto,
no una plantilla de secciones a completar.

**Ensayo argumentativo**: caso o situación conflictiva → tesis → argumentos ordenados
del más aceptable al más exigente → objeción principal y respuesta → consecuencia y
cierre.

**Ensayo académico**: igual, con tesis explícita al final de la introducción,
evidencia citada según la norma pedida, contraargumento obligatorio, conclusión que
enuncia implicaciones y límites. Señalización permitida pero mínima. Complementar
siempre con `escritura-humana-ensayos` para miniconclusiones por argumento y manejo
de fuentes.

**Ensayo personal o crónica**: escena → qué pasó → qué significó entonces → qué
significa ahora (el giro) → aterrizar en una imagen o una frase, no en una moraleja.

**Columna de opinión**: gancho de actualidad o caso → postura antes de la palabra
100 → dos o tres movimientos → la réplica obvia, anticipada → remate corto y concreto.

**Artículo explicativo / blog**: promesa (qué entenderá el lector) → el problema en
términos concretos → explicación por capas, de lo simple a lo matizado → ejemplo
trabajado → qué hacer con esto. Aquí sí caben subtítulos.

**Discurso**: escrito para el oído. Frases cortas, repetición con propósito, una
historia, una petición, y una última frase que se pueda recordar.

**Carta de motivación / statement**: una razón específica para ESTE lugar →
evidencia de lo hecho, con detalle → qué se hará allí → cierre sin súplica.

**Informe con narrativa / resumen ejecutivo**: conclusión primero, luego el apoyo,
luego el detalle. Subtítulos. Sin suspenso.


---
# ANEXO / REFERENCIA: references/brief-defaults.md

# Preguntas de brief con valor por defecto

Elige como máximo tres. Siempre en un solo mensaje.

1. ¿Cuál es tu postura, en una frase? (Por defecto: la más defendible con lo que sé
   del tema, y te la señalo para que la cambies.)
2. ¿Quién lo lee y dónde? (Por defecto: lector general culto, sin conocimiento previo
   del tema.)
3. ¿Tienes un ejemplo, dato o experiencia propia que deba entrar? (Por defecto: uso
   ejemplos públicos verificables y marco dónde iría el tuyo.)
4. ¿Extensión y formato? (Por defecto: la del género, en prosa, sin subtítulos.)
5. ¿Registro? (Por defecto: claro y directo, ni académico ni coloquial.)
6. ¿Algo que deba entrar sí o sí, o que no deba decirse? (Por defecto: nada.)
7. ¿Tienes un texto tuyo para imitar tu forma de escribir? (Por defecto: la voz
   descrita en la sección Voz del archivo principal.)

## Extensiones por defecto

- Columna: 700-900 palabras.
- Ensayo académico: la de la consigna, o 1500 palabras si no se especifica.
- Ensayo personal: 1000-1800 palabras.
- Artículo explicativo: 1000-1500 palabras.
- Discurso: 130 palabras por minuto de duración pedida.
- Carta de motivación: 350-450 palabras.
- Statement de posgrado: 500-800 palabras.
