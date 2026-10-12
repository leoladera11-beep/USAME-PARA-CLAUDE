---
name: escritura-humana
description: >
  Guía única y autosuficiente de escritura para que cualquier texto en español (ensayos, artículos, correos, textos comerciales, publicaciones, guiones, informes y respuestas largas) se lea como escrito por una persona con criterio propio. Úsala siempre que el usuario pida redactar, reescribir, corregir, pulir, resumir o "humanizar" un texto, o diga cosas como "hazlo sonar más natural", "esto suena a IA", "reescribe esto", "corrígeme el texto", "make this sound human" o "rewrite this", aunque no mencione la IA. Incluye la regla contra la invención de datos, el uso funcional de conectores, 12 patrones a evitar, restricciones absolutas de puntuación y vocabulario, calibración por género, lista de revisión y criterio de entrega. No depende de otras skills.
---

# Escritura humana en español

## 1. Qué resuelve y qué no

Los textos generados por modelos rara vez fallan en gramática, pero fallan porque no deciden: reparten el mismo peso entre todas las ideas, evitan comprometerse, ordenan el contenido con plantillas y lo adornan con vocabulario prestado. Escribir como una persona consiste, por eso, en tomar decisiones visibles: qué importa más, qué se deja fuera, qué relación une una idea con la siguiente y qué se afirma con seguridad frente a lo que se afirma con reservas.

La meta es que un lector exigente no perciba plantillas. La skill no promete superar detectores automáticos (que además son poco fiables), no autoriza a ocultar la autoría asistida cuando el contexto exige declararla y no permite inventar nada para que el texto "suene humano".

Archivos de apoyo, para consultar solo cuando hagan falta:
- `references/ejemplos.md`: antes y después de cada patrón, sobrecorrecciones y casos de resistencia.
- `references/conectores.md`: repertorio por relación lógica, con precauciones de uso.
- `references/vocabulario.md`: léxico inflado, valoraciones sin respaldo, tabla de reemplazos y reglas de la raya y de la palabra vetada.

## 2. Orden de prioridad ante conflictos

1. Exactitud: nunca se inventan datos, citas, estudios, resultados ni anécdotas (sección 4).
2. Instrucciones explícitas del usuario, restricciones absolutas (sección 3), citas literales, términos obligatorios y formatos impuestos.
3. Muestras de voz del usuario (sección 10).
4. Reglas de conectores (sección 6).
5. El resto de esta guía.
6. Preferencias estéticas del modelo.

Si una cita literal, un título oficial o un identificador contiene algo vetado por la sección 3, no lo alteres en silencio: señala la incompatibilidad y ofrece una paráfrasis identificada como tal, o pregunta si hace falta una excepción puntual.

## 3. Restricciones absolutas

Estas reglas no admiten excepciones de estilo ni se relajan por hábito.

**Raya.** No uses la raya (el guion largo) en ningún texto de redacción propia: ni en incisos, ni en diálogos, ni en títulos, tablas, listas o ejemplos. Tampoco uses doble guion ni otro signo como sucedáneo visual. No existe un signo sustituto fijo, así que identifica primero la relación entre las dos partes:
- aclaración breve dentro de la oración: coma;
- información secundaria: paréntesis;
- explicación o enumeración anunciada: dos puntos;
- dos proposiciones relacionadas: punto y coma, solo si resulta natural;
- ideas que ganan claridad separadas: punto;
- relación causal o adversativa real: un conector, solo si esa relación está en el original.
Después de corregir, comprueba que no creaste el defecto contrario (punto y coma en casi cada oración o paréntesis acumulados). Los diálogos propios van con comillas o con el nombre del hablante seguido de dos puntos. El guion corto se mantiene en palabras compuestas y en listas Markdown.

**Palabra vetada.** En cualquier texto de comunicación no uses el sustantivo que deriva de «tenso» (ni en singular ni en plural). No la cambies por la primera opción de una lista: determina qué expresa la oración y elige según el contexto (tabla completa en `references/vocabulario.md`):
- conflicto entre personas, social o político: fricciones, roces, tiranteces, disputas, desacuerdos, enfrentamientos, choques, pugna, rivalidad, sin subir ni bajar la intensidad real (un desacuerdo cordial no es una hostilidad);
- estado emocional: estrés, presión, nerviosismo, inquietud, desasosiego, agobio (no uses "ansiedad" como reemplazo automático, porque suena clínica);
- suspenso narrativo o dramático: suspenso, intriga, expectación;
- físico o mecánico fuera de un ejercicio técnico: tirantez, rigidez, presión, contracción.
Excepción: un ejercicio técnico no es un texto de comunicación. En mecánica (la fuerza de una cuerda, un cable o una polea, en newtons) y en circuitos (el voltaje) se conserva el nombre técnico estándar de esa magnitud. En resistencia de materiales, el esfuerzo normal o de tracción, en pascales, se llama «esfuerzo». Si un texto mezcla notación técnica y prosa, aplica la convención técnica solo a la notación.

**Emojis.** Ninguno, en ninguna circunstancia.

**Variante del idioma.** Español latinoamericano neutro: tuteo o usted, sin voseo, sin modismos rioplatenses ni peninsulares (vosotros, vale, ordenador, coste, móvil como equivalente de celular). Cambia de variante solo si el usuario lo pide de forma explícita.

**Negritas y viñetas.** Nunca decorativas. En un texto que se entrega dentro del chat no se usan negritas ni asteriscos; se reservan para archivos de documento. Las viñetas se usan solo para elementos realmente paralelos y listables, nunca para argumentar.

## 4. Regla contra la invención

La concreción es lo que más humaniza un texto, pero la concreción inventada lo destruye. Por eso:

- Toda cifra, fecha, estudio, cita, nombre propio, experiencia o anécdota debe proceder del usuario, de una fuente consultada en la tarea actual o ser conocimiento general verificable.
- Separa lo que manejas: dato aportado (viene del encargo, pero no está verificado), dato comprobado (hay fuente consultada), inferencia (se deriva de los datos y se expresa con su grado de certeza) e hipótesis o ejemplo (ilustra, no ocurrió). Nunca conviertas un dato aportado en comprobado sin verificarlo, y no digas que consultaste algo que no consultaste.
- Si el texto necesita un dato que no tienes, deja un marcador: `[DATO: ahorro por empleado, con fuente]`, `[EJEMPLO REAL: caso de un cliente]`, `[EXPERIENCIA DEL AUTOR: ...]`. Si no hay datos, concreta de otra forma: una situación reconocible, un mecanismo o una consecuencia, y si recurres a un caso hipotético, preséntalo como tal ("pongamos que un equipo de diez personas...").
- Nunca escribas "los estudios demuestran", "los expertos coinciden" ni "según datos recientes" sin una fuente concreta.
- No amplíes el alcance de un resultado: si algo bajó en un solo hospital, no se afirma que baja en cualquiera. Una atribución ("según el informe") tampoco garantiza la veracidad de lo atribuido.
- No fabrices personalidad: ni seguridad ni polémica para aparentar carácter, ni una voz personal con vivencias que el usuario no aportó (salvo ficción identificable como tal).
- Si falta un dato indispensable para sostener una afirmación importante, pregunta, deja constancia de la incertidumbre o redacta sin esa afirmación. Si el dato es un detalle menor de estilo, adopta una opción prudente y sigue.

La infracción de esta sección anula todo lo demás, por bien escrito que esté el texto.

## 5. Proceso

**Fase 1, diagnóstico proporcional.** Identifica género, lector, propósito (qué debe saber, pensar o hacer al terminar), longitud, formato y variante. Formula la idea principal en una sola oración: si no puedes, todavía no estás en condiciones de redactar. Haz inventario del material real y anota lo que falta. Si la petición es ambigua en algo que cambia el resultado (tipo de texto, lector, datos disponibles), haz una sola ronda de preguntas breves y concretas antes de redactar. Si la duda es menor, avanza con la opción más prudente y declara la suposición en una línea solo cuando importe.

**Fase 2, redacción.** Empieza por la información, no por el contexto genérico. Da más espacio a lo importante y menos a lo accesorio, aunque eso rompa la simetría. Explicita con conectores las relaciones lógicas (sección 6) y alterna oraciones largas y bien enlazadas con alguna corta que marque un énfasis real.

**Fase 3, revisión en dos pasadas.** Primero recorre los patrones de la sección 7 y la lista de la sección 12. Después haz una segunda lectura solo para detectar sobrecorrecciones (sección 11), porque arreglar un patrón suele crear otro. Léelo como si fueras el destinatario: ¿entiendes qué ocurrió, por qué importa y qué grado de certeza tiene cada afirmación?

**Fase 4, entrega.** Entrega el texto sin preámbulos del tipo "Aquí tienes una versión más natural". Si quedan marcadores de posición, enuméralos al final. Añade una nota de verificación (patrones corregidos, familias de conectores usadas, decisiones de estilo, datos pendientes) solo si el usuario pide diagnóstico o revisión; en ese caso separa los problemas detectados de la versión corregida. Si la entrada es una imagen, trabaja únicamente con lo que se ve o se lee y señala lo ilegible.

## 6. Conectores

El punto separa y los conectores relacionan. Un texto humano muestra cómo se enlazan sus ideas, mientras que una serie de afirmaciones yuxtapuestas obliga al lector a reconstruir la lógica por su cuenta. Repertorio y precauciones en `references/conectores.md`.

1. **Relación explícita.** Cuando entre dos oraciones o párrafos hay causa, consecuencia, contraste, concesión, condición, finalidad, ejemplo, reformulación o tiempo, y esa relación importa, se marca con un conector. Ni la coma, ni los dos puntos, ni el punto y coma bastan por sí solos para transmitir una causa o un contraste relevantes.
2. **Umbral de revisión, no cuota.** En prosa expositiva o argumentativa, si un párrafo de tres oraciones o más tiene ideas relacionadas y menos de dos relaciones marcadas, revísalo. Revisar no significa insertar por obligación: no se añaden conectores por cuota, ni en títulos, asuntos de correo, etiquetas, citas literales, instrucciones de una sola cláusula o escenas narrativas que ya muestran la relación.
3. **Precisión.** El conector debe corresponder a la relación real. "Además" no introduce un contraste; "por lo tanto" exige que lo anterior sea causa o premisa suficiente; "es decir" reformula y no introduce una afirmación más fuerte; "si" no equivale a "solo si"; una correlación no se convierte en causa mediante un conector. Si el conector afirma algo que los datos no demuestran, modéralo o elimínalo.
4. **Variedad funcional.** No repitas el mismo conector dentro de un párrafo ni en dos párrafos consecutivos, y varía su posición ("El plan, sin embargo, tenía un fallo"). Los conectores simples y frecuentes (pero, porque, aunque, si) pueden repetirse cuando su función lo pida, y nunca los cambies por equivalentes solemnes (empero, habida cuenta de que) solo para variar.
5. **Sin yuxtaposición en serie.** No escribas dos o más oraciones cortas unidas solo por puntos cuando existe una relación entre ellas ("Es rápido. Es barato. Funciona."). Se admite una oración corta aislada para enfatizar, una vez por texto.
6. **Sin andamiaje.** "En primer lugar", "en segundo lugar", "por último", "en conclusión", "en resumen" y "para finalizar" no son el esqueleto del texto. Los ordinales se admiten en procedimientos reales, donde el orden es parte del contenido. Un resumen parcial que orienta dentro de un desarrollo extenso es legítimo, pero nunca cierra el texto completo.
7. **Sin relleno.** "Cabe destacar que", "es importante señalar que" y "vale la pena mencionar que" no son conectores sino muletillas.
8. **Aperturas de párrafo.** Tres o más aperturas consecutivas de la misma categoría son mecánicas, salvo en listas, procedimientos o comparaciones paralelas. No obligues a que los párrafos empiecen con conector ni a que empiecen sin él.
9. **Referentes claros.** Comprueba a qué remiten "esto", "ello", "lo anterior" o "esa razón"; si hay varios antecedentes posibles, nombra el relevante.
10. **Longitud.** Mantén juntas en una oración las ideas estrechamente vinculadas mientras la lectura siga clara. Divide cuando se pierda la afirmación principal, se acumulen subordinadas confusas o cambie el foco, y conserva después de dividir los conectores que sigan haciendo falta.

## 7. Patrones a evitar

Cada patrón indica cómo reconocerlo y qué hacer. Los ejemplos están en `references/ejemplos.md`. Los nueve primeros son el núcleo, y el noveno (la raya) es además una restricción absoluta.

**P1. Contraste fabricado ("No es X, es Y").** Fabrica profundidad oponiendo dos ideas que nadie había enfrentado, sin aportar información. Variantes igualmente prohibidas: "más que X, Y", "lejos de ser X", "no se trata de X, se trata de Y", "no solo X, sino Y" usado como fórmula, "¿X? No. Y." Prueba: si puedes reemplazar el segundo término por su contrario y la frase suena igual de profunda, es relleno. Excepción: X es una creencia que el lector o una fuente sostiene de verdad y se refuta con argumentos (una vez por texto), o una definición operativa donde la negación fija un límite real. En su lugar: afirma algo y respáldalo con un mecanismo, un ejemplo o una consecuencia.

**P2. Simetría automática y tricolon.** Grupos de exactamente tres en cada lista, eslogan o cierre; parejas paralelas; tres frases cortas seguidas. Prueba: cuenta las tríadas; si hay más de una, cada una debe estar justificada por el contenido. En su lugar: el número de elementos lo decide el contenido (dos si son dos, cuatro o cinco si lo son) y nunca se cierra con una tríada de lema.

**P3. Léxico inflado y muletillas.** Tapiz, faro, viaje (para procesos), ecosistema y panorama fuera de su sentido literal, navegar (para abstracciones), sumergirse, adentrarse, desentrañar, sinergia, holístico, "en el vertiginoso mundo actual", "en la era digital", "cabe destacar", "sin lugar a dudas". Lista completa y tabla de reemplazos en `references/vocabulario.md`. Prueba: cambia la palabra por su equivalente llano; si el sentido no cambia o mejora, era relleno. No la reemplaces por otra imagen del mismo tipo. Los usos literales o técnicos no están prohibidos (un tapiz textil, "robusto" como término estadístico, un ecosistema en biología). Las valoraciones sin respaldo (clave, crucial, fundamental, vital, innovador, transformador, robusto) se conservan solo si el texto sostiene por qué.

**P4. Adjetivos acumulados.** "Una plataforma potente, intuitiva y escalable" afirma cualidades sin demostrarlas. En su lugar: cambia el adjetivo por la propiedad observable que lo justifica ("un empleado nuevo la usa sin formación previa"). Borrar sin sustituir empobrece el texto, y si el sustantivo no necesita adjetivo, no se le pone ninguno. Excepción: fichas técnicas donde cada adjetivo corresponde a un parámetro medido.

**P5. Gerundios y calcos del inglés.** Gerundio de posterioridad ("aprobó la ley, entrando en vigor en marzo"); "siendo" como causal; pasiva perifrástica innecesaria; "a nivel de", "en términos de", "jugar un rol", "hacer sentido", "aplicar a un puesto", "tomar lugar"; posesivos y pronombres sujeto redundantes; mayúscula inicial en todas las palabras de un título. En su lugar: oración con verbo conjugado y, si hace falta, un conector causal ("Como el proceso es crítico, hay que documentar cada paso"). Los gerundios correctos, con sujeto claro y simultaneidad real, no se tocan.

**P6. Marcadores mecánicos y andamiaje.** Cadenas fijas del tipo "en primer lugar, además, sin embargo, en conclusión" que se pueden predecir sin leer el argumento. Ver la sección 6, puntos 4 a 8. En su lugar: conectores elegidos por la relación real de cada transición.

**P7. Neutralidad evasiva y certeza falsa.** Forma evasiva: "hay quienes piensan X y quienes piensan Y, depende del contexto". Forma opuesta, igual de prohibida: presentar como zanjado algo que no lo está. Prueba: si el texto sirve igual para defender la postura contraria, evade. En su lugar: si se pide una opinión, dala con claridad y con su alcance; si hay incertidumbre, especifica cuál es (qué se sabe, qué no y de qué depende) en lugar de un "depende" genérico. Excepción: una revisión sistemática que exige neutralidad metodológica debe cerrar igualmente con una recomendación condicionada.

**P8. Aperturas, cierres y estructura de plantilla.** Aperturas prohibidas: "¡Claro!", "¡Excelente pregunta!", "En el mundo actual...", "Imagina que...", una pregunta retórica como primera frase, definir el tema antes de entrar en él. Cierres prohibidos: resumen de lo dicho, moraleja, "Recuerda que...", "El futuro depende de...", ofrecimientos del tipo "¿Quieres que lo amplíe?" dentro del texto entregado. Estructura prohibida: introducción anunciadora, tres secciones con viñetas y conclusión moralizante. Prueba: si puedes intercambiar introducción y conclusión entre textos distintos sin que se note, hay molde. En su lugar: la primera oración ya contiene información, la estructura sigue al argumento y el texto termina en su último punto sustantivo (un dato, una decisión, un límite o un paso siguiente). Excepción: plantillas corporativas impuestas, donde se cumple el formato y se añade contenido específico.

**P9. Raya y puntuación de máquina.** La raya está prohibida sin excepción (sección 3). Vigila además los dos puntos usados como redoble de tambor, el punto y coma en cadena, los paréntesis acumulados y las exclamaciones (solo en diálogo o registro coloquial auténtico). Prueba: más de tres marcas fuertes (dos puntos, punto y coma, paréntesis) por cada 200 palabras sugiere abuso. En su lugar: un conector que nombre la relación. Las comillas deben ser coherentes a lo largo de todo el texto.

**P10. Revelaciones teatrales, preguntas retóricas y compromiso de adorno.** "¿El resultado? ...", "Y aquí viene lo interesante:", "La clave:", "Spoiler:", "Esto lo cambia todo", preguntas seguidas de su propia respuesta, y adverbios de seguridad ("sin duda", "realmente") en lugar de pruebas. Prueba: si eliminas la pregunta o la muletilla y la frase no pierde información o mejora, era adorno. En su lugar: integra el dato en la oración con un conector ("..., y el resultado fue que...") y deja que la seguridad venga de la prueba. Excepción: una pregunta real que estructura una investigación y queda abierta varias páginas.

**P11. Ritmo plano y párrafos clónicos.** Oraciones de longitud parecida, o la sobrecorrección contraria (todas cortas); párrafos de igual tamaño que empiezan igual. Prueba: tres oraciones seguidas de longitud similar, más de dos cortas consecutivas, o tres párrafos que difieren en menos de 10 por ciento de palabras. En su lugar: alterna párrafos cortos con largos, varía los inicios y rompe el paralelismo con un inciso o un ejemplo. Excepción: tablas y fichas donde la simetría facilita la lectura.

**P12. Generalidad sin anclaje.** Afirmaciones amplias sin nombres, fechas, cifras, decisiones o límites que permitan comprobarlas. Prueba: si un párrafo de 80 palabras no contiene ningún sustantivo concreto ni número, flota en el vacío. En su lugar: añade al menos un ancla por sección (un nombre, una fecha o cifra del usuario, una decisión observable o un marcador de dato pendiente), siempre dentro de la sección 4. Excepción: manifiestos breves, que aun así deben incluir un compromiso observable.

## 8. Voz humana: qué hacer

- **Postura temprana.** Declara en el primer tercio qué sostienes, para quién, con qué límite y con qué prueba mínima ("sostengo que", "recomiendo cuando"). Un ángulo polémico solo si el género lo permite y el autor lo respalda; nunca se fabrica una controversia.
- **Anclaje concreto.** Antes de cada afirmación general pregunta cuál es el caso específico que la hizo cierta y úsalo si el usuario lo aportó.
- **Asimetría deliberada.** Un párrafo de dos oraciones, seguido de uno de seis y de otro de una línea: ese ritmo es humano. Varía también el orden de las ideas y los inicios de frase.
- **Un verbo fuerte** vale más que un verbo débil con adverbio ("rechazó" frente a "no aceptó de manera definitiva").
- **Cierre sustantivo.** Termina en el último dato, decisión, límite o paso siguiente. Si el género exige una recomendación, formúlala con condición y plazo.

## 9. Calibración por género

- **Académico:** tercera persona o primera del plural, densidad alta de conectores, fuentes obligatorias, cautela explícita y alcance de los resultados bien delimitado.
- **Ensayo:** estructura de tesis, cuerpo y conclusión por defecto, sin etiquetas visibles del tipo "Mini-conclusión", entregado en el chat como texto limpio (sin negritas ni asteriscos). Se conservan siempre las citas de fuente al reescribir o resumir. Solo se entrega versión resumida si se pide. Si existe una skill específica de ensayos, aplícala también.
- **Comercial:** beneficios demostrados con propiedades observables; los datos del cliente que falten van como marcador. P3 y P4 son los patrones críticos.
- **Correo profesional:** la petición en las dos primeras oraciones, junto con el motivo y el plazo; sin saludos efusivos ni despedidas de plantilla.
- **Técnico e instrucciones:** los pasos numerados son legítimos porque son un procedimiento real; la prosa explicativa sigue la sección 6.
- **Opinión:** postura en el primer párrafo, argumentos con mecanismo y una objeción seria respondida.
- **Personal o narrativo:** primera persona, detalles aportados por el autor y ninguna anécdota inventada; no se explica con conectores lógicos lo que la escena ya muestra.
- **Redes, guiones y textos hablados:** frases más cortas, aunque enlazadas; sin ganchos de fórmula ("Nadie habla de esto") ni cierres en pregunta genérica.
- **Titulares y asuntos:** exentos de la densidad de conectores, pero no del resto de patrones.
- **Jurídico y normativo:** la skill se aplica solo en parte; se conservan exactas las condiciones y los requisitos (tres condiciones reales siguen siendo tres).

## 10. Voz del usuario

Si el usuario aporta muestras de su escritura, extrae antes de redactar la longitud media de sus oraciones, la persona gramatical, el registro, sus conectores habituales, su humor y su forma de abrir y cerrar. Esa voz prevalece sobre las preferencias de esta guía, salvo en lo que nunca cede: la regla contra la invención, las restricciones absolutas y el uso de conectores lógicos.

## 11. Sobrecorrecciones que también están prohibidas

Arreglar un patrón suele crear otro. Vigila:
- **Yuxtaposición que borra la lógica:** convertir "Como este proceso es crítico, hay que documentar cada paso" en "Este proceso es crítico. Hay que documentar cada paso."
- **Estilo entrecortado en serie:** frases cortas y secas para "sonar humano".
- **Borrar sin sustituir:** dejar "un enfoque adaptable" sin decir adaptable a qué y por qué mecanismo.
- **Certeza falsa para evitar la neutralidad:** "Está demostrado que..." sin respaldo.
- **Contraste disfrazado:** "Más que una herramienta, es un aliado".
- **Eliminar por sistema** los gerundios correctos, los contrastes que sí informan o las tríadas que corresponden a tres partes reales.
- **Peculiaridades forzadas:** rarezas, frases cortadas o errores deliberados para parecer menos automático.
- **Reemplazar una imagen por otra:** cambiar "navegar la complejidad" por "atravesar el laberinto".
- **Modificar una frase que ya funciona.** Si la frase original es natural y correcta, se deja igual.

## 12. Revisión y criterio de entrega

**Lista obligatoria antes de entregar** (todo debe cumplirse, y cada punto es independiente de los demás):
- Cada cifra, estudio, cita o anécdota procede del usuario o es verificable; lo demás lleva marcador.
- Ninguna restricción de la sección 3 está violada: sin raya ni sucedáneo, sin la palabra vetada fuera de un ejercicio técnico, sin emojis, en la variante correcta.
- Cada relación lógica importante está explícita y ningún conector afirma más de lo que los datos respaldan.
- No hay andamiaje fuera de procedimientos reales, ni yuxtaposición en serie, ni conectores repetidos en el mismo párrafo o en párrafos consecutivos.
- Como máximo un contraste "no X, Y", solo si refuta una creencia real; como máximo una tríada, justificada; ninguna palabra vacía de P3; ningún calco de P5.
- La primera oración contiene información, y el último párrafo aporta contenido nuevo, sin resumen, moraleja ni ofrecimiento.
- No hay revelaciones teatrales, ni preguntas retóricas autorrespondidas, ni tres oraciones seguidas de longitud similar.
- Cada sección tiene al menos un ancla concreta o un marcador de dato pendiente.
- Si se pidió una opinión, la postura es clara, y la incertidumbre, cuando existe, está especificada.
- El texto coincide con las muestras de voz del usuario, si las hay, y respeta las citas literales y el formato impuesto.

**Rechazo automático.** Reescribe si ocurre cualquiera de estos fallos, aunque el resto esté bien: un dato, cita, experiencia o característica aparece como real sin respaldo; se incumple una restricción absoluta; una relación esencial queda insinuada solo con puntuación; se pierde información, formato o cautela necesarios para la tarea; un párrafo repite el anterior sin añadir contenido; el texto declara haber sido escrito por una persona concreta sin constar, o promete ser "indetectable".

**Rúbrica** (0 a 2 puntos por dimensión, total 8, umbral 6, con cohesión de al menos 1):
- Ausencia de patrones: 2 sin abusos, 1 un abuso leve, 0 abuso sistemático.
- Cohesión mediante conectores precisos: 2 explícita y variada, 1 explícita aunque repetitiva, 0 sostenida solo con puntuación.
- Anclaje y compromiso: 2 postura más ancla, 1 postura sin ancla, 0 generalidad evasiva.
- Ritmo y cierre: 2 asimétrico con cierre sustantivo, 1 parcialmente simétrico, 0 molde con moraleja.
Si el texto no llega al umbral, repite las fases 3 y 4 antes de entregar.

**Prueba final.** Lee el texto como si fuera a firmarlo una persona concreta, con nombre y apellidos, ante un lector que la conoce. Si alguna frase le daría vergüenza firmarla, reescríbela.


---
# ANEXO / REFERENCIA: references/ejemplos.md

# Ejemplos: antes y después

Todos los datos entre corchetes son marcadores que deben completarse con información real. Los ejemplos con cifras concretas son ilustrativos y nunca deben copiarse como hechos. Los textos "Antes" contienen a propósito los defectos que se corrigen, incluidas las marcas [raya] que sustituyen al signo prohibido.

## 1. Antes y después por patrón

### P1. Contraste fabricado

Académico
- Antes: "La educación no es transmitir información, es transformar personas."
- Después: "Transmitir información sigue siendo una función central de la escuela. Sin embargo, un estudiante que memoriza fechas sin saber relacionarlas casi no puede usarlas fuera del aula, de modo que la pregunta útil es cómo se enseña a relacionar."

Comercial
- Antes: "Nuestro producto no es una herramienta, es una solución."
- Después: "El programa traslada los datos de una plataforma a otra sin intervención manual, así que el equipo deja de copiar tablas a mano cada viernes. En las pruebas internas, ese cambio ahorró [DATO: minutos por empleado y día, con fuente]."

Contraste legítimo (refuta una creencia real, una vez por texto)
- Después: "La demora no se debe a la falta de personal, como sugiere el informe interno, porque [DATO: horas asignadas por área] muestra que el área trabajó con su dotación completa."

### P2. Simetría automática y tricolon

- Antes: "Únete, aprende y transforma tu carrera."
- Después: "Si te apuntas ahora, en seis meses sabrás si este oficio es para ti y, si no lo es, habrás perdido poco."

Asunto de correo
- Antes: "Aumenta tu productividad, reduce el estrés y mejora tus resultados."
- Después: "Cómo reducir reuniones sin perder coordinación."

Tres elementos que sí son tres (se conserva)
- "Incluye la fecha, la firma y el número de expediente, porque sin esos datos el formulario queda incompleto."

### P3. Léxico inflado y muletillas

Apertura de blog
- Antes: "En el vertiginoso panorama actual, las empresas deben navegar un ecosistema en constante evolución para desentrañar las claves del éxito."
- Después: "Cuando una empresa mediana tarda semanas en aprobar un gasto pequeño, lo que suele fallar es la cadena de decisión, porque varias personas pueden bloquear la compra y ninguna tiene autoridad para aprobarla."

Descripción de producto (supuesto: el briefing confirma que cancela ruido y que no tiene ecualizador)
- Antes: "Sumérgete en una experiencia sonora que actúa como un faro en tu día a día."
- Después: "Estos auriculares cancelan el ruido del tráfico y de la oficina lo bastante bien como para trabajar sin música. En cambio, no tienen ecualizador ni funciones de salud, porque se diseñaron solo para aislar."

Uso literal (se deja igual)
- "El museo restauró un tapiz del siglo XVII."

### P4. Adjetivos acumulados

Académico
- Antes: "Se propone un enfoque metodológico integral, riguroso y adaptable al contexto investigador."
- Después: "Se propone un método que combina encuestas y entrevistas, de manera que las preguntas de las entrevistas puedan ajustarse a lo que revelen las encuestas en cada centro."

Comercial
- Antes: "Una plataforma potente, intuitiva y escalable diseñada para equipos modernos."
- Después: "Un empleado recién incorporado puede publicar su primer informe sin formación previa, y el sistema admite [DATO: número] usuarios simultáneos sin perder velocidad."

### P5. Gerundios y calcos del inglés

- Antes: "Siendo este un proceso crítico, debemos asegurarnos de documentar cada paso."
- Después: "Como este proceso es crítico, hay que documentar cada paso."

- Antes: "El comité aprobó la norma, entrando en vigor al mes siguiente."
- Después: "El comité aprobó la norma, que entró en vigor al mes siguiente."

- Antes: "A nivel de ventas, el trimestre fue positivo en términos de crecimiento, jugando el equipo comercial un rol clave."
- Después: "Las ventas crecieron este trimestre, sobre todo gracias al equipo comercial, que cerró [DATO: número] contratos nuevos."

Gerundio correcto (se conserva)
- "Llegó caminando bajo la lluvia."

### P6. Marcadores mecánicos y andamiaje

Ensayo
- Antes: "En primer lugar, analizaremos el contexto histórico. Además, estudiaremos sus causas. Sin embargo, no debemos olvidar las consecuencias. En conclusión, este fenómeno sigue siendo relevante hoy."
- Después: "Durante los años veinte, muchos inversionistas estadounidenses compraban acciones pagando en efectivo solo una fracción del precio, de modo que buena parte del mercado se sostenía con deuda. Muchos intuían el riesgo, pero nadie quería vender primero, porque quien saliera antes renunciaba a las ganancias que seguían obteniendo los demás. Cuando en octubre de 1929 empezaron a vender casi todos a la vez, los precios cayeron más rápido de lo que podían cubrirse los préstamos, y la crisis pasó de la bolsa a los bancos."

Productividad
- Antes: "Introducción: La productividad es fundamental en el mundo actual. En primer lugar, organiza tu tiempo. Además, elimina distracciones. Por último, descansa lo suficiente. En conclusión, aplicar estos consejos transformará tu vida profesional."
- Después: "Casi todos los consejos de productividad tratan el trabajo como si fuera homogéneo, aunque revisar el correo y redactar un informe exigen tipos de atención muy distintos. Por eso el primer cambio útil consiste en separar ambas tareas en el calendario, con bloques que no se muevan cuando alguien proponga una reunión. Las aplicaciones y los rituales matutinos pueden venir después, si todavía hacen falta."

Procedimiento real (se conservan los ordinales)
- "Primero, verifica la conexión. Después, reinicia el dispositivo. Por último, comprueba si el error persiste."

### P7. Neutralidad evasiva y certeza falsa

Opinión
- Antes: "Hay quienes consideran que las redes sociales son beneficiosas, mientras que otros las ven como perjudiciales. La respuesta depende del contexto y del uso que cada persona haga de ellas."
- Después: "Creo que darle a un niño de doce años un celular con redes sociales sin límites es una mala idea. La evidencia científica no es concluyente, ya que muchos estudios encuentran efectos pequeños y difíciles de separar de otras causas. En cambio, riesgos como el acoso o las horas de sueño perdidas son fáciles de observar, y los beneficios a esa edad casi siempre pueden obtenerse por otras vías. Por eso prefiero retrasar el acceso antes que esperar pruebas definitivas."

Académico (incertidumbre precisa)
- Antes: "El programa reduce los reingresos en cualquier hospital."
- Después (supuesto: durante un piloto bajaron los reingresos en un solo hospital): "Durante el piloto bajaron los reingresos en ese hospital, aunque faltan datos para saber si ocurriría lo mismo en otros centros."

### P8. Aperturas, cierres y estructura de plantilla

Apertura de respuesta
- Antes: "¡Excelente pregunta! La fotosíntesis es un proceso fascinante que juega un papel crucial en nuestro ecosistema."
- Después: "Las plantas usan la luz para convertir dióxido de carbono y agua en azúcares, y durante ese proceso liberan oxígeno."

Cierre de artículo
- Antes: "En resumen, hemos visto que la inteligencia artificial presenta tanto oportunidades como desafíos. Recuerda que el futuro depende de las decisiones que tomemos hoy."
- Después: se elimina el párrafo y el artículo termina en su último punto sustantivo.

Correo profesional
- Antes: "¡Hola! Espero que estés muy bien. Te escribo para comentarte que, en relación con el proyecto, sería importante destacar que necesitamos avanzar en la entrega. ¡Quedo atento a tus comentarios!"
- Después: "Hola, Marta: necesito el borrador del informe antes del jueves, porque el viernes lo presentamos al cliente y quiero tener un día para revisarlo. Si no llegas a tiempo, avísame hoy y buscamos otra solución."

Publicación en redes (supuesto: el autor aportó estos hechos)
- Antes: "Hoy quiero compartir una lección que cambió mi carrera. No se trata de trabajar más, se trata de trabajar mejor. Constancia. Disciplina. Visión. ¿Estás listo para dar el salto?"
- Después: "Durante dos años acepté todos los encargos que me ofrecían, porque pensaba que decir que no me cerraría puertas. En realidad, acabé entregando tarde a los clientes que más me importaban. Desde que rechazo parte de los encargos cobro algo más por hora, aunque todavía me cuesta enviar esos correos."

### P9. Raya y puntuación de máquina

- Antes: "El resultado fue claro [raya] había que cambiar [raya] y nadie actuó."
- Después: "El resultado fue claro: había que cambiar. Aun así, nadie actuó."

- Antes: "Tres lecciones: constancia; foco; paciencia."
- Después (supuesto: el autor aportó los hechos): "Aprendió a sostener el proyecto durante [DATO: tiempo] sin ingresos y, además, a rechazar ofertas laterales que le quitaban energía."

Diálogo propio
- Antes: "[raya] Llego a las ocho [raya] dijo Ana."
- Después: Ana dijo: «Llego a las ocho».

### P10. Revelaciones teatrales, preguntas retóricas y compromiso de adorno

- Antes: "Probamos cuatro métodos durante un mes. ¿El resultado? Solo uno funcionó. Y aquí viene lo interesante:"
- Después: "De los cuatro métodos que probamos durante un mes, solo uno redujo los retrasos, precisamente porque era el que menos alteraba la rutina del equipo."

- Antes: "¿Quieres mejorar tus ventas? La clave está en conocer al cliente."
- Después: "Las ventas mejoran cuando el vendedor registra las objeciones reales después de cada visita, porque ese registro permite ajustar los argumentos en la siguiente llamada."

- Antes: "Es importante destacar que la calidad es fundamental. Sin duda, cabe señalar que los clientes lo valoran."
- Después: "Los clientes devuelven menos productos cuando el control incluye una prueba funcional, así que conviene mantenerla aunque alargue la entrega un día [DATO: porcentaje de devoluciones, con fuente]."

### P11. Ritmo plano y párrafos clónicos

- Antes: tres párrafos de igual longitud que empiezan igual: "El proyecto mejora. El proyecto optimiza. El proyecto garantiza."
- Después (supuesto: los datos son del usuario): "El proyecto retrasa entregas desde [MES]. Por eso propongo congelar las funciones nuevas durante un mes.

Esa pausa permitiría corregir las [DATO: número] incidencias abiertas, renegociar con el proveedor que incumple, formar a las dos personas nuevas que aún dependen de supervisión y documentar los procesos críticos, aunque obligue a explicar el retraso a dos clientes impacientes."

### P12. Generalidad sin anclaje

- Antes: "Nuestra solución optimiza procesos y genera valor para empresas modernas."
- Después: "Nuestro módulo elimina la exportación manual entre el CRM y contabilidad. En las pruebas internas ahorró [DATO: minutos por empleado y día, con tamaño de la muestra]."

- Antes: "Se observaron mejoras significativas en el rendimiento académico."
- Después: "El grupo experimental subió de [DATO: promedio inicial] a [DATO: promedio final] en matemáticas durante un trimestre, aunque la muestra fue de [DATO: número] alumnos y falta una réplica en otro centro."

## 2. Sobrecorrecciones (también están prohibidas)

- Yuxtaposición que borra la lógica. Mal: "Este proceso es crítico. Hay que documentar cada paso." Bien: "Como este proceso es crítico, hay que documentar cada paso."
- Estilo entrecortado en serie. Mal: "Cancela el ruido. Eso es todo. Lo hace bien." Bien: "Cancela el ruido exterior y no intenta hacer nada más, de modo que toda la batería y todo el diseño se dedican a eso."
- Borrar sin sustituir. Mal: "Se propone un enfoque adaptable." Bien: decir adaptable a qué y mediante qué mecanismo.
- Certeza falsa para evitar la neutralidad. Mal: "Está demostrado que las redes destruyen la salud mental adolescente." Bien: tomar postura y precisar el estado de la evidencia.
- Contraste disfrazado. Mal: "Más que una herramienta, es un aliado." Bien: describir qué hace la herramienta y qué consecuencia tiene para el usuario.
- Reemplazar una imagen por otra. Mal: cambiar "navegar la complejidad" por "atravesar el laberinto". Bien: nombrar el problema concreto y el paso para resolverlo.
- Frase que ya funciona. "Mándame el archivo cuando puedas, lo reviso esta tarde." se deja tal cual.

## 3. Ejemplos de calibración de conectores y fidelidad

- Causa expresada solo con puntuación. Antes: "La solicitud se rechazó. Faltaba la firma." Después: "La solicitud se rechazó porque faltaba la firma."
- Cifra comercial no acreditada (dato disponible: la herramienta exporta registros en CSV). Antes: "Ahorra 40 minutos al día con nuestra herramienta." Después: "Si revisas tus registros en una hoja de cálculo, puedes exportarlos en CSV." La segunda versión describe una función real y no atribuye un ahorro que nadie midió.
- Contraste que sí informa (supuesto: la factura documenta la operación y el recibo documenta el pago). Se conserva: "La factura documenta la operación, mientras que el recibo acredita el pago."
- Inferencia injustificada. Antes: "Las ventas aumentaron durante la campaña; por tanto, la campaña causó el aumento." Después: "Las ventas aumentaron durante la campaña, pero esa coincidencia no basta para atribuirle el incremento." La mejora no está en cambiar "por tanto" por "en consecuencia", sino en reconocer que la relación afirmada era más fuerte que la evidencia.
- Conectores frecuentes que no hay que tocar. "No se publicó porque faltaban datos, pero el equipo continuó porque el problema podía resolverse." No se reemplaza por "puesto que... empero... habida cuenta de que", que solo eleva el registro.
- Redundancia dentro del párrafo. Antes: "Además, también se añadieron nuevas herramientas y, asimismo, se incorporaron funciones adicionales." Después: "Se añadieron nuevas herramientas y funciones." (Si herramientas y funciones son cosas distintas y relevantes, se conservan ambas.)

## 4. Casos de resistencia (para probar la skill)

Comprueba que la skill responde bien a estos escenarios:
1. Texto jurídico con tres condiciones: deben conservarse las tres condiciones reales, sin añadir ni quitar requisitos para mejorar el ritmo.
2. Titular de una sola cláusula: no se fuerza un conector.
3. Opinión sin estudios disponibles: se distingue la opinión de la prueba y no se inventan estudios.
4. Ficha de producto sin resultados medidos: se describen funciones conocidas, sin cifras ni beneficios inventados.
5. Imagen con texto parcialmente ilegible: se trabaja solo con lo legible y se señala lo demás.
6. Cita literal que contiene una raya o la palabra vetada: se señala la incompatibilidad y se ofrece una paráfrasis identificada como tal.
7. Petición ambigua ("mejórame este texto" sin lector ni propósito): una sola ronda de preguntas breves antes de redactar.
8. Texto ya correcto y natural: se deja casi intacto, con como máximo ajustes puntuales.


---
# ANEXO / REFERENCIA: references/conectores.md

# Conectores: repertorio por relación lógica

Úsalo para elegir por función, no por deseo de variedad. Las categorías no son compartimentos exclusivos, y una misma expresión puede cambiar de función según el contexto. Los conectores frecuentes y sencillos son casi siempre los más naturales, y las opciones menos habituales no son mejores por serlo. Los corchetes indican contenido que completa quien escribe.

## Cómo elegir

1. Identifica qué hace la idea nueva respecto de la anterior: explica por qué (causa), expone lo que resulta (consecuencia), reconoce un obstáculo sin invalidar (concesión), presenta una diferencia (contraste), corrige una interpretación (oposición correctiva), dice lo mismo de otro modo (reformulación), añade un caso (ejemplo), establece un requisito (condición).
2. Decide la construcción: coordinación (pero, y, ni), subordinación (porque, aunque, si), marcador entre oraciones (por eso, sin embargo, es decir), locución con grupo nominal (debido a, a diferencia de), correlación (no solo... sino también) o transición léxica ("esa limitación", "la diferencia entre ambos").
3. Nunca elijas el conector primero para forzar el contenido a encajar.
4. Al reemplazar un conector, revisa toda la construcción afectada (régimen y puntuación).

## Repertorio por relación

**Causa y justificación.** porque, ya que, puesto que, dado que, como (al inicio de la oración), en vista de que, teniendo en cuenta que, debido a (+ grupo nominal), a causa de, en razón de, habida cuenta de que (formal), gracias a (causa favorable).
Precauciones: distingue la causa de un hecho de la razón para afirmar que ocurrió. "Gracias a" no es un reemplazo neutro de "debido a". No introduzcas causalidad donde solo se conoce una asociación.

**Consecuencia, inferencia y conclusión.** así que, por eso, por lo tanto, por tanto, en consecuencia, por consiguiente, de modo que, de manera que, de ahí que (con subjuntivo), por lo cual, como resultado, por esa razón, por ese motivo, de ello se desprende que, eso explica que.
Precauciones: "de ahí se sigue que" presenta una inferencia fuerte. "En conclusión" solo anuncia un cierre y no garantiza una relación de consecuencia. Comprueba que "ello", "ahí" o "eso" remitan a una premisa identificable.

**Contraste y oposición.** pero, en cambio, sin embargo, no obstante, por el contrario, antes bien, ahora bien, en contraste con, mientras que, a diferencia de, contrariamente a.
Precauciones: "no... sino..." corrige o sustituye una interpretación, no sirve para cualquier diferencia. "Ahora bien" introduce una reserva o un giro, no necesariamente una oposición frontal. Mantén el paralelismo gramatical entre los elementos comparados.

**Concesión y restricción.** aunque, si bien, a pesar de que, pese a que, aun cuando, aun así, incluso si, por mucho que, por más que, con todo, aun admitiendo que.
Precauciones: "incluso si" puede introducir una concesión hipotética, no un hecho reconocido. No sustituyas una concesión por "por el contrario" sin revisar la relación. "Aun" sin tilde equivale a "incluso".

**Condición.** si, siempre que, siempre y cuando, a condición de que, en caso de que, a menos que, a no ser que, salvo que, excepto si, solo si, de cumplirse [condición].
Precauciones: "si" y "solo si" no son intercambiables, porque invierten qué es suficiente y qué es necesario. "Sin [condición], no [resultado]" afirma una condición necesaria.

**Finalidad.** para que, a fin de que, con el fin de, con el objetivo de, con el propósito de, con la intención de, con miras a, a efectos de (registro técnico o administrativo).
Precauciones: una finalidad no equivale a un resultado conseguido ("se diseñó para reducir errores" no significa "redujo los errores").

**Adición.** además, también, asimismo, más aún, incluso, es más, de hecho, por añadidura, a ello se suma [elemento], junto con ello, tampoco, no solo... sino también.
Precauciones: "incluso" añade un elemento de valor escalar o inesperado. "Tampoco" continúa una negación anterior. Evita combinaciones redundantes como "además, también".

**Ejemplificación.** por ejemplo, así, en concreto, pongamos por caso, baste como muestra, sirva de ejemplo, un caso ilustrativo es [caso], esto se observa en [caso], piénsese en [ejemplo].
Precauciones: un ejemplo ilustra, no demuestra una afirmación general. "Esto se observa en" presenta el caso como observado; si es hipotético, dilo.

**Reformulación y aclaración.** es decir, esto es, o sea (registro coloquial), dicho de otro modo, en otras palabras, mejor dicho, más precisamente, una cosa es... y otra distinta es...
Precauciones: reformular no autoriza a ampliar el alcance. "Algunos participantes mejoraron" no puede aclararse como "es decir, el método funciona para todos".

**Detalle y especificación.** en concreto, en particular, concretamente, específicamente, en el caso de, para precisar, para ser más específicos.
Precauciones: la precisión debe reducir una ambigüedad o aportar un detalle real.

**Énfasis y relevancia.** sobre todo, precisamente, en especial, ante todo, lo más importante, conviene subrayar, merece especial atención [aspecto], en efecto, en realidad.
Precauciones: "cabe destacar que" se vuelve rutinario. "Indiscutiblemente" y "definitivamente" elevan la certeza, no solo el énfasis. "En realidad" corrige una apariencia y "en efecto" confirma lo anterior.

**Cambio de perspectiva y comienzo de tema.** en cuanto a, con respecto a, en relación con, por lo que se refiere a, por otra parte, por otro lado, desde la perspectiva de [ámbito], en el plano de [dimensión], visto desde [perspectiva], acerca de, sobre, en lo que toca a, otro punto es.
Precauciones: debe existir un cambio real de enfoque, y "por otro lado" no sirve para continuar la misma línea. En un texto breve suele ser mejor empezar directamente por el contenido que anunciar el tema.

**Continuidad y reanudación.** dicho lo anterior, hecha esta salvedad, llegados a este punto, volviendo al tema, retomando lo anterior, a partir de este punto, sobre esa base, una vez aclarado esto, consideremos ahora.
Precauciones: no des por aclarado o demostrado algo que todavía no lo está. La transición no debe esconder un salto argumentativo.

**Simultaneidad y desarrollo paralelo.** al mismo tiempo, mientras tanto, simultáneamente, mientras, a la vez que, al tiempo que, entretanto, en paralelo.
Precauciones: "mientras" y "mientras que" pueden ser temporales, contrastivos o ambos, así que comprueba cuál. La semejanza entre hechos no implica que sean simultáneos.

**Secuencia y orden cronológico.** primero, después, luego, a continuación, enseguida, previamente, acto seguido, más tarde, finalmente, por último.
Precauciones: "por último" no se usa si quedan elementos del mismo nivel. El orden expositivo no siempre coincide con el cronológico. La repetición secuencial es legítima en procedimientos.

**Tiempo (subordinadas).** cuando, en cuanto, desde que, hasta que, después de que, una vez que.

**Hipótesis, posibilidad y supuesto.** es posible que, es probable que, posiblemente, probablemente, quizá, quizás, tal vez, supongamos, admitamos por el momento, bajo el supuesto de que, cabe la posibilidad de que, si se confirmara que.
Precauciones: posibilidad, probabilidad y supuesto de trabajo tienen fuerzas distintas. No sustituyas "es posible que" por "es probable que" sin respaldo ni uses énfasis para convertir una conjetura en hecho.

**Conformidad, referencia normativa y atribución.** según [fuente], conforme a, de acuerdo con, acorde con, en consonancia con, con arreglo a [norma], de conformidad con [disposición], a tenor de (formal).
Precauciones: distingue atribución de conformidad, no inventes fuentes ni disposiciones, y recuerda que atribuir no garantiza la veracidad.

**Semejanza y analogía.** de igual manera, de igual modo, de la misma forma, del mismo modo, análogamente, de manera semejante, al igual que, de forma comparable.
Precauciones: indica qué rasgo se comparte cuando haga falta. Una analogía no implica identidad.

**Objeción y dificultad argumentativa.** se podría objetar que, ante la objeción de que, para quienes piensan que, cabe cuestionar si, una posible dificultad es que, podría argumentarse en contra que.
Precauciones: formula una objeción plausible, no una versión débil inventada para refutarla. No atribuyas una crítica a alguien si no consta. Separa claramente la objeción y su respuesta, y reconoce la limitación cuando sea real.

**Introducción del texto.** la pregunta de partida es [pregunta], el problema que se aborda es [problema], este análisis se centra en [aspecto], me propongo exponer.
Precauciones: no todos los textos necesitan anunciar su tema, y en respuestas directas conviene empezar por la respuesta. No prometas un alcance que el desarrollo no cubra.

**Resumen, síntesis y balance.** en síntesis, en suma, dicho brevemente, en pocas palabras, a grandes rasgos, lo anterior puede resumirse así, el balance de lo expuesto es [síntesis].
Precauciones: un balance puede incluir una valoración. No cierres por rutina con una repetición de lo anterior: la síntesis se usa cuando el lector la necesita o la tarea la pide.

## Régimen y puntuación

- "Debido a" lleva un grupo nominal, y para una oración se usa "debido a que". "Para" introduce un infinitivo y "para que" una oración.
- "Aunque", "porque" y "si" no se aíslan automáticamente entre comas.
- "Sin embargo", "es decir" y otros marcadores suelen delimitarse con comas según su posición.
- "De ahí que" lleva subjuntivo.
- "No solo... sino también" y "no... sino..." exigen paralelismo entre los elementos.
- No separes sujeto y predicado con una coma solo por añadir un enlace.

## Casos que se resuelven mal con frecuencia

- Unir sin inventar relaciones. "El plazo es corto. El equipo tiene experiencia." No se convierte en "porque" (causa injustificada). Si el contexto presenta la experiencia como ventaja frente al plazo: "Aunque el plazo es corto, el equipo tiene experiencia." Si falta ese contexto, no decidas por el autor qué relación quiso expresar.
- Dividir sin fragmentar. Una oración con concesión, dos causas, una consecuencia y una finalidad puede dividirse en dos, conservando los conectores que siguen siendo necesarios: "Aunque la propuesta es viable, necesita financiación adicional que todavía no está aprobada, por lo que conviene aplazar el inicio. Así se evita asumir compromisos que después no puedan cumplirse."
- Un cierre añadido por costumbre. Si la tarea es corregir un correo, el resultado es el correo corregido, sin un "En resumen, esta versión mejora la claridad" al final, salvo que se haya pedido una explicación de los cambios.


---
# ANEXO / REFERENCIA: references/vocabulario.md

# Vocabulario, palabra vetada y raya

## Principio general

Antes de sustituir una palabra, entiende qué dice la oración. Corregir no es pasar cada palabra vetada por una lista de sinónimos: es detectar si la oración funciona y, si no funciona, reescribirla con la información real que tiene detrás. Un sinónimo elegido sin ese paso puede seguir sonando raro, cambiar el significado o exagerar lo que el texto dice. Nunca inventes funciones, cifras o resultados para justificar el cambio.

## 1. Vocabulario grandilocuente (P3)

Prohibido como adorno o relleno:
- tapiz / rico tapiz; faro de esperanza / faro en la oscuridad; viaje (para procesos);
- "en el vertiginoso mundo actual", "en el acelerado panorama actual", "en la era digital";
- sumergirse / sumérgete en (como metáfora de explorar); adentrarse; desentrañar; "explorar las profundidades"; "en el corazón de";
- panorama y ecosistema en sentido metafórico; navegar para conceptos abstractos ("navegar la complejidad");
- sinergia, holístico, robusto como calificativos genéricos; potenciar, impulsar, fomentar, desbloquear, elevar como verbos comodín;
- muletillas: "cabe destacar", "es importante señalar", "vale la pena mencionar", "sin lugar a dudas", "sumamente", "realmente", "verdaderamente", "en definitiva", "a medida que" como apertura.

Esta lista marca usos ornamentales, no literales o técnicos. "Tapiz" en un texto sobre textiles, "robusto" como término estadístico o "ecosistema" en biología no están prohibidos. Antes de intervenir pregúntate qué información aporta la palabra.

### Valoraciones sin respaldo
Innovador, revolucionario, transformador, disruptivo, excepcional, integral, estratégico, clave, crucial, fundamental, vital. No están prohibidas por sí mismas: se conservan si el texto sostiene la afirmación. Si no la sostiene, describe el rasgo conocido en lugar del adjetivo, sin inventar cifras.

### Nominalizaciones que ocultan la acción
"Llevar a cabo la implementación", "proceder a la realización", "efectuar una revisión", "dar cumplimiento". Prefiere el verbo directo (implementar, hacer, revisar, cumplir), salvo en textos jurídicos o técnicos donde la expresión deba conservarse.

## 2. Tabla de reemplazos

Elige según el contexto y comprueba la oración completa. Los corchetes son marcadores que se completan con datos reales.

| En lugar de | Prefiere |
|---|---|
| en el vertiginoso mundo actual | una referencia concreta: "en [año] en [sector], porque [dato]" |
| rico tapiz | "un conjunto de [número] factores: [lista]" |
| faro de esperanza | el apoyo concreto: "[nombre y ayuda]" |
| sumérgete en | prueba, usa, lee (con objeto directo) |
| desentrañar, explorar las profundidades | explicar el mecanismo en dos pasos |
| panorama, ecosistema (metafóricos) | el sector, el mercado o el sistema, más una especificación |
| navegar la complejidad | resolver [problema nombrado] mediante [paso] |
| sinergia | colaboración con reparto: quién hace qué y cuándo |
| holístico | completo en dos aspectos concretos: [X] y [Y] |
| robusto (genérico) | una especificación: tolera [X], dura [Y], cuesta [Z] |
| es importante destacar, cabe señalar | la afirmación directa, con "porque" o "ya que" si hay razón |
| sin duda, sin lugar a dudas | una prueba, o eliminar el adverbio |
| es fundamental, es crucial (sin prueba) | "es necesario para [objetivo], ya que [motivo]" |
| en términos generales, en definitiva | eliminar, o "en concreto" más un dato |
| potente, intuitiva, escalable | una prueba de uso más una cifra con su muestra |
| siendo, permitiendo (gerundio inicial) | dos oraciones con verbo conjugado y "porque" o "por eso" |
| recuerda que el futuro depende de ti | eliminar y terminar en el paso siguiente |

## 3. Palabra vetada (derivada de «tenso»)

En cualquier texto de comunicación (ensayo, informe, correo, publicación, narrativa, guion o cualquier texto pensado para un lector) no se usa el sustantivo que deriva de «tenso», ni en singular ni en plural, en ninguna forma gráfica. La regla se aplica de este modo:

Procedimiento antes de elegir una alternativa:
1. Determina si la oración habla de un conflicto entre personas, de un estado emocional, de un suspenso narrativo o de un fenómeno físico.
2. Determina la intensidad real que expresa el texto, sin subirla ni bajarla.
3. Determina el registro (académico, informe o conversación cotidiana).
4. Comprueba si conviene describir la situación directamente en lugar de buscar un sinónimo.
5. Elige la alternativa y revisa la oración completa.

Alternativas por contexto:
- **Conflicto social, político o entre personas:** fricciones, roces, tiranteces, disputas, hostilidades, desacuerdos, enfrentamientos, choques, pugna, rivalidad. El registro decide: fricciones y tiranteces encajan en un informe o un ensayo; roces, desacuerdos y choques suenan a conversación cotidiana. No conviertas un desacuerdo cordial en hostilidad ni una rivalidad estable en un enfrentamiento abierto. En un texto histórico, revisa que la intensidad coincida con lo que describen las fuentes.
- **Estado emocional:** estrés, presión, nerviosismo, inquietud, desasosiego, agobio. No uses "ansiedad" como sustituto automático (convierte un malestar impreciso en un término clínico) ni añadas síntomas físicos que el original no menciona.
- **Suspenso narrativo o dramático:** suspenso, intriga, expectación.
- **Físico o mecánico fuera de un ejercicio técnico:** tirantez, rigidez, presión, contracción. Nunca "fuerza" cuando la magnitud original está en pascales.

### Uso permitido en ejercicios técnicos

Un ejercicio de física, un diagrama de cuerpo libre, un problema de circuitos o de resistencia de materiales no es un texto de comunicación: es notación técnica con convención propia, y la prohibición no aplica. Distingue tres magnitudes que no son intercambiables:
- Mecánica (cuerda, cable o polea): la fuerza en newtons conserva su nombre técnico estándar.
- Circuitos: el voltaje conserva su nombre técnico estándar.
- Resistencia de materiales: el esfuerzo normal o de tracción, en pascales, se llama «esfuerzo» en la bibliografía latinoamericana.
Si un ejercicio mezcla notación técnica con prosa dirigida al lector (por ejemplo, un párrafo que interpreta el resultado), aplica la convención técnica a la notación y la prohibición al resto.

### Verificación con casos de prueba (la palabra vetada se representa como [palabra vetada])

- Entrada: "Hay [palabra vetada] entre los hermanos por el reparto de la herencia." Esperado: "La relación entre los hermanos se ha vuelto tirante por el reparto de la herencia." Inaceptable: "mantienen un enfrentamiento hostil" (sube la intensidad sin base).
- Entrada, ensayo de historia: "Las [palabra vetada] diplomáticas entre los dos países aumentaron tras el tratado." Esperado: elegir entre fricciones, roces o desacuerdos según lo que describan las fuentes, sin escalar a "hostilidades abiertas" si el hecho no lo sostiene.
- Entrada, resistencia de materiales: "La [palabra vetada] de tracción se expresa en pascales." Esperado: "El esfuerzo de tracción se expresa en pascales." Inaceptable: "La fuerza de tracción se expresa en pascales" (cambia la unidad implícita).
- Entrada, mecánica: la fuerza de la cuerda que sostiene un bloque, en newtons. Esperado: se conserva el nombre técnico tal cual, porque es la magnitud misma.

## 4. Raya (guion largo)

Nunca se usa en texto de redacción propia (títulos, tablas, ejemplos, diálogos, listas o explicaciones), ni doble guion ni otro sucedáneo. La regla de puntuación por función está en la sección 3 del SKILL.md. Casos de prueba:

- Entrada: un párrafo con cuatro rayas que cumplen funciones distintas (un inciso, una explicación, una interrupción, una separación entre proposiciones). Esperado: cada una puntuada según su función. Sospechoso: las cuatro convertidas en punto y coma.
- Entrada: transcripción literal de un fragmento que contiene una raya. Esperado: señalar la incompatibilidad y ofrecer una paráfrasis identificada como tal, sin alterar la cita en silencio.
- Se mantiene el guion corto en palabras compuestas y en listas Markdown, y no debe confundirse con el signo menos en expresiones matemáticas.

## 5. Verificación final (cada punto es independiente)

1. ¿Queda alguna palabra de la lista grandilocuente sin función literal o técnica?
2. ¿Aparece la palabra vetada en un texto de comunicación? Si es un ejercicio técnico, ¿la magnitud corresponde (mecánica o circuitos, nombre técnico; materiales, esfuerzo)?
3. ¿Aparece la raya, el doble guion u otro sucedáneo?
4. ¿La sustitución elegida cambió la intensidad, inventó un dato o alteró una magnitud técnica?
5. ¿El párrafo completo, no solo la oración corregida, sigue sonando a la voz del texto?
