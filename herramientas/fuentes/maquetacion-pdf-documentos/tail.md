
---

## 3. Figuras con matplotlib (reconstrucción)

### 3.1 Configuración global

```python
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
plt.rcParams.update({
    "font.family": "serif",
    "font.serif": ["Liberation Serif"],
    "mathtext.fontset": "stix",
    "font.size": 10,
    "savefig.dpi": 300,
    "figure.constrained_layout.use": True,
})
# figsize en pulgadas desde la rejilla de 2.7 (en puntos): ancho = REJILLA["half"] / 72
fig, ax = plt.subplots(figsize=(REJILLA["half"] / 72, 55 * mm / 72))
```

Sin `bbox_inches="tight"`: ese recorte cambia el tamaño del PNG, y al insertarlo al ancho de rejilla el texto de la figura deja de medir lo mismo que el cuerpo. El diseño ajustado lo resuelve `constrained_layout` sin alterar el tamaño de la figura.

### 3.2 Reglas de cada figura

- Una función por figura, determinista (sin aleatoriedad o con semilla fija), que recibe datos y devuelve la ruta del PNG en `figuras/`.
- Colores tomados solo de `PALETA` (2.4) con su rol fijo: fuerzas y corrientes en `acento_fuerza`, resultado en `acento_result`, superficies en `superficie`.
- Redundancia para fotocopia: grosor, estilo de línea, etiqueta de texto o trama, nunca solo color.
- DCL: cuerpo aislado, fuerzas desde su punto de aplicación con etiqueta y, si se conoce, valor con unidad; sistema de ejes dibujado y coherente con las ecuaciones; aceleración fuera del cuerpo con estilo distinto.
- Circuitos: simbología IEC 60617 por defecto (o la ANSI que use el usuario, sin mezclar), nodos con punto, sentidos de corriente y de malla con flecha, etiquetas con valor y unidad.
- Tarjeta de fórmula: ecuación centrada a 11 o 12 pt sobre `fondo_card`, con leyenda de variables y unidades debajo.
- Panel de pasos: datos, planteamiento, desarrollo y resultado destacado en `acento_result`.
- Ancho de figura igual a un ancho de rejilla (2.7), para que el tamaño del texto dentro de la figura coincida con el cuerpo.
- Si mathtext no soporta una expresión (align, matrices complejas), simplifica la presentación o usa el flujo pdflatex de 0.1.

## 4. Construcción del PDF con ReportLab (reconstrucción)

### 4.1 Fuentes

```python
import reportlab.rl_config as rl_config
rl_config.canvas_basefontname = "LibSerif"  # antes de cualquier import de reportlab.platypus o reportlab.lib.styles

from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.lib.fonts import addMapping

RUTA = "/usr/share/fonts/truetype/liberation/"  # ajustar según el sistema
for nombre, archivo in [
    ("LibSerif", "LiberationSerif-Regular.ttf"),
    ("LibSerif-B", "LiberationSerif-Bold.ttf"),
    ("LibSerif-I", "LiberationSerif-Italic.ttf"),
    ("LibSerif-BI", "LiberationSerif-BoldItalic.ttf"),
]:
    pdfmetrics.registerFont(TTFont(nombre, RUTA + archivo))
addMapping("LibSerif", 0, 0, "LibSerif")
addMapping("LibSerif", 1, 0, "LibSerif-B")
addMapping("LibSerif", 0, 1, "LibSerif-I")
addMapping("LibSerif", 1, 1, "LibSerif-BI")
```

Las fuentes base de ReportLab (Helvetica, Times) no cubren Ω ni la μ griega (U+03BC); las TrueType registradas cubren todo lo necesario. Todo `ParagraphStyle` declara `fontName="LibSerif"`, porque el valor por defecto es Helvetica. `rl_config.canvas_basefontname` se asigna antes de cualquier import de `reportlab.platypus`, porque platypus y `reportlab.lib.styles` copian ese valor al importarse; asignado después, el lienzo vuelve a declarar Helvetica sin incrustar. Toda `Table` declara `('FONTNAME', (0, 0), (-1, -1), 'LibSerif')` en su `TableStyle` o usa `Paragraph` en sus celdas; si no, el texto plano de las celdas sale en Helvetica y las casillas `□` y `■` del checklist pueden verse como glifos vacíos.

### 4.2 a 4.7 Estructura

- `SimpleDocTemplate` o `BaseDocTemplate` con `PAPEL`, márgenes de 2.7 y encabezado y pie dibujados en `onPage` dentro de los márgenes.
- Estilos de párrafo derivados de la tabla 2.6, con `keepWithNext=1` en H1 y H2 para evitar títulos huérfanos al pie de página.
- Tablas reales (`Table`) con cabecera en `primario` y texto blanco en negrita, zebra en `fondo_suave`, bordes en `borde`, `repeatRows=1` en tablas largas.
- Figuras como `Image` al ancho de rejilla, con el alto calculado desde la proporción del PNG; nunca se fijan ancho y alto de forma independiente; tampoco se pasa solo `width` (ReportLab deja entonces el alto nativo en píxeles y la figura se deforma):

  ```python
  from reportlab.lib.utils import ImageReader
  from reportlab.platypus import Image
  def figura(ruta, ancho):
      w, h = ImageReader(ruta).getSize()
      return Image(ruta, width=ancho, height=ancho * h / w)
  ```

  Leyenda numerada debajo ("Figura 3. ..."); figura y leyenda juntas en `KeepTogether`.
- Ejercicio resuelto: enunciado, figura y panel de pasos agrupados en `KeepTogether` cuando quepan en una página.
- Numeración secuencial de figuras, tablas, ecuaciones y ejercicios, con referencias cruzadas en el texto.

### 4.8 Caja destacada y checklist

- Caja destacada: `Table` de dos columnas, una franja estrecha con el color de la categoría o de `primario` y una celda con fondo suave, etiqueta en texto ("DEFINICIÓN", "ADVERTENCIA") y contenido como `Paragraph`. Nunca una por párrafo.
- Checklist: `Table` de dos columnas, casilla `□` (o `■` si ya está marcado) y texto, con zebra suave.

## 5. Construcción del DOCX con python-docx (reconstrucción)

- Mismo contenido estructurado que el PDF; un script lee la misma fuente de datos para que ambos queden sincronizados.
- Página A4 y márgenes de 2.7 en `section.page_width`, `page_height` y márgenes.
- Estilos Normal, Heading 1 y Heading 2 con Liberation Serif y los tamaños de 2.6; `keep_with_next` en los títulos.
- Tablas reales con cabecera sombreada y texto editable; figuras con `add_picture(ruta, width=...)` al ancho útil, con solo el ancho: python-docx calcula el alto sin alterar la proporción.
- Fórmulas en display como PNG, o como ecuación OMML si son simples; siempre con el LaTeX en texto alternativo o en una nota para el docente.

### 5.5 Sombreado, cajas y checklist

```python
from docx.oxml import OxmlElement
from docx.oxml.ns import qn

def sombrear(celda, color_hex):
    tc_pr = celda._tc.get_or_add_tcPr()
    for previo in tc_pr.findall(qn("w:shd")):  # un solo w:shd por celda
        tc_pr.remove(previo)
    shd = OxmlElement("w:shd")
    shd.set(qn("w:val"), "clear")
    shd.set(qn("w:color"), "auto")
    shd.set(qn("w:fill"), color_hex.lstrip("#"))
    # orden del esquema OOXML: w:shd va antes de estos elementos
    tc_pr.insert_element_before(shd, "w:noWrap", "w:tcMar", "w:textDirection",
                                "w:tcFitText", "w:vAlign", "w:hideMark",
                                "w:headers", "w:cellIns", "w:cellDel",
                                "w:cellMerge", "w:tcPrChange")
```

- Caja destacada: tabla de una celda sombreada con `sombrear`, etiqueta en negrita y contenido en texto real.
- Checklist: lista real de Word con `□` o `■` al inicio de cada línea, en texto.

## 6. QA visual (reconstrucción)

1. Rasteriza: `pdftoppm -r 110 -png documento.pdf qa/pagina` e inspecciona cada página.
2. Prueba de fotocopia: `pdftoppm -gray -r 110 -png documento.pdf qa/gris`; la información no puede depender solo del color.
3. Revisa: títulos huérfanos al pie, figuras partidas o separadas de su leyenda, tablas desbordadas, texto cortado en celdas, numeración y referencias cruzadas, cuerpo nunca menor de 9 pt, márgenes de al menos 12.7 mm.
4. Aprovechamiento de la hoja: en las páginas que no son la última, ningún hueco visible mayor que unas pocas líneas de cuerpo (tampoco entre bloques por un `KeepTogether` mal usado); la última página queda llena o se reabsorbe en la anterior, nunca con unas pocas líneas sueltas; si aparece un hueco, reordena bloques, ajusta el ancho de las figuras a la rejilla o los espacios para recoger esas líneas en la página anterior o completar la última. Comprueba que ninguna imagen esté deformada (proporción original) y que el PDF sea A4 real (`pdfinfo documento.pdf` muestra `Page size: 595.276 x 841.89 pts (A4)`).
5. Fuentes incrustadas: `pdffonts documento.pdf`; todas con `emb` en `yes` (si aparece Helvetica sin incrustar, falta el `canvas_basefontname` de 4.1 asignado antes de importar `reportlab.platypus`, un `fontName` en algún estilo o el `FONTNAME` de alguna `Table` con texto plano en sus celdas; esa última causa también explica casillas del checklist que se ven como glifos vacíos).
6. DOCX: vuelve a abrirlo con python-docx (o conviértelo con LibreOffice en modo headless si está disponible) para comprobar que no está corrupto y que tablas y figuras aparecen.
7. Contenido: compara cada resultado numérico del documento con los recalculados en la fase 3.
8. Corrige, regenera y vuelve a inspeccionar hasta que no queden defectos.

## 7. Entrega (reconstrucción)

- Archivos: PDF, DOCX y carpeta `figuras/`; los scripts si el usuario los quiere reutilizar.
- Resumen honesto en pocas líneas: qué se hizo, qué se verificó con código, supuestos (por ejemplo, el valor de g), qué es editable en el DOCX y qué quedó como imagen, y limitaciones conocidas.
- Si se detectaron errores en el material original, lista cada uno con su corrección.

## 8. Casos de uso típicos

- "Hazme una ficha de práctica de plano inclinado para 5.º de secundaria, en PDF y Word."
- "Corrige y pon bonito este PDF de circuitos que hice."
- "Convierte estas notas de clase en una guía de estudio imprimible."
- "Necesito el solucionario aparte para el docente."

## 9. Casos límite

- Solo PDF con notación LaTeX avanzada: se recomienda el flujo pdflatex existente (0.1); se pregunta una vez si hace falta el DOCX.
- El usuario pide papel Carta: solo si lo pide de forma explícita para ese documento.
- Número fijo de páginas que no cabe: reducir espacios y figuras, luego cuerpo hasta 9 pt; si aun así no cabe, avisar y proponer recorte.
- Datos insuficientes en un problema: preguntar una vez; si no hay respuesta, asumir lo razonable y declararlo.
- El material original contiene un error técnico: se corrige y se informa; nunca se maqueta un resultado que no se recalculó.
- Documento administrativo (carta, CV): solo tipografía y márgenes.

## 10. Ejemplos completos

### Ejemplo 1. Crear una ficha nueva

Entrada del usuario:

> Ficha de práctica de plano inclinado sin fricción para 5.º de secundaria: un bloque de 4 kg en un plano de 30°. PDF y DOCX.

Salida esperada del modelo (antes de ejecutar, en un solo mensaje):

> Antes de generar: ¿usas g = 9.8 o 9.81 m/s²? ¿El solucionario va al final o en un documento aparte para el docente? Si respondes "sigue", uso 9.8 m/s² y lo pongo al final.

El usuario responde "sigue". Salida esperada del modelo (resumen de entrega):

> Supuestos: g = 9.8 m/s²; A4; extensión de dos páginas; densidad visual alta; solucionario al final.
>
> Contenido verificado con código: normal N = mg cos 30° = 33.9 N; aceleración a = g sen 30° = 4.9 m/s² a lo largo del plano, hacia abajo.
>
> Figuras: fig01_dcl_bloque_plano.png (peso desde el centro de masa, normal perpendicular al plano, eje x a lo largo del plano), eq01_segunda_ley.png (tarjeta de fórmula), panel01_plano_pasos.png (datos, planteamiento, desarrollo y resultado).
>
> QA: dos páginas revisadas en color y en grises; A4 real (pdfinfo 595.276 x 841.89 pts); figuras en su proporción original; sin espacios vacíos ni última página con líneas sueltas; ningún título huérfano; fuentes incrustadas.
>
> Archivos: ficha_plano_inclinado.pdf, ficha_plano_inclinado.docx y figuras/. En el DOCX, el enunciado, las tablas y el solucionario son texto editable; el DCL y las ecuaciones en display son imágenes, con su LaTeX en una nota para el docente.

### Ejemplo 2. Corregir un borrador con error técnico

Entrada del usuario:

> Mejora el diseño de este PDF de circuitos (adjunto). Tiene un ejercicio de dos resistencias de 10 Ω y 20 Ω en paralelo con una fuente de 12 V; mi resultado de corriente total es 0.4 A.

Salida esperada del modelo (antes de maquetar):

> Inventario: 1 sección teórica, 3 ejercicios, 2 diagramas en ASCII, 1 tabla simulada con guiones.
>
> Error detectado en el ejercicio 2: 0.4 A corresponde a las resistencias en serie (12 V / 30 Ω). En paralelo, R_eq = (10 · 20)/(10 + 20) = 6.67 Ω, y la corriente total es 12 V / 6.67 Ω = 1.8 A (1.2 A por la de 10 Ω y 0.6 A por la de 20 Ω). Comprobación: potencia entregada 21.6 W, igual a la suma de potencias disipadas, 14.4 W y 7.2 W.
>
> ¿Corrijo el resultado a 1.8 A o el enunciado debía decir "en serie"? ¿Lo quieres solo en PDF o también en DOCX editable? Si respondes "sigue", corrijo a 1.8 A y genero ambos. Con tus respuestas rehago los diagramas en IEC 60617 y convierto la tabla en una tabla real.

## 11. Antipatrones

- Maquetar sin recalcular los resultados con código.
- Ecuaciones en display como texto de teclado (`V = I * R`) o diagramas en ASCII.
- Mezclar simbología IEC y ANSI, o convenciones de vectores, en un mismo documento.
- Información que depende solo del color.
- Cambiar a papel Carta sin pedido explícito.
- Sustituir el flujo por Pandoc o Typst, o insertar saltos de página antes de cada encabezado por norma.
- Cuerpo por debajo de 9 pt para que entre un número de páginas.
- Dejar medias páginas vacías o huecos entre bloques, o escalar páginas e imágenes de forma que se deformen (por ejemplo, `Image(ruta, width=...)` de ReportLab sin el alto proporcional).
- Declarar que el DOCX es "totalmente editable" cuando DCL y ecuaciones son imágenes.
