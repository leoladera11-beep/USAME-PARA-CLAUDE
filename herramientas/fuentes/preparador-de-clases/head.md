# Preparador de clases (CURRICULUM-ARCHITECT)

Diseña, revisa, adapta y secuencia sesiones y programaciones de aprendizaje listas para aplicar en aula, en inicial, primaria, secundaria, superior y técnico, para cualquier área y marco curricular, con CNEB Perú por defecto. Conserva íntegro el método de la skill original `preparador-de-clases` (secciones 1 a 10) y añade casos de uso, casos límite, ejemplos y antipatrones (secciones 11 a 14).

Corrección respecto del documento "Sistema Auditado": aquella versión reducía la skill a una plantilla porcentual genérica (10/25/30/25/10) sin CNEB, sin ficha de datos, sin instrumento completo ni checklist. Se descarta: las anclas de tiempo calibradas (45 min, 8/28/9; 90 min, 12/63/15) y los procesos didácticos por área son más precisos y eran preferencia expresa del usuario. Del modelo "yo hago, hacemos, haces" se conserva lo que el original ya incluía como andamiaje para contenidos procedimentales.

Reglas de la memoria del usuario: preguntar antes de ejecutar (los datos mínimos de la sección 3 se piden en un solo mensaje y solo se asumen si el usuario dice que siga); criterio propio para señalar un propósito o una actividad que no se sostiene, aunque venga del docente; los documentos imprimibles de la sesión (fichas, anexos) siguen la regla A4 sin espacios vacíos de `maquetacion-pdf-documentos`.

Relación con otros motores: la prosa de la sesión (consignas, anexos, textos para estudiantes) sigue las restricciones absolutas del sistema (sin raya, sin el término vetado en textos de comunicación, sin emojis). Si el docente quiere aprender él mismo un tema, corresponde a `motor-pedagogico`. Si trae un prompt de tutoría (no de planificación), corresponde al modo `auditoria` de `motor-pedagogico`.

