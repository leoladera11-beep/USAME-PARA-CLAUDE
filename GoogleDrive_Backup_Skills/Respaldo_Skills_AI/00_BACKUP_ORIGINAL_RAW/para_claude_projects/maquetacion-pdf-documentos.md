---
name: maquetacion-pdf-documentos
description: Metodología, sistema de diseño y estándares técnicos para crear, mejorar, corregir y maquetar documentos académicos y técnicos listos para usar, en PDF (ReportLab) y DOCX editable (python-docx), con figuras generadas en matplotlib. Cubre física (dinámica, estática, DCL), electricidad y circuitos, matemáticas, ciencias y tecnología, guías de estudio, fichas, prácticas e informes. Exige diseño editorial visual proporcional al contenido (esquemas vectoriales, tarjetas de fórmula, paneles de pasos, tablas con identidad gráfica), verificación técnica del contenido antes de maquetar y un protocolo de QA visual. Úsala cuando el usuario pida crear, mejorar, corregir, diseñar, maquetar o transformar un PDF, ficha, guía, práctica, informe o documento imprimible/editable de tipo académico o técnico. No la uses para documentos puramente administrativos (cartas, CV, contratos) salvo que se pida diseño editorial.
---

# Maquetación editorial de PDFs y documentos técnicos

## 0. Propósito y alcance

Producir documentos **correctos en su contenido**, **legibles al imprimir** y **profesionales en su diseño**, en dos formatos sincronizados:

- **PDF** (ReportLab + matplotlib): versión cerrada para impresión y distribución.
- **DOCX** (python-docx): versión editable para Google Drive / Word, con la mayor cantidad posible de contenido como texto y tablas reales.

Aplica a cualquier área académica o técnica. Los ejemplos se centran en física, electricidad y matemáticas porque son los casos con más notación y más riesgo de error.

### 0.1 Relación con el flujo pdflatex existente

El usuario ya tiene un flujo de conversión LaTeX a PDF (pdflatex, con amsmath, tcolorbox, booktabs, longtable) que funciona bien para documentos que solo necesitan salida en PDF y que usan notación LaTeX avanzada (align, matrices, dfrac, entornos complejos que mathtext no soporta). No reemplaces ese flujo por defecto.

Usa esta skill (ReportLab + matplotlib + python-docx) cuando ocurra alguna de estas condiciones:
- Se necesita el documento en DOCX editable, sincronizado con el PDF (algo que pdflatex no resuelve de forma nativa).
- El documento depende de diagramas propios generados por código (DCL, circuitos, gráficos de función) que conviene versionar como figuras reutilizables.
- El usuario pide explícitamente maquetación visual con tarjetas de fórmula, paneles de pasos o tablas con identidad gráfica más allá de lo que un documento LaTeX clásico ofrece.

Ante la duda entre ambos flujos, pregunta una vez cuál formato final necesita el usuario (solo PDF vs. PDF + DOCX editable) y decide con eso.

### Cuándo usarla
- Crear una guía, ficha, práctica, taller, manual, informe, resumen o solucionario.
- Mejorar, corregir, "hacer visual" o rediseñar un borrador o documento existente.
- Resolver y presentar ejercicios de física (DCL, Newton, estática, energía), circuitos (Ohm, Kirchhoff, equivalentes, potencia), matemáticas o ciencias.
- Entregar PDF para imprimir y DOCX para editar.

### Cuándo NO usarla (o usarla parcialmente)
- Cartas, oficios, CV, contratos: solo la parte de tipografía y márgenes.
- Presentaciones (pptx), hojas de cálculo, sitios web.
- Si el usuario pide explícitamente "solo texto" o Markdown: respeta la petición y ofrece la versión maquetada como opción.

---

## 1. Flujo de trabajo obligatorio (7 fases)

No saltes fases. Cada una tiene una salida verificable.

### Fase 1 - Intake (entender antes de diseñar)
1. Identifica: tema, nivel educativo, destinatario (estudiante/docente), idioma, formato deseado (PDF, DOCX o ambos), extensión objetivo y restricciones (color/blanco y negro, número de páginas, plantilla institucional).
2. Si el usuario entrega un archivo:
   - PDF → extrae con `pdfplumber` (texto y tablas) y renderiza páginas con `pdftoppm` para ver el diseño original.
   - DOCX → recorre párrafos, tablas e imágenes con `python-docx`.
   - Haz un **inventario**: secciones, ejercicios, figuras existentes, tablas, errores detectados.
3. Papel: **A4** (210×297 mm) siempre, sin excepción. Es una preferencia fija del usuario, no depende del país ni del tipo de documento; no ofrezcas Carta como alternativa salvo pedido explícito puntual para ese documento.
4. Si algo esencial falta (datos de un problema, nivel, número de páginas), pregunta **una sola vez** de forma concreta; si no hay respuesta posible, asume lo razonable y decláralo al entregar.

### Fase 2 - Plan de contenido
- Esquema jerárquico: título → secciones → subsecciones → bloques (concepto, fórmula, ejemplo resuelto, ejercicio propuesto, tabla, reflexión).
- Para cada bloque decide su **tratamiento visual** según la tabla de la sección 2.3.
- Define numeración: Figuras, Tablas, Ecuaciones y Ejercicios se numeran secuencialmente y se referencian ("ver Figura 2").
- Si hay ejercicios: decide si el solucionario va integrado, al final o en documento aparte (versión estudiante / versión docente).

### Fase 3 - Validación técnica del contenido (ANTES de dibujar nada)
Un documento hermoso con un error técnico es peor que un texto plano correcto. Verifica y **recalcula con código** (Python/SymPy/NumPy) todo resultado numérico.

**Física / mecánica**
- Cada DCL muestra **solo fuerzas reales aplicadas sobre el cuerpo aislado**: peso (desde el centro de masa), normal (perpendicular a la superficie), tensión (a lo largo de la cuerda, hacia afuera del cuerpo), fricción (paralela a la superficie, opuesta al movimiento relativo o a su tendencia), fuerzas aplicadas. Nunca "fuerza centrífuga" en marco inercial, nunca la fuerza que el cuerpo ejerce sobre otro, nunca velocidades ni aceleraciones dibujadas como fuerzas (si se dibuja $\vec{a}$, va fuera del cuerpo y con estilo distinto).
- Sistema de coordenadas dibujado y **coherente con las ecuaciones** (si el eje x va a lo largo del plano inclinado, las componentes del peso son $mg\sin\theta$ y $mg\cos\theta$ respecto de ese eje).
- Ecuaciones por eje: $\sum F_x = ma_x$, $\sum F_y = ma_y$; en estática $=0$; en rotación $\sum \tau = I\alpha$.
- Unidades propagadas en cada paso; resultado con **cifras significativas coherentes con los datos** (regla práctica: 2-3 c.s. salvo que los datos indiquen otra cosa); $g = 9.8\ \mathrm{m/s^2}$ o $9.81$ según el currículo del usuario, y decirlo.
- Verificación de sentido físico: signos, magnitudes plausibles, casos límite ($\theta \to 0$, $\mu \to 0$).

**Electricidad / circuitos**
- Esquema con simbología **IEC 60617** por defecto (resistencia rectangular, fuente con polaridad, nodos con punto, tierra si aplica). Si el usuario usa convención ANSI/IEEE (resistencia en zigzag), mantén esa convención en todo el documento, nunca mezcles.
- Cada elemento con etiqueta y valor con unidad: $R_1 = 10\ \Omega$, $V_1 = 12\ \mathrm{V}$.
- Sentidos de corriente y de recorrido de malla dibujados con flechas; las ecuaciones de Kirchhoff deben corresponder **exactamente** a esos sentidos (convención de signos declarada una vez).
- Comprobación: la suma de potencias entregadas = suma de potencias disipadas; LCK en cada nodo; LVK en cada malla. Recalcula con NumPy (sistema lineal) antes de escribir el resultado.
- Reales/ideales: aclara si las fuentes e instrumentos son ideales.

**Matemáticas**
- Verifica cada paso con SymPy cuando sea posible (derivadas, integrales, soluciones de ecuaciones, simplificaciones).
- Dominio, restricciones y casos especiales explicitados.
- Notación consistente (no alternar $\ln$ y $\log_e$, ni $\cdot$ y $\times$ sin criterio).

**Notación y unidades (SI / ISO 80000)**
- Variables en *cursiva* ($m$, $V$, $R$); unidades en redonda ($\mathrm{kg}$, $\mathrm{V}$, $\Omega$); constantes matemáticas y operadores en redonda ($\mathrm{e}$, $\mathrm{d}x$, $\sin$).
- Espacio fino entre número y unidad: $12\ \mathrm{V}$, nunca $12V$. Excepción: grados, minutos y segundos de ángulo ($30°$).
- Símbolos de unidad sin plural ni punto: 5 kg, no 5 kgs.
- Vectores: negrita ($\mathbf{F}$) **o** flecha ($\vec{F}$), una sola convención en todo el documento; módulos en cursiva normal ($F$).
- Separador decimal: punto, salvo que el usuario indique otro para un documento puntual.
- Prefijos SI correctos: k (kilo) minúscula, M (mega) mayúscula, μ (micro) con letra griega.

**Salida de la fase:** lista de bloques con contenido verificado y resultados numéricos recalculados.

### Fase 4 - Sistema de diseño (sección 2)
Fija en un único diccionario de configuración: papel, márgenes, paleta, fuentes, tamaños, escala global de figuras, anchos de rejilla. Todo el código lee de ahí.

### Fase 5 - Generación de figuras (sección 3)
Genera todas las figuras con matplotlib a PNG 300 DPI en una carpeta `figuras/`, con nombres descriptivos (`fig03_dcl_bloque_plano.png`, `eq02_ley_ohm.png`, `panel04_kirchhoff_pasos.png`). Cada función de figura es reutilizable y determinista.

### Fase 6 - Construcción del PDF (sección 4) y del DOCX (sección 5)
Un script para cada formato, ambos leyendo la misma estructura de contenido, para que estén sincronizados.

### Fase 7 - QA y entrega (secciones 6 y 7)
Rasteriza, inspecciona, corrige, vuelve a generar. Entrega con resumen honesto de lo que se hizo, supuestos y limitaciones (qué es editable y qué no).

---

## 2. Política editorial y sistema de diseño

### 2.1 Principio visual-first, bien definido

**Prohibido** presentar como texto de teclado:
- Ecuaciones en display (fórmulas fundamentales, planteamientos, desarrollos): nada de `V = I * R`, `x = (-b +- sqrt(b^2-4ac))/(2a)`, `->`, `sum`.
- Diagramas hechos con caracteres ASCII (`----|R1|----`, `+---+`).
- Tablas simuladas con guiones y barras.

**Permitido y recomendable** como texto real (seleccionable, buscable, editable):
- Menciones inline de variables con cursiva: "la corriente *I* en la resistencia *R*₁".
- Valores con unidad en texto: "12 V", "10 Ω", "9.8 m/s²" (requiere fuente Unicode, ver 4.1).
- Títulos, cuerpo, enunciados, listas, tablas de datos y clasificaciones, notas y reflexiones.

**Regla de oro:** todo lo que pueda ser texto o tabla real, debe serlo. Las imágenes se reservan para lo que el motor de texto no puede hacer bien: ecuaciones en display, diagramas, gráficos y paneles de pasos con notación matemática.

### 2.2 Tres capas visuales (aplicadas con proporcionalidad)

| Capa | Qué es | Cuándo es obligatoria |
|---|---|---|
| **Esquema / diagrama** | DCL, circuito, gráfico de función, diagrama de bloques, línea de tiempo, infografía, diagrama de flujo | Siempre que el problema tenga geometría, topología o proceso (todo problema de dinámica/estática, todo circuito, toda función a graficar, todo procedimiento con decisiones) |
| **Tarjeta de fórmula / panel de pasos** | Fórmula fundamental renderizada con leyenda de variables; resolución paso a paso (datos → planteamiento → desarrollo → resultado destacado) | Siempre que haya una ley o fórmula central; siempre en ejercicios resueltos |
| **Tabla con identidad gráfica** | Clasificaciones, comparaciones, datos, especificaciones, rúbricas, reflexiones | Siempre que haya información tabular; nunca inventar una tabla para "rellenar" |
| **Caja destacada** | Definición, dato clave, consejo o advertencia como bloque propio (texto real, no figura) | Cuando un concepto puntual necesita resaltarse sin ser tabla ni diagrama; con moderación, nunca una por párrafo |
| **Checklist** | Lista de verificación para procedimientos, protocolos de laboratorio, guías de entrega o pasos de un método | Siempre que el contenido sea una secuencia que el lector debe marcar o seguir en orden |

**Niveles de densidad visual** (decide en Fase 2):
- **Alta**: guías de problemas resueltos, prácticas de laboratorio, fichas de fórmulas. Un elemento visual por bloque conceptual.
- **Media**: guías teórico-prácticas, resúmenes. Un esquema por sección, tarjetas solo para fórmulas clave.
- **Baja**: lecturas, cuestionarios de reflexión, rúbricas. Tablas y tipografía cuidada; figuras solo si aportan.

### 2.3 Tratamiento de cada tipo de bloque

| Bloque | PDF | DOCX |
|---|---|---|
| Títulos, cuerpo, listas | Texto real (Paragraph) | Texto real (estilos) |
| Tabla de datos/clasificación | `Table` real de ReportLab | `table` real con sombreado |
| Fórmula en display | PNG 300 DPI (tarjeta) | PNG **o** ecuación OMML si es simple; siempre añadir el LaTeX/descripción en texto alternativo o en una nota para el docente |
| Panel de pasos | PNG 300 DPI | PNG + versión en tabla de texto real si el usuario prioriza editabilidad |
| DCL, circuito, gráfico | PNG 300 DPI | PNG |
| Diagrama de flujo / línea de tiempo | PNG 300 DPI | PNG |
| Caja destacada | `Table` real de ReportLab (franja lateral + fondo de categoría, ver 4.8) | `table` de una celda con sombreado, reutiliza `sombrear` (ver 5.5) |
| Checklist | `Table` real de ReportLab (casilla `□`/`■` + texto, ver 4.8) | Lista real de Word con casilla `□`/`■` en texto (ver 5.5) |
| Valor con unidad inline | Texto real Unicode | Texto real Unicode |

### 2.4 Paleta (con prueba en escala de grises)

```python
PALETA = {
    "primario":     "#1E3A8A",  # cabeceras, títulos, etiquetas de pasos
    "texto":        "#0F172A",  # cuerpo y matemática
    "secundario":   "#475569",  # leyendas, unidades, notas
    "borde":        "#CBD5E1",  # líneas de tabla y tarjetas
    "fondo_suave":  "#F8FAFC",  # zebra y fondo de tarjetas
    "fondo_card":   "#EFF6FF",  # tarjetas de fórmula
    "acento_fuerza":"#DC2626",  # vectores de fuerza / corriente
    "acento_result":"#15803D",  # resultado final destacado
    "acento_aviso": "#B45309",  # advertencias, errores comunes
    "superficie":   "#94A3B8",  # planos, suelo, sombreados de DCL
}
```
Prueba en grises obligatoria si el documento puede fotocopiarse: convierte una página con `pdftoppm -gray` y verifica que la información no dependa solo del color. Redunda con: grosor de línea, estilo (continua/discontinua), etiquetas de texto, tramas (hatch).
Contraste texto/fondo ≥ 4.5:1 (todos los pares de la paleta lo cumplen sobre blanco y fondo_suave).

**Los cinco colores de `PALETA` (`primario`, `acento_fuerza`, `acento_result`, `acento_aviso`, `superficie`) tienen significado técnico fijo dentro de una figura (DCL, circuito, panel de pasos) y nunca cambian de rol ni se reutilizan para otra cosa dentro del mismo documento.** La paleta de categorías de 2.5 es una capa distinta, a nivel de bloque completo, no de figura: nunca se mezclan.

### 2.5 Paleta de categorías por tipo de bloque (opcional, activable por documento)

Cada bloque de contenido puede llevar además una identidad de color según su función pedagógica: introducción/fundamentos, ejemplo resuelto, ejercicio de práctica, simulacro o evaluación. Se aplica en el banner o franja lateral del bloque completo (secciones 4.8 y 5.5), nunca dentro de una figura técnica.

```python
CATEGORIAS = {
    "introduccion": {"color": PALETA["primario"], "fondo": PALETA["fondo_card"], "etiqueta": "INTRODUCCIÓN Y FUNDAMENTOS"},
    "ejemplo":      {"color": "#6D28D9",           "fondo": "#F5F3FF",           "etiqueta": "EJEMPLO RESUELTO"},
    "practica":     {"color": "#0F766E",           "fondo": "#F0FDFA",           "etiqueta": "EJERCICIO DE PRÁCTICA"},
    "simulacro":    {"color": "#881337",           "fondo": "#FFF1F2",           "etiqueta": "SIMULACRO / EVALUACIÓN"},
}
```
Contraste verificado (WCAG, cálculo real, no estimado): `#6D28D9` 7.1:1 sobre blanco y 6.5:1 sobre su fondo suave; `#0F766E` 5.5:1 y 5.3:1; `#881337` 9.6:1 y 8.7:1. Los cuatro superan el mínimo de 4.5:1 exigido en 2.4.

Reglas:
- Máximo 4 categorías fijas por documento; más de 4 diluye el valor de reconocimiento visual. Si el documento no distingue estos tipos de bloque, no la fuerces: usa solo `PALETA`.
- Nunca reutilices el matiz de un acento funcional de 2.4 como color de categoría: rompe la coherencia semántica entre páginas del mismo documento.
- El color nunca es el único portador de significado: todo bloque con categoría lleva siempre su `etiqueta` en texto (columna del diccionario), nunca solo el color de fondo.
- Prueba de fotocopia igual que en 2.4: en escala de grises las cuatro categorías deben distinguirse por la etiqueta de texto, no por el matiz.
- `simulacro` (`#881337`) está a solo 18° de matiz de `acento_fuerza` (`#DC2626`) en la rueda de color; se distinguen igual con claridad porque `simulacro` es mucho más oscuro (30% de luminosidad contra 51%), pero si el documento usa ambos colores en la misma página (por ejemplo un simulacro con DCL), revisa visualmente que no se confundan antes de entregar.

### 2.6 Tipografía y jerarquía (legibilidad primero)

| Elemento | Tamaño | Interlineado | Estilo |
|---|---|---|---|
| Título del documento | 18-20 pt | 1.15 | Negrita, primario |
| H1 (sección) | 13-14 pt | 1.2 | Negrita, primario, spaceBefore 10-12, spaceAfter 4, keepWithNext |
| H2 (subsección / ejercicio) | 11-11.5 pt | 1.2 | Negrita, texto, spaceBefore 7-8, spaceAfter 3, keepWithNext |
| Cuerpo | 10-10.5 pt | 13-13.5 pt | Regular |
| Enunciado de ejercicio | 10 pt | 13 pt | Regular, con número en negrita |
| Leyendas de figura/tabla | 8.5-9 pt | 11 pt | Cursiva, secundario |
| Encabezado / pie | 8 pt | - | Secundario |
| Texto en tablas | 9-9.5 pt | 11.5 pt | Regular; cabecera en negrita blanca |

Mínimo absoluto de cuerpo: 9 pt. Si el usuario exige un número fijo de páginas y no cabe, reduce primero espacios, márgenes de figura y tamaño de figuras; luego cuerpo hasta 9 pt; nunca por debajo. Si aun así no cabe, informa al usuario y propone recortar contenido o añadir una página.

Fuente: **Liberation Serif** (Unicode completo; equivalente métrico libre de Times New Roman, mismos anchos de letra y saltos de línea) en PDF, DOCX y dentro de las figuras. Times New Roman en sí no está instalada en el entorno de generación; Liberation Serif es la sustituta correcta y ya viene registrada con sus cuatro pesos (regular, negrita, cursiva, negrita cursiva) en 4.1. Si el usuario pide explícitamente un aspecto más técnico/sans, usa DejaVu Sans / Liberation Sans como alternativa, sin mezclar ambas familias en un mismo documento. El `mathtext.fontset = "stix"` de 3.1 no cambia: STIX ya está pensado para acompañar un cuerpo serif tipo libro de texto, así que la combinación mejora en vez de chocar.

Texto dentro de figuras: igual al cuerpo (10 pt) o 0.5-1 pt menor cuando se muestran a escala 1.0. Ecuaciones principales 11-12 pt; pasos 9.5-10 pt; leyendas de variables 8.5-9 pt.

### 2.7 Papel, márgenes y rejilla

```python
from reportlab.lib.pagesizes import A4
from reportlab.lib.units import mm
PAPEL = A4                     # fijo, sin excepción
MARGEN_LAT = 18 * mm           # 51 pt
MARGEN_SUP = 20 * mm           # deja sitio al encabezado
MARGEN_INF = 18 * mm           # deja sitio al pie
ANCHO_UTIL = PAPEL[0] - 2 * MARGEN_LAT
REJILLA = {"full": ANCHO_UTIL, "half": ANCHO_UTIL * 0.48, "third": ANCHO_UTIL * 0.31}
```
Nunca menos de 12.7 mm (36 pt) en ningún margen: es la zona segura de impresión.
Encabezado y pie se dibujan dentro de los márgenes reservados, no invaden el área útil.
Figuras se colocan en anchos de rejilla; dos figuras lado a lado van en una `Table` sin bordes con columnas half.
