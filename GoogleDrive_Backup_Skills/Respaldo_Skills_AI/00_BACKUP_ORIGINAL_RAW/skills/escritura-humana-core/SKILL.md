---
name: escritura-humana-core
description: Núcleo de la familia escritura-humana. Úsala siempre que el usuario pida redactar, reescribir, editar, corregir, resumir o mejorar cualquier texto en español (ensayos, artículos, correos, publicaciones, informes, textos comerciales, guiones, narrativa), y cuando diga cosas como "hazlo sonar más natural", "reescribe esto", "esto suena a IA", "corrígeme el texto" o "humanízalo", aunque no mencione la IA. Contiene la regla de veracidad (no inventar datos), el encargo previo, los 9 patrones prohibidos con sus excepciones, la calibración por género, el modo reescritura y la validación final de fidelidad. Se consulta junto con escritura-humana-vocabulario (léxico vetado, palabra prohibida y raya), escritura-humana-conectores (uso justificado de conectores) y escritura-humana-ensayos (ensayo académico). No aplicar a código, tablas de datos, traducción fiel ni textos legales con fórmulas obligatorias.
---

# Escritura humana: núcleo

## Propósito y límites

Este módulo busca que un texto se lea como obra de una persona que conoce el tema y tiene algo que decir. Lo que delata a un modelo no son los errores gramaticales, que no comete, sino la falta de decisiones: todo equilibrado, todo simétrico, todo genérico y nada comprometido.

Tres límites que conviene tener claros desde el inicio:

- La skill no garantiza que un texto pase por humano ante un detector. Los detectores son poco fiables y esa no es la meta. La meta es que un lector exigente no encuentre relleno.
- No se introducen errores, erratas ni muletillas para parecer humano.
- No se inventan datos, experiencias ni fuentes para parecer concreto (ver regla cero).

## Jerarquía cuando dos reglas chocan

1. Veracidad (regla cero).
2. Reglas absolutas del usuario: la raya y la palabra vetada de `escritura-humana-vocabulario`. Ganan incluso a las convenciones de un género.
3. Instrucciones expresas del encargo (formato, extensión, número de elementos, rúbrica del profesor). Si piden tres viñetas, se entregan tres viñetas y la skill se aplica dentro de cada una.
4. Convenciones del género (un informe abre con conclusiones, una conclusión académica aporta implicaciones).
5. Los patrones y las reglas positivas de esta skill.

## Regla cero: veracidad del material

Esta regla prevalece sobre todas las demás. Una generalidad honesta vale más que una frase precisa y falsa: lo genérico aburre, lo inventado engaña.

- No inventes cifras, porcentajes, estudios, fechas, nombres propios, citas, testimonios, casos ni experiencias en primera persona.
- Las únicas fuentes válidas son el material del usuario, los documentos adjuntos y el conocimiento general que puedas sostener con seguridad. Si dudas de un dato, trátalo como si no lo tuvieras.
- Si falta un dato necesario, elige en este orden: (a) pídelo, con un máximo de dos preguntas y solo sobre lo imprescindible; (b) deja un hueco visible, por ejemplo `[DATO: plazo real de entrega antes y después del cambio]` o `[CITA]`; (c) reformula con lo que sí sabes, porque una afirmación concreta sin cifra ("la factura llegaba después que el pedido") vale más que una cifra inventada.
- Un ejemplo hipotético se presenta como tal ("Supón que...", "Pongamos una tienda que..."). En ficción declarada se inventa dentro del relato, sin presentarlo como testimonio real.
- Nunca redactes en primera persona una vivencia que el usuario no haya contado. Si el texto va firmado por él, la postura y las experiencias son las suyas.
- En textos académicos, las referencias bibliográficas son reales o van como `[CITA]`. Nunca completes una referencia de memoria.
- No afirmes haber verificado una fuente que no consultaste ni haber leído el texto en voz alta si no lo hiciste.

## Fase 0: el encargo

Antes de escribir, fija estos parámetros. Infiérelos del contexto; si alguno es decisivo y ambiguo, pregunta (máximo tres preguntas). Si avanzas con una suposición importante, decláralo en una línea al entregar.

| Parámetro | Pregunta que responde |
|---|---|
| Género | ¿Correo, artículo, ensayo, informe, comercial, publicación, guion, relato? |
| Lector | ¿Quién lo lee y qué sabe ya del tema? |
| Propósito | ¿Qué debe saber, pensar o hacer al terminar? |
| Voz | ¿Escribo en nombre del usuario, de una marca o de forma impersonal? |
| Variedad y tratamiento | Por defecto, español latinoamericano neutro sin modismos rioplatenses; tú, usted o impersonal según el caso. Se mantienen de principio a fin. |
| Extensión y formato | ¿Cuántas palabras? ¿Hay rúbrica o plantilla obligatoria? |
| Material | ¿Qué datos, casos, nombres o experiencias reales hay? Esto fija el techo de especificidad. |

## Fase 1: material

Antes de redactar, anota para ti:

1. Tesis en una frase: lo que el texto afirma o recomienda.
2. Inventario concreto: hechos, cifras, ejemplos y objeciones reales que de verdad tienes.
3. Huecos: lo que haría falta y no tienes.

Prueba de la tesis: si la misma frase podría pegarse en el texto de otro tema o de otra persona, todavía no es una tesis. "La comunicación es importante para los equipos" no pasa. "Una nota escrita de cinco líneas puede sustituir la reunión semanal en un equipo pequeño" sí pasa, aunque se pueda discutir.

Si el inventario está vacío, el texto saldrá vacío por mucho que se pula el estilo. Pide material o avisa de que el resultado llevará huecos marcados.

## Fase 2: redacción (reglas positivas)

1. **Postura temprana.** En textos argumentativos, la conclusión o el argumento central aparece en el primer tercio y lo demás la sostiene.
2. **Especificidad con origen.** Un caso, una cifra o un nombre reales, del material disponible. "Reducir el cierre mensual de tres días a uno" vence a "mejorar la eficiencia", pero solo si esa cifra existe. Si no, describe el mecanismo.
3. **Verbo fuerte sobre verbo débil más adverbio.** "Rechazó" vence a "no aceptó de manera definitiva". Cuida que el verbo más fuerte no cambie el sentido.
4. **La estructura sigue al argumento.** Un texto tiene tantas partes como pasos tiene el razonamiento, y cada parte ocupa lo que necesita.
5. **El ritmo sale del contenido.** Frases largas para razonamientos con matices, cortas para hechos tajantes. No alternes longitudes por norma, porque eso también se vuelve firma.
6. **Enumera la cantidad real.** Si hay dos razones, dos. Si hay cinco, cinco.
7. **Enlaces por lógica.** Si el orden de las ideas ya expresa la relación, el conector sobra; si la relación no es evidente, se hace explícita (ver `escritura-humana-conectores`).
8. **Postura proporcional a la evidencia.**

| Evidencia | Qué hacer |
|---|---|
| Sólida y consensuada | Afirmar sin rodeos. |
| Mixta o disputada | Decir qué apunta a cada lado, cuál pesa más y por qué, y qué dato lo resolvería. |
| Cuestión de valores | Exponer lo que cuesta cada opción; si el usuario pide opinión, darla con sus razones. |
| "Depende" | Solo si se nombran las variables y cómo cambia la respuesta con cada una. |

## Los 9 patrones prohibidos

Los números se mantienen porque otros módulos los citan. Cada patrón lleva su señal, su arreglo y, cuando existe, la única excepción legítima. Fuera de esa excepción el patrón está prohibido, no es cuestión de gusto.

### 1. Dicotomías falsas

Formas: "No es X, es Y", "No se trata de X, sino de Y", "Más que X, Y", "Lejos de ser X", "No solo X, sino también Y" como fórmula.
Prueba: borra la parte negada; si no se pierde información, era decorativa.
Arreglo: afirma Y y sostenlo con un ejemplo, un dato o una consecuencia.
Excepción: refutar una creencia que el lector tiene de verdad, con evidencia. "Contra lo que suele decirse, las transacciones de bitcoin no son anónimas: todas son públicas."

### 2. Tricolon sistemático

Grupos de exactamente tres como ritmo por defecto: adjetivos, verbos, viñetas, títulos y llamados a la acción.
Umbral: como máximo una tríada cada 150 palabras, y nunca en el título, el llamado a la acción y la lista del mismo texto a la vez.
Arreglo: cuenta los elementos reales y pregunta si el tercero aporta algo o está por ritmo.
Excepción: tres elementos reales ("guarda el archivo, fírmalo y envíalo"). No conviertas tres en dos o en cuatro de forma mecánica: el número lo decide el contenido.

### 3. Vocabulario grandilocuente de relleno

La lista completa, sus excepciones literales o técnicas y el procedimiento de sustitución están en `escritura-humana-vocabulario`. Regla de fondo: reemplazar no significa cambiar un adorno por otra metáfora; si la palabra no nombra nada concreto, se elimina o se dice el hecho. Esto incluye los intensificadores vacíos (clave, crucial, fundamental, esencial): muestra la importancia con su consecuencia.

### 4. Acumulación de adjetivos

Dos o más adjetivos genéricos sobre el mismo sustantivo ("rápida, eficaz y escalable").
Arreglo: deja el adjetivo que dice algo verificable, o sustitúyelos por lo que el objeto hace ("una plataforma que un empleado nuevo usa sin formación").
Excepción: dos adjetivos que aportan informaciones distintas y necesarias.
Ojo con la sobrecorrección: borrar tres adjetivos y dejar uno igual de vago no arregla nada.

### 5. Gerundios problemáticos y calcos del inglés

- De apertura: "Siendo este un proceso crítico..." pasa a "Como este proceso es crítico...".
- De posterioridad: "Se reunió en mayo, aprobando el presupuesto en junio" pasa a "Se reunió en mayo y aprobó el presupuesto en junio".
- Colgante al final: "..., permitiendo así una mayor comprensión" pasa a "Esto permite entender mejor...".
- Calcos frecuentes: "en base a" (según, a partir de), "jugar un rol" (desempeñar un papel), "hacer sentido" (tener sentido), "a nivel de" sin niveles reales (en, entre), "al final del día" (en la práctica), "aplicar a un puesto" (postular), pronombre sujeto repetido sin necesidad y posesivo innecesario ("se lavó sus manos").

Excepción: el gerundio de simultaneidad o de modo es español normal ("llegó corriendo").

### 6. Marcadores discursivos mecánicos

El criterio completo y el repertorio de 22 categorías están en `escritura-humana-conectores`. Umbral de este núcleo: si el mismo tipo de conector (secuencia, adición) abre más de dos párrafos seguidos, o si "en conclusión" o "en resumen" cierran por defecto, el uso es mecánico. Antes de borrar, comprueba si la relación se entiende sola; si no, usa el conector más preciso. Este patrón no pide suprimir conectores, pide que cada uno tenga función.

### 7. Neutralidad sin postura, y su contrario

Prohibido presentar todos los lados sin decir cuál está mejor sustentado y cerrar con "depende del contexto" sin nombrar de qué. Igual de prohibida es la certeza impostada: afirmar de forma tajante lo que tiene evidencia dividida, o apoyarse en "los estudios demuestran" sin identificar ninguno.
Arreglo: aplica la tabla de postura proporcional de la fase 2. Tomar postura sobre la calidad de la evidencia también es tomar postura.

### 8. Estructura fija

Introducción genérica, tres secciones simétricas con viñetas y conclusión moralizante.
Arreglo: el número y la forma de las secciones salen del argumento; un párrafo corto sirve para énfasis cuando el contenido lo pide; la apertura entra por el problema, el caso o la tesis, no por una definición ni por "en el mundo actual"; el cierre termina en el último punto con contenido, en una consecuencia o en el paso siguiente.
Excepciones por género: en informes, abstracts y textos académicos la síntesis inicial o la conclusión son parte del género, y el texto académico puede abrir con contexto o definición breve si el lector lo necesita. Aun ahí, la conclusión aporta implicaciones y límites; nunca repite.
Prueba del cierre: si borras el último párrafo y no se pierde información, bórralo.

### 9. Raya (guion largo, U+2014)

Prohibida sin excepción en cualquier texto de redacción propia: títulos, tablas, ejemplos, diálogos, listas y explicaciones. Tampoco se sustituye por doble guion ni por otro sucedáneo visual.

| Función de la raya | Reemplazo |
|---|---|
| Inciso breve | comas |
| Aclaración secundaria | paréntesis |
| Explicación o consecuencia | dos puntos |
| Dos ideas independientes y relacionadas | punto y coma, o punto |
| Inciso largo | dividir en dos oraciones |

Los diálogos de redacción propia, incluso en narrativa, se escriben con comillas o con el nombre del hablante seguido de dos puntos. Si una cita literal ya trae la raya, no la alteres en silencio: señálalo y ofrece una paráfrasis identificada como tal. Después de corregir, revisa que no hayas creado el defecto contrario, por ejemplo un punto y coma o unos dos puntos en casi todas las oraciones. El resto del procedimiento está en `escritura-humana-vocabulario`.

## Señales complementarias (buena práctica, no forman parte de los 9)

Se corrigen cuando aparecen de forma repetida o decorativa.

- **Generalidad sin ancla.** Prueba de sustitución: cambia el nombre del tema o de la empresa; si la frase sigue valiendo, falta un caso, un dato o una consecuencia reales. Arreglo: vuelve a la fase 1. Si no hay material, marca el hueco o reduce la afirmación. Nunca lo resuelvas inventando.
- **Relleno metadiscursivo.** "En este artículo exploraremos", "es importante destacar que", "cabe señalar". Borra la fórmula y deja la afirmación.
- **Falsa empatía.** "Entiendo que puede ser un desafío". Sustitúyela por conocimiento demostrado del problema concreto del lector.
- **Cautela apilada.** "Podría potencialmente sugerir que quizá". Una sola marca de incertidumbre, donde está la incertidumbre real.
- **Revelación con dos puntos o pregunta autorrespondida.** "La clave: ...", "¿El resultado? ...", "Aquí está el truco:". Di la información directamente.
- **Staccato dramático.** Tres o más frases muy cortas seguidas para crear efecto. Intégralas en una o dos frases con el dato que justifica el énfasis.
- **Nominalizaciones.** "Realizar la implementación de" pasa a "implementar".
- **Formato inflado.** Encabezados en textos de menos de 500 palabras, negritas decorativas, viñetas para ideas que dependen unas de otras. Prosa para razonamientos encadenados; listas solo para elementos paralelos e independientes.
- **Simetría interna.** Todas las secciones o listas con la misma extensión y el mismo molde.
- **Sinónimos rotativos** en textos técnicos o argumentativos. Repite el término exacto: la variación puede hacer creer que se habla de cosas distintas.

## Sobrecorrección: el fallo más probable

Toda lista de prohibiciones genera su propio estilo reconocible. Señales de que ocurrió: casi todas las frases son cortas, cada párrafo abre con una afirmación rotunda, los párrafos de una línea son costumbre y no excepción, el tono es provocador por defecto, aparecen cifras muy precisas sin fuente o hay coloquialismos forzados en un registro que no los admite.

Regla: ningún recurso de énfasis (frase aislada, pregunta retórica, dos puntos de revelación, párrafo de una línea) aparece más de dos veces cada 500 palabras. La buena prosa en español admite frases de más de 25 palabras con subordinadas bien construidas; úsalas cuando la idea lo pida.

## Calibración por género

| Género | Prioridad | Qué no se aplica de forma literal |
|---|---|---|
| Correo | La petición o la noticia en la primera o segunda frase; una petición por correo; cierre con la acción y el plazo si existe. | Despedida breve permitida. |
| Artículo de opinión | Tesis en el primer párrafo; responde a la objeción más fuerte, no a la más fácil. | La postura es la del autor que firma. |
| Divulgación | Entrar por un caso o un problema; subtítulos solo si pasa de unas 800 palabras. | Sin cierre de resumen. |
| Ensayo académico | Ver `escritura-humana-ensayos`. Introducción con tesis y conclusión con implicaciones y límites; citas reales o `[CITA]`. | Aperturas por contexto y conclusión son parte del género. |
| Informe o resumen ejecutivo | Hallazgo o recomendación primero, con cifras del material. | Resumen inicial y listas permitidos. |
| Comercial | Qué hace el producto y para quién, sin superlativos ni métricas sin respaldo. | Frases breves permitidas, pero no en cascada. |
| Documentación técnica | Imperativo, pasos, condiciones y consecuencia del error; el mismo término siempre. | Listas numeradas permitidas; la variación estilística no aplica. |
| Publicación en redes | Una idea por publicación, con el dato o la tesis al inicio. | Párrafos cortos por el formato, sin caer en staccato. |
| Narrativa | Detalle concreto y emoción mostrada con un objeto o un gesto; final sin moraleja. | No hay tesis. Diálogos con comillas, nunca con raya. |

## Modo reescritura (texto aportado por el usuario)

- Conserva todos los hechos, el sentido, el grado de certeza y la postura. Una posibilidad no se convierte en certeza, ni una asociación en causa.
- No añadas datos. Si al quitar el relleno la afirmación queda vacía, marca el hueco en lugar de inventar.
- Conserva las citas y su atribución tal como están. No cambies cifras, fechas ni citas sin señalarlo.
- Conserva los rasgos legítimos de voz del autor (giros propios, humor, expresiones regionales). Corrige tics, no personalidad.
- Mantén la extensión dentro de un margen del 20 %, salvo que se pida otra cosa.
- Si detectas un dato dudoso, márcalo en una nota breve; no lo corrijas ni lo refuerces por tu cuenta.
- Si el usuario lo pide, añade una lista breve de cambios citando el número de patrón (por ejemplo: "patrón 1 en el párrafo 2").

## Cómo aplicar esta skill

1. Fija el encargo (fase 0) y el material (fase 1).
2. Redacta con las reglas positivas (fase 2).
3. Audita el texto contra los 9 patrones y las señales complementarias. Después consulta `escritura-humana-vocabulario` para el léxico vetado, la palabra prohibida y la raya.
4. Si el texto tiene más de tres párrafos, consulta `escritura-humana-conectores`. Si es un ensayo académico, consulta también `escritura-humana-ensayos`.
5. Pasa las pruebas finales.
6. Cierra con la validación de fidelidad.

### Pruebas finales

1. Primera frase: ¿podría abrir cualquier texto del tema? Cámbiala.
2. Último párrafo: ¿se pierde algo si lo borras? Si no, bórralo.
3. Trazabilidad: cada cifra, nombre, fecha y cita tiene origen o un hueco marcado.
4. Sustitución: si cambias el tema y el texto sigue valiendo, falta anclaje.
5. Recuento de tríadas, contrastes y recursos de énfasis contra sus umbrales.
6. Búsqueda literal de fórmulas: "no es", "no solo", "sino", "más que", "clave", "crucial", "fundamental", "es importante", "cabe", "hoy en día", "en el mundo", "en conclusión", "en resumen", "¿el resultado?", "aquí está", "la verdad es que". Justifica o corrige cada aparición.
7. Raya, doble guion y palabra vetada: cero apariciones en redacción propia.
8. Ritmo: ni todos los párrafos iguales ni todos de una línea; ni frases cortas en cascada.
9. Registro y variedad coherentes de principio a fin.
10. Propósito: al terminar, ¿el lector sabe qué pensar o qué hacer?

## Paso final: validación de fidelidad

Es una segunda pasada con otro objetivo: no mejorar el estilo ni reescribir, solo detectar alteraciones y afirmaciones sin respaldo. Se ejecuta siempre en reescrituras y ediciones, y en cualquier texto nuevo que lleve cifras, fuentes, citas, casos o experiencias. En textos breves sin datos basta una comprobación rápida.

Procedimiento:

1. Cambia de rol: pasas de redactor a auditor. Compara el texto candidato con el encargo, el texto fuente, los hechos aportados y las fuentes.
2. Busca cinco cosas: afirmaciones sin respaldo, cambios de sentido, omisiones materiales, incumplimientos de restricciones (incluidas la raya y la palabra vetada) y certeza excesiva.
3. Rechaza el texto si contiene una cifra, fuente, experiencia, caso, cita, prueba o resultado que no se pueda rastrear hasta la información suministrada.
4. Si hay rechazo, corrige el texto (o pregunta lo indispensable) y vuelve a validar. Máximo dos vueltas; si algo sigue sin respaldo, queda como hueco marcado y se lista al entregar.
5. El informe de validación es interno. Se muestra solo si el usuario lo pide o si queda un problema que él deba resolver.

Formato completo del informe y el prompt listo para usar en una conversación aparte: `references/validador-independiente.md`. Una segunda pasada hecha por el mismo modelo detecta menos que una hecha por otra instancia, así que en textos de alto impacto (académicos, legales, médicos, financieros o de seguridad) recomienda al usuario pasar ese prompt en un chat nuevo y hacer revisión humana.

## Entrega

- Entrega el texto sin preámbulos ("aquí tienes una versión más natural") y sin explicar las reglas, salvo que se pidan.
- Ensayos dentro del chat: texto limpio, sin negritas ni asteriscos de Markdown.
- Si quedan huecos `[DATO: ...]` o `[CITA]`, enuméralos al final en una lista corta para que el usuario los complete.
- Si hiciste una suposición importante sobre el encargo (variedad, lector, tono), indícala en una línea.

## Referencias

- `references/pattern-examples.md`: ejemplos de antes y después de cada patrón, cada uno con su material disponible, sin datos inventados.
- `references/validador-independiente.md`: prompt y formato del validador de fidelidad.
