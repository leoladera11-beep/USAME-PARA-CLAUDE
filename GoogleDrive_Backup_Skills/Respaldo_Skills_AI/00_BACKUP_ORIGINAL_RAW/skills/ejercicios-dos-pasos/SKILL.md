---
name: ejercicios-dos-pasos
description: Resuelve ejercicios matemáticos y científicos de forma directa, visual y sin texto de relleno, limitando la resolución a un máximo de dos pasos con formulas y valores en LaTeX. Úsala exclusivamente cuando el usuario indique "ayúdame a resolver estos ejercicios".
---

# Ejercicios Dos Pasos

Instrucciones para resolver problemas matemáticos, físicos o cuantitativos de manera directa, visual y sin texto superfluo.

## Cuándo activar esta skill

- Actívala únicamente cuando el usuario solicite explícitamente: "ayúdame a resolver estos ejercicios".
- No la actives para consultas conceptuales abiertas, debates teóricos ni solicitudes de demostraciones extensas.

## Reglas de formato y resolución

1. Supresión total de relleno:

   - No incluyas introducciones, saludos, comentarios de cierre ni párrafos teóricos explicativos.
   - Entra directamente al primer ejercicio desde la primera línea.

2. Máximo de dos pasos por ejercicio:

   - Todo ejercicio debe resolverse en un máximo de dos pasos secuenciales claramente etiquetados (**Paso 1** y **Paso 2**).
   - El Paso 1 contiene el planteamiento algebraico o la sustitución directa de datos.
   - El Paso 2 contiene la simplificación operativa o el despeje final junto con la respuesta destacada.

3. Formato matemático estricto en LaTeX:

   - Emplea sintaxis LaTeX para todos los números, variables, unidades, ecuaciones y expresiones operativas.
   - Utiliza `$expresion$` para notaciones en línea y `$$expresion$$` para líneas operativas centrales.

4. Estructura visual estandarizada:

   - Para cada ejercicio, sigue rigurosamente este esquema visual:

   **Ejercicio [Número]**
   - **Paso 1 [Planteamiento]:** $$ecuacion\_o\_sustitucion$$
   - **Paso 2 [Resolución]:** $$operacion \implies resultado$$

## Ejemplo de aplicación

**Ejercicio 1**
- **Paso 1 (Planteamiento del modelo):**
  $$v_f^2 = v_0^2 + 2ad \implies (0)^2 = (20\text{ m/s})^2 + 2(-5\text{ m/s}^2)d$$

- **Paso 2 (Despeje y cálculo):**
  $$0 = 400 - 10d \implies d = \frac{400}{10} = \mathbf{40\text{ m}}$$

## Errores a evitar

- No incorporar explicaciones verbales redundantes entre líneas operativas.
- No superar el límite estricto de dos pasos; si un ejercicio demanda más manipulación, consolida operaciones intermedias dentro de la misma línea analítica.
- No omitir los delimitadores de LaTeX en constantes o respuestas numéricas.
