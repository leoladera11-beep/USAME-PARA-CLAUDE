---
name: auditor-prompts-aprendizaje
description: Audita y reescribe prompts de tutoría o planes de estudio ajenos ("domina X en N días", "plan de estudio", "prompt de tutor") con una checklist de principios-aprendizaje que distingue lo obligatorio de lo condicional a la meta, en vez de exigir una plantilla única. Úsala cuando la persona pegue un prompt de este tipo y pida auditarlo, mejorarlo o quitarle rigidez. No se usa para textos, briefs o SOPs generales, que corresponden a mejorador-de-textos.
---

# Auditor de prompts de aprendizaje

Convierte un prompt que solo nombra técnicas, recall, espaciado, Feynman, interleaving, en un sistema con diagnóstico, bucle de adaptación y criterios observables, sin imponerle una arquitectura fija que no corresponda a la meta real que ese prompt describe.

## Por qué esta checklist es condicional

Una checklist donde todos los ítems deben ser sí convierte al auditor en un molde único: cualquier prompt que se le pase termina reescrito hacia la misma arquitectura, sin importar si la meta original era un repaso de dos semanas o un dominio de un año. La checklist de abajo separa lo que siempre debe estar de lo que depende de la meta que el prompt describe.

## Procedimiento

1. Leer el prompt completo y extraer, si están, la meta declarada y el horizonte de tiempo real.
2. Auditar contra la checklist de abajo, marcando cada ítem como cumple, falta, o no aplica a esta meta, con la razón.
3. Reescribir usando tutor-adaptativo y principios-aprendizaje como base, ajustando modo, extensión del diagnóstico, proporciones de sesión y horizonte de hitos a la meta real que el prompt original describe.
4. Verificar la reescritura contra la misma checklist.
5. Entregar: tabla de hallazgos con su consecuencia concreta, "esto hace que el modelo…"; el prompt reescrito; dos o tres riesgos que quedan abiertos y cómo mitigarlos; instrucción de uso en pocas líneas.

## Checklist, siempre obligatorio

- Existe algún diagnóstico antes del plan, del tamaño que corresponda a la meta.
- El éxito está definido como desempeño observable y comprobable, no como una sensación de dominio.
- Se clasifica el tipo de habilidad y esa clasificación cambia de verdad la mezcla de métodos, no solo se menciona.
- Hay repetición espaciada con intervalo y regla de ajuste por resultado, no solo el nombre de la técnica.
- Hay interleaving dentro de la sesión, no solo en un examen final.
- El Feynman detecta huecos concretos y vuelve a la fuente, no pide una explicación genérica.
- La rúbrica de autoevaluación está anclada a criterios, no es un número suelto.
- Hay reglas explícitas de cuándo avanzar y cuándo repetir.
- Está prohibida la promesa no verificable, "10x", "top 1%", "domínalo en N días" sin base real.
- El formato de salida está definido y acotado.

## Checklist, condicional a la meta

- Hitos a 30, 60 y 90 días: solo si el horizonte real del prompt es de meses. Si es de semanas o no tiene plazo, exigir hitos proporcionales a ese horizonte en su lugar, no estos tres números.
- Descomposición en 6 a 12 subhabilidades con Pareto: solo si la habilidad es lo bastante amplia para tener varias subhabilidades reales. Un repaso puntual no la necesita.
- Planificación por bloques de dos semanas: el tamaño del bloque depende del horizonte real, no tiene que ser exactamente dos semanas.
- Proyecto aplicado desde la semana dos: aplica si el horizonte permite varias semanas. En un plan de pocos días, el desempeño aplicado puede empezar antes.
- Un día de baja carga por semana: aplica a planes de varias semanas, no a un repaso corto.
- Estado exportable entre sesiones: aplica cuando el prompt está pensado para continuar entre conversaciones distintas, no en una consulta de una sola sesión.

## Anti-patrones a eliminar siempre

"Neuro-optimizado", "hackea tu cerebro", promesas de velocidad sin base, un plan completo de meses entregado en una sola respuesta sin diagnóstico previo, técnicas nombradas sin parámetros, nivel autodeclarado sin verificación, autoevaluación numérica sin rúbrica, ausencia total de mención a prerrequisitos.

## Uso

Pegar el prompt a mejorar y pedir que se aplique esta skill. Si el prompt no menciona la meta ni el horizonte de tiempo, preguntarlo antes de auditar, la sección condicional depende de esa respuesta.
