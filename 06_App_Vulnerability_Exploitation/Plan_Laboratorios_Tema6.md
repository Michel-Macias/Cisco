# 📅 Plan de Laboratorios y Prácticas - Tema 6: Hacking Ético en Aplicaciones

Este documento define el plan de trabajo para cubrir todos los subtemas del Tema 6, asegurando que se realicen prácticas de laboratorio ("hands-on") para cada concepto crítico. El objetivo es documentar las evidencias siguiendo estándares de la industria.

> **Estado del Entorno:**
> *   **Guía de Setup:** [SETUP_LABORATORIO.md](./SETUP_LABORATORIO.md)
> *   **Contenedores:** Kali Linux, OWASP Juice Shop, DVWA, WebGoat.

---

## 🟢 Fase 1: OWASP Top 10 (2021) - Fundamentos

Objetivo: Validar cada una de las 10 categorías principales de riesgo.

### A01: Broken Access Control (Fallos de Control de Acceso)
- [ ] **Práctica 1.1: IDOR en Cesta de Compra.** (Juice Shop).
    *   *Objetivo:* Ver la cesta de otro usuario manipulando el `BasketId`.
    *   *Guía:* Ver Sección 4.8 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).
- [ ] **Práctica 1.2: Acceso a Directorios Restringidos.** (Juice Shop / FTP).
    *   *Objetivo:* Acceder a `/ftp` y descargar archivos no autorizados usando **Null Byte Injection** (`%2500.md`).
    *   *Guía:* Ver Sección 4.3 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).

### A02: Cryptographic Failures (Fallos Criptográficos)
- [ ] **Práctica 2.1: Análisis de Algoritmos Débiles.** (Juice Shop).
    *   *Objetivo:* Identificar si se usan algoritmos de hashing obsoletos (MD5/SHA1) para contraseñas o datos sensibles.
    *   *Acción:* Revisar `incidents.kdbx` exfiltrado en la práctica anterior o analizar la configuración de la BD (si es posible).

### A03: Injection (Inyección)
- [ ] **Práctica 3.1: SQL Injection (Login Bypass).** (Juice Shop / DVWA).
    *   *Objetivo:* Entrar como admin sin contraseña.
    *   *Payload:* `' or 1=1--`.
    *   *Guía:* Ver Sección 4.1 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md) y Sesión 3 en [Laboratorio-DVWA.md](./labs/Laboratorio-DVWA.md).
- [ ] **Práctica 3.2: Command Injection.** (DVWA).
    *   *Objetivo:* Ejecutar comandos del sistema operativo (`ls`, `whoami`) y obtener una **Reverse Shell**.
    *   *Guía:* Ver Sesión 2 en [Laboratorio-DVWA.md](./labs/Laboratorio-DVWA.md).
- [ ] **Práctica 3.3: Cross-Site Scripting (Reflected & Stored & DOM).**
    *   *Objetivo:* Ejecutar JS arbitrario en diferentes contextos.
    *   *Guía:* Ver Sciones 4.2 y 4.6 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).

### A04: Insecure Design (Diseño Inseguro)
- [ ] **Práctica 4.1: Threat Modeling (Modelado de Amenazas).**
    *   *Objetivo:* Crear/Revisar un diagrama de flujo de datos y aplicar STRIDE.
    *   *Recurso:* Revisar ejemplo en [Ejemplo-Modelado-Amenazas.md](./labs/Ejemplo-Modelado-Amenazas.md).

### A05: Security Misconfiguration (Configuración Incorrecta)
- [ ] **Práctica 5.1: Acceso a funcionalidades ocultas.** (Juice Shop).
    *   *Objetivo:* Encontrar y acceder al `Score Board` oculto.
    *   *Guía:* Ver Sección 4.4 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).
- [ ] **Práctica 5.2: Directory Listing.**
    *   *Objetivo:* Navegar por directorios expuestos (`/ftp`) y listar archivos sensibles.

### A06: Vulnerable and Outdated Components (Componentes Vulnerables)
- [ ] **Práctica 6.1: Fingerprinting de Tecnologías.**
    *   *Objetivo:* Identificar versiones de software (jQuery, Express, etc.) usando `whatweb` o errores del servidor.
    *   *Guía:* Ver Sección 4.5 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).

### A07: Identification and Authentication Failures (Fallos de Autenticación)
- [ ] **Práctica 7.1: Ataque de Fuerza Bruta.** (DVWA).
    *   *Objetivo:* Descubrir contraseñas usando `Hydra`.
    *   *Guía:* Ver [Guion-Demo-BruteForce.md](./labs/Guion-Demo-BruteForce.md) y Sesión 1 en [Laboratorio-DVWA.md](./labs/Laboratorio-DVWA.md).
- [ ] **Práctica 7.2: Session Hijacking (Robo de Sesión).**
    *   *Objetivo:* Robar cookie de sesión mediante XSS.
    *   *Guía:* Ver Sección 4.2.1 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).

### A08: Software and Data Integrity Failures (Fallos de Integridad)
- [ ] **Práctica 8.1: Análisis de Integridad (Simulación).**
    *   *Objetivo:* Verificar si los ficheros descargados (`package.json.bak` en Juice Shop) coinciden con versiones seguras o han sido manipulados/son inseguros.

### A09: Security Logging and Monitoring Failures (Fallos de Registro)
- [ ] **Práctica 9.1: Generación de Logs de Error.**
    *   *Objetivo:* Provocar errores (ej. 404 en `/ftp/random`) y verificar si la aplicación revela demasiada información (Stack Traces) en lugar de un log limpio interno.
    *   *Guía:* Ver Sección 4.5 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).

### A10: Server-Side Request Forgery (SSRF)
- [ ] **Práctica 10.1: SSRF en Juice Shop.**
    *   *Objetivo:* Intentar que el servidor de Juice Shop haga una petición a un recurso externo o interno no autorizado (Reto SSRF de Juice Shop).
    *   *Acción:* Investigar funcionalidad de "Image URL" o similar en Juice Shop.

---

## 🟡 Fase 2: Profundización Técnica (Cisco Tema 6.x)

Prácticas específicas para los subapartados avanzados del temario.

### 6.3 Lógica de Negocio (Business Logic)
- [ ] **Práctica 6.3.1: Manipulación de Flujos.**
    *   *Objetivo:* Intentar saltarse pasos en un proceso (ej. Checkout sin pagar).
    *   *Acción:* Investigar retos de "Business Logic" en Juice Shop (ej. cupón repetido, deuda negativa).

### 6.6 Autorización Avanzada
- [ ] **Práctica 6.6.1: HTTP Parameter Pollution (HPP).**
    *   *Objetivo:* Enviar parámetros duplicados (`?user=1&user=2`) y observar comportamiento.
    *   *Contexto:* Juice Shop o WebGoat.

### 6.8 Web Services & APIs
- [ ] **Práctica 6.8.1: Mass Assignment (Asignación Masiva).**
    *   *Objetivo:* Registrarse como Admin modificando el JSON de registro.
    *   *Guía:* Ver Sección 4.9 en [Laboratorio-Pentesting-01.md](./labs/Laboratorio-Pentesting-01.md).
- [ ] **Práctica 6.8.2: Exploración de WebGoat (SOAP/WSDL).**
    *   *Objetivo:* Iniciar WebGoat (`localhost:8080/WebGoat`) y buscar lecciones sobre Web Services o WSDL Scanning.

---

## 📝 Entregables Estándar

Para cada práctica nueva no documentada, generar un reporte con el siguiente formato:

1.  **Título de la Vulnerabilidad** (CWE si es posible).
2.  **Descripción:** Qué es y por qué ocurre.
3.  **Evidencia (PoC):** Captura de pantalla o comando exacto.
4.  **Impacto:** Qué permite hacer al atacante.
5.  **Mitigación:** Cómo se solucionaría.

> Utilizar el formato de los laboratorios existentes en `labs/` como plantilla.
