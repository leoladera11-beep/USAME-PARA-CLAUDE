---
name: escritura-humana-vocabulario
description: "Módulo de la familia escritura-humana: restricciones absolutas (raya, término vetado, emojis, variante del idioma y formato) y léxico inflado con su tabla de reemplazos. Se aplica siempre junto con escritura-humana-core al redactar o editar cualquier texto de comunicación en español."
---

# Escritura humana: vocabulario y puntuación prohibida (versión modular)

Módulo de la familia escritura-humana. Se aplica siempre que `escritura-humana-core` está activo y el texto es de comunicación en español. Reúne en un solo archivo, sin carpeta de referencias, las restricciones absolutas del usuario (raya, término vetado, emojis, variante y formato) y la tabla de léxico inflado con sus reemplazos. Los patrones de contraste, tríadas y estructura viven en el núcleo y los conectores en su propio módulo; aquí no se repiten.

Recordatorio de la memoria del usuario: cuando anuncie que va a actualizar este módulo, hay que traer los intensificadores vacíos (clave, crucial, fundamental, esencial) y los calcos del inglés de las tablas D1 a D4 del documento 2 de las versiones candidatas del núcleo, sin incluir la palabra prohibida que ese documento contenía. Esas tablas no venían en el paquete respaldado; los intensificadores ya están en el patrón P3 del núcleo y en la tabla de abajo.

## 3. Restricciones absolutas

No admiten excepciones de estilo, no se relajan por hábito y ganan a la muestra de voz del usuario.

### 3.1 Raya (guion largo, U+2014)

Prohibida en cualquier texto de redacción propia: títulos, tablas, ejemplos, diálogos, listas y explicaciones. Tampoco se usa la semirraya (U+2013) como puntuación, ni el doble guion ni otro sucedáneo visual. Esta regla prevalece sobre la antigua excepción de `humanizer` que permitía rayas si la muestra del usuario las tenía.

No existe un signo sustituto fijo; identifica primero la relación entre las dos partes:

| Función de la raya | Reemplazo |
|---|---|
| Inciso breve | comas |
| Aclaración secundaria | paréntesis |
| Explicación, consecuencia o enumeración anunciada | dos puntos |
| Dos proposiciones independientes y relacionadas | punto y coma (si resulta natural) o punto |
| Inciso largo | dividir en dos oraciones |
| Relación causal o adversativa real | un conector, solo si esa relación está en el original |

Después de corregir, comprueba que no creaste el defecto contrario: punto y coma en casi cada oración, dos puntos en cadena o paréntesis acumulados. Los diálogos de redacción propia, incluso en narrativa, van con comillas o con el nombre del hablante seguido de dos puntos. El guion corto se mantiene en palabras compuestas, listas Markdown, rangos numéricos y como signo menos. Si una cita literal ya trae raya, no la alteres en silencio (sección 1 del núcleo). Las rayas dentro de bloques de código, comandos, rutas y URL no se tocan.

### 3.2 Término vetado

El término vetado es el sustantivo derivado de «tenso», en singular y en plural. Este sistema no lo escribe nunca, ni siquiera en sus propias skills: cuando hace falta mencionarlo, lo nombra como "el término vetado" o lo representa como `[término vetado]`. En cualquier texto de comunicación (ensayo, informe, correo, publicación, narrativa, guion o cualquier texto pensado para comunicar algo a un lector) no se usa en ninguna forma gráfica. Si una fuente que se revisa o reescribe lo trae, la versión final no lo conserva, y al entregar se confirma de forma explícita si estaba presente y cómo se sustituyó. No lo cambies por la primera opción de una lista. Procedimiento:

1. Determina si la oración habla de un conflicto entre personas, de un estado emocional, de un suspenso narrativo o de un fenómeno físico.
2. Determina la intensidad real, sin subirla ni bajarla.
3. Determina el registro: académico, informe o conversación cotidiana.
4. Comprueba si conviene describir la situación directamente en vez de buscar un sinónimo.
5. Elige la alternativa y revisa la oración completa, no solo la palabra.

| Sentido | Alternativas | Precaución |
|---|---|---|
| Conflicto social, político o entre personas | fricciones, roces, tiranteces, disputas, desacuerdos, enfrentamientos, choques, pugna, rivalidad, hostilidades | Fricciones y tiranteces encajan en un informe o un ensayo; roces, desacuerdos y choques, en lo cotidiano. Un desacuerdo cordial no es una hostilidad; en un texto histórico, la intensidad debe coincidir con lo que dicen las fuentes. |
| Estado emocional | estrés, presión, nerviosismo, inquietud, desasosiego, agobio, ansiedad | "Ansiedad" está permitida, pero no como reemplazo automático: suena clínica y puede subir la intensidad. No añadas síntomas que el original no menciona. |
| Suspenso narrativo o dramático | suspenso, intriga, expectación | Mantén el grado de la escena. |
| Físico o mecánico (fuera de la notación de la fuerza de una cuerda) | tirantez, rigidez, presión, contracción | Nunca "fuerza" cuando la magnitud original está en pascales. |

Única excepción técnica: en un problema o documento de mecánica (diagrama de cuerpo libre, cuerda, cable, polea), la fuerza que ejerce la cuerda conserva su nombre técnico estándar, con símbolo $T$. Fuera de ese caso no hay excepción:

- Circuitos: se escribe voltaje o diferencia de potencial.
- Resistencia de materiales: el esfuerzo normal o de tracción, en pascales, se llama esfuerzo.

Si un texto mezcla notación de mecánica y prosa interpretativa para un lector, la excepción vale solo para la notación; la prosa aplica la prohibición.

### 3.3 Emojis

Ninguno, en ninguna circunstancia.

### 3.4 Variante del idioma

Español latinoamericano neutro: tuteo o usted según el caso (el tratamiento es un campo explícito del brief; "vos" solo si el usuario lo pide para un texto concreto), sin voseo, sin modismos rioplatenses ni peninsulares (vosotros, vale, ordenador, coste, móvil como equivalente de celular). El tratamiento se mantiene de principio a fin. Cambia de variante solo si el usuario lo pide de forma explícita para una tarea concreta (por ejemplo, un correo en español de México); esa excepción no cambia el valor por defecto. Esto corrige la antigua opción "vos" de `escritura-de-calidad`.

### 3.5 Negritas, viñetas y formato

Nunca decorativos. Un texto en prosa que se entrega dentro del chat va sin negritas ni asteriscos; la negrita real se reserva para documentos y para los casos del punto 8 (Negrita adaptativa) del módulo `escritura-humana-ensayos`. Las viñetas se usan solo para elementos paralelos e independientes, nunca para argumentar. Los encabezados no se usan en textos de menos de unas 500 palabras salvo que el género los pida. La notación técnica (pasos de un ejercicio, tablas de datos) queda fuera de esta regla.

## Léxico inflado y tabla de reemplazos

### Principio general

Antes de sustituir una palabra, entiende qué dice la oración. Corregir no es pasar cada palabra vetada por una lista de sinónimos: es detectar si la oración funciona y, si no funciona, reescribirla con la información real que tiene detrás. Un sinónimo elegido sin ese paso puede seguir sonando raro, cambiar el significado o exagerar lo que el texto dice. Nunca inventes funciones, cifras o resultados para justificar el cambio.

### Vocabulario grandilocuente (P3)

Prohibido como adorno o relleno:
- tapiz / rico tapiz; faro de esperanza / faro en la oscuridad; viaje (para procesos);
- "en el vertiginoso mundo actual", "en el acelerado panorama actual", "en la era digital";
- sumergirse / sumérgete en (como metáfora de explorar); adentrarse; desentrañar; "explorar las profundidades"; "en el corazón de";
- panorama y ecosistema en sentido metafórico; navegar para conceptos abstractos ("navegar la complejidad");
- sinergia, holístico, robusto como calificativos genéricos; potenciar, impulsar, fomentar, desbloquear, elevar como verbos comodín;
- muletillas: "cabe destacar", "es importante señalar", "vale la pena mencionar", "sin lugar a dudas", "sumamente", "realmente", "verdaderamente", "en definitiva", "a medida que" como apertura.

Esta lista marca usos ornamentales, no literales o técnicos. "Tapiz" en un texto sobre textiles, "robusto" como término estadístico o "ecosistema" en biología no están prohibidos. Antes de intervenir pregúntate qué información aporta la palabra.

#### Valoraciones sin respaldo
Innovador, revolucionario, transformador, disruptivo, excepcional, integral, estratégico, clave, crucial, fundamental, esencial, vital. No están prohibidas por sí mismas: se conservan si el texto sostiene la afirmación. Si no la sostiene, describe el rasgo conocido en lugar del adjetivo, sin inventar cifras.

#### Nominalizaciones que ocultan la acción
"Llevar a cabo la implementación", "proceder a la realización", "efectuar una revisión", "dar cumplimiento". Prefiere el verbo directo (implementar, hacer, revisar, cumplir), salvo en textos jurídicos o técnicos donde la expresión deba conservarse.

### Tabla de reemplazos

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

### Casos de prueba de las restricciones absolutas

En estos casos, [término vetado] representa el sustantivo derivado de «tenso» que trae el texto del usuario.

- Entrada: "Hay [término vetado] entre los hermanos por el reparto de la herencia." Esperado: "La relación entre los hermanos se ha vuelto tirante por el reparto de la herencia." Inaceptable: "mantienen un enfrentamiento hostil" (sube la intensidad sin base).
- Entrada, ensayo de historia: "Las [término vetado] diplomáticas entre los dos países aumentaron tras el tratado." Esperado: fricciones, roces o desacuerdos según lo que describan las fuentes, sin escalar a "hostilidades abiertas" si el hecho no lo sostiene.
- Entrada, resistencia de materiales: "La [término vetado] de tracción se expresa en pascales." Esperado: "El esfuerzo de tracción se expresa en pascales." Inaceptable: "La fuerza de tracción se expresa en pascales" (cambia la unidad implícita).
- Entrada, circuitos: "La [término vetado] en el nodo A es de 12 voltios." Esperado: "El voltaje en el nodo A es de 12 voltios" o "La diferencia de potencial en el nodo A es de 12 V".
- Entrada, mecánica: la fuerza de la cuerda que sostiene un bloque, en newtons, dentro de la notación de un problema de física. Esperado: se conserva el nombre técnico estándar de esa fuerza y su símbolo $T$, única excepción de la regla.
- Entrada: un párrafo con cuatro rayas que cumplen funciones distintas (inciso, explicación, interrupción, separación entre proposiciones). Esperado: cada una puntuada según su función. Sospechoso: las cuatro convertidas en punto y coma.
- Entrada: transcripción literal de un fragmento que contiene una raya o el término vetado. Esperado: señalar la incompatibilidad y ofrecer una paráfrasis identificada como tal, sin alterar la cita en silencio.
- Entrada: "Mándame el archivo cuando puedas, lo reviso esta tarde." Esperado: sin cambios.

## Casos de uso típicos

- Revisar un informe, correo o ensayo antes de entregarlo para eliminar léxico inflado, rayas y el término vetado.
- Pasar a un registro neutro latinoamericano un texto con modismos rioplatenses o peninsulares.
- Corregir un texto con diálogos escritos con raya.

## Casos límite

- Ejercicio de mecánica: la fuerza de una cuerda, cable o polea conserva su nombre técnico estándar; la prosa que interpreta el resultado para un lector aplica la prohibición.
- Circuitos: se escribe voltaje o diferencia de potencial. Resistencia de materiales: esfuerzo.
- Uso literal o técnico de una palabra de la lista (un tapiz textil, "robusto" estadístico): no se toca.
- Muestra de voz del usuario con rayas o emojis: se imita lo demás y se avisa una vez de que esos dos rasgos no se reproducen.

## Ejemplos completos

### Ejemplo 1. Diálogo narrativo con raya y modismos peninsulares

Entrada del usuario:

> Corrige este fragmento de mi cuento: [raya]Vale, coge el móvil y vámonos[raya] dijo Ana. [raya]¿Ahora?[raya] preguntó Luis.
>
> (En este respaldo, [raya] representa el guion largo U+2014 que trae el texto del usuario.)

Salida esperada del modelo:

> "Está bien, agarra el celular y vámonos", dijo Ana.
> "¿Ahora?", preguntó Luis.
>
> Cambios: los diálogos pasan de raya a comillas; "vale", "coge" y "móvil" se cambian por equivalentes del español latinoamericano neutro ("está bien", "agarra", "celular"), sin tocar el contenido ni el tono de la escena.

### Ejemplo 2. Léxico inflado con uso literal protegido

Entrada del usuario:

> Pule esto para la web del museo: "En el vertiginoso mundo actual, el museo se sumerge en un viaje fascinante al restaurar un tapiz del siglo XVII."

Salida esperada del modelo:

> El museo restaura un tapiz del siglo XVII.
>
> Cambios: se eliminan "en el vertiginoso mundo actual", "se sumerge" y "viaje fascinante", que no informaban nada; "tapiz" se conserva porque aquí es un objeto textil; el tiempo verbal del original (presente, restauración en curso) se mantiene. Si quieres un texto más largo, necesito un dato real de la restauración: [DATO: técnica, duración o hallazgo].

## Antipatrones

- Sustituir una palabra vetada por la primera opción de una lista sin leer la oración.
- Cambiar una metáfora gastada por otra.
- Convertir todas las rayas de un texto en punto y coma.
- Escribir el término vetado en la versión final de una skill o de un texto de comunicación, aunque la fuente lo traiga.
- Usar "ansiedad" como reemplazo automático de un malestar impreciso.
- Tocar la notación técnica de mecánica al aplicar la prohibición.
