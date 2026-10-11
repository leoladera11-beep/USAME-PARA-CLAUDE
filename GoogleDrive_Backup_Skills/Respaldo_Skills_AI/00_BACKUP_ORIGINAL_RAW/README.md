# Respaldo original sin alteraciones

Inventario de las 16 skills tal como llegaron en `mis_skills_claude.zip`. Nada de esta carpeta se modificó: sirve como punto de restauración. Las versiones consolidadas están en las carpetas 01, 02 y 03.

## Contenido

- `skills/`: las 16 skills en su formato `SKILL.md` con frontmatter y sus carpetas de referencias.
- `para_claude_projects/`: las mismas 16 skills con sus anexos combinados en un solo archivo cada una (formato pensado para Claude Projects).
- `README_paquete_original.md`: el README que venía en el zip.
- `Sistema_Auditado_y_Optimizado_para_Claude.md`: el documento de auditoría previo que sirvió de base (con las correcciones descritas en la matriz).
- `mis_skills_claude.zip`: el archivo original, para restauración byte a byte. SHA-256: `e5698e59abda721db685ffa97eb56ccb88d54b4f63f94265fc9eff0fc3a3e4fd`.

## Inventario

| # | Skill | Archivos | Bytes | SHA-256 de SKILL.md (16 primeros) | Motor consolidado |
|---|---|---|---|---|---|
| 1 | `humanizer` | `skills/humanizer/`: SKILL.md | 32456 | `05dd1523d206c18a` | escritura-humana |
| 2 | `ejercicios-dos-pasos` | `skills/ejercicios-dos-pasos/`: SKILL.md | 2458 | `64b7884fbac6944a` | ejercicios-dos-pasos |
| 3 | `tutor-comprension-profunda` | `skills/tutor-comprension-profunda/`: SKILL.md | 8831 | `977420ede681c36b` | motor-pedagogico |
| 4 | `identidad-de-marca` | `skills/identidad-de-marca/`: SKILL.md | 7985 | `912f99f9d5cd0121` | identidad-de-marca |
| 5 | `maquetacion-pdf-documentos` | `skills/maquetacion-pdf-documentos/`: SKILL.md | 19510 | `1533c562a1e808f6` | maquetacion-pdf-documentos |
| 6 | `tutor-adaptativo` | `skills/tutor-adaptativo/`: SKILL.md | 4077 | `eb260af6346befca` | motor-pedagogico |
| 7 | `principios-aprendizaje` | `skills/principios-aprendizaje/`: SKILL.md | 6395 | `133df2bcb5f349a3` | motor-pedagogico |
| 8 | `escritura-humana-core` | `skills/escritura-humana-core/`: SKILL.md, references/pattern-examples.md, references/validador-independiente.md | 37391 | `7bb742d5da8e6812` | escritura-humana |
| 9 | `escritura-humana` | `skills/escritura-humana/`: SKILL.md, references/conectores.md, references/ejemplos.md, references/vocabulario.md | 61441 | `919fe5a9dbd5892e` | escritura-humana |
| 10 | `preparador-de-clases` | `skills/preparador-de-clases/`: SKILL.md | 20645 | `8b3f33a0713a2ca4` | preparador-de-clases |
| 11 | `mejorador-de-textos` | `skills/mejorador-de-textos/`: SKILL.md | 12449 | `6df52669ab47a3e3` | escritura-humana y auditor-de-prompts |
| 12 | `auditor-prompts-aprendizaje` | `skills/auditor-prompts-aprendizaje/`: SKILL.md | 4373 | `bdfe6306d156f6e6` | motor-pedagogico |
| 13 | `escritura-de-calidad` | `skills/escritura-de-calidad/`: SKILL.md, references/brief-defaults.md, references/esqueletos-genero.md | 18988 | `34da00514c2c2afa` | escritura-humana |
| 14 | `escritura-humana-conectores` | `skills/escritura-humana-conectores/`: SKILL.md, conectores-22-categorias.md | 22166 | `96f08c537f2b5bd4` | escritura-humana |
| 15 | `escritura-humana-ensayos` | `skills/escritura-humana-ensayos/`: SKILL.md, casos-negrita.md | 19622 | `baabaf1ab29f40ca` | escritura-humana |
| 16 | `escritura-humana-vocabulario` | `skills/escritura-humana-vocabulario/`: SKILL.md | 11923 | `c52030de31f48d51` | escritura-humana |

## Verificar la integridad

```bash
sha256sum skills/*/SKILL.md
```

Compara los 16 primeros caracteres de cada suma con la tabla.

Nota: el contenido original conserva sus signos tal como estaban (por ejemplo, una raya en la descripción de `escritura-humana-vocabulario` y emojis en `README_paquete_original.md`). La validación sin rayas ni emojis se aplica a las carpetas 01, 02 y 03.
