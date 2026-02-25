# ❓ FAQ: Conceptos Avanzados del Tema 4

Aclaramos los términos y ataques más complejos del módulo de infraestructura de seguridad.

---

### 1. ¿Qué es el "Fast Flux" y por qué es tan difícil detenerlo?
Es una técnica de evasión donde un nombre de dominio (ej: `malware.com`) cambia sus registros de dirección IP cada pocos minutos. El atacante usa una red de miles de ordenadores comprometidos ("proxies") para ocultar el verdadero servidor de mando. Bloquear una sola IP no sirve de nada.

### 2. ¿En qué se diferencia el "Domain Shadowing" del secuestro de dominios?
*   **Secuestro (Hijacking):** El atacante te quita el dominio principal y dejas de tener acceso.
*   **Shadowing:** El atacante crea subdominios (ej: `xyz123.tu-empresa.com`) sin que te des cuenta. Tu web principal sigue funcionando, pero el atacante usa tus subdominios para alojar malware, aprovechando que tu dominio tiene buena reputación.

### 3. ¿Qué es un "Drive-by Download"?
Es un ataque donde un usuario se infecta simplemente por **visitar** una página web infectada. No hace falta que haga clic en "Descargar" ni que acepte nada. El malware aprovecha una vulnerabilidad en el navegador o un plugin (como el antiguo Flash o Java) para ejecutarse solo.

### 4. ¿Cuándo usar un Proxy en lugar de un Firewall?
*   **Firewall:** Para reglas de tráfico general (permitir/denegar puertos e IPs). Es más rápido.
*   **Proxy:** Para inspección profunda de contenido web (bloquear palabras clave, categorías de sitios, caché de archivos). Ofrece un control mucho más granular sobre lo que hacen los usuarios en la web.

### 5. ¿Qué significa "Double IP Flux"?
Es una evolución del Fast Flux donde no solo cambian las IPs del dominio del atacante, sino que también cambian constantemente las IPs de los propios servidores de nombres (DNS) del atacante. Es la "matrioska" de la evasión.

---

### 🛠️ Quick Cheat Sheet: Tipos de Firewalls
| Generación | Nombre | Capa | Inspección |
| :--- | :--- | :--- | :--- |
| **1ª** | Packet Filter | 3 | Solo IP y puerto. |
| **2ª** | Stateful | 4 | IP, puerto y estado de conexión. |
| **3ª** | Application / NGFW | 7 | Contenido de la aplicación (IDs de usuario, acciones). |

---
*¿Necesitas más detalles? Revisa el material completo en la carpeta `/resources/`.*
