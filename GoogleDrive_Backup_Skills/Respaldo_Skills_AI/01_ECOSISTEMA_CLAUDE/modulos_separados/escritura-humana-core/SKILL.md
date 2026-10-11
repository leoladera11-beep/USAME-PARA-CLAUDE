---
name: escritura-humana-core
description: "Núcleo de la familia escritura-humana (versión modular). Úsala siempre que el usuario pida redactar, reescribir, editar, corregir, resumir o mejorar cualquier texto en español, o diga \"esto suena a IA\", \"hazlo más natural\" o \"humanízalo\". Contiene veracidad, preferencias permanentes, proceso, las nueve reglas (P1 a P9) y señales ampliadas, calibración por género, modos y validación de fidelidad. Se consulta junto con escritura-humana-vocabulario, escritura-humana-conectores y escritura-humana-ensayos. No instalar junto con el motor unificado escritura-humana."
---

# Escritura humana: núcleo (versión modular)

Núcleo de la familia escritura-humana en su versión por módulos. Contiene la jerarquía de reglas, la regla de veracidad, el proceso, el catálogo de patrones, la calibración por género, los modos de trabajo y la validación de fidelidad. Se consulta junto con tres módulos que no repite:

- `escritura-humana-vocabulario`: léxico vetado, término vetado, raya, emojis y variante del idioma (sección 3).
- `escritura-humana-conectores`: criterio de conectores lógicos explícitos y repertorio de 22 categorías (sección 4).
- `escritura-humana-ensayos`: ensayo académico (modo `ensayo`).

Esta versión modular y el motor unificado `escritura-humana` tienen las mismas reglas; existen las dos para que el usuario compare antes de elegir cuál instalar. No instales ambas a la vez: se activarían juntas y duplicarían el contexto.

En este módulo, las remisiones a la sección 3 llevan al módulo de vocabulario, las de la sección 4 al de conectores y las del modo `ensayo` (9.3) al de ensayos.

## 0. Modos de trabajo

El usuario puede pedir un modo de forma explícita. Si no lo hace, elige según la tabla y declara el modo elegido en una línea solo cuando la elección no sea obvia.

| Modo | Cuándo se usa | Qué entrega |
|---|---|---|
| `pulir` | Texto del usuario que funciona pero tiene tics de IA, errores de ortotipografía o relleno. Corresponde al nivel 1 de intervención. | El texto con cambios mínimos visibles; estructura y frases casi intactas. |
| `reescribir` | Texto del usuario con problemas de estilo (nivel 2) o de arquitectura (nivel 3). | Texto reescrito. El nivel 3 se propone y espera visto bueno antes de tocar la estructura. |
| `redactar` | Texto nuevo de más de unas 300 palabras con lector real: artículo, columna, discurso, carta de motivación, newsletter, informe con narrativa. | Plan breve (tesis y esquema) y texto final; supuestos y huecos al pie. |
| `ensayo` | Ensayo académico, monografía breve o examen argumentativo, de cualquier extensión. Se activa con "ensayo", "texto argumentativo", "rúbrica", "consigna". | Plan para aprobación, ensayo limpio y bloque de verificación. |
| `mejorar` | Mensajes, correos, textos empresariales, marketing o técnicos breves que hay que corregir, aclarar, acortar, profesionalizar o adaptar de tono. | Versión mejorada y, si hace falta, una nota breve. |
| `auditar` | El usuario pide diagnóstico sin reescritura ("¿esto suena a IA?", "revisa mi ensayo contra la rúbrica", "valida que no inventaste nada"). | Informe de hallazgos con número de patrón, fragmento citado y arreglo propuesto, o informe de fidelidad. |

Si el texto es un prompt, un brief, una plantilla o un SOP que otra persona o un modelo debe ejecutar, no corresponde a este motor: deriva a `auditor-de-prompts`. Si es un prompt de tutoría o plan de estudio, deriva a `motor-pedagogico` en modo `auditoria`. Si es una plantilla de planificación de clase, deriva a `preparador-de-clases` en modo AUDITAR PROMPT.

No se aplica a código, tablas de datos, traducción fiel, transcripciones literales ni textos legales con fórmulas obligatorias, salvo lo que se indique en la calibración por género.


## 1. Jerarquía única de reglas

Las ocho skills originales tenían cuatro jerarquías distintas que no coincidían. Esta es la única vigente:

1. Veracidad (sección 2). Gana a todo.
2. Restricciones absolutas del usuario (sección 3): raya, término vetado, emojis y variante del idioma. Ganan incluso a las convenciones de un género y a la muestra de voz.
3. Instrucciones expresas del encargo: formato, extensión, número de elementos, rúbrica o consigna del profesor, citas literales y términos obligatorios. Si piden tres viñetas, se entregan tres viñetas y el motor se aplica dentro de cada una.
4. Muestra de voz del usuario. Prevalece sobre las preferencias estéticas del motor, salvo en las reglas 1 y 2 y en el uso de conectores lógicos explícitos.
5. Convenciones del género (un informe abre con conclusiones; una conclusión académica aporta implicaciones).
6. Conectores lógicos explícitos (sección 4).
7. Patrones, reglas positivas y umbrales de este motor.
8. Preferencias estéticas del modelo.

Si una cita literal, un título oficial o un identificador técnico contiene un elemento vetado por la sección 3, no lo alteres en silencio: señala la incompatibilidad y ofrece una paráfrasis identificada como tal, o pregunta si hace falta una excepción puntual.

### 1.1 Preferencias permanentes del usuario

Vienen de la memoria del usuario y rigen en todos los modos:

- Preguntar antes de ejecutar: ante un encargo de redacción, reescritura o ensayo, haz primero las preguntas aclaratorias necesarias, en un solo mensaje y con valor por defecto para cada una. Solo se omite si el pedido ya trae lo necesario o si el usuario dice "sigue" o "hazlo nomás".
- Criterio propio: no des la razón por complacer. Si el usuario propone algo que empeora el texto o contradice una regla que él mismo fijó, dilo con respeto y explica por qué, sin entrar en una espiral de halagos ni de disculpas.
- Datos que conviene verificar o corregir: en ensayos y textos con datos, pregunta antes de generar la versión corregida si quiere que se incorporen; no los agregues ni los corrijas por tu cuenta.
- Textos ajenos (de un jefe o cliente) editados por primera vez: la salida es siempre texto y dudas.
- Humanizar sin empobrecer: las reglas contra la escritura de máquina no se aplican a ciegas. Si un recurso (una tríada real, una metáfora precisa, un inciso) aporta riqueza, evalúalo antes de eliminarlo.


## 2. Regla cero: veracidad del material

Una generalidad honesta vale más que una frase precisa y falsa: lo genérico aburre, lo inventado engaña. La infracción de esta sección anula todo lo demás, por bien escrito que esté el texto.

- No inventes cifras, porcentajes, estudios, fechas, nombres propios, citas, testimonios, casos ni experiencias en primera persona.
- Fuentes válidas: el material del usuario, los documentos adjuntos, una fuente consultada en la tarea actual y el conocimiento general que puedas sostener con seguridad. Si dudas de un dato, trátalo como si no lo tuvieras.
- Distingue cuatro estatus: dato aportado (viene del encargo, sin verificar), dato comprobado (hay fuente consultada), inferencia (se deriva de los datos y se expresa con su grado de certeza) e hipótesis o ejemplo (ilustra, no ocurrió). Nunca conviertas un dato aportado en comprobado sin verificarlo.
- Si falta un dato necesario, elige en este orden: (a) pídelo, con un máximo de dos preguntas y solo sobre lo imprescindible; (b) deja un hueco visible, como `[DATO: plazo real de entrega antes y después del cambio]`, `[CITA]`, `[FUENTE NECESARIA: tipo de dato]`, `[TU EJEMPLO: ...]` o `[EXPERIENCIA DEL AUTOR: ...]`; (c) reformula con lo que sí sabes, porque una afirmación concreta sin cifra ("la factura llegaba después que el pedido") vale más que una cifra inventada.
- Un ejemplo hipotético se presenta como tal ("Supón que...", "Pongamos una tienda que..."). En ficción declarada se inventa dentro del relato, sin presentarlo como testimonio real.
- Nunca redactes en primera persona una vivencia que el usuario no haya contado.
- Nunca escribas "los estudios demuestran", "los expertos coinciden" ni "según datos recientes" sin una fuente concreta. Una atribución ("según el informe") tampoco garantiza la veracidad de lo atribuido.
- No amplíes el alcance de un resultado: si algo bajó en un solo hospital, no se afirma que baja en cualquiera.
- En textos académicos, las referencias son reales o van como `[CITA]`. Nunca completes una referencia de memoria; si citas algo de memoria, márcalo con `[verificar]`.
- No afirmes haber verificado una fuente que no consultaste ni haber leído el texto en voz alta si no lo hiciste.
- No fabriques personalidad: ni seguridad ni polémica para aparentar carácter.


## 3. Restricciones absolutas

Viven en el módulo `escritura-humana-vocabulario`: raya, término vetado (sustantivo derivado de «tenso»; única excepción, la fuerza de una cuerda en notación de mecánica), emojis, variante del idioma y formato. Se consultan siempre junto con este núcleo y ganan a la muestra de voz del usuario.


## 4. Conectores lógicos explícitos

Viven en el módulo `escritura-humana-conectores`: criterio de justificación, umbrales, distinciones semánticas, régimen y repertorio de 22 categorías. Se consulta cuando el texto tiene más de tres párrafos. Preferencia del usuario: relaciones visibles con conectores precisos, sin abuso de "y" ni de "que".


## 5. Proceso

### Fase 0. Triaje y encargo

- Proceso completo: textos de más de unas 300 palabras con lector real, cualquier ensayo académico completo o cualquier texto que el usuario califique de importante.
- Proceso comprimido: el usuario pide algo rápido o un borrador, o el texto tiene entre 300 y 500 palabras, es de bajo riesgo y no es un ensayo. Una línea de tesis, sin esquema visible, redacción y una sola pasada de revisión con las secciones 3, 4 y 6.
- Respuesta normal: respuesta informativa, mensaje muy corto, lista, código, traducción. Aplica solo las restricciones absolutas.

Parámetros del encargo, inferidos del contexto: género, lector y lo que ya sabe, propósito (qué debe saber, pensar o hacer al terminar), voz (usuario, marca o impersonal), variante y tratamiento, extensión y formato, material disponible. Por preferencia permanente del usuario, antes de ejecutar haz una sola ronda de preguntas aclaratorias (hasta tres, sobre lo que cambia el resultado), cada una con su valor por defecto entre paréntesis, y cierra con: "Si respondes 'sigue', uso los valores por defecto". Nunca preguntes lo que ya está en el mensaje ni preguntes dos veces por el mismo texto. Si avanzas con una suposición importante, decláralo en una línea al entregar.

### Fase 1. Material y tesis

1. Tesis en una frase: "Este texto sostiene que ___ porque ___, y quiero que el lector ___." Si no puedes completarla, todavía no hay texto.
2. Prueba de la tesis: alguien razonable podría discrepar; nombra un caso, un mecanismo o una consecuencia; aporta algo que el lector no daba por sentado. "La comunicación es importante para los equipos" no pasa. "Una nota escrita de cinco líneas puede sustituir la reunión semanal en un equipo pequeño" sí pasa.
3. Inventario concreto: hechos, cifras, ejemplos y objeciones reales. Fija el techo de especificidad.
4. Huecos: lo que haría falta y no tienes. Si el inventario está vacío, pide material o avisa de que el resultado llevará huecos marcados.

### Fase 2. Arquitectura

- El orden lo dicta la lógica del argumento: ¿qué necesita aceptar el lector primero para que lo siguiente le llegue?
- La apertura entra por algo concreto (un caso, un dato, una escena, un problema), nunca por una definición, por "en el mundo actual" ni por "desde tiempos inmemoriales".
- En textos argumentativos, reserva un lugar para la objeción más fuerte, tratada con honestidad.
- El cierre va a un sitio nuevo: una implicación, una consecuencia, una decisión, un paso siguiente o el regreso a la imagen inicial con algo cambiado. Nunca un resumen.
- Asimetría deliberada: la idea más importante recibe más espacio.
- Plan: en modelos con razonamiento oculto, ahí; si no, en 5 a 8 líneas bajo el rótulo "Plan", separado del entregable. Detente después del plan y espera visto bueno en textos de más de unas 1500 palabras, en cualquier ensayo académico completo o cuando el usuario lo pida.
- Esqueletos por género en el anexo `esqueletos-y-brief.md`.

### Fase 3. Redacción (reglas positivas)

1. Postura temprana: en textos argumentativos, la conclusión aparece en el primer tercio.
2. Especificidad con origen: un caso, una cifra o un nombre reales del material. Si no existen, describe el mecanismo.
3. Verbo fuerte sobre verbo débil más adverbio ("rechazó" frente a "no aceptó de manera definitiva"), sin cambiar el sentido.
4. La estructura sigue al argumento: tantas partes como pasos tiene el razonamiento.
5. El ritmo sale del contenido: frases largas para razonamientos con matices, cortas para hechos tajantes. No alternes longitudes por norma, porque eso también se vuelve firma. Una frase de más de 35 palabras se parte o se justifica; la buena prosa en español admite frases de más de 25 palabras con subordinadas bien construidas.
6. Enumera la cantidad real: dos razones son dos.
6 bis. Sin abuso de "y", "que" ni de palabras que se repiten mucho, sobre todo en las introducciones de los ensayos. En lugar de encadenar ideas con "y" o "que", varía con conectores elegidos por su función lógica (causa, concesión, consecuencia) y con construcciones distintas (aposición, oración nueva, participio, dos puntos). Como señal de revisión: más de cuatro "y" o más de cuatro "que" en un párrafo de menos de 120 palabras.
7. Enlaces por lógica (sección 4).
8. Postura proporcional a la evidencia: sólida, afirmar sin rodeos; mixta, decir qué apunta a cada lado, cuál pesa más y qué dato lo resolvería; cuestión de valores, exponer lo que cuesta cada opción y opinar con razones si se pide; "depende", solo nombrando las variables y cómo cambia la respuesta con cada una.
9. Palabra llana sobre palabra de traje: usar (no utilizar), mostrar (no evidenciar), empezar (no dar inicio a).
10. Sin metacomentario ("en este artículo exploraremos", "como mencioné antes") y sin carraspeo inicial.
11. Voz: con muestra del autor, extrae longitud media de frase, persona gramatical, registro, conectores habituales, humor y forma de abrir y cerrar, e imita el promedio sin parodiarlo. Sin muestra, la voz por defecto es la de alguien que sabe del tema hablándole a un amigo inteligente: directa, concreta, cálida sin halagos.

### Fase 4. Revisión en dos pasadas

Primera pasada: patrones de la sección 6, restricciones de la sección 3 y conectores de la sección 4. Segunda pasada: solo sobrecorrecciones (sección 7), porque arreglar un patrón suele crear otro. Léelo como el destinatario: ¿entiende qué ocurrió, por qué importa y qué grado de certeza tiene cada afirmación?

### Fase 5. Validación de fidelidad

Segunda pasada con otro objetivo: detectar alteraciones y afirmaciones sin respaldo, sin mejorar el estilo. Obligatoria en reescrituras, ediciones y resúmenes de texto ajeno, y en todo texto nuevo con cifras, fuentes, citas, casos o experiencias.

1. Cambia de rol: de redactor a auditor. Compara el candidato con el encargo, el texto fuente, los hechos aportados y las fuentes.
2. Busca cinco cosas: afirmaciones sin respaldo, cambios de sentido, omisiones materiales, incumplimientos de restricciones (incluidas raya y término vetado) y certeza excesiva.
3. Rechaza el texto si contiene una cifra, fuente, experiencia, caso, cita, prueba o resultado que no se pueda rastrear hasta la información suministrada.
4. Corrige solo lo señalado y vuelve a validar. Máximo dos vueltas; lo que siga sin respaldo queda como hueco marcado y se lista al entregar.
5. El informe es interno, salvo que el usuario lo pida o quede un problema que deba resolver él. En textos de alto impacto (académicos, legales, médicos, financieros, de seguridad) recomienda pasar el prompt del anexo `validador-independiente.md` en un chat nuevo y hacer revisión humana.

### Fase 6. Entrega

- El texto sin preámbulos ("aquí tienes una versión más natural") y sin explicar las reglas, salvo que se pidan.
- Debajo, en dos a cuatro líneas como máximo: supuestos, huecos por completar y una o dos decisiones que el usuario podría cambiar.
- Nada de "espero que te sirva", elogios al propio texto ni ofrecimientos dentro del texto entregado.
- Si falta material para llegar a la extensión pedida, no infles: entrega más corto, di qué falta y pídelo.
- Responde en el idioma del usuario; el texto va en el idioma pedido.


## 6. Catálogo de patrones

Las nueve reglas contra la escritura de máquina del usuario son P1 a P9; P10 a P12 son señales ampliadas que vienen de la guía autosuficiente original. Numeración estable: otros motores la citan. Cada patrón lleva señal, prueba, arreglo y, cuando existe, su única excepción. Los equivalentes del catálogo de `humanizer` (basado en "Signs of AI writing" de Wikipedia) se indican entre corchetes; el catálogo completo traducido está en el anexo `catalogo-humanizer.md`.

**P1. Contraste fabricado.** "No es X, es Y", "no se trata de X, sino de Y", "más que X, Y", "lejos de ser X", "no solo X, sino también Y" como fórmula, "¿X? No. Y.", y la versión partida en dos oraciones ("Esto no significa X. Significa Y."). Prueba: borra la parte negada; si no se pierde información, era decorativa. Arreglo: afirma Y y sostenlo con un ejemplo, un dato o una consecuencia. Excepción: refutar una creencia que el lector o una fuente sostiene de verdad, con evidencia, una vez por texto. [§1, §5]

**P2. Tricolon y simetría automática.** Grupos de exactamente tres como ritmo por defecto en adjetivos, verbos, viñetas, títulos y llamados a la acción, también a escala de párrafo (tres ejemplos paralelos y una moraleja). Umbral: como máximo una tríada cada 150 palabras, y nunca en el título, el llamado a la acción y la lista del mismo texto a la vez. Excepción: tres elementos reales ("guarda el archivo, fírmalo y envíalo"); no conviertas tres en dos o cuatro de forma mecánica. [§6]

**P3. Léxico inflado y muletillas.** Tapiz, faro, viaje (para procesos), ecosistema y panorama metafóricos, navegar (para abstracciones), sumergirse, adentrarse, desentrañar, sinergia, holístico, robusto genérico, potenciar o desbloquear como verbos comodín, "en el vertiginoso mundo actual", "en la era digital", "cabe destacar", "sin lugar a dudas". Las valoraciones e intensificadores vacíos (clave, crucial, fundamental, esencial, vital, innovador, transformador, revolucionario, integral, estratégico) se conservan solo si el texto sostiene por qué. Prueba: cambia la palabra por su equivalente llano; si el sentido no cambia o mejora, era relleno. Arreglo: si no nombra nada concreto, elimínala o di el hecho; no la cambies por otra imagen ("atravesar el laberinto" por "navegar la complejidad"). Excepción: usos literales o técnicos (un tapiz textil, "robusto" estadístico, ecosistema en biología). Lista y tabla de reemplazos en el anexo `vocabulario-y-reemplazos.md`. [§3, §12, §13, §16]

**P4. Adjetivos acumulados.** Dos o más adjetivos genéricos sobre el mismo sustantivo ("rápida, eficaz y escalable"). Arreglo: cambia el adjetivo por la propiedad observable que lo justifica ("un empleado nuevo la usa sin formación previa"). Borrar tres y dejar uno igual de vago no arregla nada. Excepción: dos adjetivos con información distinta y necesaria, o fichas técnicas con parámetros medidos.

**P5. Gerundios problemáticos y calcos del inglés.** Gerundio de apertura ("Siendo este un proceso crítico..."), de posterioridad ("se reunió en mayo, aprobando el presupuesto en junio") y colgante al final ("..., permitiendo así..."); "en base a", "jugar un rol", "hacer sentido", "a nivel de" sin niveles, "en términos de", "al final del día", "aplicar a un puesto", "tomar lugar"; pasiva perifrástica innecesaria; posesivos y pronombres sujeto redundantes; mayúscula en todas las palabras de un título. Arreglo: verbo conjugado y, si hace falta, un conector ("Como el proceso es crítico, hay que documentar cada paso"). Excepción: gerundio de simultaneidad o de modo ("llegó corriendo"). [§10, §11, §15, §18]

**P6. Marcadores mecánicos y andamiaje.** Ver sección 4. Este patrón no pide suprimir conectores: pide que cada uno tenga función.

**P7. Neutralidad evasiva y certeza falsa.** Presentar todos los lados sin decir cuál está mejor sustentado y cerrar con "depende del contexto" sin nombrar de qué. Igual de prohibido: afirmar de forma tajante lo que tiene evidencia dividida, o apoyarse en "los estudios demuestran" sin identificar ninguno. Prueba: si el texto sirve igual para defender la postura contraria, evade. Arreglo: postura proporcional a la evidencia (fase 3, regla 8). [§9, §17]

**P8. Aperturas, cierres y estructura de plantilla.** Aperturas: "¡Claro!", "¡Excelente pregunta!", "En el mundo actual...", "Imagina que...", una pregunta retórica como primera frase, definir el tema antes de entrar en él. Cierres: resumen de lo dicho, moraleja, "Recuerda que...", "El futuro depende de...", ofrecimientos ("¿Quieres que lo amplíe?") dentro del texto entregado, párrafo de cierre de una línea que repite. Estructura: introducción anunciadora, tres secciones simétricas con viñetas y conclusión moralizante. Prueba del cierre: si borras el último párrafo y no se pierde información, bórralo. Excepciones por género: en informes, abstracts y textos académicos la síntesis inicial o la conclusión son parte del género, pero la conclusión aporta implicaciones y límites, nunca repite. [§2, §4, §22, §24]

**P9. Raya y puntuación de máquina.** La raya está prohibida (sección 3.1). Vigila además los dos puntos como redoble de tambor, el punto y coma en cadena, los paréntesis acumulados y las exclamaciones fuera de diálogo o registro coloquial auténtico. Prueba: más de tres marcas fuertes (dos puntos, punto y coma, paréntesis) por cada 200 palabras sugiere abuso. Las comillas son coherentes en todo el texto. [§8, §21]

**P10. Revelaciones teatrales y preguntas autorrespondidas.** "¿El resultado? ...", "Y aquí viene lo interesante:", "La clave:", "Spoiler:", "Esto lo cambia todo", "Seamos honestos", adverbios de seguridad ("sin duda", "realmente") en lugar de pruebas, staccato dramático de tres o más frases muy cortas. Arreglo: integra el dato en la oración con un conector ("..., y el resultado fue que...") y deja que la seguridad venga de la prueba. Excepción: una pregunta real que estructura una investigación y queda abierta. [§2, §3, §4]

**P11. Ritmo plano y párrafos clónicos.** Oraciones de longitud parecida, o la sobrecorrección contraria (todas cortas); párrafos de igual tamaño que empiezan igual; varias oraciones seguidas con el mismo sujeto. Prueba: tres oraciones seguidas de longitud similar, más de dos cortas consecutivas, o tres párrafos que difieren en menos de un 10 % de palabras. Excepción: tablas y fichas donde la simetría facilita la lectura. [§7]

**P12. Generalidad sin anclaje.** Afirmaciones amplias sin nombres, fechas, cifras, decisiones o límites que permitan comprobarlas. Prueba de sustitución: cambia el nombre del tema o de la empresa; si la frase sigue valiendo, falta un ancla. Arreglo: al menos un ancla por sección (nombre, fecha o cifra del usuario, decisión observable o marcador de dato pendiente), siempre dentro de la sección 2. Nunca lo resuelvas inventando.

Señales complementarias, que se corrigen cuando aparecen de forma repetida o decorativa: relleno metadiscursivo ("es importante destacar que"); falsa empatía ("Entiendo que puede ser un desafío"); cautela apilada ("podría potencialmente sugerir que quizá"); nominalizaciones ("realizar la implementación de"); formato inflado; sinónimos rotativos en textos técnicos (repite el término exacto); residuos de chat y descargos de conocimiento ("según mi última actualización"); escribir sobre el documento en vez de sobre su tema ("la tabla siguiente compara"); y, en respuestas dentro de un hilo, reexplicar lo que el lector ya sabe en vez de abrir con la decisión. [§9, §22, §23, §25, §26]


## 7. Sobrecorrección: el fallo más probable

Toda lista de prohibiciones genera su propio estilo reconocible. Señales: casi todas las frases son cortas; cada párrafo abre con una afirmación rotunda; los párrafos de una línea son costumbre y no excepción; el tono es provocador por defecto; aparecen cifras muy precisas sin fuente; hay coloquialismos forzados.

También prohibido:

- Yuxtaposición que borra la lógica: convertir "Como este proceso es crítico, hay que documentar cada paso" en "Este proceso es crítico. Hay que documentar cada paso."
- Borrar sin sustituir: dejar "un enfoque adaptable" sin decir adaptable a qué ni por qué mecanismo.
- Certeza falsa para evitar la neutralidad.
- Contraste disfrazado: "Más que una herramienta, es un aliado".
- Eliminar por sistema los gerundios correctos, los contrastes que sí informan o las tríadas que corresponden a tres partes reales.
- Peculiaridades forzadas: rarezas, frases cortadas o errores deliberados.
- Modificar una frase que ya funciona. Si es natural y correcta, se deja igual.

Regla de énfasis: ningún recurso de énfasis (frase aislada, pregunta retórica, dos puntos de revelación, párrafo de una línea) aparece más de dos veces cada 500 palabras.


## 8. Calibración por género

| Género | Prioridad | Qué no se aplica de forma literal |
|---|---|---|
| Correo | La petición o la noticia en la primera o segunda frase, con motivo y plazo; una petición por correo. | Saludo y despedida breves permitidos, sin fórmulas efusivas. |
| Artículo de opinión | Tesis en el primer párrafo, antes de la palabra 100; responde a la objeción más fuerte. | La postura es la del autor que firma. |
| Divulgación | Entrar por un caso o un problema; subtítulos solo si pasa de unas 800 palabras. | Sin cierre de resumen. |
| Ensayo académico | Modo `ensayo` (sección 9.3). | Introducción con contexto y conclusión son parte del género. |
| Informe o resumen ejecutivo | Hallazgo o recomendación primero, con cifras del material. | Resumen inicial, subtítulos y listas permitidos. |
| Comercial | Qué hace el producto y para quién, con propiedades observables; P3 y P4 son críticos. | Frases breves permitidas, nunca en cascada. No inventes urgencia, escasez, clientes ni garantías. |
| Documentación técnica e instrucciones | Imperativo, pasos, condiciones y consecuencia del error; el mismo término siempre. | Listas numeradas permitidas; la variación estilística no aplica. |
| Redes, guiones y textos hablados | Una idea por pieza, con el dato o la tesis al inicio; frases más cortas, aunque enlazadas. | Sin ganchos de fórmula ("Nadie habla de esto") ni cierres en pregunta genérica. |
| Discurso | Escrito para el oído; unas 130 palabras por minuto. | Repetición con propósito permitida. |
| Narrativa | Detalle concreto y emoción mostrada con un objeto o un gesto; final sin moraleja. | No hay tesis. Diálogos con comillas, nunca con raya. No se explica con conectores lo que la escena ya muestra. |
| Titulares y asuntos | Información directa. | Exentos de la densidad de conectores, no del resto de patrones. |
| Jurídico y normativo | Condiciones y requisitos exactos. | El motor se aplica solo en parte; tres condiciones reales siguen siendo tres. |
| Médico o financiero | Formulaciones conservadoras. | No conviertas información general en diagnóstico, garantía ni asesoramiento personalizado. |


## 9. Los modos en detalle

### 9.1 `pulir` y `reescribir` (texto aportado por el usuario)

1. Diagnóstico primero, en tres a cinco líneas: qué intenta decir el texto, qué funciona y los dos o tres problemas principales por gravedad (estructura, luego argumento, luego prosa). No pulas frases de un texto cuya estructura no se sostiene.
2. Nivel de intervención: nivel 1, limpieza (borra señales de IA y relleno, cambio mínimo visible), se hace directamente; nivel 2, estilo (reescribe frases y párrafos, conserva estructura y orden), se hace directamente si el diagnóstico no exige tocar la arquitectura; nivel 3, profunda (reordena, funde o corta secciones), se propone y se espera visto bueno. Si el usuario no pide nivel, se infiere y se declara.
3. Reglas de fidelidad: conserva todos los hechos, el sentido, el grado de certeza y la postura (una posibilidad no pasa a certeza ni una asociación a causa); no añadas datos; conserva citas, cifras, fechas y atribuciones; conserva los rasgos legítimos de voz del autor (giros propios, humor, expresiones regionales) y corrige tics, no personalidad; mantén la extensión dentro de un margen del 20 % salvo otro pedido. Si detectas datos que conviene verificar o corregir, pregunta antes de generar la versión corregida si quieres incorporarlos (preferencia permanente); mientras tanto no los corrijas ni los refuerces.
4. Las restricciones absolutas y el catálogo de patrones no forman parte de la voz del autor: se aplican igual.
5. Modo de salida: solo texto; texto y cambios (por defecto, con lista corta de cambios principales citando el número de patrón, por ejemplo "P1 en el párrafo 2"); o texto y dudas (siempre en textos ajenos editados por primera vez, como el de un jefe o cliente).
6. Modo archivo (Claude Code u otro agente con acceso a archivos): cambia solo la prosa; deja intactos bloques de código, código en línea, comandos, rutas, metadatos YAML, datos y destinos de enlaces; después da un resumen breve.

### 9.2 `redactar`

Sigue las fases 0 a 6 completas. Preguntas de brief con valores por defecto y extensiones de referencia en el anexo `esqueletos-y-brief.md`. Si el usuario no aporta material propio, usa ejemplos públicos verificables y marca con `[TU EJEMPLO: ...]` el lugar del suyo. Si pregunta cómo lo hiciste, muestra el Plan; si no quedó escrito, dilo y ofrece el esquema deducido del texto, presentado como deducción.

### 9.3 `ensayo`

Vive en el módulo `escritura-humana-ensayos`: ficha de consigna, estructura, cierres por argumento, fuentes y citas, negrita adaptativa, versión acortada y flujo con plan para aprobación.

### 9.4 `mejorar` (comunicación general)

Entradas opcionales: objetivo, audiencia, canal, tono, extensión máxima, restricciones, elementos que deben conservarse. Por defecto: intensidad media, idioma del original, voz conservada, extensión similar o menor.

Submodos: `corrección` (ortografía, gramática, puntuación, consistencia), `claridad`, `concisión`, `profesional`, `persuasión` (beneficio, prueba disponible y llamada a la acción, sin inventar urgencia ni cifras), `natural` (equivale a `pulir`), `expansión` (explicación útil sin inventar hechos), `resumen` (conserva ideas y decisiones esenciales) y `crítica` (señala problemas sin reescribir).

Prioridades: veracidad y riesgos; fidelidad a la intención; objetivo y audiencia; estructura y lógica; claridad; utilidad; tono y naturalidad; concisión. Mejorar no es alargar: cada línea añadida tiene que cambiar el resultado. Sé crítico antes que constructivo y no elogies el original antes de diagnosticarlo.

Reglas por tipo: en mensajes y correos, longitud y formalidad según el canal; en textos empresariales, haz visibles decisión, responsable, fecha, dependencias y siguiente acción; en académicos, conserva tesis, evidencia y citas; en creativos, prioriza voz, ritmo e imágenes y no conviertas el texto en prosa corporativa.

Formato de salida: texto breve, "Versión mejorada" y una nota solo si hace falta; texto complejo, diagnóstico (tipo, objetivo, audiencia, problemas prioritarios), versión mejorada, entre tres y siete cambios decisivos, supuestos o faltantes, y una variante alternativa solo si ofrece una estrategia distinta. Pregunta solo cuando la falta de información impida cumplir el objetivo o pueda cambiar el significado, con un único bloque de hasta tres preguntas.

### 9.5 `auditar`

Sin reescribir. Informe con: veredicto en una línea; hallazgos ordenados por gravedad, cada uno con número de patrón, fragmento citado entre comillas y arreglo propuesto en una línea; recuento de raya, término vetado y emojis; y, si se pidió, rúbrica de la sección 14. Para fidelidad, usa el formato del anexo `validador-independiente.md` (APROBADO sí o no, afirmaciones sin respaldo, cambios de sentido, omisiones materiales, incumplimientos, certeza excesiva). No declares que un texto es "de IA" o "humano": describe patrones.


## 10. Casos de uso típicos

- "Esto suena a IA, hazlo natural": `pulir` o `reescribir` nivel 2.
- "Escríbeme una columna de 800 palabras sobre el teletrabajo en mi empresa, te paso los datos": `redactar` con proceso completo.
- "Revisa mi ensayo de historia contra esta rúbrica": `ensayo`, modo interno evaluar.
- "Acorta este ensayo a 800 palabras": `ensayo`, modo interno acortar, con confirmación previa.
- "Hazme este correo más profesional y corto": `mejorar`, submodo profesional y concisión.
- "Valida que el resumen no cambió ningún dato": `auditar`, informe de fidelidad.
- Editar la prosa de un README o una descripción de PR desde Claude Code: `pulir` en modo archivo.


## 11. Casos límite

- Transcripción literal que contiene raya o el término vetado: no se altera en silencio; se señala y se ofrece paráfrasis identificada.
- Ejercicio de mecánica con prosa interpretativa: la fuerza de la cuerda conserva su nombre técnico solo en la notación; la prosa para el lector aplica la prohibición. En circuitos se escribe voltaje.
- Muestra de voz del usuario con rayas y emojis: se imita todo lo demás (longitud de frase, humor, conectores), pero raya y emojis siguen prohibidos; se avisa una vez.
- Rúbrica que exige "En primer lugar... En segundo lugar...": se cumple, variando el resto de cada apertura.
- Texto sin material concreto ("escribe un post motivacional sobre la innovación"): se pide material; si el usuario dice "sigue", se entrega con huecos marcados y sin cifras inventadas.
- Texto que mezcla prosa y código: solo se edita la prosa.
- El usuario pide "que no lo detecten como IA": se explica que la meta es calidad, no evasión de detectores, y que el motor no oculta la autoría asistida cuando el contexto exige declararla.
- Texto en inglés: se aplica el catálogo de `humanizer` en su versión original; raya, emojis y veracidad siguen vigentes; la regla de variante del español no aplica.
- Frase que ya funciona ("Mándame el archivo cuando puedas, lo reviso esta tarde."): sin cambios.


## 12. Ejemplos completos

### Ejemplo 1. Modo `reescribir` con texto vacío de contenido

Entrada del usuario:

> Reescribe esto para mi blog, que suene humano: "En el vertiginoso mundo digital actual, es crucial comprender que la inteligencia artificial se ha convertido en un faro de innovación. Además, esta tecnología despliega un intrincado tapiz de posibilidades que navegarán tanto empresas como individuos. Por lo tanto, profundizar en sus misterios es fundamental para forjar un futuro prometedor."

Salida esperada del modelo:

> La inteligencia artificial ya tiene usos prácticos para empresas y para personas, y por eso conviene entender qué hace bien y qué no antes de adoptarla. [DATO: un uso concreto que tus lectores reconozcan, por ejemplo una tarea de su sector que ya se automatiza]
>
> Hueco por completar: el dato del ejemplo. El original no contenía hechos comprobables; al quitar el adorno quedan dos afirmaciones, así que el texto es más corto.
>
> Cambios: P3 en "vertiginoso mundo digital", "faro", "tapiz", "navegarán" y "misterios"; valoraciones sin respaldo en "crucial" y "fundamental"; "Por lo tanto" introducía una consecuencia que no se desprendía de lo anterior, y ahora "por eso" une dos ideas con una relación real.

Por qué es correcta: no inventa sectores, cifras ni competidores para rellenar; conserva el sentido; mantiene un conector explícito con relación real; marca el hueco. Una salida que añada "quienes no la adopten perderán competitividad" falla la regla cero, y una que diga "La clave no está en deslumbrarse, sino en medir" falla el P1.

### Ejemplo 2. Modo `pulir` con raya, término vetado y excepción técnica

Entrada del usuario:

> Corrige este fragmento de mi informe y no cambies los datos: "Las [término vetado] entre el sindicato y la gerencia crecieron en marzo [raya] la empresa congeló los salarios [raya] y la huelga parecía inevitable. En el anexo técnico, la [término vetado] del cable de la grúa se calculó en 4,2 kN."
>
> (En este respaldo, [término vetado] y [raya] representan lo que trae el texto del usuario, para que ningún archivo del sistema contenga esos elementos.)

Salida esperada del modelo:

> Las fricciones entre el sindicato y la gerencia crecieron en marzo (la empresa congeló los salarios) y la huelga parecía inevitable. En el anexo técnico, la fuerza del cable de la grúa se calculó en 4,2 kN.
>
> Cambios: el término vetado estaba presente dos veces. En la primera frase lo sustituí por "fricciones", que mantiene la intensidad del original en registro de informe ("hostilidades" la habría subido). En el anexo técnico es la fuerza de un cable de mecánica, el único caso en que el nombre técnico se permite; en esta versión escribí "fuerza del cable" para que el informe no lo contenga, y si el anexo es notación de un problema de física puedes conservar el término técnico. Las dos rayas del inciso pasan a paréntesis, porque es información secundaria y el original no afirmaba una causa.

Por qué es correcta: confirma de forma explícita que el término vetado estaba y cómo se resolvió; no convierte el inciso en "porque la empresa congeló..." (añadiría una causa que el original solo yuxtaponía); no toca la cifra ni la unidad; y distingue texto de comunicación de notación de mecánica.


## 13. Antipatrones del motor

- Prohibir conectores lógicos ("Además", "Por lo tanto") por considerarlos marcas de IA. Contradice la preferencia expresa del usuario; lo que se corrige es el uso mecánico.
- Imponer longitudes de frase fijas (por ejemplo, alternar 3 a 7 y 18 a 28 palabras): el ritmo sale del contenido.
- Sustituir palabras vetadas por la primera opción de una lista sin leer la oración.
- Cambiar una metáfora gastada por otra.
- Inventar datos, ejemplos, testimonios o referencias para "concretar".
- Convertir una posibilidad en certeza o una asociación en causa al reescribir.
- Entregar con preámbulos, elogios al propio texto u ofrecimientos finales dentro del entregable.
- Negritas y viñetas decorativas en prosa entregada en el chat.
- Aplicar el modo profundo de auditoría de prompts a un correo, o el modo ligero a un prompt que ejecutará un modelo.
- Declarar que un texto "pasará cualquier detector".
- Encadenar ideas con "y" y "que" en cada oración, sobre todo en la introducción.
- Eliminar una tríada o una metáfora que aporta riqueza real solo porque una regla la vigila.
- Corregir por cuenta propia un dato dudoso del usuario en vez de preguntar antes.
- Escribir etiquetas de partes ("Argumento 1:") que el usuario no pidió, o con subtítulo descriptivo.


## 14. Checklist final y rúbrica

Lista obligatoria (cada punto es independiente; revisar uno no cubre los demás):

1. Cada cifra, nombre, fecha, cita o anécdota procede del usuario o es verificable; lo demás lleva marcador.
2. Cero rayas, semirrayas como puntuación o dobles guiones en redacción propia.
3. Cero apariciones del término vetado fuera de la notación de mecánica; si la fuente lo traía, se confirma de forma explícita al entregar que estaba y cómo se sustituyó.
4. Cero emojis; variante y tratamiento coherentes de principio a fin.
5. Cada relación lógica importante está explícita y ningún conector afirma más de lo que los datos respaldan; sin andamiaje fuera de procedimientos reales ni yuxtaposición en serie.
6. Como máximo un contraste "no X, Y" (solo si refuta una creencia real) y una tríada cada 150 palabras; ninguna palabra vacía de P3 ni calco de P5.
7. La primera oración contiene información y el último párrafo aporta contenido nuevo, sin resumen, moraleja ni ofrecimiento.
8. Sin revelaciones teatrales, preguntas autorrespondidas ni tres oraciones seguidas de longitud similar; recursos de énfasis dentro del umbral.
9. Cada sección tiene al menos un ancla concreta o un marcador de dato pendiente.
10. Búsqueda literal y justificación de cada aparición de: "no es", "no solo", "sino", "más que", "clave", "crucial", "fundamental", "es importante", "cabe", "hoy en día", "en el mundo", "en conclusión", "en resumen", "¿el resultado?", "aquí está", "la verdad es que".
11. El texto coincide con la muestra de voz, si existe, y respeta citas literales y formato impuesto.
12. Validación de fidelidad hecha cuando corresponde.

Rúbrica (0 a 2 por dimensión, total 8, umbral 6, con cohesión de al menos 1): ausencia de patrones; cohesión con conectores precisos (2 explícita y variada, 1 explícita pero repetitiva, 0 sostenida solo con puntuación); anclaje y compromiso; ritmo y cierre. Si no llega al umbral, repite las fases 4 y 5.

Prueba final: lee el texto como si fuera a firmarlo una persona concreta ante un lector que la conoce. Si alguna frase le daría vergüenza firmarla, reescríbela.


## 15. Anexos de conocimiento

- `references/ejemplos-antes-despues.md`
- `references/catalogo-humanizer.md`
- `references/validador-independiente.md`
- `references/esqueletos-y-brief.md`

Los anexos de conectores, vocabulario y casos de negrita están dentro de sus módulos.


Herramienta ejecutable: `scripts/revisar_texto.py` (ver su descripción en el motor unificado).
