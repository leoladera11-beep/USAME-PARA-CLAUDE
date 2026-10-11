# Tus Skills Originales para Claude

Este paquete contiene tus **16 skills originales** listas para ser utilizadas y transferidas a **Claude** (Claude.ai, Claude Projects o Claude Code).

---

## Índice de Skills Incluidas

### ✍️ Familia Escritura Humana y Redacción
1. **escritura-humana**: Guía autosuficiente de escritura natural en español (regla contra la invención, 12 patrones, restricciones absolutas de puntuación y palabra vetada).
2. **escritura-humana-core**: Núcleo metodológico de escritura humana (9 patrones prohibidos, fases de redacción, validación de fidelidad).
3. **escritura-humana-vocabulario**: Lista de léxico vetado, prohibición estricta de la raya (—) y regla de la palabra vetada.
4. **escritura-humana-conectores**: Sistema de enlace funcional con las 22 categorías lógicas de conectores.
5. **escritura-humana-ensayos**: Módulo para ensayos académicos universitarios (arquitectura, fuentes, rúbricas y negrita adaptativa).
6. **escritura-de-calidad**: Proceso integral de redacción para textos de peso (brief, tesis, arquitectura, redacción y entrega).
7. **humanizer**: Detección y eliminación de tics y patrones sintácticos típicos de modelos de lenguaje (Wikipedia AI signs).
8. **mejorador-de-textos**: Diagnóstico, auditoría y reescritura de textos, mensajes, briefs, SOPs y prompts.

### 🧠 Aprendizaje y Tutoría
9. **principios-aprendizaje**: Núcleo científico de aprendizaje (diagnóstico proporcional, espaciado, Feynman, interleaving).
10. **tutor-adaptativo**: Tutor conversacional adaptativo para metas de estudio de mediano/largo plazo.
11. **tutor-comprension-profunda**: Tutor socrático de comprensión profunda para conceptos específicos y preparación inmediata.
12. **auditor-prompts-aprendizaje**: Auditor y reescritor de prompts de tutoría y planes de estudio.

### 📐 Formato, Maquetación y Ejercicios
13. **maquetacion-pdf-documentos**: Sistema editorial técnico para documentos en PDF (ReportLab) y DOCX (python-docx) con figuras en matplotlib.
14. **ejercicios-dos-pasos**: Solución directa y visual de ejercicios físico-matemáticos en máximo dos pasos en LaTeX.

### 🎨 Marca y Docencia
15. **identidad-de-marca**: Desarrollo de territorios de identidad visual, brief estratégico y prompts para logos.
16. **preparador-de-clases**: Planificación y diseño de sesiones didácticas listas para aula (currículo CNEB Perú y adaptaciones).

---

## Cómo transferirlas a Claude

Tienes 3 formas principales según cómo uses Claude:

### Opción 1: En Claude Projects (Recomendada para Claude.ai Pro/Team)
1. Ve a **Claude.ai** y crea un nuevo **Proyecto** (o entra a uno existente).
2. En la sección **Project Knowledge** (Conocimiento del proyecto), puedes subir directamente los archivos `.md` de la carpeta `para_claude_projects/`.
   - Cada archivo en esa carpeta ya incluye su `SKILL.md` y todos sus anexos/referencias combinados para que Claude los entienda sin problemas de rutas.
3. En las **Custom Instructions** del proyecto, puedes indicar cuándo activar cada una o pedirle:
   *"Actúa como asistente y utiliza las guías de estilo y metodologías especificadas en los archivos de conocimiento según el tipo de tarea solicitada."*

### Opción 2: En Claude Code / MCP / Repositorios locales
- Si usas Claude Code o herramientas basadas en agentes, puedes copiar la carpeta `skills/` completa dentro de tu entorno de trabajo.
- Cada carpeta conserva su formato estándar `SKILL.md` con su frontmatter YAML (`name`, `description`).

### Opción 3: En Instrucciones Personalizadas (Custom Instructions) globales
- Si quieres que Claude aplique siempre las reglas de escritura o de tono humano, copia el contenido de `escritura-humana.md` o `escritura-humana-core.md` directamente en tu configuración de **User Preferences / Custom Instructions** de Claude.ai.
