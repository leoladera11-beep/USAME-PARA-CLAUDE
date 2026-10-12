# Validador independiente de fidelidad

Anexo del motor `escritura-humana`. Origen: escritura-humana-core/references/validador-independiente.md (skills originales del usuario). Las referencias a módulos antiguos se actualizaron a las secciones del motor.

Segunda revisión cuya única tarea es detectar alteraciones y afirmaciones no respaldadas. No mejora el estilo y no reescribe. Se usa como paso final de `escritura-humana`, ya sea como pasada interna o pegando el prompt en una conversación nueva (más fiable, porque quien valida no es quien redactó).

## Cuándo usarlo

- Siempre en reescrituras, ediciones y resúmenes de un texto ajeno.
- En cualquier texto nuevo que lleve cifras, fuentes, citas, casos o experiencias.
- En textos de alto impacto (académicos, legales, médicos, financieros o de seguridad), preferentemente en un chat aparte y con revisión humana adicional.

En un texto breve sin datos basta una comprobación rápida de las cinco categorías.

## Insumos

- Texto candidato (obligatorio).
- Encargo original.
- Texto fuente, si hubo reescritura.
- Hechos aportados por el usuario y fuentes disponibles.
- Restricciones expresas, incluidas la raya y el término vetado (sustantivo derivado de «tenso»; única excepción, la fuerza de una cuerda en notación de mecánica).

## Prompt para pegar en una conversación aparte

```
Compara el texto candidato con el encargo, el texto fuente, los hechos aportados y las fuentes.

No reescribas el texto.

Devuelve:

- APROBADO: sí o no.
- AFIRMACIONES SIN RESPALDO:
  - fragmento
  - tipo de afirmación
  - evidencia disponible
  - corrección necesaria
- CAMBIOS DE SENTIDO:
  - original
  - candidato
  - diferencia
- OMISIONES MATERIALES:
  - información omitida
  - consecuencia
- INCUMPLIMIENTOS:
  - restricción
  - fragmento
- NIVEL DE CERTEZA EXCESIVO:
  - fragmento
  - formulación recomendada

Rechaza el texto si contiene una cifra, fuente, experiencia, caso, cita, prueba o resultado que no pueda rastrearse hasta la información suministrada.
```

## Cómo interpretar cada categoría

- **Afirmaciones sin respaldo.** Cifras, fechas, nombres, estudios, citas, casos y experiencias en primera persona sin origen en el material. También promesas de producto o resultados que nadie confirmó.
- **Cambios de sentido.** Una posibilidad convertida en certeza, una asociación convertida en causa, una condición eliminada, un beneficio exagerado, una intención alterada, un verbo más fuerte que el original.
- **Omisiones materiales.** Información del original cuya ausencia cambia la conclusión: una salvedad, una limitación, un denominador, un periodo, una atribución.
- **Incumplimientos.** Cualquier restricción del encargo que el texto rompe: extensión, formato, variedad, tratamiento, raya, término vetado (única excepción: la fuerza de una cuerda en notación de mecánica), citas alteradas.
- **Certeza excesiva.** Afirmaciones tajantes con evidencia dividida, o apoyadas en "los estudios demuestran" sin identificar ninguno.

## Criterio de rechazo

Se rechaza el texto si contiene una cifra, fuente, experiencia, caso, cita, prueba o resultado que no pueda rastrearse hasta la información suministrada. Un dato aportado por el usuario no queda verificado por el solo hecho de venir de él: si va a publicarse como hecho y necesita respaldo, se señala que falta comprobarlo, pero se conserva como dato aportado.

## Qué hacer con el resultado

1. Si APROBADO es no, corrige solo lo señalado: elimina o marca el hueco, restituye el sentido original o baja la certeza. No aproveches para reescribir el estilo.
2. Vuelve a validar. Máximo dos vueltas.
3. Lo que siga sin respaldo se entrega como hueco marcado (`[DATO: ...]`, `[CITA]`, `[CONFIRMAR: ...]`) y se lista al final para que el usuario lo complete.
4. No declares que "verificaste" una fuente que no consultaste: di que el dato coincide con el material aportado.
