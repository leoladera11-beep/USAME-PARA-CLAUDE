# Catálogo humanizer en español

Anexo del motor `escritura-humana`. Traduce y condensa los 26 patrones de la skill original `humanizer`, basada en "Signs of AI writing" (WikiProject AI Cleanup, Wikipedia). La columna "Motor" indica el patrón equivalente del catálogo principal. Los patrones 1 a 5 justifican una edición con una sola aparición; los marcados como débiles necesitan la compañía de otras señales en el mismo pasaje antes de actuar.

Cambio de criterio respecto del original: la regla 8 de `humanizer` permitía rayas si la muestra del usuario las usaba. En este sistema la raya está prohibida sin excepción (módulo `escritura-humana-vocabulario`).

## A. Escenificar en lugar de afirmar

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 1 | No X sino Y | "no solo X, sino Y", "no es X, es Y", "X en lugar de Y", contraste partido en dos oraciones, cola negativa recortada ("..., sin adivinar") | Afirmar el punto. Conservar el contraste solo si corrige una creencia real o ambas mitades informan. | P1 |
| 2 | Cierres de una línea y fragmentos dramáticos | párrafo de una frase que repite el anterior, "Eso es lo importante.", fila de fragmentos, palabra en mayúsculas | Cortar el cierre que repite; fundir fragmentos en una oración con afirmación concreta. | P8, P10 |
| 3 | Frases que suenan profundas | "la verdadera pregunta es", "en el fondo", "lo que realmente importa", "X es el lenguaje de Y" | Sustituir el aforismo por la afirmación específica. | P3 |
| 4 | Carrerilla antes del punto | "Vamos a sumergirnos", "esto es lo que necesitas saber", "¿Honestamente?", "Mira," como apertura | Quitar la carrerilla y empezar por el contenido. | P8, P10 |
| 5 | Discutir con nadie | "No estoy diciendo que", "Para que quede claro", "Uno podría verse tentado a" sin objeción real | Quitar la defensa; si contiene una afirmación, decirla. | P1 |

## B. Ritmo por regla

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 6 | Tríadas forzadas | ideas de tres en tres, tres ejemplos paralelos y una moraleja | Comprobar que cada elemento aporta; fundir o desarrollar el mejor. | P2 |
| 7 | Inicios repetidos | varias oraciones seguidas con el mismo sujeto | Fundir, cambiar el sujeto o empezar por la acción. | P11 |
| 8 | Raya como conector universal | rayas, semirrayas o doble guion como puntuación | Punto, coma, dos puntos o paréntesis según la relación. Sin excepciones. | P9 |
| 9 | Cautela apilada (débil) | "podría potencialmente", "quizá podría argumentarse" | Una sola marca de incertidumbre donde está la incertidumbre real. | Señal complementaria |
| 10 | Compuestos con guion (débil, propio del inglés) | "high-quality" después del sustantivo | En español, revisar compuestos calcados del inglés. | P5 |
| 11 | Pasiva y sujeto ausente (débil) | "No se necesita archivo de configuración." | Voz activa cuando aclara quién actúa. | P5 |

## C. Inflación y autoridad prestada

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 12 | Palabras sobreusadas | equivalentes españoles de delve, crucial, tapestry, testament, landscape, pivotal, robust, showcase, vibrant | Palabra llana o el hecho. | P3 |
| 13 | Importancia inflada | "marca un hito", "deja una huella imborrable", "el futuro se ve prometedor", sección de "desafíos y perspectivas" | Conservar el hecho y quitar la trascendencia; terminar en el último dato concreto. | P3, P8 |
| 14 | Asociación vaga | "asociado a", "vinculado con", "en conexión con" | Nombrar la relación que da la fuente; si no la da, no inventar un rol. | P12 |
| 15 | Gerundios de adorno | "..., destacando", "..., reflejando", "..., fomentando" | Conservar el hecho; el gerundio solo si la fuente respalda lo que afirma. | P5 |
| 16 | Lenguaje de folleto | "enclavado en", "en el corazón de", "impresionante", "de visita obligada" | Decir qué es la cosa. | P3 |
| 17 | Autoridad prestada | "los expertos sostienen", lista de medios de prestigio, número de seguidores | Usar la fuente real y lo que dijo; si no existe, cortar la afirmación. | P7 |
| 18 | Evitar ser, estar y tener | "funge como", "se erige como", "cuenta con", "ostenta" | Usar ser, estar y tener. | P5 |

## D. Formato por regla

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 19 | Negrita decorativa | negrita sin motivo; listas con etiqueta en negrita y dos puntos | Quitar la negrita; convertir en prosa la lista cuyas etiquetas no informan. | Restricción 3.5 |
| 20 | Encabezados decorativos | Mayúscula En Cada Palabra, emojis o flechas en títulos, reglas horizontales entre todas las secciones | Mayúscula solo inicial, sin decoración. | P5, restricción 3.3 |
| 21 | Comillas inconsistentes (débil) | mezcla de comillas tipográficas y rectas | Un solo tipo en todo el texto. | P9 |

## E. Restos del chat y del borrador

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 22 | Residuo de chatbot | "¡Claro!", "¡Excelente pregunta!", "Espero que te sirva", "¿Quieres que...?" | Quitar el envoltorio y conservar el contenido. | P8 |
| 23 | Descargos de conocimiento y conjeturas | "según mi última actualización", "no está ampliamente documentado", "probablemente creció en..." | Decir qué no muestra la fuente, o eliminar la oración. | Regla cero |
| 24 | Título repetido en la primera oración | encabezado seguido de una línea que lo repite | Quitar la línea repetida. | P8 |
| 25 | Escribir sobre el documento | "la tabla siguiente compara", "esta sección está organizada por" | Mencionar convenciones solo si el lector no las puede inferir, una vez. | Señal complementaria |

## F. Lector equivocado

| N.º | Patrón | Señal | Acción | Motor |
|---|---|---|---|---|
| 26 | Reexplicar lo que el lector sabe | respuesta en un hilo que repite el problema y la evidencia antes de llegar a la decisión | Abrir con la decisión y conservar solo el razonamiento que cambiaría el acuerdo del lector. | Señal complementaria |

## Cuándo no actuar

Deja intacta una frase vigilada dentro de una cita, un título, un nombre propio o un pasaje que habla de la frase en vez de usarla. Saludos y despedidas de una carta son anteriores a los chatbots. Un texto escrito antes del 30 de noviembre de 2022 no es de IA. Conserva los detalles que llevan la voz del autor: un dato inusual y específico, sentimientos mezclados sin resolver, referencias de época, una elección en primera persona que el autor puede explicar y un inciso o autocorrección genuinos.
