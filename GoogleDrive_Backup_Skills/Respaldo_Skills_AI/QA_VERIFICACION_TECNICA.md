# QA_VERIFICACION_TECNICA

Fecha: 2026-10-12. Paquete: `Respaldo_Skills_AI`. Comando: `python3 herramientas/verificar_calidad.py`.

## Resultado

10 de 10 pruebas pasan; 984 elementos revisados; 0 fallos.

| N.º | Prueba | Revisados | Fallos | Estado |
|---|---|---|---|---|
| 1 | Frontmatter YAML y campos obligatorios | 47 | 0 | PASA |
| 2 | Raya, semirraya como puntuación y doble guion | 170 | 0 | PASA |
| 3 | Léxico inflado | 161 | 0 | PASA |
| 4 | Término vetado | 170 | 0 | PASA |
| 5 | Emojis y caracteres gráficos decorativos | 170 | 0 | PASA |
| 6 | Etiquetas XML huérfanas o mal cerradas | 147 | 0 | PASA |
| 7 | Casos límite y cumplimiento perezoso | 28 | 0 | PASA |
| 8 | Integridad del manifest y de los paquetes | 43 | 0 | PASA |
| 9 | Instalador en carpeta personal temporal | 4 | 0 | PASA |
| 10 | Sensibilidad: defectos sembrados detectados | 44 | 0 | PASA |

## Qué revisa cada prueba

1. Frontmatter YAML válido y campos obligatorios por tipo de archivo.
2. Raya tipográfica, semirraya como puntuación y doble guion como raya.
3. Léxico inflado usado (las menciones dentro de reglas, listas o comillas se cuentan aparte).
4. Término vetado (solo admisible como fuerza de una cuerda en notación de mecánica).
5. Emojis y caracteres gráficos decorativos.
6. Etiquetas XML huérfanas o mal cerradas.
7. Casos límite y cumplimiento perezoso: conectores explícitos en las skills de redacción, recálculo
   por código y LaTeX en las skills cuantitativas, y el script revisar_texto.py frente a textos de prueba.
8. Integridad: sumas SHA-256 del manifest y .skill/.zip idénticos a sus carpetas.
9. Instalador: instalación, estado y desinstalación en una carpeta personal temporal.
10. Sensibilidad: cada defecto conocido (34 casos de las pruebas 1 a 6) se siembra por separado en un
    paquete mínimo y su prueba debe detectarlo, para que el linter no pase por estar vacío; diez textos
    legítimos (Arquímedes, faros y tapices literales, una opción de comando y una enumeración de palabras
    vigiladas) no deben fallar.

## Detalle

### 1. Frontmatter YAML y campos obligatorios

Elementos revisados: 47. Fallos: 0.

### 2. Raya, semirraya como puntuación y doble guion

Elementos revisados: 170. Fallos: 0.

### 3. Léxico inflado

Elementos revisados: 161. Fallos: 0.
- Menciones metalingüísticas (listas de prohibición, ejemplos de antes y después, regex): 282

### 4. Término vetado

Elementos revisados: 170. Fallos: 0.
- Apariciones en notación de mecánica (admitidas): 0

### 5. Emojis y caracteres gráficos decorativos

Elementos revisados: 170. Fallos: 0.

### 6. Etiquetas XML huérfanas o mal cerradas

Elementos revisados: 147. Fallos: 0.
- Archivos con estructura XML: 8

### 7. Casos límite y cumplimiento perezoso

Elementos revisados: 28. Fallos: 0.

### 8. Integridad del manifest y de los paquetes

Elementos revisados: 43. Fallos: 0.

### 9. Instalador en carpeta personal temporal

Elementos revisados: 4. Fallos: 0.
- Elementos instalados: 35

### 10. Sensibilidad: defectos sembrados detectados

Elementos revisados: 44. Fallos: 0.
- Defectos sembrados, uno por paquete mínimo: campo compatibility ausente; raya; semirraya como inciso; doble guion pegado; «rico tapiz» en prosa; «Sumérgete» en prosa; flexión «desentraña»; flexión «vertiginosa»; «sinergia» tras «Por ejemplo»; «sinergia» tras «evitar»; frase típica con dos palabras vigiladas; «vertiginoso» y «sinergia» en prosa; «no uses» ajeno a la regla; comilla de pulgadas; doble guion de diálogo; flecha emoji; dos palabras vigiladas con palabras intermedias; coma seguida de oración; «sumergiremos en los»; «sumérjase» (usted); «faro» metafórico; «vertiginosamente»; inciso con doble guion; inciso con doble guion al final de línea; inciso con doble guion y palabra compuesta; «holístico y sinergias»; «tapiz sonoro»; término vetado; término vetado con tilde descompuesta; término vetado junto a «cuerda» sin notación; emoji; carácter decorativo; etiqueta sin cierre; cierre sin apertura
- Textos legítimos que no deben fallar: bloque sumergido en agua (Arquímedes); faro de un logo; tapiz literal; cubo que se sumerge en el mar; esfera sumergida en una solución; faro de la costa; faro de la bahía; tapices de Ayacucho; enumeración de palabras vigiladas; opción de comando

## Ciclo de pruebas: errores detectados y correcciones

Cada ciclo combinó las validaciones del generador (`construir_respaldo.py`), este pipeline y jueces externos independientes que leyeron las fuentes y las salidas, recalcularon los ejemplos con Python y probaron el código y el instalador. Un ciclo se cerraba solo sin hallazgos bloqueantes ni importantes.

| Ciclo | Errores detectados | Corrección aplicada |
|---|---|---|
| Generación inicial | YAML roto por `: ` sin comillas y por `argument-hint` que empezaba con `[`; bloques de código anidados en los prompts; una raya literal dentro de un ejemplo; un prompt de respaldo de 8028 caracteres | Frontmatter siempre entre comillas; bloques externos con `~~~~`; marcador `[raya]`; recorte del core |
| Jueces, ronda 1 | Referencias rotas a "Modos" en los comandos; notación matemática de ChatGPT; excepción de circuitos en un anexo; ejemplos con datos o tiempos incoherentes; distorsión de imágenes en ReportLab | Interpretación de argumentos por motor; `\( \)` y `\[ \]` en ChatGPT; regla solo de mecánica; ejemplos rehechos; `figura()` con alto proporcional |
| Jueces, ronda 2 (memoria del usuario) | Aparición del término vetado en fuentes heredadas; reglas del usuario sin integrar | Reemplazos en el generador con aserción; validación que hace fallar la generación si el término aparece |
| Ronda final 1 (seis jueces) | Ejemplo del auditor en modo completo bajo 80 palabras; excepción de emojis inexistente; script sin emojis comunes; módulo de conectores limitado a textos largos; ejemplos del preparador sin instrumento ni metacognición; QA de maquetación que toleraba espacios vacíos; instalador con colisión de respaldos en el mismo segundo y guía que instalaba en el clon | Regla y ejemplos del auditor alineados; emojis sin excepción; detector ampliado; conectores siempre activos; ejemplos completos; QA estricto; respaldos con microsegundos y contador; guía de alcance de proyecto |
| Ronda final 2 (cuatro jueces) | Guía con comando de rama que fallaba sobre un clon existente; salvedad del solucionador ausente en Gemini; límite de Projects afirmado sin matiz; disparadores de ChatGPT con el umbral antiguo; boleto de salida que no evidenciaba su criterio; tildes descompuestas que evadían el detector | `git fetch` y `checkout` sobre el mismo clon; `gemini_veracidad()`; límite matizado; disparadores con 300/500; boleto por parejas con dos detalles; normalización NFC |
| Ronda final 3 (cuatro jueces) | Plan B del preparador que no recuperaba 15 minutos; mensajes del instalador con un diccionario en lugar de una ruta; doble guion pegado a palabras sin detectar | Recortes que suman 15; ruta legible y aviso de cambios locales; patrón ampliado |
| Pivote de ChatGPT (versión 2.2.0) | Arquitectura de Custom GPTs y límite de 8000 caracteres | Skills autónomas para Projects con `triggers` y `compatibility`, sistema maestro y disparadores; este pipeline como verificación final |
| Juez del pivote de ChatGPT (cuatro rondas) | La adaptación a archivo único alteraba la tabla de plataformas del auditor; el linter de léxico inflado tenía una errata («súmergete»), no cubría flexiones, eximía prosa por palabras corrientes («ejemplo», «evitar») y por tener dos palabras vigiladas en la misma frase; sin normalización NFC; flechas emoji, doble guion de diálogo y doble guion de inciso («equipo --según el informe-- creció», también en `revisar_texto.py`) sin detectar; enumeraciones que eximían prosa con palabras intermedias; «sumérjase» y determinantes plurales fuera del patrón; falsos positivos posibles con «sumergido en agua» o «faro» | Adaptación limitada a los archivos propios de la skill, con aserción; raíces con flexiones y uso metafórico de «sumergir» y «faro»; mención solo por comillas, cursiva, código, enumeración real, marcadores explícitos o secciones de catálogo; NFC en el pipeline y en el generador; inciso emparejado en el pipeline y en el script (también al final de línea, entre paréntesis y con palabras compuestas); metáfora solo con complemento abstracto, para no marcar «se sumerge en el mar», «el faro de la costa» ni «Tapices de Ayacucho»; prueba 10 con 34 defectos sembrados y 10 textos legítimos que no deben fallar |

Nota sobre el término vetado: el pedido de esta versión admite el término en física o circuitos, pero la regla fijada antes por el usuario es más estricta (solo la fuerza de una cuerda en mecánica; en circuitos, voltaje o diferencia de potencial). El pipeline aplica la regla estricta y el paquete tiene 0 apariciones, así que cumple ambas.
