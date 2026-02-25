# 🛡️ Explotando Vulnerabilidades Basadas en Aplicaciones

> **Cisco Ethical Hacker - Profundización en el Tema 6**

Este repositorio es una recopilación avanzada de recursos teóricos, prácticos y visuales diseñados para dominar la identificación y explotación de vulnerabilidades en aplicaciones web y de escritorio, siguiendo el currículo de **Cisco Ethical Hacker**.

---

## 👨‍💻 Autores
Este proyecto ha sido desarrollado con rigor técnico y pasión por la ciberseguridad por:
*   **Michel Macias** - *Administrador de Sistemas e Investigador de Seguridad*
*   **Antigravity (Google CI)** - *Mentor y Asistente Técnico IA*


## 🚀 Vision General
El objetivo de este repositorio es proporcionar una ruta de aprendizaje estructurada sobre el **Tema 6: Explotación de Vulnerabilidades Basadas en Aplicaciones**. No se trata solo de conocer las vulnerabilidades, sino de entender su lógica interna, cómo detectarlas y cómo mitigarlas eficazmente.

[![Cybersecurity](https://img.shields.io/badge/Focus-Cybersecurity-red.svg?style=for-the-badge&logo=opsgenie)](https://github.com/MaciasIT)
[![Cisco](https://img.shields.io/badge/Certification-Cisco_Ethical_Hacker-blue.svg?style=for-the-badge&logo=cisco)](https://www.netacad.com/)
[![License](https://img.shields.io/badge/License-Educational-green.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

---

## 📂 Estructura del Módulo

```bash
.
├── 📁 teoria/             # 📚 Manual de Combate y FAQ
├── 📁 practica/           # 🛠️ Guías de laboratorios (Juice Shop, DVWA, etc.)
├── 📁 recursos/           # 🧠 Mapas mentales e imágenes de apoyo
├── 📁 infraestructura/    # 🐳 Escenarios Docker y setup
└── 📄 README.md           # 🏠 Este archivo
```

## 🚀 Despliegue del Laboratorio (Quick Start)
¿Quieres empezar a hackear ya? Hemos automatizado todo el entorno (Kali + Víctimas) con Docker.
👉 **[VER GUÍA DE INSTALACIÓN PASO A PASO](./infraestructura/setup_laboratorio.md)**


---

## 🧠 Mapas Mentales (Visual Learning)
La comprensión visual es clave en el hacking ético. Hemos desarrollado una serie de mapas mentales que desglosan cada categoría de vulnerabilidad:

| Categoría | Recurso Visual |
| :--- | :--- |
| **Visión General Ch. 6** | [Ver Mapa](./recursos/img/mindmap_ethical_hacker_ch6.png) |
| **OWASP Top 10** | [Ver Mapa](./recursos/img/mindmap_owasp_top10_espanol.png) |
| **Inyecciones (SQLi, LDAP)** | [Ver Mapa](./recursos/img/mindmap_inyeccion_espanol.png) |
| **Autenticación** | [Ver Mapa](./recursos/img/mindmap_autenticacion_espanol.png) |
| **Autorización** | [Ver Mapa](./recursos/img/mindmap_autorizacion_espanol.png) |
| **Lógica de Negocio** | [Ver Mapa](./recursos/img/mindmap_logica_negocio_espanol.png) |
| **Modelado de Amenazas** | [Ver Mapa](./recursos/img/mindmap_modelado_amenazas_espanol.png) |


> *Nota: Puedes encontrar todos los originales en alta resolución en la carpeta `/recursos/img/`.*

---

## 🛠️ Laboratorios de Práctica Real
El aprendizaje se consolida en la práctica. Este repo documenta la explotación en entornos controlados:

*   **[OWASP Juice Shop](./practica/laboratorio_pentesting_01.md):** Inyecciones, XSS y manipulación de parámetros en aplicaciones modernas.
*   **[DVWA (Damn Vulnerable Web App)](./practica/laboratorio_dvwa.md):** Ataques de fuerza bruta con Hydra y gestión de sesiones.
*   **[Threat Modeling](./practica/ejemplo_modelado_amenazas.md):** Análisis preventivo de superficies de ataque.


---

## 📑 Contenido Teórico Destacado
*   **Análisis de Fingerprinting:** Técnicas de reconocimiento pasivo y activo.
*   **Vulnerabilidades de Client-Side vs Server-Side:** Entendiendo el flujo de datos.
*   **Broken Access Control:** Cómo los pillos saltan las vallas lógicas.
*   **Seguridad en API REST:** Desafíos modernos en la comunicación entre servicios.


---

## ⚖️ Descargo de Responsabilidad (Disclaimer)
Este material tiene fines **estrictamente educativos** y de formación ética. El acceso no autorizado a sistemas informáticos es un delito. Utiliza estos conocimientos siempre dentro de marcos legales, con autorización previa o en entornos de laboratorio controlados.

---
*Hecho con ❤️ en el entorno de Google Deepmind por Antigravity y Michel Macias.*
