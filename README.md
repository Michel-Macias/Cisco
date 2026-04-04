# 🛡️ Cisco Ethical Hacker Course - Labs & Resources

## 📝 Descripción
Este repositorio contiene una colección exhaustiva de materiales, laboratorios prácticos y recursos teóricos desarrollados durante el curso de **Hacker Ético de Cisco**. El objetivo es proporcionar un entorno de aprendizaje estructurado para dominar las fases de un pentest, desde la planificación hasta la explotación y el reporte.

## 🚀 Estructura del Proyecto
El repositorio está organizado por módulos temáticos:

- **01_marcos_pentest:** Metodologías (OSSTMM, NIST, OWASP) y marcos de trabajo.
- **02_planificacion_alcance:** Gestión de acuerdos (NDA, SOW, RoE) y definición de objetivos.
- **03_reconocimiento_vulnerabilidades:** Técnicas de OSINT, escaneo activo (Nmap, Scapy) y análisis de vulnerabilidades.
- **04_Ataques_Ingenieria_social:** Uso de SET (Social Engineering Toolkit) y BeEF para ataques de phishing y hooking.
- **06_explotacion_web_app:** Explotación de vulnerabilidades OWASP Top 10 en entornos como DVWA y Juice Shop.
- **09_infraestructura_seguridad:** Configuración de proxies (Squid) y respuesta ante incidentes.
- **99_entorno_docker:** Infraestructura *Infrastructure as Code* (IaC) para desplegar laboratorios de ataque/defensa de forma aislada.

## 🛠️ Tecnologías y Herramientas
- **Entornos:** Docker, Kali Linux.
- **Herramientas de Red:** Nmap, Scapy, Wireshark, Squid.
- **Frameworks de Ataque:** SET, BeEF, Metasploit.
- **Objetivos Vulnerables:** DVWA, OWASP Juice Shop.

## 📦 Cómo usar este repositorio
1. **Explorar los Módulos:** Cada carpeta contiene subcarpetas de `teoria`, `practica` y `recursos`.
2. **Levantar el Laboratorio:**
   Navega a `99_entorno_docker/01_infraestructura` y ejecuta:
   ```bash
   docker-compose up -d
   ```
3. **Consultar Memorias:** En `PORTFOLIO_CIBERSEGURIDAD` encontrarás informes detallados de los laboratorios completados.

---
**Desarrollado por [Michel Macias](https://github.com/Michel-Macias)**
*Google IT Certified SysAdmin | Cybersecurity Student*
