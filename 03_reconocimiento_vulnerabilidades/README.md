# 🔍 Recopilación de Información y Análisis de Vulnerabilidades

> **Cisco Ethical Hacker - Profundización en el Tema 3**

Este repositorio contiene una estructura profesional de aprendizaje sobre las fases iniciales de un ataque ético: el **Reconocimiento Pasivo** y el **Análisis de Vulnerabilidades**, siguiendo el currículo oficial de **Cisco Ethical Hacker**.

---

## 👨‍💻 Autores
Este proyecto ha sido desarrollado con rigor técnico y enfoque en la administración de sistemas por:
*   **Michel Macias** - *Administrador de Sistemas e Investigador de Seguridad*
*   **Antigravity (Google CI)** - *Mentor y Asistente Técnico IA*

---

## 🚀 Visión General
El objetivo de este módulo es dominar las técnicas de "footprinting" y la identificación proactiva de debilidades. No basta con lanzar herramientas; un profesional debe saber *cuándo*, *cómo* y *por qué* realizar cada análisis para evitar afectar la disponibilidad del negocio.

[![Recon](https://img.shields.io/badge/Phase-Reconnaissance-yellow.svg?style=for-the-badge&logo=spyderide)](https://github.com/MaciasIT)
[![Cisco](https://img.shields.io/badge/Certification-Cisco_Ethical_Hacker-blue.svg?style=for-the-badge&logo=cisco)](https://www.netacad.com/)
[![License](https://img.shields.io/badge/License-Educational-green.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

---

## 📂 Estructura del Módulo

```bash
.
├── 📁 teoria/                   # 📚 Manual de Combate, Resúmenes y FAQ
├── 📁 practica/                 # 🛠️ Escenarios de Reconocimiento e índice
│   ├── 📁 01_reconocimiento_pasivo/   # 🔭 Google Dorking, DNS, OSINT
│   ├── 📁 02_reconocimiento_activo/   # 💥 Scapy, Nmap, Wireshark
│   └── 📁 03_analisis_vulnerabilidades/ # 🛡️ CVE, CVSS, Metodología
├── 📁 recursos/                 # 📄 Material de apoyo, PDF y Multimedia
├── 📁 infraestructura/          # 🐳 Escenarios Docker (DNS, Planta Industrial)
└── 📄 README.md                 # 🏠 Este archivo
```

---

## 🧠 Contenidos Destacados

### 🔭 Reconocimiento Pasivo
Dominio de herramientas de consulta pública sin interacción directa con el objetivo:
*   **Google Dorking:** Localización de archivos sensibles y paneles expuestos.
*   **DNS Recon:** `nslookup`, `dig`, `whois`.
*   **OSINT Automatizado:** `SpiderFoot`, `Recon-ng`.
*   **Huella Digital:** Análisis de certificados SSL y metadatos.

### 💥 Reconocimiento Activo
Interacción directa para mapear la superficie de ataque:
*   **Evasión de Defensas:** Técnicas de fragmentación y señuelos con Nmap.
*   **Ingeniería de Paquetes:** Uso de Scapy para forjado de tráfico custom.
*   **Análisis de Protocolos:** Captura y disección de tráfico con Wireshark.

### 🛡️ Análisis de Vulnerabilidades (Vulnerability Management)
Estrategias avanzadas para identificar y priorizar debilidades:
*   **Gestión proactiva:** Uso de escáneres en infraestructuras frágiles.
*   **Estándares de la Industria:** Comprensión profunda de **CVE**, **CWE** y **CVSS v3.1**.

---

## 🧪 Laboratorios y Prácticas

### 🔭 01. Reconocimiento Pasivo
1.  👉 **[LAB 3.1.1: Google Dorking](./practica/01_reconocimiento_pasivo/labs/lab_3.1.1_google_dorking.md)**
2.  👉 **[LAB 3.1.2: DNS y Whois Recon](./practica/01_reconocimiento_pasivo/labs/lab_3.1.2_dns_recon.md)** (Incluye 🐳 Docker)
3.  👉 **[LAB 3.1.3: OSINT Tools (SpiderFoot)](./practica/01_reconocimiento_pasivo/labs/lab_3.1.3_osint_tools.md)**
4.  👉 **[LAB 3.1.4: Social Media Intelligence](./practica/01_reconocimiento_pasivo/labs/lab_3.1.4_social_media_intelligence.md)**
5.  👉 **[LAB 3.1.5: Certificados SSL](./practica/01_reconocimiento_pasivo/labs/lab_3.1.5_ssl_certificates.md)**
6.  👉 **[LAB 3.1.6: OSINT de Organización](./practica/01_reconocimiento_pasivo/labs/lab_3.1.6_organization_info.md)**
7.  👉 **[LAB 3.1.7: Recon-ng Framework](./practica/01_reconocimiento_pasivo/labs/lab_3.1.7_recon-ng.md)**

### 💥 02. Reconocimiento Activo
8.  👉 **[LAB 3.2.1: Análisis con Scapy](./practica/02_reconocimiento_activo/labs/lab_3.2.1_scapy.md)**
9.  👉 **[LAB 3.2.2: Escaneo Avanzado con Nmap](./practica/02_reconocimiento_activo/labs/lab_3.2.2_nmap.md)**
10. 👉 **[LAB 3.2.3: Wireshark y Análisis de Tráfico](./practica/02_reconocimiento_activo/labs/lab_3.2.3_wireshark.md)**

### 🛡️ 03. Análisis de Vulnerabilidades
11. 👉 **[LAB 3.3.1: Metodología y Lógica del Escaneo](./practica/03_analisis_vulnerabilidades/labs/lab_3.3.1_vuln_scanning_logic.md)** (Incluye 🐳 [Red Industrial](./infraestructura/lab_3.3.1_vuln_scanning/))
12. 👉 **[LAB 3.4.1: Investigación de Fuentes de Vulnerabilidades](./practica/03_analisis_vulnerabilidades/labs/lab_3.4.1_investigacion_fuentes.md)** (CVE/CVSS)

---

## 📚 Material Complementario
Además de los labs, se han incluido recursos de profundización en la carpeta `recursos/`:
*   📄 **[Análisis Táctico de Vulnerabilidades](./recursos/Análisis_Táctico_de_Vulnerabilidades.pdf)**: Guía avanzada sobre metodología de escaneo.
*   🎙️ **[Audio: Falsos Positivos y Automatización](./recursos/Falsos_positivos_y_la_ilusión_de_la_automatización.m4a)**: Reflexión sobre los límites de las herramientas automáticas.


---

## ⚖️ Descargo de Responsabilidad (Disclaimer)
Este material tiene fines **estrictamente educativos**. El reconocimiento no autorizado es el primer paso de un ataque; asegúrate de tener siempre el consentimiento explícito antes de analizar cualquier infraestructura ajena.

---
*Hecho con ❤️ para el aprendizaje continuo en Ciberseguridad.*
