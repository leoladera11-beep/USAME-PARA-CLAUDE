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
