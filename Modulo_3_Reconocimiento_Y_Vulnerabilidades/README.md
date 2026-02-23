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
├── 📁 assets/             # 🧠 Mapas mentales y diagramas
├── 📁 docker/             # 🐳 Entornos de red controlados (DNS, etc.)
├── 📁 labs/               # 🛠️ Guías de laboratorios paso a paso
├── 📁 resources/          # 📄 Material original (PDFs de Cisco)
├── 📄 Resumen_Repaso_Tema3.md    # 📚 Manual de Combate Teórico
├── 📄 FAQ_CONCEPTOS.md           # ❓ Dudas técnicas y "Cheat Sheets"
└── 📄 README.md                  # 🏠 Este archivo
```

---

## 🧠 Contenidos Destacados

### 🔭 Reconocimiento Pasivo
Dominio de herramientas de consulta pública sin interacción directa con el objetivo:
*   **DNS Recon:** `nslookup`, `dig`, `host`.
*   **Domain Intelligence:** Uso avanzado de `whois` y registros de red.
*   **OSINT:** Identificación de activos y superficies de ataque.

### 🛡️ Análisis de Vulnerabilidades
Estrategias avanzadas para identificar puntos débiles:
*   **Desafíos Técnicos:** Gestión de falsos positivos y sistemas frágiles (IoT, impresoras).
*   **Políticas de Escaneo:** Cuándo esmerarse en producción y cuándo usar fuerza bruta.
*   **Estándares:** Comprensión profunda de **CVSS**, **CVE** y **CWE**.

---

## 🛠️ Laboratorios Disponibles
El aprendizaje se consolida en la CLI. Consulta nuestras guías interactivas:

1.  👉 **[LAB 01: Búsquedas DNS y Reconocimiento](./labs/LAB_01_DNS_Recon.md)**
    *   Técnicas de `nslookup` vs `dig`.
    *   Búsquedas inversas (rDNS) y análisis de registros TXT/MX.

---

## ⚖️ Descargo de Responsabilidad (Disclaimer)
Este material tiene fines **estrictamente educativos**. El reconocimiento no autorizado es el primer paso de un ataque; asegúrate de tener siempre el consentimiento explícito antes de analizar cualquier infraestructura ajena.

---
*Hecho con ❤️ para el aprendizaje continuo en Ciberseguridad.*
