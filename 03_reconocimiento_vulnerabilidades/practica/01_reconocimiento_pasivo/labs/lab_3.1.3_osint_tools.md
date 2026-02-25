# Laboratorio 3.1.3: Herramientas OSINT (SpiderFoot y Recon-ng)

## 🎯 Objetivos
- Utilizar **SpiderFoot** para la automatización de recolección de inteligencia.
- Configurar módulos y claves de API en herramientas OSINT.
- Utilizar el framework **Recon-ng** para gestionar investigaciones mediante espacios de trabajo.
- Realizar reconocimiento sobre dominios, correos y vulneraciones de datos.

---

## 🕷️ Parte 1: SpiderFoot (Automatización OSINT)

SpiderFoot es una herramienta de automatización que consulta más de 200 fuentes de datos.

### Casos de Uso Comunes:
1. **Footprint**: Recolección de información pública (IPs, dominios, correos) sin interactuar con el objetivo.
2. **Investigate**: Análisis profundo cuando se tiene una sospecha de amenaza.
3. **Passive**: El modo más seguro para pentesting, evita cualquier contacto directo.

### Módulos Destacados:
| Módulo | Función |
| :--- | :--- |
| `sfp_accounts` | Busca cuentas en redes sociales (eBay, Reddit, etc). |
| `sfp_emailcrawlr` | Extrae direcciones de correo asociadas al dominio. |
| `sfp_ipapicom` | Proporciona geolocalización de direcciones IP. |
| `sfp_intellx` | Busca datos en Intelligence X (vulneraciones de datos). |

---

## 🛠️ Parte 2: Recon-ng (El Framework OSINT)

Recon-ng es un framework modular (estilo Metasploit) diseñado para realizar reconocimiento web.

### Comandos de Gestión:
- `workspaces create [nombre]`: Crea un entorno aislado para un cliente o proyecto.
- `workspaces list`: Lista los entornos existentes.
- `marketplace install [modulo]`: Instala módulos desde el repositorio oficial.

### Flujo de Trabajo Típico:
1. **Añadir Objetivo**: `db insert domains` -> `h4cker.org`
2. **Cargar Módulo**: `modules load recon/domains-hosts/google_site_web`
3. **Ejecutar**: `run`
4. **Reportar**: `modules load reporting/html` -> `run`

---

## 🧠 Reflexión del Mentor
**¿Por qué herramientas como SpiderFoot o Recon-ng son esenciales comparadas con búsquedas manuales?**
> *Respuesta*: Por la **correlación de datos**. Estas herramientas no solo buscan información, sino que la conectan. Si SpiderFoot encuentra un correo y luego lo busca en bases de datos de filtraciones, te ahorra horas de trabajo manual y permite visualizar la superficie de ataque de forma integral.

---
*Documentación generada para el Módulo 3 - Sección 3.1*
