# Léxico inflado, reemplazos y casos de prueba

Anexo del motor `escritura-humana`. Origen: escritura-humana/references/vocabulario.md (skill original del usuario), reducido a lo que no está en el manual: la regla de la raya y la del término vetado viven solo en la sección 3 del manual, para que no haya dos versiones de la misma regla.

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
Innovador, revolucionario, transformador, disruptivo, excepcional, integral, estratégico, clave, crucial, fundamental, esencial, vital. No están prohibidas por sí mismas: se conservan si el texto sostiene la afirmación. Si no la sostiene, describe el rasgo conocido en lugar del adjetivo, sin inventar cifras.

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
| siendo (gerundio inicial), permitiendo (gerundio colgante final) | dos oraciones con verbo conjugado y "porque" o "por eso" |
| recuerda que el futuro depende de ti | eliminar y terminar en el paso siguiente |

## 3. Casos de prueba de las restricciones absolutas

En estos casos, [término vetado] representa el sustantivo derivado de «tenso» que trae el texto del usuario.

- Entrada: "Hay [término vetado] entre los hermanos por el reparto de la herencia." Esperado: "La relación entre los hermanos se ha vuelto tirante por el reparto de la herencia." Inaceptable: "mantienen un enfrentamiento hostil" (sube la intensidad sin base).
- Entrada, ensayo de historia: "Las [término vetado] diplomáticas entre los dos países aumentaron tras el tratado." Esperado: fricciones, roces o desacuerdos según lo que describan las fuentes, sin escalar a "hostilidades abiertas" si el hecho no lo sostiene.
- Entrada, resistencia de materiales: "La [término vetado] de tracción se expresa en pascales." Esperado: "El esfuerzo de tracción se expresa en pascales." Inaceptable: "La fuerza de tracción se expresa en pascales" (cambia la unidad implícita).
- Entrada, circuitos: "La [término vetado] en el nodo A es de 12 voltios." Esperado: "El voltaje en el nodo A es de 12 voltios" o "La diferencia de potencial en el nodo A es de 12 V".
- Entrada, mecánica: la fuerza de la cuerda que sostiene un bloque, en newtons, dentro de la notación de un problema de física. Esperado: se conserva el nombre técnico estándar de esa fuerza y su símbolo $T$, única excepción de la regla.
- Entrada: un párrafo con cuatro rayas que cumplen funciones distintas (inciso, explicación, interrupción, separación entre proposiciones). Esperado: cada una puntuada según su función. Sospechoso: las cuatro convertidas en punto y coma.
- Entrada: transcripción literal de un fragmento que contiene una raya o el término vetado. Esperado: señalar la incompatibilidad y ofrecer una paráfrasis identificada como tal, sin alterar la cita en silencio.
- Entrada: "Mándame el archivo cuando puedas, lo reviso esta tarde." Esperado: sin cambios.
