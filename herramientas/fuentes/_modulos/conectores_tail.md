
## Casos de uso típicos

- Un texto de oraciones sueltas que obliga al lector a reconstruir la lógica.
- Un ensayo donde cada párrafo abre con "En primer lugar", "Además", "Asimismo", "En conclusión".
- Una introducción que encadena todo con "y" y "que".

## Casos límite

- La relación entre dos ideas no está en el material: no se inventa; se deja separada y se pregunta.
- Procedimientos e instrucciones: los marcadores de secuencia repetidos son funcionales.
- Narrativa: no se explica con conectores lo que la escena ya muestra.
- La rúbrica exige conectores de orden: se cumplen, variando el resto de cada apertura.

## Ejemplos completos

### Ejemplo 1. Unir sin inventar relaciones

Entrada del usuario:

> Conecta mejor estas ideas para mi informe: "La empresa redujo el horario de atención. Las quejas aumentaron un 30 %. La gerencia revisará la medida en junio."

Salida esperada del modelo:

> La empresa redujo el horario de atención y, desde entonces, las quejas aumentaron un 30 %. La gerencia revisará la medida en junio.
>
> Nota: uní las dos primeras ideas con una relación temporal; no escribí "por eso" ni "debido a" porque el texto no afirma que la reducción causara las quejas. Si la revisión de junio responde a las quejas, dímelo y lo hago explícito con "por eso".

### Ejemplo 2. Aperturas mecánicas y cierre que repite

Entrada del usuario:

> Mejora los conectores: "En primer lugar, el reciclaje reduce residuos. Además, genera empleo local. Asimismo, ahorra materia prima. En conclusión, el reciclaje es fundamental."

Salida esperada del modelo:

> El reciclaje reduce residuos y ahorra materia prima; además, genera empleo local.
>
> Cambios: "además" se conserva porque introduce un beneficio de otro tipo (social frente a ambiental); "asimismo" repetía su función y "en primer lugar" anunciaba una estructura que no existía; el cierre repetía sin aportar. Si necesitas una valoración final, conviene sostenerla con un dato tuyo: [DATO: toneladas recuperadas o empleos creados].

## Antipatrones

- Eliminar conectores para "sonar humano".
- Insertar conectores por cuota en cada oración.
- Usar "por tanto" o "por eso" para una relación que el contenido no respalda.
- Cambiar "pero" por "empero" o "no obstante" solo para variar.
- Encadenar una introducción con "y" y "que" en cada oración.
