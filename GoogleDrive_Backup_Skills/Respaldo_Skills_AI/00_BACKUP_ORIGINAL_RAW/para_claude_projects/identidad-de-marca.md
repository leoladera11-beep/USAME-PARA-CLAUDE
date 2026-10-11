---
name: identidad-de-marca
description: >
  Desarrolla territorios de identidad visual para una marca, desde el brief hasta una recomendación evaluada con criterios ponderados, y produce el prompt de imagen para explorar cada territorio o para profundizar en uno ya elegido. Úsala cuando el usuario pida conceptos de logo, identidad visual, territorios de marca, un rediseño de identidad o exploraciones visuales para un nombre. No imita marcas existentes ni presenta hipótesis sobre consumidores como hechos.
---

# Identidad de marca

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
