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

## 📂 Estructura del Proyecto

```bash
.
├── 📁 3.1_Reconocimiento_Pasivo/  # 🔭 Técnicas de recolección pasiva
│   └── 📁 labs/                  # 🛠️ Prácticas (DNS, OSINT, Metadatos)
├── 📁 3.2_Reconocimiento_Activo/  # 💥 Interacción directa (Nmap, Scapy)
│   └── 📁 labs/                  # 🛠️ Prácticas (Captura, Escaneo, Forjado)
├── 📁 assets/                     # 🧠 Mapas mentales y diagramas
├── 📁 docker/                     # 🐳 Entornos de red controlados
├── 📁 resources/                  # 📄 Material original (Cisco)
├── 📄 Resumen_Repaso_Tema3.md      # 📚 Manual de Combate Teórico
├── 📄 FAQ_CONCEPTOS_Mod3.md       # ❓ Dudas técnicas y "Cheat Sheets"
└── 📄 README.md                    # 🏠 Este archivo
```

---

## 🧠 Contenidos Destacados

### 🔭 Reconocimiento Pasivo
Dominio de herramientas de consulta pública sin interacción directa con el objetivo:
*   **DNS Recon:** `nslookup`, `dig`, `whois`.
*   **OSINT Automatizado:** `SpiderFoot`, `Recon-ng`.
*   **Huella Digital:** Análisis de metadatos y Redes Sociales.

### 🛡️ Análisis de Vulnerabilidades (Próximamente)
Estrategias avanzadas para identificar puntos débiles:
*   **Gestión de Vulnerabilidades:** Uso de escáneres profesionales (Nessus/OpenVAS).
*   **Estándares:** Comprensión profunda de **CVSS**, **CVE** y **CWE**.

---

## 🧪 Laboratorios Disponibles
El aprendizaje se consolida en la CLI. Consulta nuestras guías interactivas:

### 🔬 3.1 Reconocimiento Pasivo
1.  👉 **[LAB 3.1.1: Google Dorking](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.1_Google_Dorking.md)**
2.  👉 **[LAB 3.1.2: DNS y Whois Recon](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.2_DNS_Recon.md)**
3.  👉 **[LAB 3.1.3: OSINT Tools (SpiderFoot)](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.3_OSINT_Tools.md)**
4.  👉 **[LAB 3.1.4: Social Media Intelligence](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.4_Social_Media_Intelligence.md)**
5.  👉 **[LAB 3.1.5: Certificados SSL](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.5_SSL_Certificates.md)**
6.  👉 **[LAB 3.1.6: OSINT de Organización](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.6_Organization_Info.md)**
7.  👉 **[LAB 3.1.7: Recon-ng Framework](./3.1_Reconocimiento_Pasivo/labs/LAB_3.1.7_Recon-ng.md)**

### 💥 3.2 Reconocimiento Activo
8.  👉 **[LAB 3.2.1: Análisis con Scapy](./3.2_Reconocimiento_Activo/labs/LAB_3.2.1_Scapy.md)**
9.  👉 **[LAB 3.2.2: Escaneo Avanzado con Nmap](./3.2_Reconocimiento_Activo/labs/LAB_3.2.2_Nmap.md)**
10. 👉 **[LAB 3.2.3: Wireshark y Análisis de Tráfico](./3.2_Reconocimiento_Activo/labs/LAB_3.2.3_Wireshark.md)**

---

## ⚖️ Descargo de Responsabilidad (Disclaimer)
Este material tiene fines **estrictamente educativos**. El reconocimiento no autorizado es el primer paso de un ataque; asegúrate de tener siempre el consentimiento explícito antes de analizar cualquier infraestructura ajena.

---
*Hecho con ❤️ para el aprendizaje continuo en Ciberseguridad.*
