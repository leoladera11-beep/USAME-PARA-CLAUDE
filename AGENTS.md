# Instrucciones para agentes

Si te pidieron instalar o actualizar las skills de este repositorio, sigue [INSTALAR.md](INSTALAR.md), sección "Si eres un agente de IA". Empieza por `python3 instalar_skills.py --simular` y muestra el resultado al usuario antes de instalar.

Si te pidieron modificar las skills, no edites a mano los archivos de `GoogleDrive_Backup_Skills/`: edita `herramientas/fuentes/` y ejecuta `python3 herramientas/construir_respaldo.py`, que regenera el paquete y valida sus reglas (sin raya, sin emojis, sin el término vetado, frontmatter válido).
