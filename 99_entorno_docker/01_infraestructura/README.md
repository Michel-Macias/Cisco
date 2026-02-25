# 🐳 Entorno Unificado de Laboratorios (Docker)

Este directorio, `99_entorno_docker`, es el corazón práctico del repositorio. Proporciona un entorno de pentesting completo, aislado y reproducible mediante contenedores, junto con toda la documentación de las auditorías realizadas.

---

## 🎯 Estructura del Entorno

```bash
99_entorno_docker/
├── 📁 01_infraestructura/      # Orquestación con Docker Compose
├── 📁 02_guias_laboratorio/     # Manuales paso a paso de explotación
├── 📁 03_informes_resultados/   # Reportes ejecutivos y técnicos (Pentest)
├── 📁 04_scripts_utilidades/    # Automatización y criptografía
├── 📁 05_evidencias_recursos/   # BBDD, hashes y backdoors recuperados
└── 📁 06_retos/                # Desafíos CTF y criptográficos
```

---

## 📚 Auditorías y Laboratorios

### Laboratorio 01: OWASP Juice Shop
*   **Guía Técnica:** `02_guias_laboratorio/laboratorio_pentesting_01.md`
*   **Reporte Ejecutivo:** `03_informes_resultados/reporte_ejecutivo_pentest_lab01.md`
*   **Resumen:** Auditoría completa con 8 vulnerabilidades críticas (SQLi, XSS, Hijacking, BAC).

### Laboratorio 02: DVWA
*   **Guía Técnica:** `02_guias_laboratorio/laboratorio_dvwa.md`
*   **Reporte Ejecutivo:** `03_informes_resultados/reporte_ejecutivo_pentest_dvwa.md`
*   **Resumen:** Explotación de RCE, SQLi, LFI y carga de webshells.

---

## 🚀 Inicio Rápido

### 1. Lanzar el Entorno
Desde `01_infraestructura/`:
```bash
docker compose up -d
```

### 2. Acceso a Objetivos (Víctimas)
*   **Juice Shop:** [http://localhost:3000](http://localhost:3000)
*   **WebGoat:** [http://localhost:8080](http://localhost:8080)
*   **DVWA:** [http://localhost:8081](http://localhost:8081)
*   **bWAPP:** [http://localhost:8082](http://localhost:8082)
*   **DVGA (GraphQL):** [http://localhost:5013](http://localhost:5013)

### 3. Acceso al Contenedor de Ataque (Kali)
```bash
docker exec -it kali-attacker /bin/bash
```
*Arsenal pre-instalado:* `nmap`, `hydra`, `sqlmap`, `metasploit`, `ffuf`.

---

## ✅ Checklist de Evolución

- [x] **Consolidación:** Migración a estructura modular profesional.
- [x] **Documentación:** Normalización de nombres de archivos a `snake_case`.
- [x] **Reportes:** Generación de informes ejecutivos de alta calidad.
- [x] **Tooling:** Automatización del despliegue en Kali.
- [ ] **Expansión:** Implementar escenarios de Active Directory (futuros módulos).
- [ ] **Nuevos Retos:** Ampliar la sección de criptografía y CTF.

---
*Este entorno garantiza libertad total para "romper" sin riesgo para el sistema anfitrión.*
