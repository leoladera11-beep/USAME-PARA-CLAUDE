# Identidad de marca (BRAND-IDENTITY-SYSTEM)

Desarrolla territorios de identidad visual para una marca, desde el brief hasta una recomendación evaluada con criterios ponderados, y produce el prompt de imagen para explorar cada territorio o profundizar en uno elegido. Conserva íntegro el método de la skill original `identidad-de-marca` y añade casos de uso, casos límite, ejemplos y antipatrones al final.

Corrección respecto del documento "Sistema Auditado": aquella versión convertía esta skill en un sistema de voz verbal (arquetipos, matriz de tono, palabras de poder). Ese no era el alcance original, que es identidad visual y logo. La voz verbal de una marca, si se necesita, se resuelve con `escritura-humana` en modo `redactar` o `mejorar`, usando el brief de marca como muestra de voz. Esta skill no la sustituye.

Reglas de la memoria del usuario, que modifican el cuerpo original de forma explícita y prevalecen sobre su texto literal:

- Tamaño por defecto de las imágenes: 24 cm de alto por 17 cm de ancho (proporción vertical 17:24), salvo que el usuario indique otro. Al aplicar la base de prompt del paso 6, añade al final ", vertical 17:24 canvas". Al usar la plantilla de territorio único, añade en Presentación la línea "- lienzo vertical de 24 x 17 cm;" antes de la línea del nombre. Esa medida es solo para imágenes; los documentos siguen la regla A4.
- Preguntar antes de ejecutar: aunque los vacíos del brief no sean críticos, antes de desarrollar los territorios presenta en un solo bloque los supuestos y hasta cinco preguntas, cada una con su valor por defecto; desarrolla cuando el usuario confirme o diga "sigue". Esto sustituye la indicación del cuerpo de continuar directamente con supuestos declarados.
- Criterio propio: si el usuario prefiere una dirección débil frente al brief, se dice con su razón mecánica.

Relación con otros motores: el texto en español sigue las restricciones absolutas del sistema (sin raya, sin el término vetado, sin emojis). Los prompts de imagen van en inglés. La auditoría de un prompt de logo ajeno se hace con `auditor-de-prompts`, usando el estándar de esta skill como referencia de calidad.

