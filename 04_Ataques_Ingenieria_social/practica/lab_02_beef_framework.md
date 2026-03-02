# 🛠️ LAB 02: Browser Exploitation Framework (BeEF) - Guía Completa

> **Objetivo:** Comprender y ejecutar la explotación del lado del cliente mediante la manipulación del navegador utilizando BeEF.

---

## 🚀 Escenario
BeEF es la abreviatura de **Browser Exploitation Framework**. Es una herramienta de prueba de penetración que se centra en el navegador web. En este lab, aprenderás a "enganchar" un navegador y ejecutar comandos de post-explotación.

### Requisitos:
*   Máquina Kali Linux.
*   Navegador web (Firefox/Chromium).

---

## 📂 Paso a Paso Detallado

### Parte 1: Inicio y Configuración de BeEF
1.  **Iniciar el servicio:** Abre una terminal y ejecuta:
    ```bash
    sudo beef-xss
    ```
    *Nota: Si es la primera vez, se te pedirá que cambies la contraseña por defecto.*
2.  **Acceder al Panel de Control:** Una vez iniciado, abre el navegador en Kali y dirígete a:
    `http://127.0.0.1:3000/ui/panel`
3.  **Autenticación:** Inicia sesión con el usuario `beef` y la contraseña que configuraste.

### Parte 2: El Proceso de Hooking (Enganche)
El núcleo de BeEF es el archivo `hook.js`. Para que un navegador sea controlado, debe ejecutar este script.
1.  **Identificar el Hook URL:** Generalmente es `http://<IP_KALI>:3000/hook.js`.
2.  **Simulación de Víctima:** Para propósitos de este laboratorio, BeEF incluye páginas de demostración.
    *   En la máquina víctima (o en otra pestaña de tu Kali), abre:
        `http://127.0.0.1:3000/demos/basic.html`
3.  **Verificación en el Panel:** Regresa al panel de BeEF. Verás que en la columna de la izquierda aparece un nuevo dispositivo bajo **"Online Browsers"**.

### Parte 3: Exploración de Módulos de Comando
Selecciona el navegador enganchado y ve a la pestaña **Commands**. Notarás que los módulos tienen colores:
*   🟢 **Verde:** Funciona y es invisible para el usuario.
*   🟠 **Naranja:** Funciona pero puede ser visible.
*   ⚪ **Gris:** No probado en este navegador.
*   🔴 **Rojo:** No funciona en este navegador.

#### Ejercicio 3.1: Recolección de Información
1.  Busca el módulo **Browser > Fingerprinting**.
2.  Ejecútalo para obtener detalles precisos del navegador, plugins y OS.

#### Ejercicio 3.2: Ingeniería Social (Fake Notification)
1.  Ve a **Social Engineering > Fake Notification (Bar)**.
2.  Configura el texto: *"Su sesión ha expirado. Por favor, haga clic aquí para volver a iniciar sesión."*
3.  Haz clic en **Execute**.
4.  Observa cómo aparece una barra en el navegador de la víctima.

#### Ejercicio 3.3: Robo de Cookies
1.  Ve a **Browser > Get Cookie**.
2.  Ejecuta el módulo y revisa los logs para ver las cookies capturadas.

---

## 🧪 Desafío Final: Pretty Theft
El módulo **Pretty Theft** es uno de los más eficaces.
1.  Configura el módulo para mostrar un diálogo de login falso de Facebook o LinkedIn.
2.  Ejecútalo y observa cómo se bloquea la pantalla de la víctima con el formulario.
3.  Ingresa datos falsos en la víctima y verifica que BeEF los captura en texto claro.

> [!WARNING]
> **Advertencia:** El uso de BeEF fuera de laboratorios controlados es ilegal. Esta guía tiene fines estrictamente educativos para entender cómo protegerse de ataques XSS.

---
*Módulo 04 - Cisco Ethical Hacker*
