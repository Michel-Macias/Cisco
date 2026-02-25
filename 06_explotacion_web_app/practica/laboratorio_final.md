# 🎓 Laboratorio Final Integrado: OWASP Top 10

Este documento consolida las evidencias de todas las vulnerabilidades del OWASP Top 10 explotadas en nuestro entorno de laboratorio. Incluye referencias a prácticas anteriores y nuevas evidencias obtenidas en esta sesión final.

## 📊 Estado de Cobertura OWASP Top 10

| ID | Vulnerabilidad | Estado | Referencia / Evidencia |
| :--- | :--- | :--- | :--- |
| **A01** | **Broken Access Control** | ✅ **HECHO** | IDOR en Cesta (JuiceShop) y Acceso a `/ftp`. Ver [Lab-01](./labs/Laboratorio-Pentesting-01.md). |
| **A02** | **Cryptographic Failures** | ⚠️ *Pendiente* | Tenemos archivos cifrados (`.kdbx`), falta auditoría de hashes y cifrado. |
| **A03** | **Injection** | ✅ **HECHO** | SQLi (Login), RCE (Command Inj) y XSS. Ver [Lab-DVWA](./labs/Laboratorio-DVWA.md). |
| **A04** | **Insecure Design** | ✅ **HECHO** | Modelado de Amenazas. Ver [Threat Model](./labs/Ejemplo-Modelado-Amenazas.md). |
| **A05** | **Security Misconfiguration** | ✅ **HECHO** | Directory Listing y Scoreboard Oculto. Ver [Lab-01](./labs/Laboratorio-Pentesting-01.md). |
| **A06** | **Vulnerable Components** | ✅ **HECHO** | Detección de jQuery/Express antiguos. Ver [Lab-01](./labs/Laboratorio-Pentesting-01.md). |
| **A07** | **Auth Failures** | ✅ **HECHO** | Fuerza Bruta (Hydra) y Robo de Sesión. Ver [Lab-DVWA](./labs/Laboratorio-DVWA.md). |
| **A08** | **Integrity Failures** | ❌ *Pendiente* | Manipulación de datos firmados (JWT) o Deserialización. |
| **A09** | **Logging Failures** | ✅ **HECHO** | Generación de Stack Traces por falta de manejo de errores. |
| **A10** | **SSRF** | ✅ **HECHO** | Backend NodeJS realiza peticiones externas. Ver evidencia abajo. |

---

## 🚀 Sesión Práctica Final

A continuación documentamos los ataques faltantes para completar el Top 10.

### 1. A10: Server-Side Request Forgery (SSRF)
**Objetivo:** Engañar al servidor de Juice Shop para que acceda a un recurso interno o externo arbitrario, demostrando que no valida las URLs de origen.

*   **Evidencia de Éxito:**
    Se inyectó la URL `http://kali-attacker:9090/hola-desde-el-ssrf` en el campo de "Image URL" del perfil de usuario.
    El atacante recibió la siguiente petición en su listener (`nc -lvvp 9090`):
    ```
    connect to [172.20.0.5] from juiceshop-target...
    GET /hola-desde-el-ssrf HTTP/1.1
    host: kali-attacker:9090
    user-agent: node  <-- ¡IMPACTO CRÍTICO!
    ```
    **Análisis:** El `User-Agent: node` confirma que fue el **servidor backend** (NodeJS) el que realizó la petición, y no el navegador del usuario. Esto permitiría a un atacante escanear puertos internos de la red Docker o acceder a metadatos de la nube (AWS/Azure) si estuviera en producción.

### 2. A08: Software & Data Integrity Failures
**Objetivo:** Explotar la falta de verificación de integridad en tokens o datos serializados.
*   **Target:** Manipulación de JWT en Juice Shop (Cambiar usuario sin firma válida).

*   **Evidencia:** (A esperar ejecución)

### 3. A02: Cryptographic Failures (Análisis Profundo)
**Objetivo:** Verificar la fortaleza de los mecanismos criptográficos.
*   **Target:** Crackear el archivo `incident-support.kdbx` exfiltrado previamente o analizar hashes de DVWA.

*   **Evidencia:** (A esperar ejecución)
