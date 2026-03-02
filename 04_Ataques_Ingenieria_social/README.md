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

1.  👉 **[LAB 01: Social-Engineer Toolkit (SET)](./practica/lab_01_set_toolkit.md)**
    *   Clonación de sitios web y captura de credenciales.
2.  👉 **[LAB 02: Browser Exploitation Framework (BeEF)](./practica/lab_02_beef_framework.md)**
    *   Control de navegadores y ganchos XSS avanzados.
3.  👉 **[Infraestructura: Escenario Pixel Paradise](./infraestructura/README.md)**
    *   Despliegue de entorno vulnerable con Docker.

---
*Este módulo es fundamental para entender que la seguridad no es solo código, sino también psicología.*
