# ❓ FAQ: Conceptos Clave del Tema 3

En esta sección resolvemos las dudas técnicas más comunes sobre reconocimiento y análisis de vulnerabilidades.

---

### 1. ¿Cuál es la diferencia real entre Reconocimiento Pasivo y Activo?
*   **Pasivo:** No tocas al objetivo. Consultas fuentes públicas (DNS, registros Whois, Google, Shodan). Es indetectable.
*   **Activo:** Interactúas con los puertos del sistema (Nmap, escaneo de vulnerabilidades). Es detectable por firewalls e IDS/IPS.

### 2. ¿Qué es el "Backporting" y por qué engaña a mis escáneres?
Es una práctica común en distribuciones como **Debian** o **Red Hat (RHEL)**.
*   **Escenario:** Se descubre una vulnerabilidad en Apache v2.4.50.
*   **Acción:** Los desarrolladores de RHEL no actualizan a la v2.4.51 (para no romper compatibilidades), sino que aplican el parche de seguridad sobre el código de la v2.4.50.
*   **Problema:** El escáner ve "v2.4.50" y marca vulnerabilidad, aunque el sistema esté parcheado.
*   **Solución:** Validación manual o escaneos con credenciales que miren el registro de paquetes instalados.

### 3. ¿Vulnerabilidad vs. Exploit vs. Payload?
*   **Vulnerabilidad:** El agujero en la pared (ej: una versión de software con un bug).
*   **Exploit:** La herramienta/técnica para pasar por ese agujero (ej: un script de Python que aprovecha el bug).
*   **Payload:** Lo que haces una vez dentro (ej: abrir una shell reversa o robar una base de datos).

### 4. ¿Por qué el escaneo de puertos UDP es tan lento?
A diferencia de TCP (que usa el saludo de 3 vías), UDP no tiene estado. Si un puerto está abierto, el servicio suele no responder nada. Si está cerrado, el host puede enviar un paquete ICMP "Port Unreachable". Los sistemas limitan la frecuencia de estos mensajes ICMP, lo que obliga a los escáneres a ir muy despacio.

### 5. ¿Qué significa la métrica "Cambio de Alcance" (Scope Change) en CVSS v3.1?
Significa que la vulnerabilidad en un componente afecta a otros sistemas fuera de su control.
*   **Ejemplo:** Una vulnerabilidad en un hipervisor (ESXi) que permite saltar a las máquinas virtuales que aloja. El alcance ha cambiado del host a los invitados.

---
### 🛠️ Quick Cheat Sheet: Herramientas DNS
| Herramienta | Uso Principal | Comando Rápido |
| :--- | :--- | :--- |
| **Nslookup** | Básico/Interactiva | `nslookup domain.com` |
| **Dig** | Técnico/Detallado | `dig domain.com ANY` |
| **Whois** | Propiedad/IPs | `whois 8.8.8.8` |
| **Host** | Rápido/Inverso | `host -x 8.8.8.8` |

---
*¿Tienes más dudas? Consulta el material original en la carpeta `/resources/`.*
