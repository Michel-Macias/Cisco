# 🛡️ Infraestructura de Seguridad y Ataques a Servicios

> **Cisco Ethical Hacker - Profundización en el Tema 4**

Este repositorio es una guía avanzada sobre cómo se protegen las infraestructuras de red modernas y cómo los atacantes intentan vulnerar servicios críticos como DNS, DHCP y Aplicaciones Web.

---

## 👨‍💻 Autores
*   **Michel Macias** - *Administrador de Sistemas e Investigador de Seguridad*
*   **Antigravity (Google CI)** - *Mentor y Asistente Técnico IA*

---

## 🚀 Visión General
El Tema 4 se centra en "Atacar lo que hacemos": el software y los protocolos que usamos a diario. Entenderemos la anatomía de un ataque **Man-in-the-Middle (MiTM)**, la exfiltración de datos vía **DNS Tunneling** y cómo configurar defensas robustas como **Proxies Squid** y **Firewalls de Nueva Generación (NGFW)**.

[![Security](https://img.shields.io/badge/Focus-Network_Security-green.svg?style=for-the-badge&logo=fortinet)](https://github.com/MaciasIT)
[![Cisco](https://img.shields.io/badge/Certification-Cisco_Ethical_Hacker-blue.svg?style=for-the-badge&logo=cisco)](https://www.netacad.com/)

---

## 📂 Estructura del Proyecto

```bash
.
├── 📁 assets/             # 🧠 Diagramas de red y esquemas de firewalls
├── 📁 docker/             # 🐳 Laboratorios de proxies y servicios
├── 📁 labs/               # 🛠️ Guías interactivas (Squid, Incident Response)
├── 📁 resources/          # 📄 Material original de Cisco
├── 📄 Resumen_Repaso_Tema4.md    # 📚 Manual de Infraestructura de Seguridad
├── 📄 FAQ_CONCEPTOS.md           # ❓ Diccionario de ataques y defensas
└── 📄 README.md                  # 🏠 Este archivo
```

---

## 🧠 Contenidos Destacados

### 🌐 Ataques a Infraestructura IP
*   **ARP Poisoning:** Cómo los atacantes se sitúan en medio de tu comunicación.
*   **DNS Threats:** Fast Flux, Double IP Flux y Domain Shadowing.
*   **DHCP Spoofing:** El peligro de los servidores DHCP maliciosos.

### 🛡️ Dispositivos de Defensa
*   **Firewalls:** Diferencias críticas entre Capa 3/4 y Capa 7 (Aplicación).
*   **IDS vs IPS:** ¿Detectar o Prevenir? Análisis de firmas y anomalías.
*   **Proxies Web:** Control de contenidos y mejora de rendimiento mediante Caché.

### 🕸️ Seguridad Web y OWASP
*   **Inyección:** SQLi y XSS (Cross-Site Scripting).
*   **Mitigación:** Validación de entradas y políticas de seguridad proactivas.

---

## 🛠️ Laboratorios Disponibles

1.  👉 **[LAB 01: Configuración de Proxy Squid](./labs/LAB_01_Squid_Proxy.md)**
    *   Instalación en Linux, control de ACLs y filtrado de contenidos.
2.  👉 **[LAB 02: Análisis de Incidentes (Caso Real)](./labs/LAB_02_Incident_Response.md)**
    *   Estudio de caso: Infiltración vía proveedores y exfiltración de tarjetas de crédito.

---
*Hecho con ❤️ para la formación avanzada en Ciberseguridad.*
