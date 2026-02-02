# Escaneo Agresivo de Red - Laboratorio Pentesting

**Fecha:** 18 de Diciembre de 2025  
**Herramienta:** Nmap 7.95 (Escaneo Agresivo `-A -T4`)  
**Red Objetivo:** 172.19.0.0/16 (red-pentesting-aislada)  
**Ejecutado desde:** kali-attacker (172.19.0.6)

---

## 📊 Resumen Ejecutivo

Se han escaneado **3 objetivos** en la red aislada del laboratorio:
- ✅ **WebGoat** (172.19.0.2) - 2 puertos abiertos
- ✅ **Juice Shop** (172.19.0.3) - 1 puerto abierto
- ✅ **DVWA** (172.19.0.4) - 1 puerto abierto

---

## 🎯 Target 1: WebGoat (172.19.0.2)

### Puertos Abiertos
| Puerto | Estado | Servicio | Versión |
|--------|--------|----------|---------|
| 8080/tcp | OPEN | HTTP | Apache Tomcat |
| 9080/tcp | OPEN | HTTP | Apache Tomcat (WebWolf) |

### Información del Sistema
- **OS Detectado:** Linux 4.15 - 5.19
- **Distancia de Red:** 1 hop
- **MAC Address:** 8E:E0:81:79:8E:87

### Hallazgos
- Ambos puertos responden con **HTTP Status 404** en la raíz
- WebGoat (8080) y WebWolf (9080) están activos
- Idioma detectado: Inglés

---

## 🍊 Target 2: Juice Shop (172.19.0.3)

### Puertos Abiertos
| Puerto | Estado | Servicio | Versión |
|--------|--------|----------|---------|
| 3000/tcp | OPEN | HTTP | Node.js/Express |

### Información del Sistema
- **OS Detectado:** Linux 4.15 - 5.19
- **Distancia de Red:** 1 hop
- **MAC Address:** C2:B1:E8:30:3F:C3

### Hallazgos Críticos
- **Aplicación:** OWASP Juice Shop
- **Copyright:** 2014-2026 Bjoern Kimminich
- **Licencia:** MIT
- **Cabeceras de Seguridad Detectadas:**
  - `X-Content-Type-Options: nosniff`
  - `X-Frame-Options: SAMEORIGIN`
  - `Feature-Policy: payment 'self'`
  - `Access-Control-Allow-Origin: *` ⚠️ (CORS permisivo)
- **Easter Egg:** Header `X-Recruiting: /#/jobs` (Página de reclutamiento oculta)

### Métodos HTTP Permitidos
- GET, HEAD, PUT, PATCH, POST, DELETE

---

## 🔓 Target 3: DVWA (172.19.0.4)

### Puertos Abiertos
| Puerto | Estado | Servicio | Versión |
|--------|--------|----------|---------|
| 80/tcp | OPEN | HTTP | Apache httpd 2.4.25 (Debian) |

### Información del Sistema
- **OS Detectado:** Linux 4.15 - 5.19
- **Distancia de Red:** 1 hop
- **MAC Address:** 82:39:3B:76:FE:43

### Hallazgos Críticos
- **Aplicación:** Damn Vulnerable Web Application (DVWA) v1.10 *Development*
- **Servidor Web:** Apache/2.4.25 (Debian)
- **Página por defecto:** Redirige a `login.php`

### Vulnerabilidades Detectadas por NSE Scripts

#### 🚨 VULN-1: robots.txt Expuesto
```
http-robots.txt: 1 disallowed entry
  Disallow: /
```
**Impacto:** Revela estructura del sitio web

#### 🚨 VULN-2: Cookie Sin HttpOnly Flag
```
http-cookie-flags:
  /:
    PHPSESSID:
      httponly flag not set
```
**Impacto:** Las cookies de sesión son accesibles desde JavaScript, facilitando ataques XSS para robo de sesiones.

---

## 🔍 Análisis de Seguridad

### Configuraciones Inseguras Detectadas

1. **CORS Permisivo (Juice Shop)**
   - `Access-Control-Allow-Origin: *` permite peticiones desde cualquier origen
   - Facilita ataques CSRF y exfiltración de datos

2. **Cookies Inseguras (DVWA)**
   - Flag `HttpOnly` no configurado en PHPSESSID
   - Permite robo de sesiones mediante XSS

3. **Versiones de Software Reveladas**
   - Apache 2.4.25 (DVWA) - Versión antigua, posibles CVEs
   - Información de versión facilita búsqueda de exploits

4. **Métodos HTTP Peligrosos (Juice Shop)**
   - PUT, PATCH, DELETE habilitados
   - Posible manipulación de recursos

---

## 📈 Conclusiones

- **Nivel de Riesgo Global:** ALTO
- **Hosts Comprometibles:** 3/3 (100%)
- **Vulnerabilidades Confirmadas:** 2 (DVWA)
- **Configuraciones Inseguras:** 4

### Recomendaciones

1. **Implementar HttpOnly y Secure flags** en todas las cookies de sesión
2. **Restringir CORS** a orígenes específicos
3. **Actualizar Apache** a la última versión estable
4. **Deshabilitar métodos HTTP** no necesarios (PUT, DELETE)
5. **Ocultar versiones** de software en headers HTTP

---

## 📁 Archivo de Salida

El escaneo completo se guardó en: `/tmp/nmap_aggressive_scan.txt` (dentro del contenedor Kali)
