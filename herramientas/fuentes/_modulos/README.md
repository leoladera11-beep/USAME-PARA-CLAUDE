# Módulos separados de escritura humana

Versión modular de la familia escritura-humana, para comparar con el motor unificado `escritura-humana` antes de elegir cuál instalar. Las reglas son las mismas; cambia la organización.

| Módulo | Contenido | Cuándo se activa |
|---|---|---|
| `escritura-humana-core` | Veracidad, preferencias permanentes, proceso, nueve reglas (P1 a P9) y señales ampliadas, calibración por género, modos, validación de fidelidad | Cualquier texto en español que se redacta o edita |
| `escritura-humana-vocabulario` | Raya, término vetado, emojis, variante, formato y tabla de léxico inflado (un solo archivo, sin carpeta de referencias) | Siempre junto con el núcleo |
| `escritura-humana-conectores` | Criterio de conectores y repertorio de 22 categorías (un solo archivo, sin carpeta de referencias) | Siempre junto con el núcleo; revisión de conectores |
| `escritura-humana-ensayos` | Ensayo académico completo | "ensayo", "rúbrica", "consigna" |

Instalación en claude.ai: sube los cuatro archivos de `../skills_instalables/modulos_separados/*.skill`. No los instales junto con `escritura-humana.skill` (el motor unificado): se activarían a la vez y duplicarían reglas en el contexto.

Diferencias frente al motor unificado: el modo `mejorar` (correos y mensajes) y el modo `redactar` quedan dentro del núcleo; el modo `ensayo` vive en su módulo. Los anexos de ejemplos, catálogo humanizer, validador y esqueletos acompañan al núcleo.
