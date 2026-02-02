# 🎓 Cisco Ethical Hacker: Itinerario de Especialización

> **Repositorio Unificado de Formación en Ciberseguridad**

Este repositorio centraliza el conocimiento, laboratorios y herramientas desarrollados durante el curso de **Cisco Ethical Hacker**, estructurado para un perfil de Administración de Sistemas y Hacking Ético.

---

## 👨‍💻 Perfil del Auditor
*   **Auditor:** Michel Macias
*   **Mentor:** Antigravity (Google Deepmind)
*   **Entorno:** Linux (Host) + Docker (Labs)

---

## 📚 Módulos del Proyecto

| Módulo | Nombre Técnico | Descripción |
| :--- | :--- | :--- |
| **Tema 3** | [**03_Recon_Vulnerability_Assessment**](./03_Recon_Vulnerability_Assessment) | Reconocimiento pasivo (DNS/Whois) y análisis de vulnerabilidades (CVSS/CVE). |
| **Tema 4** | [**04_Network_Security_Infrastructure**](./04_Network_Security_Infrastructure) | Defensa de red, proxies Squid, ataques IP y "Defense in Depth". |
| **Tema 6** | [**06_App_Vulnerability_Exploitation**](./06_App_Vulnerability_Exploitation) | Explotación de apps web, OWASP Top 10, SQLi, XSS y modelado. |

---

## 🛠️ Herramientas y Metodología
Cada módulo incluye:
*   🐳 **Docker Labs:** Entornos aislados para prácticas seguras.
*   📖 **Resumen de Combate:** Síntesis técnica de la teoría de Cisco.
*   🛠️ **Interactive Labs:** Guías paso a paso optimizadas para CLI.
*   ❓ **FAQ Técnica:** Resolviendo dudas complejas de cada nivel.

---

## 🚀 Cómo empezar
Para iniciar un laboratorio, navega al directorio del módulo correspondiente y sigue las instrucciones del `README.md` específico.

```bash
# Ejemplo: Iniciar el Proxy del Tema 4
cd 04_Network_Security_Infrastructure/docker
docker-compose up -d
```

---
*Este repositorio es un activo de conocimiento vivo. Evoluciona con cada auditoría y cada línea de código.*
