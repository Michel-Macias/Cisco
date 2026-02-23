# Laboratorio 3.1.2: Reconocimiento de DNS (nslookup, whois, dig)

## 🎯 Objetivos
- Utilizar `nslookup` para obtener registros DNS básicos y avanzados.
- Utilizar `whois` para identificar propietarios de dominios y rangos de red.
- Utilizar `dig` para consultas DNS detalladas y búsquedas inversas (rDNS).
- Comparar las herramientas de reconocimiento DNS en Linux.

## 📝 Escenario
El reconocimiento de DNS es fundamental para mapear la infraestructura de un objetivo. Permite descubrir servidores de correo, servidores de nombres y, potencialmente, direcciones IP internas si el DNS está mal configurado.

---

## 🛠️ Parte 1: Consultas DNS con `nslookup`

### 1. Búsquedas Básicas
| Comando | Propósito |
| :--- | :--- |
| `nslookup web-objetivo.com` | Obtener la dirección IP (Registro A). |
| `set type=ns` | Consultar los Servidores de Nombres del dominio. |
| `set type=mx` | Consultar los Servidores de Correo. |
| `set type=any` | Recuperar todos los registros disponibles (incluyendo registros de texto TXT). |

### 2. Cambiar de Servidor DNS
A veces el servidor local está "envenenado" o filtra información. Podemos forzar una consulta a un servidor específico (ej. Google 8.8.8.8):
- **Sintaxis**: `nslookup [nombre_host] [IP_DNS_Server]`
- **Ejemplo**: `nslookup netacad.com 8.8.8.8`

---

## 🔍 Parte 2: Información de Dominio con `whois`

`whois` consulta bases de datos de registradores (como ARIN, RIPE, LACNIC).
- **Dominio**: `whois cisco.com` revela fechas de registro, vencimiento y contacto técnico.
- **Redes**: `whois 72.163.5.201` revela el **NetRange** (ej. 72.163.0.0 - 72.163.255.255), lo que ayuda a definir el alcance (scope) de un pentest.

---

## 🏗️ Parte 3: El poder de `dig` (Domain Information Groper)

`dig` es la herramienta preferida por los profesionales por su formato tabular y mayor detalle.

### Diferencias Clave:
- **Default**: `dig` consulta por defecto registros **A**, mientras que `nslookup` suele consultar **A** y **AAAA** (IPv6).
- **Tabular**: La salida de `dig` agrupa los resultados en secciones: `QUESTION`, `ANSWER` y `ADDITIONAL`.

### Comandos Útiles:
- **Consulta NS específica**: `dig cisco.com @8.8.8.8 ns`
- **Consulta ANY**: `dig netacad.com any`

---

## 🔄 Parte 4: Búsquedas Inversas (rDNS)

El rDNS busca el nombre asociado a una IP mediante registros **PTR**.
- **Comando**: `dig -x [dirección_IP]`
- **Ejemplo**: `dig -x 72.163.5.201` -> Devuelve `ns1.cisco.com`.
- **Hallazgo Crítico**: Si al hacer rDNS a una IP (ej. `72.163.1.1`) obtenemos un nombre como `hsrp-72-163-1-1.cisco.com`, podemos deducir la tecnología de red utilizada (HSRP es un protocolo de redundancia de Cisco).

---

## 🧠 Reflexión del Mentor
**¿Qué herramienta usaría para comenzar un reconocimiento pasivo y por qué?**
> *Respuesta*: Empezaría con `whois` para definir el "dueño" y los rangos de red permitidos. Luego usaría `dig` para profundizar en los registros DNS, ya que es más flexible y proporciona información sobre el tiempo de vida (TTL) de los registros y el estado de la consulta.

---
*Documentación generada para el Módulo 3 - Sección 3.1*
