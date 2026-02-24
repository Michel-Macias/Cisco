# Repositorio de Laboratorios de Pentesting

Este directorio, `contenedores_pruebas`, sirve como un repositorio completo para documentación y práctica de pentesting (pruebas de penetración). Contiene registros detallados de configuraciones de laboratorio, ejercicios prácticos, y el descubrimiento y explotación de vulnerabilidades en entornos controlados.

## 🎯 Estructura del Proyecto

```
contenedores_pruebas/ (Ubicado en Cisco/contenedores_pruebas)
├── docker-compose.yml          # Entorno centralizado de ataques y víctimas
├── Labs/                       # Documentación de laboratorios e investigaciones
│   ├── Laboratorio-Pentesting-01.md
│   ├── Laboratorio-DVWA.md
│   ├── Lab_Organization_Info.md (Nuevo)
│   ├── Reporte-Ejecutivo-Pentest-Lab01.md
│   ├── Reporte-Ejecutivo-Pentest-DVWA.md
│   ├── Escaneo-Nmap-Red-Completa.md
│   ├── Informe-Final-Auditoria-Completa.md
│   └── retos/                  # Retos específicos
├── scripts/                    # Scripts de configuración y automatización
│   └── setup-kali.sh          # Script para poner a punto Kali
└── decrypt.py                  # Script de criptografía RSA
```

## 📚 Laboratorios Disponibles

### Laboratorio 01: OWASP Juice Shop
**Archivo:** `Labs/Laboratorio-Pentesting-01.md`  
**Reporte Ejecutivo:** `Labs/Reporte-Ejecutivo-Pentest-Lab01.md`

Laboratorio completo sobre OWASP Juice Shop con **8 vulnerabilidades documentadas**:
- **VULN-01:** Inyección SQL (SQLi) - Bypass de autenticación
- **VULN-02:** Cross-Site Scripting (XSS) con bypass de filtros
- **VULN-03:** Session Hijacking mediante XSS
- **VULN-04:** Broken Access Control - Exfiltración de base de datos KeePass
- **VULN-05:** Security Misconfiguration - Exposición del Scoreboard
- **VULN-06:** Improper Error Handling - Fuga de información (Stack Traces)
- **VULN-07:** DOM-based XSS - Parámetro de búsqueda
- **VULN-08:** Sensitive Data Exposure - Directory Listing (/ftp)

### Laboratorio DVWA
**Archivo:** `Labs/Laboratorio-DVWA.md`  
**Reporte Ejecutivo:** `Labs/Reporte-Ejecutivo-Pentest-DVWA.md`

Laboratorio sobre Damn Vulnerable Web Application con **7 vulnerabilidades críticas**:
- Command Injection (RCE)
- SQL Injection
- File Upload (Webshell)
- XSS Stored
- Credenciales Débiles
- Local File Inclusion (LFI)
- CSRF

## 🚀 Inicio Rápido

### Lanzar el Entorno
```bash
docker compose up -d
```

### Acceder a los Servicios
- **Juice Shop:** http://localhost:3000
- **WebGoat:** http://localhost:8080
- **WebWolf:** http://localhost:9080
- **DVWA:** http://localhost:8081
- **bWAPP:** http://localhost:8082
- **Mutillidae II:** http://localhost:8083
- **DVGA (GraphQL):** http://localhost:5013

### Acceder al Contenedor de Ataque (Kali)
```bash
docker exec -it kali-attacker /bin/bash
```

**Configurar herramientas (dentro de Kali):**
```bash
bash /scripts/setup-kali.sh
```

## 🎓 Uso Educativo

Este repositorio está diseñado para:
- **Estudiantes de Ciberseguridad:** Aprender técnicas de pentesting en un entorno seguro
- **Profesionales:** Practicar y documentar vulnerabilidades comunes
- **Formadores:** Utilizar como material de referencia para cursos

Cada laboratorio incluye:
- Configuración paso a paso del entorno
- Herramientas utilizadas y su instalación
- Descripción detallada de cada vulnerabilidad
- Evidencias de explotación (payloads, comandos, capturas)
- Mitigaciones recomendadas
- Reporte ejecutivo profesional

---

## ✅ Plan de Trabajo (Checklist)

- [x] **Automatización:** Crear un `docker-compose.yml` para el entorno existente
- [x] **Documentación:** Renombrar `GEMINI.md` a `README.md` y añadir este checklist
- [x] **Integración de Script:** Documentar y crear un reto en un laboratorio para `decrypt.py`
- [x] **Ampliación de Laboratorio:** Añadir más vulnerabilidades explotadas al `Laboratorio-Pentesting-01.md` (8 vulnerabilidades documentadas)
- [x] **Reportes Ejecutivos:** Crear reportes profesionales para Lab01 y DVWA
- [x] **Infraestructura Avanzada:** Añadir bWAPP, Mutillidae y DVGA
- [x] **Tooling:** Crear script `setup-kali.sh` con el arsenal mínimo necesario
- [ ] **Nuevo Laboratorio:** Crear `Laboratorio-Pentesting-02.md` con WebGoat
- [ ] **Video Demostración:** Grabar demo de explotación de vulnerabilidades

