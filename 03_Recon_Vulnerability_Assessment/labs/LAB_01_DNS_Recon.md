# 🛠️ LAB 01: Reconocimiento Pasivo con DNS y Whois

## Objetivos
*   Dominar `nslookup` para obtención de dominios e IPs.
*   Utilizar `whois` para identificar propietarios y rangos de red.
*   Comparar la potencia de `nslookup` vs `dig`.
*   Realizar búsquedas inversas (rDNS) para mapear infraestructuras.

---

## 💻 Escenario
Antes de cualquier compromiso técnico, un pirata ético debe obtener toda la información posible de forma encubierta. El DNS es una fuente de datos pública masiva que revela servidores de correo, proveedores de hosting y rangos de red corporativos.

---

## 🚀 Paso 1: Explorando con `nslookup`

### 1.1 Resolución Básica
Abre tu terminal y consulta el registro A (IPv4) de un dominio:
```bash
nslookup cisco.com
```

### 1.2 Modo Interactivo y Registros MX/NS
Entra en modo interactivo para realizar múltiples consultas:
```bash
nslookup
> set type=mx
> cisco.com
> set type=ns
> cisco.com
> exit
```
*   **MX:** Revela los servidores de correo (objetivos para phishing o ataques de relay).
*   **NS:** Revela los servidores con autoridad sobre el dominio.

---

## 🔎 Paso 2: Inteligencia de Dominio con `whois`

El comando `whois` no consulta al servidor DNS, sino a la base de datos del registrador.

### 2.1 Identificando la organización
```bash
whois cisco.com
```
Observa los campos `OrgName`, `City` y `Address`. ¿Quién es el dueño real?

### 2.2 Inteligencia de Red (Rangos IP)
Si conoces una IP del objetivo, puedes encontrar todo su bloque de red:
```bash
whois 72.163.5.201
```
*   Busca el campo `NetRange` y `CIDR` (ej: `72.163.0.0/16`). Esto te indica qué otras IPs pertenecen a la misma empresa.

---

## ⚡ Paso 3: La potencia de `dig` vs `nslookup`

### 3.1 Consulta Detallada
`dig` es la herramienta estándar para administradores de red avanzados.
```bash
dig cisco.com
```
*   **Tip:** Observa la sección `ANSWER SECTION` y las estadísticas al final (`Query time`).

### 3.2 Consultas Específicas
Para obtener registros de texto (TXT) que a menudo contienen validaciones de servicios como Google o Facebook:
```bash
dig cisco.com TXT
```

---

## 🔄 Paso 4: Búsquedas Inversas (Reverse DNS)

Si tienes una dirección IP y quieres saber qué nombre de host tiene asignado (muy útil para identificar servidores específicos en un rango):

```bash
dig -x 72.163.5.201
```
O de forma más sencilla:
```bash
host 72.163.5.201
```

---

## 🧠 Reflexión Técnica
¿Por qué preferimos `dig` sobre `nslookup` en una auditoría profesional?
1.  **Precisión:** Muestra exactamente la respuesta del servidor sin interpretación excesiva.
2.  **Detalle:** Incluye flags DNS (QR, RD, RA) cruciales para entender problemas de configuración.
3.  **Scripting:** Su salida es mucho más fácil de procesar con herramientas como `grep`, `awk` o `sed`.

---
> **Reto:** Intenta encontrar los registros TXT de `google.com`. ¿Ves alguna validación de SPF para seguridad de correo?
