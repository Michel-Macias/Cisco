# 🎭 Ataques de Ingeniería Social

> **Cisco Ethical Hacker - Módulo 04: El Factor Humano**

Este módulo profundiza en el eslabón más débil de la cadena de seguridad: las personas. Aprenderemos a identificar, ejecutar (en entornos controlados) y mitigar tácticas de manipulación psicológica, desde el phishing tradicional hasta ataques físicos y digitales avanzados.

---

## 👨‍💻 Autores
*   **Michel Macias** - *Auditor de Seguridad & SysAdmin*
*   **Antigravity (Google CI)** - *Mentor & Arquitecto IA*

---

## 🚀 Visión General
La ingeniería social es el arte de la manipulación. En este módulo, exploramos cómo los atacantes usan el **pretexto**, la **elicitación** y la **influencia** para obtener acceso no autorizado. Veremos herramientas de vanguardia como **SET (Social-Engineer Toolkit)** y **BeEF**, además de analizar la seguridad física para prevenir intrusiones por **tailgating** o **dumpster diving**.

[![Social Engineering](https://img.shields.io/badge/Focus-Human_Factor-orange.svg?style=for-the-badge&logo=hackerone)](https://github.com/MaciasIT)
[![Cisco](https://img.shields.io/badge/Certification-Cisco_Ethical_Hacker-blue.svg?style=for-the-badge&logo=cisco)](https://www.netacad.com/)

---

## 📂 Estructura del Módulo

```bash
.
├── 📁 teoria/             # 📚 Conceptos de influencia, cheat sheets y FAQ
├── 📁 practica/           # 🛠️ Laboratorios de SET, BeEF y Escenarios Reales
├── 📁 recursos/           # 📄 Material en bruto e imágenes
├── 📁 infraestructura/    # 🐳 Escenarios Docker de Pixel Paradise (Victim Site)
└── 📄 README.md           # 🏠 Este archivo
```

---

## 🧠 Contenidos Destacados

### 🗣️ Tácticas de Manipulación
*   **Elicitación & Interrogatorio:** Cómo extraer información sin preguntar directamente.
*   **Pretexto/Suplantación:** Creación de identidades falsas (Amazon, TI, Mensajería).
*   **Métodos de Influencia:** Autoridad, Urgencia, Prueba Social y Miedo.
*   👉 **[Cheat Sheet de Ingeniería Social](./teoria/cheat_sheet_ingenieria_social.md)**

### 💻 Ataques Digitales
*   **Phishing & Spear Phishing:** Ataques masivos vs. objetivos específicos.
*   **Whaling:** Caza de "ballenas" (ejecutivos C-Level).
*   **Smishing & Vishing:** Ataques vía SMS y voz.
*   **USB Drop:** El peligro de las unidades "perdidas" en el parking.

### 🏢 Seguridad Física
*   **Tailgating & Piggybacking:** Acceso no autorizado por acompañamiento.
*   **Dumpster Diving:** Búsqueda en la basura de la organización.
*   **Shoulder Surfing:** Vigilancia por encima del hombro.

---

## 🛠️ Laboratorios Disponibles

### 📚 Guías Teóricas (sin Docker)
1.  👉 **[LAB 01: Social-Engineer Toolkit (SET)](./practica/lab_01_set_toolkit.md)**
    *   Guía de referencia: Spear-Phishing y Credential Harvesting.
2.  👉 **[LAB 02: Browser Exploitation Framework (BeEF)](./practica/lab_02_beef_framework.md)**
    *   Guía de referencia: Hooking y módulos de BeEF.

### 🐳 Labs Prácticos (con Docker)
3.  👉 **[LAB 03: SET Credential Harvester](./practica/lab_03_set_credential_harvester.md)** 🆕
    *   Clonación del portal Pixel Paradise y captura de credenciales.
    *   🏗️ [Infraestructura Docker](./infraestructura/lab_set_credential_harvester/README.md)
    *   🎯 **[Memoria Técnica (Portfolio)](../PORTFOLIO_CIBERSEGURIDAD/Memoria_Lab_4.3_SET_Credential_Harvester.md)**
4.  👉 **[LAB 04: BeEF XSS Hooking](./practica/lab_04_beef_xss_hooking.md)** 🆕
    *   Explotación de XSS para controlar navegadores con BeEF.
    *   🏗️ [Infraestructura Docker](./infraestructura/lab_beef_xss/README.md)
    *   🎯 **[Memoria Técnica (Portfolio)](../PORTFOLIO_CIBERSEGURIDAD/Memoria_Lab_4.4_BeEF_XSS_Hooking.md)**

### 🏗️ Infraestructura Base
5.  👉 **[Escenario Pixel Paradise (Base)](./infraestructura/README.md)**
    *   Despliegue base del entorno vulnerable con Docker.

---
*Este módulo es fundamental para entender que la seguridad no es solo código, sino también psicología.*
