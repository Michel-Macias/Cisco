# 📚 Análisis de Vulnerabilidades: Conceptos y Metodología

> **Sección 3.3 - Cisco Ethical Hacker**

## 🎯 Objetivos
- Comprender el proceso de escaneo de vulnerabilidades.
- Identificar los diferentes tipos de análisis y su aplicación.
- Conocer los retos técnicos al realizar escaneos en entornos de producción.

---

## 🔍 ¿Cómo funciona un escáner de vulnerabilidades?
Un escáner automatizado no es una "caja mágica", sino que sigue un proceso estructurado para identificar debilidades:

1.  **Detección (Discovery)**: Identifica hosts activos y puertos abiertos.
2.  **Identificación de Software/Versión**: Determina qué servicios y versiones están corriendo (banner grabbing, firmas de protocolos).
3.  **Correlación de Vulnerabilidades**: Compara la información obtenida con bases de datos de vulnerabilidades conocidas (CVE).
4.  **Generación de Informes**: Documenta los hallazgos y su severidad (CVSS).

---

## 🛡️ Tipos de Análisis de Vulnerabilidades
Dependiendo del objetivo y el acceso, podemos clasificar los escaneos en:

| Tipo | Descripción | Ventaja |
| :--- | :--- | :--- |
| **No Autenticado** | Sin credenciales. Evalúa la superficie desde fuera. | Muestra la visión del atacante externo. |
| **Autenticado** | Con credenciales (root/admin). Inspecciona procesos y registros. | Menos falsos positivos y análisis profundo. |
| **Descubrimiento** | Enfocado en encontrar activos vivos. | Identifica la superficie de ataque inicial. |
| **Completo** | Habilita todos los plugins y scripts disponibles. | Exhaustivo, pero ruidoso y lento. |
| **Sigiloso (Stealth)** | Minimiza el ruido para evitar detección (IPS/IDS). | Útil en entornos de auditoría real. |
| **Pasivo** | Monitoriza el tráfico sin enviar paquetes al target. | No interfiere con la disponibilidad. |
| **Cumplimiento** | Verifica configuraciones según estándares (PCI-DSS, NIST). | Asegura que la empresa cumple normativas. |

---

## ⚡ Consideraciones Críticas en Producción
Realizar un escaneo puede ser disruptivo. Como auditores, debemos considerar:

- **Sistemas Frágiles**: Dispositivos IoT, impresoras o PLCs pueden colapsar ante escaneos intensivos.
- **Ventanas de Mantenimiento**: Escanear en horas de baja actividad.
- **Ancho de Banda**: Ajustar los hilos de ejecución para no saturar enlaces congestionados.
- **Falsos Positivos**: Siempre se requiere validación manual. Un escáner puede "creer" que una versión es vulnerable basándose solo en el banner.

---
## 🧠 Reflexión del Mentor
**¿Por qué un escaneo autenticado suele ser superior a uno no autenticado en una auditoría interna?**
> *Respuesta*: Porque permite al escáner leer la configuración interna del sistema, parches instalados y archivos específicos, evitando que un firewall o un IDS oculte servicios y reduciendo drásticamente los falsos positivos.

---
*Este manual es una adaptación educativa para el curso de Cisco Ethical Hacker.*
