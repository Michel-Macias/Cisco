# 🛡️ Análisis de Vulnerabilidades - Labs

> Metodología para planificar, ejecutar y evaluar escaneos de vulnerabilidades de forma profesional.

---

## 🧪 Laboratorios

| # | Lab | Tema | Infra Docker | Memoria Final |
|:--|:---|:---|:---|:---|
| 3.3.1 | [Escaneo Industrial](./labs/lab_3.3.1_vuln_scanning_logic.md) | Escaneo de PLCs y lógica de red OT. | 🐳 [Docker](../../infraestructura/lab_3.3.1_vuln_scanning/) | ✅ [Memoria Final](../../../PORTFOLIO_CIBERSEGURIDAD/Memoria_Lab_3.3.1_Industrial_Scanning.md) |
| 3.4.1 | [Investigación de Fuentes de Vulnerabilidades](./labs/lab_3.4.1_investigacion_fuentes.md) | CVE, CWE, CVSS, NVD | — | |

---

## 🐳 Infraestructura Docker Disponible

### Lab 3.3.1 - Red Industrial Simulada
Simula una planta industrial con 6 dispositivos para practicar la planificación de escaneos.

```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose up -d
docker exec -it lab331_atacante sh
```

| Dispositivo | IP | Fragilidad |
|:---|:---|:---|
| Servidor Linux | `172.30.0.10` | Baja |
| Servidor Windows | `172.30.0.11` | Baja |
| Impresora HP | `172.30.0.20` | 🔴 Alta |
| PLC Siemens | `172.30.0.21` | 🔴 Muy Alta |
| Firewall Edge | `172.30.0.254` | 🟡 Media |
| Atacante (Nmap) | `172.30.0.100` | — |

---

## 📖 Conceptos Clave
- **CVE:** Identificador único de una vulnerabilidad específica.
- **CWE:** Tipo de debilidad de software que causa la vulnerabilidad.
- **CVSS:** Puntuación numérica (0-10) del impacto de una vulnerabilidad.

---
*Módulo 03 - Sección 3.3/3.4 - Cisco Ethical Hacker*
