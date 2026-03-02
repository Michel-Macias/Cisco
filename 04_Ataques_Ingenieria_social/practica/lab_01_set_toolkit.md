# 🛠️ LAB 01: Social-Engineer Toolkit (SET) - Guía Completa

> **Objetivo:** Dominar el uso de SET para campañas de Spear-Phishing y recolección de credenciales, siguiendo el flujo detallado de Cisco.

---

## 🚀 Escenario A: Spear-Phishing Attack (Vector de Archivo PDF Malicioso)

Este ejercicio simula la creación y envío de un archivo PDF que contiene una carga útil (payload) para obtener acceso remoto a una máquina Windows.

### 1. Inicio de la Herramienta
Desde la terminal de Kali Linux, inicia SET con privilegios de root:
```bash
sudo setoolkit
```
Acepta los términos de servicio si es la primera vez que lo inicias.

### 2. Navegación por el Menú
Sigue esta secuencia exacta de opciones:
1.  Selecciona **1) Social-Engineering Attacks**
2.  Selecciona **1) Spear-Phishing Attack Vectors**
3.  Selecciona **2) Create a FileFormat Payload**
4.  Selecciona el exploit **13) Adobe PDF Embedded EXE Social Engineering**
5.  Para el archivo base, usa el PDF en blanco integrado: **2) Use built-in BLANK PDF for attack**

### 3. Configuración del Payload y Listener
1.  Selecciona la opción **1) Windows Reverse TCP Shell**.
2.  **IP del Atacante (LHOST):** Introduce la dirección IP de tu máquina Kali.
3.  **Puerto (LPORT):** Deja el puerto por defecto (4444) o elige uno libre.
4.  **Renombrado del Archivo:** Cuando SET te pregunte si quieres renombrar el archivo, hazlo para que parezca legítimo (Ej: `Capitulo_Revision.pdf`).

### 4. Vector de Envío (Email)
SET te guiará para enviar el archivo:
1.  Selecciona **1. E-mail Attack Single Email Address**.
2.  Usa una plantilla de un solo uso: **2. One-Time Use Email Template**.
3.  **Asunto:** *Acción Requerida: Revisión de Documento Técnico*.
4.  **Cuerpo del mensaje:** Escribe un mensaje formal solicitando la apertura del adjunto (Ejemplo: "Estimado Omar, por favor revisa el adjunto para la entrega de las 2:00 PM.").
5.  **Envío:** Define si usarás un servidor SMTP propio o uno público (Gmail, etc.).
6.  **Spoofing:** Ingresa el nombre y email del remitente que quieres suplantar.

---

## 🌐 Escenario B: Credential Harvester (Site Cloner)

Este método permite clonar sitios web para capturar nombres de usuario y contraseñas.

### Procedimiento:
1.  Desde el menú de **Social-Engineering Attacks (1)**, selecciona la opción **2) Website Attack Vectors**.
2.  Selecciona **3) Credential Harvester Attack Method**.
3.  Selecciona **2) Site Cloner**.
4.  **IP Post-back:** Introduce la IP de tu Kali.
5.  **URL a clonar:** Introduce el sitio real (ej. `https://www.facebook.com`).

SET clonará el sitio automáticamente y levantará un servidor web en tu IP. Cualquier dato ingresado por la víctima en ese sitio clonado aparecerá en tu terminal en tiempo real.

---

## 🧪 Verificación y Post-Explotación
*   Si la víctima abre el PDF, SET te preguntará si quieres iniciar el "payload handler". Di que **Sí** (y) para abrir una sesión de Metasploit.
*   En el caso del sitio clonado, monitoriza la terminal de SET para ver las credenciales capturadas.

> [!IMPORTANT]
> **Recordatorio de Seguridad:** Estos ataques deben llevarse a cabo únicamente en entornos controlados y con autorización expresa de los propietarios de los sistemas.

---
*Módulo 04 - Cisco Ethical Hacker*
