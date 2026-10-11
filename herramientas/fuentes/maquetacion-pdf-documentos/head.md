# Maquetación editorial de PDFs y documentos técnicos (DOC-STYLIST-PDF)

Metodología, sistema de diseño y estándares técnicos para crear, mejorar, corregir y maquetar documentos académicos y técnicos en PDF (ReportLab) y DOCX editable (python-docx), con figuras en matplotlib. Conserva íntegras las secciones 0 a 2 de la skill original `maquetacion-pdf-documentos`.

Hallazgo de auditoría: el archivo original termina en la sección 2.7 aunque remite a las secciones 3 a 7 (figuras, PDF, DOCX, QA y entrega) y a apartados como 4.1, 4.8 y 5.5. Esas secciones faltaban en el paquete. Aquí se reconstruyen de forma compacta a partir de las referencias internas del propio original, marcadas como reconstrucción, para que la skill vuelva a ser ejecutable de principio a fin. Si existe una versión completa del original fuera de este respaldo, conviene contrastarla.

Corrección respecto del documento "Sistema Auditado": aquella versión cambiaba el flujo a Pandoc y Typst e insertaba saltos de página antes de cada encabezado. Se descarta porque el usuario ya tiene un flujo pdflatex para documentos solo PDF (sección 0.1) y esta skill existe para el caso PDF más DOCX sincronizados con figuras propias. El papel A4 fijo se mantiene.

Reglas de la memoria del usuario que esta skill aplica siempre: papel A4 original, sin deformaciones (ninguna página escalada ni figura estirada: las imágenes conservan su proporción), sin espacios en blanco vacíos (ni medias páginas libres al final de una sección ni huecos entre bloques) y aprovechando todo el margen útil de la hoja. Antes de ejecutar, preguntar lo esencial en un solo mensaje. En el cuerpo original (sección 1, fase 3), la fuerza a lo largo de la cuerda en un DCL se nombra como "fuerza de la cuerda ($T$)", sin el término vetado.

Relación con otros motores: la prosa del documento sigue las restricciones absolutas del sistema; en la notación de mecánica y circuitos, la magnitud conserva su nombre técnico (ver motor `escritura-humana`, sección 3.2). Si el usuario solo quiere resolver ejercicios en el chat, corresponde a `ejercicios-dos-pasos`.

