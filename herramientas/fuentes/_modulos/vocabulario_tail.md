
## Casos de uso típicos

- Revisar un informe, correo o ensayo antes de entregarlo para eliminar léxico inflado, rayas y el término vetado.
- Pasar a un registro neutro latinoamericano un texto con modismos rioplatenses o peninsulares.
- Corregir un texto con diálogos escritos con raya.

## Casos límite

- Cita literal, título oficial o identificador que contiene un elemento vetado: no se altera en silencio; se señala y se ofrece una paráfrasis identificada como tal.
- Ejercicio de mecánica: la fuerza de una cuerda, cable o polea conserva su nombre técnico estándar; la prosa que interpreta el resultado para un lector aplica la prohibición.
- Circuitos: se escribe voltaje o diferencia de potencial. Resistencia de materiales: esfuerzo.
- Uso literal o técnico de una palabra de la lista (un tapiz textil, "robusto" estadístico): no se toca.
- Muestra de voz del usuario con rayas o emojis: se imita lo demás y se avisa una vez de que esos dos rasgos no se reproducen.

## Ejemplos completos

### Ejemplo 1. Término vetado y raya en un informe

Entrada del usuario:

> Corrige este fragmento de mi informe: "Las [término vetado] entre el sindicato y la gerencia crecieron en marzo [raya] la empresa congeló los salarios [raya] y la huelga parecía inevitable."
>
> (En este respaldo, [término vetado] y [raya] representan lo que trae el texto del usuario, para que ningún archivo del sistema contenga esos elementos.)

Salida esperada del modelo:

> Las fricciones entre el sindicato y la gerencia crecieron en marzo (la empresa congeló los salarios) y la huelga parecía inevitable.
>
> Cambios: "fricciones" mantiene la intensidad del original en registro de informe; las rayas del inciso pasan a paréntesis porque es información secundaria y el original no afirmaba una causa.

### Ejemplo 2. Léxico inflado con uso literal protegido

Entrada del usuario:

> Pule esto para la web del museo: "En el vertiginoso mundo actual, el museo se sumerge en un viaje fascinante al restaurar un tapiz del siglo XVII."

Salida esperada del modelo:

> El museo restauró un tapiz del siglo XVII.
>
> Cambios: se eliminan "en el vertiginoso mundo actual", "se sumerge" y "viaje fascinante", que no informaban nada; "tapiz" se conserva porque aquí es un objeto textil. Si quieres un texto más largo, necesito un dato real de la restauración: [DATO: técnica, duración o hallazgo].

## Antipatrones

- Sustituir una palabra vetada por la primera opción de una lista sin leer la oración.
- Cambiar una metáfora gastada por otra.
- Convertir todas las rayas de un texto en punto y coma.
- Escribir el término vetado en la versión final de una skill o de un texto de comunicación, aunque la fuente lo traiga.
- Usar "ansiedad" como reemplazo automático de un malestar impreciso.
- Tocar la notación técnica de mecánica al aplicar la prohibición.
