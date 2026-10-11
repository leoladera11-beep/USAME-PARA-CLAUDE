---
name: escritura-humana-ensayos
description: "Módulo de la familia escritura-humana para ensayos académicos, monografías breves y exámenes argumentativos en español: plan para aprobación, tesis, argumentos con cierre, fuentes y citas, negrita adaptativa y versión acortada. Se activa con \"ensayo\", \"texto argumentativo\", \"rúbrica\" o \"consigna\". Se aplica junto con escritura-humana-core."
---

# Escritura humana: ensayos académicos (versión modular)

Módulo de género de la familia escritura-humana. Se aplica junto con `escritura-humana-core` cuando el texto es un ensayo académico, monografía breve o examen argumentativo en español, en cualquier disciplina, región o periodo. Se activa con "ensayo", "texto argumentativo", "ensayo crítico", "acorta el ensayo", "revisa mi ensayo contra la rúbrica" o cuando se entrega una consigna o rúbrica. Prioridad: consigna o rúbrica del profesor, después este módulo, después el núcleo.

Reglas permanentes del usuario que este módulo aplica sin que las pida: estructura de tesis, cuerpo y conclusión por defecto; plan antes del texto completo, con pausa para aprobación, en cualquier ensayo completo sin importar la extensión; entrega en el chat como texto limpio, sin negritas ni asteriscos; nunca la etiqueta "Mini-conclusión"; etiquetas de partes ("Argumento 1:") solo si el usuario las pide en el encargo, y en ese caso simples, seguidas directo del párrafo, sin subtítulo descriptivo; versión resumida solo si se pide; conservar siempre las citas de fuente; si al revisar aparecen datos que conviene verificar o corregir, preguntar antes de generar la versión corregida.

## Método

Prioridad interna: consigna o rúbrica del profesor, después este módulo, después el núcleo. Si la rúbrica exige algo que el motor desaconseja (conectores de orden, subtítulos), la rúbrica manda y se cumple de la forma menos mecánica posible.

1. Ficha de consigna, que complementa el brief y sigue vigente en los turnos siguientes del mismo ensayo:

| Dato | Si falta |
|---|---|
| Pregunta o tema exacto | Preguntar; sin esto no se escribe. |
| Extensión | Asumir 900 a 1200 palabras y decirlo. |
| Fuentes obligatorias del curso | Usar solo las que dio el usuario. |
| Formato de cita | Preguntar si hay fuentes; sin respuesta, APA 7 en español, salvo que la disciplina sea clara (notas al pie en historia y humanidades). |
| Términos que deben aparecer | Ninguno. |
| Contraargumento exigido | Ver el punto 2. |
| Título | Siempre poner uno. |

Si faltan varios datos, agrúpalos en una sola pregunta con opciones. Si el usuario dice "hazlo nomás", asume los valores por defecto y decláralos al entregar.

2. Estructura por defecto, salvo que la consigna exija otra: título que anuncie la postura o la pregunta; introducción con el contexto mínimo que hace necesaria la pregunta y la tesis en una o dos oraciones (afirmación discutible que alguien informado podría negar; hoja de ruta solo si la rúbrica la pide, redactada como anticipo de la línea argumental); cuerpo de dos a cuatro argumentos, cada uno con afirmación, evidencia, análisis propio (pesa más que la evidencia) y cierre; contraargumento obligatorio si la rúbrica lo menciona y, si no, uno breve si hay espacio; conclusión; sin subtítulos salvo que la consigna los pida. Etiquetas de partes: el ensayo va en prosa continua; solo si el usuario lo pide en el encargo (por ejemplo, "usa Argumento 1 y Argumento 2 explícitamente") se escriben etiquetas, y en ese caso son simples ("Argumento 1:") seguidas directo del párrafo, sin subtítulo descriptivo. Nunca aparece la etiqueta "Mini-conclusión" ni otra parecida en el texto entregado.

3. Cierre de cada argumento: una o dos oraciones que dejan claro qué quedó demostrado y por qué importa para la tesis, con al menos dos formas distintas en el mismo ensayo: por consecuencia, por conflicto abierto, por enlace con el argumento siguiente o por precisión. Nunca con "en conclusión", "como se ha visto", repitiendo la afirmación inicial o con un adjetivo de valoración. Los cierres no llevan etiquetas visibles ("mini conclusión").

4. Conclusión: responde a la pregunta o al título con la tesis reformulada a la luz de lo argumentado; muestra cómo se relacionan los argumentos, no cuáles eran; puede cerrar con una implicación, un límite honesto o una pregunta abierta, nunca con moraleja. No abre con "en conclusión", "a lo largo de este ensayo" ni "en el presente ensayo se ha demostrado", y no introduce fuentes nuevas. Si la rúbrica exige el rótulo "Conclusión", se cumple.

5. Fuentes y citas: no se inventan fuentes, autores, títulos, años, páginas, cifras, fechas ni citas. Si un argumento necesita sustento sin fuente, se escribe y se marca `[FUENTE NECESARIA: tipo de dato]`. La cita textual se copia exacta, sin acortar, corregir ni modernizar, integrada en la sintaxis con un verbo de atribución preciso y variado (sostiene, matiza, plantea, cuestiona, advierte, postula), nunca suelta; más de 40 palabras (o el límite de la norma) va en bloque. La paráfrasis conserva la atribución pegada a la idea. Las fuentes etiquetadas por el curso (Fuente A, Documento 3) se citan con esa etiqueta exacta. Las fuentes primarias se presentan con autor y fecha la primera vez y se analizan como documento (quién habla, desde dónde, para quién). En APA en español: "y" en lugar de "&", "p." y "pp.", "citado en". Alterna cita integrada, cita parentética y autor como sujeto. Si una cita textual es demasiado larga para el ensayo, se propone al usuario qué fragmento usar; no se recorta por cuenta propia.

6. Contexto académico y temporal: evita el anacronismo; usa las categorías propias del campo, la región y el periodo (por ejemplo, gamonalismo o clientelismo en historia peruana) con significado correcto; elige el aparato crítico habitual de la disciplina.

7. Términos de rúbrica: cada término aparece al menos una vez con su significado correcto dentro del argumento, repartidos entre introducción, cuerpo y conclusión; al entregar se reporta en qué párrafo quedó cada uno.

8. Negrita adaptativa: no hay un valor único. Revisa los patrones del `references/casos-negrita.md` (rúbrica que pide negrita, rúbrica con términos sin formato, consigna sin términos, pedido directo del usuario, documento final frente a revisión en el chat). Si el caso no calza, pregunta. El criterio fijado para un curso o ensayo se mantiene en las revisiones siguientes. Dentro del chat, la negrita solo se aplica si el usuario pide verla ahí.

9. Modos internos: escribir desde cero; editar borrador (mejora prosa y cumplimiento sin cambiar la tesis ni eliminar argumentos sin avisar; las citas del usuario se conservan; si hay datos que conviene verificar o corregir, pregunta antes de entregar la versión corregida); acortar (solo con pedido explícito; confirmar si quiere ensayo más corto o resumen; el resumen conserva las citas cardinales y las referencias y condensa solo el desarrollo; si al eliminar un argumento se pierde una fuente exigida, se reubica en otro o se avisa; recortar en este orden: evidencia secundaria, extensión del análisis, contexto de la introducción, contraargumento no exigido y, solo si aun así no entra, un argumento completo avisándolo; nunca se recorta la tesis, los cierres que sobreviven, la conclusión, las citas de los argumentos que quedan ni las referencias); evaluar contra rúbrica (no reescribe: reporta criterio por criterio qué cumple, qué no y dónde, citando fragmentos).

10. Antiplantilla de ensayo: párrafos del cuerpo con el mismo esqueleto y longitud; cada argumento abre con "en primer lugar", "en segundo lugar", "finalmente" sin que la rúbrica lo pida; la conclusión repite la introducción en pasado; cada cita entra con "como señala" o "según"; siempre tres argumentos; hedging uniforme o ausencia total de modalización en afirmaciones interpretativas.

11. Flujo: ficha de consigna, modo interno, esqueleto (tesis, argumentos con su fuente, contraargumento, idea de la conclusión) entregado como Plan para aprobación, redacción, verificación (tesis discutible en la introducción, evidencia, análisis y cierre por argumento, dos formas de cierre, conclusión que responde, ninguna fuente inventada, huecos marcados, cita uniforme, términos presentes, extensión en rango, sin subtítulos no pedidos, repaso antiplantilla) y entrega: primero el ensayo limpio (título, texto, referencias), después, separado y breve, el bloque de verificación (recuento de palabras, términos y párrafo, fuentes usadas, huecos, supuestos, criterio de negrita). Si el usuario pidió solo el texto, se omite el bloque.

Casos de negrita: `references/casos-negrita.md`.

## Casos de uso típicos

- "Escribe un ensayo de 900 palabras sobre..." con o sin rúbrica.
- "Revisa mi ensayo contra esta rúbrica" (evaluar, sin reescribir).
- "Acorta mi ensayo a 600 palabras" (con confirmación previa).
- "Usa Argumento 1 y Argumento 2 explícitamente": etiquetas simples.

## Casos límite

- Sin fuentes del curso y la consigna exige citas: se escribe el argumento y se marca [FUENTE NECESARIA: tipo de dato].
- Dato dudoso en el borrador del usuario: se pregunta antes de corregirlo.
- La rúbrica pide negrita en los términos: se aplica en el documento final; en el chat solo si el usuario lo pide.
- Cita textual con ortografía de época: se conserva exacta.

## Ejemplos completos

### Ejemplo 1. Ensayo nuevo: primero el plan

Entrada del usuario:

> Escribe un ensayo de 900 palabras sobre si la Reforma Agraria de 1969 transformó el poder rural en el Perú. Usa la Fuente A y la Fuente B del curso (te las pego abajo).

Salida esperada del modelo:

> Plan (espero tu visto bueno antes de redactar):
> - Título: una pregunta o postura sobre quién ganó poder con la reforma.
> - Tesis: una afirmación discutible sobre el alcance del cambio, formulada con lo que sostienen tus fuentes.
> - Argumento sobre la propiedad de la tierra, con la Fuente A.
> - Argumento sobre lo que siguió igual o cambió de manos, con la Fuente B.
> - Contraargumento breve antes de la conclusión, si hay espacio.
> - Conclusión: responde la pregunta del título y señala un límite de lo argumentado.
> - Supuestos: 900 palabras, APA 7 en español, prosa sin etiquetas de partes (si quieres "Argumento 1:", dímelo).

### Ejemplo 2. Borrador con un dato dudoso

Entrada del usuario:

> Corrige mi párrafo: "Con la reforma se expropiaron 50 millones de hectáreas, lo que acabó con el gamonalismo."

Salida esperada del modelo:

> Antes de entregar la versión corregida: la cifra de 50 millones de hectáreas parece muy superior a las que suele citar la bibliografía general sobre la reforma, y "acabó con el gamonalismo" es una afirmación fuerte que conviene sostener con una fuente. ¿Quieres que verifique y corrija la cifra con una fuente del curso, o prefieres que la deje marcada como [verificar] y solo mejore la redacción?

## Antipatrones

- Redactar el ensayo completo sin plan aprobado.
- Poner "Argumento 1: La seguridad como motor..." con subtítulo descriptivo, o etiquetas que nadie pidió.
- Corregir un dato del usuario sin preguntar.
- Inventar fuentes, páginas o años.
- Cerrar con "En conclusión" o con una conclusión que repite la introducción.
