# Identidad de marca (BRAND-IDENTITY-SYSTEM)

Desarrolla territorios de identidad visual para una marca, desde el brief hasta una recomendación evaluada con criterios ponderados, y produce el prompt de imagen para explorar cada territorio o profundizar en uno elegido. Conserva íntegro el método de la skill original `identidad-de-marca` y añade casos de uso, casos límite, ejemplos y antipatrones al final.

Corrección respecto del documento "Sistema Auditado": aquella versión convertía esta skill en un sistema de voz verbal (arquetipos, matriz de tono, palabras de poder). Ese no era el alcance original, que es identidad visual y logo. La voz verbal de una marca, si se necesita, se resuelve con `escritura-humana` en modo `redactar` o `mejorar`, usando el brief de marca como muestra de voz. Esta skill no la sustituye.

Reglas de la memoria del usuario, que modifican el cuerpo original de forma explícita y prevalecen sobre su texto literal:

- Tamaño por defecto de las imágenes: 24 cm de alto por 17 cm de ancho (proporción vertical 17:24), salvo que el usuario indique otro. Al aplicar la base de prompt del paso 6, añade al final ", vertical 17:24 canvas". Al usar la plantilla de territorio único, añade en Presentación la línea "- lienzo vertical de 24 x 17 cm;" antes de la línea del nombre. Esa medida es solo para imágenes; los documentos siguen la regla A4.
- En marcas denominativas o combinadas, el prompt de imagen incluye siempre el nombre exacto; en marcas solo simbólicas, el nombre va solo si el concepto lo lleva.
- Preguntar antes de ejecutar: aunque los vacíos del brief no sean críticos, antes de desarrollar los territorios presenta en un solo bloque los supuestos y hasta cinco preguntas, cada una con su valor por defecto; desarrolla cuando el usuario confirme o diga "sigue". Esto sustituye la indicación del cuerpo de continuar directamente con supuestos declarados.
- Criterio propio: si el usuario prefiere una dirección débil frente al brief, se dice con su razón mecánica.

Relación con otros motores: el texto en español sigue las restricciones absolutas del sistema (sin raya, sin el término vetado, sin emojis). Los prompts de imagen van en inglés. La auditoría de un prompt de logo ajeno se hace con `auditor-de-prompts`, usando el estándar de esta skill como referencia de calidad.

## Estándar

Cada territorio que se entregue tiene que pasar cinco pruebas: distintivo frente a los competidores directos que dio el usuario, apropiable, es decir que no evoque logos conocidos, legible a dieciséis píxeles y en una sola tinta, explicable en una frase, y dibujable por un tercero a partir de la descripción, sin haber visto el resultado.

## Brief

Nombre exacto y su capitalización, pronunciación, descriptor o eslogan, categoría y oferta, objetivo comercial del proyecto, problema que debe resolver la identidad, propuesta de valor, diferenciadores, posicionamiento deseado, audiencia con sus necesidades, contexto y objeciones, tres competidores directos con una descripción de cómo es su logo para no parecerse, mercados, países e idiomas, atributos deseados, atributos que deben evitarse, referencias visuales con la razón concreta de cada una, elementos existentes que deben conservarse, símbolos o colores prohibidos, aplicaciones principales, tamaño mínimo previsto, y restricciones de producción, accesibilidad o presupuesto.

Si falta información que impediría tomar una decisión responsable, formula un único bloque de hasta cinco preguntas prioritarias. Si los vacíos no son críticos, continúa y declara los supuestos en una lista al inicio. No inventes investigación, preferencias del público ni conclusiones jurídicas.

## Proceso

1. Resume el briefing en un máximo de ciento cincuenta palabras.
2. Identifica el objetivo principal, la disyuntiva estratégica que la identidad debe resolver, el diferenciador, los riesgos de caer en clichés del sector, y las restricciones decisivas.
3. Explora en amplitud antes de comprometerte con nada: enumera doce direcciones posibles en una línea cada una. Tacha las siete más previsibles y explica por qué en cinco palabras. Este paso evita anclarte en la primera idea razonable.
4. Propón criterios de evaluación con pesos que sumen cien, ajustados al briefing. Si el usuario no tiene preferencia, usa como punto de partida distintividad frente a competidores 25, relevancia estratégica 20, memorabilidad 15, escalabilidad y versatilidad 15, atemporalidad 10, riesgo legal y cultural 10, viabilidad de ejecución 5, y ajusta desde ahí según lo que el briefing realmente pida.
5. Desarrolla entre tres y cinco territorios genuinamente distintos a partir de las direcciones que sobrevivieron el paso 3. No añadas territorios solo para completar una cantidad. Ningún par de territorios puede compartir la misma combinación de tipo de marca y lenguaje de formas, eso obliga a una diversidad estructural real en vez de cinco variaciones del mismo logotipo.
6. Para cada territorio, en no más de doscientas palabras además del prompt de imagen, incluye:
   - nombre conceptual y la idea en una frase;
   - premisa estratégica;
   - construcción: formas, proporciones, uso del espacio negativo, y cómo se dibuja, de modo que un diseñador pueda bocetarlo sin verlo;
   - tipo de marca: denominativa, símbolo, monograma o combinada;
   - dirección tipográfica: una o dos tipografías reales candidatas, o los rasgos de una letra a medida, y las trampas de legibilidad del nombre, como el kerning o los pares de letras difíciles;
   - enfoque cromático si aporta valor: diseñado primero en negro sobre blanco, luego de uno a tres colores con su código hexadecimal y el motivo de cada uno, confirmando que funciona en monocromo e invertido;
   - sistema: versión principal, versión secundaria horizontal o vertical, y submarca o favicon;
   - aplicaciones donde funcionaría mejor, y el tamaño o contexto donde podría fallar, con al menos estas pruebas de estrés: a dieciséis píxeles, bordado a una tinta, en valla a treinta metros, y sobre fondo oscuro;
   - riesgos: parecidos con logos conocidos, dobles lecturas no deseadas, significados culturales problemáticos en los mercados indicados, y la tendencia concreta que podría envejecerlo, nombrada, por ejemplo gradient blob, sans geométrica genérica, o 3D y cromo;
   - hipótesis de percepción que todavía debe validarse con público real;
   - un prompt de imagen independiente, en inglés, de sesenta a noventa palabras, con esta base: "flat vector logo, [descripción constructiva], solid white background, single color black, centered, no gradients, no shadows, no mockup, no 3D, no extra text", incluyendo el nombre solo si el concepto lo lleva.
7. Evalúa cada territorio del uno al diez con los criterios ponderados del paso 4, con una frase de evidencia por celda.
8. Recomienda una o dos direcciones según el briefing, no según gusto personal.
9. Explica las compensaciones entre la recomendación y la alternativa, las incertidumbres reales, y las dos pruebas concretas que validarías con clientes o usuarios reales antes de decidir.

## Reglas

No copies ni combines logos reconocibles. Usa las referencias visuales para extraer atributos, nunca elementos visuales literales.

Prohibidas sin un rasgo visual concreto que las produzca: moderno, innovador, profesional, confianza, elegante, premium. Toda afirmación de que un territorio "funciona" va acompañada de su razón mecánica: forma, contraste, proporción o ritmo.

No asegures que una idea es original, atemporal o registrable, eso requiere una búsqueda legal que esta skill no hace. No confundas una explicación convincente con evidencia de usuarios reales. Evita símbolos genéricos de la categoría salvo que exista una transformación estratégica clara y explicada.

Prioriza siempre la forma en blanco y negro antes que el color, los efectos o los mockups. Si el nombre es esencial para el concepto, respeta exactamente su escritura y capitalización.

La salida tiene que ser concreta y comparable entre territorios, nunca una narración promocional.

Español para todo el texto, inglés solo en los prompts de imagen. Extensión total orientativa: entre 2200 y 3000 palabras, según la cantidad de territorios desarrollados.

## Formato de salida

A. Síntesis del briefing.
B. Supuestos y datos faltantes.
C. Criterios y pesos.
D. Direcciones exploradas y descartadas, con el motivo de cada descarte.
E. Tabla comparativa de territorios.
F. Ficha detallada de cada territorio.
G. Evaluación ponderada.
H. Recomendación, alternativa, compensaciones y próximas pruebas.

## Exploración de un único territorio

Una vez elegido un territorio, ya sea por el usuario o por un cliente, esta sección lo lleva a un único prompt de imagen limpio y listo para presentación, más detallado que el prompt corto de la ficha inicial.

Plantilla:

Explora un único concepto de identidad para "[NOMBRE EXACTO]".

Concepto: [descripción del territorio]
Atributos que debe transmitir: [atributos]
Lenguaje formal: [formas, contraste, estructura]
Tipo de marca: [símbolo, monograma, denominativa o combinada]

Presentación:
- una sola propuesta principal;
- diseño plano, frontal y vectorial;
- tinta negra sobre fondo blanco;
- sin mockups;
- sin objetos decorativos;
- sin 3D, sombras, brillos, degradados ni texturas;
- sin eslóganes ni texto adicional;
- composición limpia y centrada;
- nombre escrito exactamente como "[NOMBRE EXACTO]".

Debe conservar claridad a tamaño pequeño y evitar similitudes evidentes con marcas conocidas. Aclara siempre, dentro o fuera de la plantilla, que esto es una exploración conceptual, no un archivo final ni una validación jurídica.

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

Salida esperada del modelo, primer turno (preguntas antes de ejecutar):

> Antes de desarrollar los territorios, confirma estos supuestos o corrígelos (si respondes "sigue", uso los valores entre paréntesis):
> 1. ¿El nombre alude al árbol de molle? (sí)
> 2. ¿Impresión a una tinta en bolsa kraft? (sí, por presupuesto)
> 3. ¿Mercado solo Perú o también exportación? (solo Perú)
> 4. ¿Hay elementos actuales que conservar? (ninguno)

La persona responde "sigue". Salida esperada del modelo, segundo turno (estructura y un territorio desarrollado):

> A. Síntesis: tostaduría local de Arequipa con venta directa y en línea; la identidad debe distinguirse de tres competidores que usan taza, grano en círculo y script dorado, y funcionar en sello de una tinta sobre bolsa kraft.
>
> B. Supuestos confirmados: alusión al árbol de molle; una tinta sobre kraft; mercado peruano; sin elementos previos.
>
> C. Criterios y pesos: distintividad frente a competidores 30, viabilidad en sello de una tinta 20, relevancia estratégica 20, memorabilidad 15, riesgo legal y cultural 10, atemporalidad 5.
>
> D. Doce direcciones en una línea cada una; se descartan siete, por ejemplo "grano dentro de un círculo: igual a competidor 2".
>
> E. Tabla comparativa: cinco territorios en filas; columnas con tipo de marca, lenguaje de formas, fortaleza y riesgo principal.
>
> F. Territorio "Copa y raíz":
> - Idea: árbol de molle en una sola línea cuyo espacio negativo forma un grano de café.
> - Premisa: origen local y oficio sin tazas ni humo, el cliché de la categoría.
> - Construcción: copa circular de siete hojas; tronco dividido en dos raíces que cierran el contorno; trazo grueso uniforme.
> - Tipo de marca: combinada.
> - Tipografía: sans humanista (Source Sans 3 o Fira Sans); vigilar el par "ll".
> - Color: negro; después #2F3B2A (verde molle). Sobre kraft, negro o verde, que contrastan por luminosidad; el blanco invertido queda para fondos oscuros.
> - Sistema: símbolo sobre el nombre; versión horizontal; favicon con solo el grano.
> - Aplicaciones: sello y etiqueta; débil en pantallas pequeñas.
> - Estrés: a 16 píxeles las hojas se funden (por eso el favicon); bordado viable, sin detalles menores a 1 mm; valla legible a 30 metros por su contorno cerrado de alto contraste; en fondo oscuro, invertido en blanco, el grano se mantiene.
> - Riesgos: parecido con logos de "árbol de la vida"; el grano puede leerse como semilla; sin significado cultural problemático conocido en Perú (validar); envejecería con la moda del line art de trazo continuo.
> - Hipótesis: que se reconozca el grano sin explicación.
> - Prompt de imagen: "flat vector logo, a stylized molle tree drawn as one continuous thick line, round canopy of seven small leaves, trunk splitting into two roots that close the outline, the negative space inside the canopy forms a coffee bean, the wordmark Molle set below in a uniform-stroke humanist sans, solid white background, single color black, centered, no gradients, no shadows, no mockup, no 3D, no extra text, vertical 17:24 canvas"
>
> G y H. Tabla ponderada con una frase de evidencia por celda, recomendación, alternativa, compensaciones y dos pruebas con clientes reales (reconocimiento del grano en cinco segundos; preferencia en bolsa impresa frente a la alternativa).

Por qué es correcta: pregunta antes de ejecutar con valores por defecto; la ficha trae todos los campos del paso 6; el territorio se puede dibujar sin verlo; cada afirmación de que algo funciona lleva su razón mecánica; el prompt cumple la base obligatoria e incluye el nombre porque la marca es combinada y termina con el lienzo vertical de 24 x 17 cm; no usa "moderno" ni "premium" sin rasgo visual; y separa hipótesis de evidencia.

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
