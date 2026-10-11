
## Casos de uso típicos

- "Necesito conceptos de logo para mi tostaduría": proceso completo con tres a cinco territorios.
- "Ya elegimos el territorio 2, dame el prompt final para presentarlo": exploración de un único territorio.
- "Rediseño de identidad: conservar el color verde y el nombre": brief con elementos que deben conservarse.
- "Evalúa estas tres propuestas que nos mandó la agencia con criterios": pasos 4, 7 y 8 sobre propuestas ajenas.

## Casos límite

- El usuario pide "algo como el logo de [marca famosa]": se extraen atributos (geometría, contraste, ritmo), nunca elementos literales, y se explica por qué.
- Brief casi vacío (solo el nombre): un bloque de hasta cinco preguntas; si piden seguir, supuestos en lista al inicio.
- Nombre con mayúsculas o grafía especial ("eKo", "Ñawi"): se respeta exactamente y se analizan las trampas de legibilidad (la eñe a 16 píxeles, pares de letras difíciles).
- Mercados con significados culturales sensibles de un símbolo o color: se señalan como riesgo y como hipótesis a validar, sin afirmarlos como hechos.
- Piden asegurar que el logo es registrable u original: se aclara que requiere búsqueda legal que esta skill no hace.
- Piden voz verbal, eslogan o tono de comunicación: fuera de alcance; se deriva a `escritura-humana`.

## Ejemplos completos

### Ejemplo 1. Proceso completo (extracto con un territorio)

Entrada del usuario:

> Marca: "Molle", tostaduría de café de especialidad en Arequipa que vende en su local y por internet. Competidores: una cadena con logo de taza humeante, una marca con un grano de café dentro de un círculo y otra con tipografía script dorada. Queremos que se vea artesanal pero no rústico. Prohibido: tazas y humo. Uso principal: bolsas, sellos de tinta y la web.

Salida esperada del modelo (estructura y un territorio desarrollado):

> A. Síntesis: tostaduría local de Arequipa con venta directa y en línea; la identidad debe distinguirse de tres competidores que usan taza, grano en círculo y script dorado, y funcionar en sello de una tinta sobre bolsa kraft.
>
> B. Supuestos: el nombre alude al árbol de molle; no hay elementos previos que conservar; presupuesto de impresión a una tinta.
>
> C. Criterios y pesos: distintividad frente a competidores 30, viabilidad en sello de una tinta 20, relevancia estratégica 20, memorabilidad 15, riesgo legal y cultural 10, atemporalidad 5.
>
> D. Doce direcciones en una línea cada una; se descartan siete, por ejemplo "grano dentro de un círculo: igual a competidor 2".
>
> F. Territorio "Copa y raíz":
> - Idea: el árbol de molle dibujado como una sola línea cuyo espacio negativo forma un grano de café.
> - Construcción: copa circular de siete hojas pequeñas; el tronco se divide en dos raíces que cierran el contorno inferior; trazo uniforme y grueso para sobrevivir al sello.
> - Tipo de marca: combinada (símbolo y denominativa).
> - Tipografía: sans humanista de trazo uniforme (candidatas: Source Sans 3, Fira Sans); vigilar el par "ll" a tamaño pequeño.
> - Color: negro sobre blanco primero; después #2F3B2A (verde molle oscuro) por asociación con el árbol; funciona invertido sobre kraft.
> - Pruebas de estrés: a 16 píxeles las siete hojas se funden en una masa, por eso el favicon usa solo el grano en negativo; en bordado a una tinta, viable; en valla a 30 metros, legible; sobre fondo oscuro, requiere versión invertida.
> - Riesgos: parecido genérico con logos de árboles de vida; tendencia que podría envejecerlo: monolínea fina, que se evita con trazo grueso.
> - Hipótesis por validar: que el público reconozca el grano en el espacio negativo sin explicación.
> - Prompt de imagen: "flat vector logo, a stylized molle tree drawn as one continuous thick line, round canopy of seven small leaves, trunk splitting into two roots that close the outline, the negative space inside the canopy forms a coffee bean, uniform stroke weight, generous spacing, solid white background, single color black, centered, no gradients, no shadows, no mockup, no 3D, no extra text, vertical 17:24 canvas"
>
> G y H. Tabla ponderada con una frase de evidencia por celda, recomendación, alternativa, compensaciones y dos pruebas con clientes reales (reconocimiento del grano en cinco segundos; preferencia en bolsa impresa frente a la alternativa).

Por qué es correcta: el territorio se puede dibujar sin verlo, cada afirmación de que "funciona" tiene una razón mecánica, el prompt cumple la base obligatoria, no usa "moderno" ni "premium" sin rasgo visual, y separa hipótesis de evidencia.

### Ejemplo 2. Exploración de un único territorio

Entrada del usuario:

> Nos quedamos con "Copa y raíz". Dame el prompt final.

Salida esperada del modelo:

> Explora un único concepto de identidad para "Molle".
>
> Concepto: árbol de molle en una sola línea gruesa cuyo espacio negativo forma un grano de café.
> Atributos que debe transmitir: oficio, origen local, calidez sin rusticidad.
> Lenguaje formal: copa circular de siete hojas, tronco que se divide en dos raíces, trazo uniforme, contraste alto.
> Tipo de marca: combinada.
>
> Presentación: una sola propuesta principal; diseño plano, frontal y vectorial; tinta negra sobre fondo blanco; sin mockups; sin objetos decorativos; sin 3D, sombras, brillos, degradados ni texturas; sin eslóganes ni texto adicional; composición limpia y centrada; lienzo vertical de 24 x 17 cm; nombre escrito exactamente como "Molle".
>
> Debe conservar claridad a tamaño pequeño y evitar similitudes evidentes con marcas conocidas. Esto es una exploración conceptual, no un archivo final ni una validación jurídica.

## Antipatrones

- Convertir la skill en un manual de voz verbal o tono de comunicación.
- Copiar o combinar logos reconocibles.
- Cinco variaciones del mismo logotipo presentadas como territorios distintos.
- Adjetivos sin rasgo visual (moderno, elegante, premium, confianza).
- Empezar por el color, los efectos o el mockup antes que por la forma en blanco y negro.
- Prometer originalidad, atemporalidad o registrabilidad.
- Presentar hipótesis de percepción como si fueran resultados de investigación.
- Prompts de imagen con gradientes, 3D, mockups o texto extra.
