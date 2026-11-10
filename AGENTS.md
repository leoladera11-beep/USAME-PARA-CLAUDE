# Instrucciones para agentes

Si te pidieron instalar o actualizar las skills de este repositorio, sigue [INSTALAR.md](INSTALAR.md), sección "Si eres un agente de IA". Empieza por `python3 instalar_skills.py --simular` y muestra el resultado al usuario antes de instalar. Si no tienes acceso a internet, usa `instalar_sin_internet.py` (sección "Sin internet" de INSTALAR.md): lleva todo el paquete dentro y no necesita la red.

Si te pidieron modificar las skills, no edites a mano los archivos de `GoogleDrive_Backup_Skills/`: edita `herramientas/fuentes/` y ejecuta `python3 herramientas/construir_respaldo.py`, que regenera el paquete, valida sus reglas y ejecuta `herramientas/verificar_calidad.py`. No publiques cambios si el pipeline no termina con todas las pruebas en PASA.

## App Brisa

La carpeta `brisa/` contiene una app aparte: un reproductor de música y vídeo para Android y Windows 11. Si te pidieron trabajar en ella, sigue [brisa/AGENTS.md](brisa/AGENTS.md); las reglas de las skills de arriba no le aplican. Las apps compiladas están en `brisa/apps/`.
