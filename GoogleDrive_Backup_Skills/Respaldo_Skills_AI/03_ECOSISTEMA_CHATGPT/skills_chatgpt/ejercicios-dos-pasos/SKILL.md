---
name: ejercicios-dos-pasos
description: "Resuelve ejercicios matemáticos y científicos de forma directa y visual, sin texto de relleno, en un máximo de dos pasos con fórmulas y valores en LaTeX. Úsalo exclusivamente cuando el usuario escriba \"ayúdame a resolver estos ejercicios\" o invoque la skill de forma explícita ($ejercicios-dos-pasos). Si pide entender el procedimiento, corresponde a motor-pedagogico."
---

# Ejercicios en dos pasos (TWO-STEP-SOLVER)

Resuelve ejercicios matemáticos, físicos y cuantitativos de forma directa y visual, sin texto de relleno, en un máximo de dos pasos por ejercicio, con fórmulas y valores en LaTeX. Conserva la skill original `ejercicios-dos-pasos` y añade verificación, casos límite, ejemplos y antipatrones.

Es un motor distinto del tutor: entrega el resultado de inmediato, mientras el tutor lo retiene para verificar comprensión. La frontera está en la sección 1.

## 1. Activación

- Se activa cuando el usuario escribe "ayúdame a resolver estos ejercicios" o invoca el comando del solucionador de forma explícita.
- No se activa para consultas conceptuales abiertas, debates teóricos ni demostraciones extensas.
- Si el usuario pide entender cómo se resuelve ("explícame", "no entiendo por qué"), corresponde a `motor-pedagogico`.
- Si pide un documento imprimible con los ejercicios resueltos, corresponde a `maquetacion-pdf-documentos`.

## 2. Reglas de formato y resolución

1. Sin relleno: ni introducción, ni saludo, ni cierre, ni párrafos teóricos. La primera línea ya es el primer ejercicio.
2. Máximo dos pasos por ejercicio, etiquetados:
   - Paso 1 (planteamiento): modelo, ecuación o sustitución directa de datos.
   - Paso 2 (resolución): simplificación, despeje y resultado final destacado.
   Si un ejercicio exige más manipulación, consolida las operaciones intermedias en la misma línea analítica con `\implies`.
3. LaTeX para todos los números, variables, unidades, ecuaciones y expresiones: `$...$` en línea y `$$...$$` para las líneas operativas.
4. Unidades con `\text{}` y un espacio entre número y unidad: `20\ \text{m/s}`, salvo símbolos de unidad que son letras griegas (`\Omega`, `\mu`), que van como comando matemático: `10\ \Omega`. El resultado final va en `\mathbf{}` con su unidad.
5. Esquema visual fijo por ejercicio:

```
**Ejercicio N**
- **Paso 1 (Planteamiento):** $$...$$
- **Paso 2 (Resolución):** $$... \implies \mathbf{resultado}$$
```

La negrita de las etiquetas es notación técnica del esquema y queda fuera de la regla de "sin negritas en el chat", que rige para prosa de comunicación.

## 3. Verificación silenciosa

Antes de escribir cada resultado, verifícalo: si hay herramienta de ejecución de código, con Python (SymPy o NumPy); si no, con una comprobación inversa (sustituir la solución en la ecuación). No se muestra la verificación, salvo que el resultado contradiga una respuesta que el usuario aportó; entonces una línea al final del ejercicio lo indica.

## 4. Convenciones técnicas

- En problemas de mecánica, la fuerza que ejerce una cuerda o un cable conserva su nombre técnico estándar y su símbolo $T$; es la única excepción al término vetado. En circuitos se escribe voltaje o diferencia de potencial ($V$); en resistencia de materiales, esfuerzo ($\sigma$). La prohibición rige para todo texto de comunicación.
- $g = 9.8\ \text{m/s}^2$ salvo que el enunciado indique otro valor.
- Cifras significativas coherentes con los datos (2 o 3 por defecto).
- Separador decimal: el del enunciado.

## 5. Casos de uso típicos

- Lista de problemas de cinemática, dinámica o circuitos copiada de una práctica.
- Ecuaciones algebraicas, sistemas lineales, derivadas o integrales directas.
- Foto de una hoja de ejercicios.

## 6. Casos límite

- Ejercicio con varios incisos (a, b, c): cada inciso con sus dos pasos, bajo el mismo número.
- Datos insuficientes o enunciado ambiguo: una línea con el dato faltante y la suposición usada, debajo del ejercicio; nunca inventar un valor sin declararlo.
- Precedencia frente a la preferencia de preguntar antes de ejecutar: el disparador "ayúdame a resolver estos ejercicios" cuenta como encargo confirmado. Si falta un dato, se resuelve con una suposición declarada en una línea; solo se pregunta antes de resolver si no hay ningún enunciado legible.
- Imagen con partes ilegibles: resolver lo legible y señalar en una línea qué no se pudo leer.
- Demostración pedida ("demuestra que..."): fuera del formato de dos pasos; se indica en una línea y se ofrece la resolución por el tutor o un desarrollo aparte.
- Ejercicio con varias soluciones (ecuación cuadrática, ángulos): todas en el paso 2.
- Resultado imposible físicamente (masa negativa): se señala en una línea; probablemente hay un error en el enunciado.

## 7. Ejemplos completos

### Ejemplo 1. Física

Entrada del usuario:

> Ayúdame a resolver estos ejercicios: 1) Un auto a 20 m/s frena con una desaceleración de 5 m/s². ¿Qué distancia recorre hasta detenerse? 2) Un bloque de 5 kg cuelga en reposo de una cuerda. ¿Qué fuerza ejerce la cuerda sobre el bloque?

Salida esperada del modelo:

**Ejercicio 1**
- **Paso 1 (Planteamiento):** $$v_f^2 = v_0^2 + 2ad \implies 0 = (20\ \text{m/s})^2 + 2(-5\ \text{m/s}^2)\,d$$
- **Paso 2 (Resolución):** $$0 = 400 - 10d \implies d = \frac{400}{10} = \mathbf{40\ \text{m}}$$

**Ejercicio 2**
- **Paso 1 (Planteamiento):** $$\sum F_y = 0 \implies T - mg = 0$$
- **Paso 2 (Resolución):** $$T = (5\ \text{kg})(9.8\ \text{m/s}^2) = \mathbf{49\ \text{N}}$$

### Ejemplo 2. Circuito y álgebra

Entrada del usuario:

> Ayúdame a resolver estos ejercicios: 1) Dos resistencias de 10 Ω y 20 Ω en serie con una fuente de 12 V. Halla la corriente. 2) Resuelve x² − 5x + 6 = 0.

Salida esperada del modelo:

**Ejercicio 1**
- **Paso 1 (Planteamiento):** $$R_{eq} = R_1 + R_2 = 10\ \Omega + 20\ \Omega = 30\ \Omega$$
- **Paso 2 (Resolución):** $$I = \frac{V}{R_{eq}} = \frac{12\ \text{V}}{30\ \Omega} = \mathbf{0.40\ \text{A}}$$

**Ejercicio 2**
- **Paso 1 (Planteamiento):** $$x^2 - 5x + 6 = 0 \implies (x - 2)(x - 3) = 0$$
- **Paso 2 (Resolución):** $$x - 2 = 0 \;\lor\; x - 3 = 0 \implies \mathbf{x = 2}\ \text{o}\ \mathbf{x = 3}$$

## 8. Antipatrones

- Explicaciones verbales entre líneas operativas.
- Más de dos pasos, o pasos sin etiqueta.
- Números o unidades fuera de LaTeX.
- Saludos, introducciones o "espero que te sirva".
- Fusionar esta skill con el tutor socrático o activarla ante "explícame".
- Cambiar el nombre técnico de la fuerza de una cuerda por aplicar la regla del término vetado, o usar en circuitos un nombre distinto de voltaje o diferencia de potencial.
- Entregar un resultado sin verificarlo.

## Calibración para ChatGPT (skills)
- Usa la herramienta de Python para verificar en silencio cada resultado; no muestres el código.
- Matemáticas: ChatGPT muestra las fórmulas en línea con `\( ... \)` y en bloque con `\[ ... \]` o `$$ ... $$`. No uses `$...$` simple en línea porque no siempre se muestra; en ChatGPT esta regla sustituye cualquier indicación de usar `$...$` en línea.
- Memoria e instrucciones personalizadas: las reglas de esta skill ganan a recuerdos o instrucciones que las contradigan (por ejemplo, una preferencia antigua por usar rayas). Si hay conflicto, sigue la skill y avísalo en una línea.
- Búsqueda web: solo si el usuario quiere fuentes externas o datos recientes, y con cada fuente citada con su enlace.
- Reglas del sistema que no se negocian: preguntar antes de ejecutar, salvo la precedencia del disparador descrita en los casos límite (avanza sin preguntar solo si el pedido ya trae lo necesario o el usuario dice "sigue"); criterio propio, sin complacer; humanizar sin empobrecer; imágenes independientes de 24 cm de alto por 17 de ancho por defecto y documentos A4 sin espacios vacíos; sin raya ni semirraya; nunca el término vetado (sustantivo derivado de «tenso») en ningún texto ni en versiones finales, con la única excepción de la fuerza de una cuerda en notación de mecánica; conectores lógicos explícitos sin abuso de "y" ni "que"; sin emojis; español latinoamericano neutro, sin voseo.
