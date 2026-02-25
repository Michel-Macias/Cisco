# 📄 Ejemplo: Statement of Work (SOW) - Auditoría de Seguridad

**Fecha:** 25 de febrero de 2026  
**Cliente:** GlobalTech Solutions S.A.  
**Consultora:** RedTeam Ops Consulting  
**Proyecto:** Evaluación de Seguridad de Infraestructura Crítica  

---

## 1. Introducción y Propósito
Este documento define el alcance, las actividades y los entregables para el compromiso de evaluación de seguridad solicitado por GlobalTech Solutions. El objetivo es identificar debilidades en los activos expuestos que puedan comprometer la confidencialidad, integridad o disponibilidad de los servicios.

## 2. Alcance del Proyecto (Scope)
La evaluación se limitará estrictamente a los siguientes activos:

### 2.1. Activos en Alcance (In-Scope)
| Activo | Tipo | Descripción |
| :--- | :--- | :--- |
| `192.168.100.0/24` | Red Interna | Segmento de servidores de aplicaciones corporativas. |
| `vpn.globaltech.com` | IP Externa | Concentrador VPN para teletrabajo. |
| `api.globaltech.com` | Dominio | API de servicios a clientes (Frontend y Backend). |

### 2.2. Activos Excluidos (Out-of-Scope)
- Cualquier IP o dominio no listado explícitamente arriba.
- Servicios de terceros (AWS Lambda, Google Analytics).
- Equipos personales de empleados (BYOD).
- **Queda estrictamente prohibido el uso de técnicas de Denegación de Servicio (DoS).**

## 3. Metodología
Se seguirá el estándar **PTES (Penetration Testing Execution Standard)**, cubriendo las siguientes fases:
1. Pre-engagement (Este documento).
2. Recolección de Inteligencia (OSINT).
3. Modelado de Amenazas.
4. Análisis de Vulnerabilidades.
5. Explotación y Post-Explotación.
6. Reporte y Remediación.

## 4. Cronograma de Trabajo
- **Inicio de la fase técnica:** lunes, 02 de marzo de 2026.
- **Fin de la fase técnica:** viernes, 13 de marzo de 2026.
- **Entrega del reporte final:** 18 de marzo de 2026.
- **Ventana de ejecución:** 22:00h - 06:00h (Hora Local) para evitar disrupción del negocio.

## 5. Entregables
1. **Informe Ejecutivo:** Resumen de alto nivel para la dirección (CISO/CEO).
2. **Informe Técnico Detallado:** Descripción de hallazgos, evidencia (screenshots), criticidad (CVSS 4.0) y recomendaciones de mitigación.
3. **Carta de Atestación:** Documento para cumplimiento (Compliance) que certifica la realización de la prueba.

## 6. Firmas y Autorización

Al firmar este documento, el cliente autoriza a **RedTeam Ops Consulting** a realizar las pruebas descritas bajo las condiciones pactadas.

| Por el Cliente (GlobalTech Solutions) | Por la Consultora (RedTeam Ops) |
| :--- | :--- |
| **Firma:** __________________________ | **Firma:** __________________________ |
| **Nombre:** Michel Macias | **Nombre:** Director Técnico RT-Ops |
| **Cargo:** CISO | **Cargo:** Pentesting Lead |
