# 📄 DECLARACIÓN DE TRABAJO (SOW - *Statement of Work*)

## Documento de Ejemplo para Estudio — Módulo 2

> [!NOTE]
> **Disclaimer:** Este documento es un ejemplo educativo creado para ilustrar la estructura
> y contenido de un SOW profesional en la industria del pentesting. Los nombres de empresas,
> direcciones IP, dominios y personas son completamente ficticios.

---

## INFORMACIÓN DEL DOCUMENTO

| Campo                    | Detalle                                          |
| ------------------------ | ------------------------------------------------ |
| **ID del Proyecto**      | PT-2026-0042                                     |
| **Versión del Documento**| v1.2                                             |
| **Clasificación**        | CONFIDENCIAL                                     |
| **Fecha de Emisión**     | 15 de enero de 2026                              |
| **Última Revisión**      | 20 de enero de 2026                              |
| **Preparado por**        | CyberShield Consulting S.L.                      |
| **Preparado para**       | NovaTech Solutions S.L.                          |

---

## 1. PARTES INVOLUCRADAS

### 1.1. Cliente (Parte Contratante)

| Campo              | Detalle                                             |
| ------------------ | --------------------------------------------------- |
| **Empresa**        | NovaTech Solutions S.L.                             |
| **CIF**            | B-12345678                                          |
| **Dirección**      | Calle Innovación 42, 28001 Madrid, España           |
| **Representante**  | Dña. María González López — Directora de TI (CTO)  |
| **Email**          | m.gonzalez@novatech-solutions.es                    |
| **Teléfono**       | +34 91 XXX XX XX                                    |

### 1.2. Proveedor (Parte Ejecutora)

| Campo                | Detalle                                                     |
| -------------------- | ----------------------------------------------------------- |
| **Empresa**          | CyberShield Consulting S.L.                                |
| **CIF**              | B-87654321                                                  |
| **Dirección**        | Avenida de la Ciberseguridad 7, 48001 Bilbao, España       |
| **Director del Proyecto** | D. Alejandro Ruiz Fernández — Lead Pentester (OSCP, CEH) |
| **Email**            | a.ruiz@cybershield-consulting.es                            |
| **Teléfono**         | +34 94 XXX XX XX                                            |

---

## 2. RESUMEN EJECUTIVO

NovaTech Solutions S.L. (en adelante, "el Cliente") ha contratado los servicios de CyberShield Consulting S.L. (en adelante, "el Proveedor") para llevar a cabo una **evaluación de seguridad ofensiva (prueba de penetración)** sobre su infraestructura de red corporativa y aplicaciones web críticas.

El objetivo principal es **identificar vulnerabilidades explotables** que puedan comprometer la confidencialidad, integridad o disponibilidad de los activos del Cliente, y proporcionar recomendaciones de remediación priorizadas según su nivel de riesgo.

Esta evaluación se realiza en el contexto de:
- Cumplimiento con los requisitos de **PCI DSS v4.0** (el Cliente procesa pagos con tarjeta).
- Requisitos internos de la política de gobernanza de seguridad corporativa.
- Auditoría anual obligatoria dictada por el CISO.

---

## 3. OBJETIVO DEL PROYECTO

Los objetivos específicos de este engagement son:

1. **Evaluar la postura de seguridad externa** de la infraestructura perimetral del Cliente.
2. **Identificar vulnerabilidades críticas y altas** en las aplicaciones web en producción.
3. **Simular ataques realistas** desde la perspectiva de un atacante externo (Prueba de Entorno Parcialmente Conocido / Caja Gris).
4. **Evaluar la capacidad de detección y respuesta** del equipo de seguridad del Cliente (Blue Team).
5. **Generar un informe ejecutivo y técnico** con hallazgos, evidencias y recomendaciones de remediación.

---

## 4. ALCANCE DEL TRABAJO (SCOPE)

### 4.1. Activos Dentro del Alcance (In-Scope) ✅

Los siguientes activos han sido explícitamente autorizados para pruebas:

#### 4.1.1. Infraestructura de Red Externa

| Activo                     | Dirección / Rango              | Descripción                        |
| -------------------------- | ------------------------------ | ---------------------------------- |
| Firewall perimetral        | `203.0.113.1`                  | FortiGate 600E                     |
| Servidor Web Producción    | `203.0.113.10`                 | Nginx / Ubuntu 22.04 LTS          |
| Servidor de API            | `203.0.113.11`                 | Node.js / Express                  |
| Servidor de correo         | `203.0.113.20`                 | Postfix + Dovecot                  |
| VPN Gateway                | `203.0.113.30`                 | OpenVPN                            |
| Rango de red DMZ           | `203.0.113.0/28`               | 14 hosts utilizables               |

#### 4.1.2. Aplicaciones Web

| Aplicación                 | URL                                     | Tecnología           |
| -------------------------- | --------------------------------------- | -------------------- |
| Portal de clientes         | `https://portal.novatech-solutions.es`  | React + API REST     |
| Tienda online              | `https://shop.novatech-solutions.es`    | WooCommerce / WP     |
| Panel de administración    | `https://admin.novatech-solutions.es`   | Angular + Django     |
| API Pública v2             | `https://api.novatech-solutions.es/v2`  | GraphQL              |

#### 4.1.3. Redes Inalámbricas (WiFi)
- SSID corporativo: `NovaTech-Corp` (WPA3-Enterprise)
- SSID invitados: `NovaTech-Guest` (WPA2-PSK)

### 4.2. Activos Fuera del Alcance (Out-of-Scope) ❌

Los siguientes activos están **estrictamente prohibidos** y no deben ser objetivo de ninguna prueba bajo ninguna circunstancia:

| Activo                                   | Justificación                                                      |
| ---------------------------------------- | ------------------------------------------------------------------ |
| Infraestructura de AWS (cuenta `prod-eu`) | Requiere autorización separada de AWS según su Política de Pentesting |
| Base de datos de producción `db-master`  | Riesgo de interrupción del servicio para +50,000 clientes activos  |
| Servidores de RRHH (`10.10.5.0/24`)     | Contienen datos personales protegidos por RGPD                     |
| Infraestructura de terceros (Cloudflare CDN) | No propiedad del Cliente                                       |
| Dispositivos IoT de climatización        | Sistemas SCADA / OT fuera de alcance                               |
| Red del SOC / SIEM (`10.10.99.0/24`)    | Podría comprometer la capacidad de detección del Blue Team         |

> [!WARNING]
> **Cualquier actividad sobre activos fuera del alcance constituirá una violación del contrato
> y podrá tener consecuencias legales.**

### 4.3. Tipo de Prueba

| Parámetro              | Valor                                                                  |
| ---------------------- | ---------------------------------------------------------------------- |
| **Perspectiva**        | Externa (desde Internet) + Interna limitada (acceso a red de invitados)|
| **Nivel de conocimiento** | Entorno Parcialmente Conocido (Caja Gris)                           |
| **Credenciales proporcionadas** | 2 cuentas de usuario estándar para el portal de clientes      |
|                        | 1 cuenta de administrador limitado para el panel de administración     |
| **Metodologías**       | OWASP Testing Guide v4.2, PTES, NIST SP 800-115                      |

---

## 5. SERVICIOS Y ENTREGABLES

### 5.1. Servicios a Realizar

| # | Servicio                                         | Descripción                                                      |
|---|--------------------------------------------------|------------------------------------------------------------------|
| 1 | Reconocimiento y enumeración                     | OSINT, enumeración DNS, descubrimiento de servicios              |
| 2 | Escaneo de vulnerabilidades                      | Análisis automatizado y manual de vulnerabilidades               |
| 3 | Explotación controlada                           | Intento de explotación de vulnerabilidades descubiertas          |
| 4 | Post-explotación                                 | Escalada de privilegios, movimiento lateral, persistencia        |
| 5 | Pruebas de aplicaciones web                      | OWASP Top 10 2021, pruebas de lógica de negocio                 |
| 6 | Pruebas de redes inalámbricas                    | Evaluación de seguridad WiFi on-site                             |
| 7 | Ingeniería social (limitada)                     | Campaña de phishing simulado (máx. 50 correos, preaprobados)    |

### 5.2. Entregables

| # | Entregable                           | Formato       | Fecha de Entrega              |
|---|--------------------------------------|---------------|-------------------------------|
| 1 | Informe Ejecutivo (para dirección)   | PDF           | 5 días hábiles post-pruebas   |
| 2 | Informe Técnico Detallado            | PDF + HTML    | 10 días hábiles post-pruebas  |
| 3 | Evidencias y capturas (PoC)          | Archivo ZIP cifrado (AES-256) | Junto al informe técnico |
| 4 | Matriz de riesgos (CVSS v3.1)       | Excel / CSV   | Junto al informe técnico      |
| 5 | Presentación de resultados           | Reunión presencial + PPT | 12 días hábiles post-pruebas |
| 6 | Re-test de vulnerabilidades críticas | PDF           | 30 días después de la remediación |

---

## 6. CRONOGRAMA DEL PROYECTO

| Fase                          | Fecha de Inicio | Fecha de Fin  | Duración     |
| ----------------------------- | --------------- | ------------- | ------------ |
| **Fase 0:** Kick-off y preparación | 03/02/2026  | 04/02/2026    | 2 días       |
| **Fase 1:** Reconocimiento    | 05/02/2026      | 07/02/2026    | 3 días       |
| **Fase 2:** Escaneo y enumeración | 08/02/2026  | 10/02/2026    | 3 días       |
| **Fase 3:** Explotación       | 11/02/2026      | 15/02/2026    | 5 días       |
| **Fase 4:** Post-explotación  | 16/02/2026      | 17/02/2026    | 2 días       |
| **Fase 5:** Pruebas web (OWASP) | 18/02/2026   | 22/02/2026    | 5 días       |
| **Fase 6:** WiFi + Ing. social | 23/02/2026    | 24/02/2026    | 2 días       |
| **Fase 7:** Análisis y reporting | 25/02/2026   | 28/02/2026    | 4 días       |
| **Fase 8:** Entrega y presentación | 05/03/2026  | 05/03/2026    | 1 día        |
| **Fase 9:** Re-test (post-remediación) | 06/04/2026 | 08/04/2026 | 3 días       |

**Duración total del engagement:** ~30 días laborales (incluyendo re-test).

---

## 7. EQUIPO DEL PROYECTO

### 7.1. Equipo del Proveedor (CyberShield)

| Rol                    | Nombre                  | Certificaciones           | Responsabilidad                       |
| ---------------------- | ----------------------- | ------------------------- | ------------------------------------- |
| Lead Pentester / PM    | Alejandro Ruiz          | OSCP, CEH, GPEN           | Dirección técnica, reporting          |
| Pentester Senior       | Elena Martínez          | OSWE, eWPTX               | Pruebas web y API                     |
| Pentester Junior       | Carlos Navarro          | CEH, CompTIA PenTest+     | Escaneo de red, reconocimiento        |
| Ing. Social Specialist | Laura Sánchez           | GSE, Social Eng. Cert.    | Campaña de phishing                   |

### 7.2. Puntos de Contacto del Cliente (NovaTech)

| Rol                         | Nombre              | Contacto                         |
| --------------------------- | -------------------- | -------------------------------- |
| Sponsor / CTO               | María González       | m.gonzalez@novatech-solutions.es |
| Contacto técnico primario    | Pedro Álvarez (SysAdmin) | p.alvarez@novatech-solutions.es |
| Contacto de emergencia 24/7  | SOC (Centro de Operaciones) | soc@novatech-solutions.es / +34 91 XXX XX 99 |
| Legal / CISO                | Ana Beltrán           | a.beltran@novatech-solutions.es  |

---

## 8. REQUISITOS PREVIOS (PREREQUISITES)

Para el correcto desarrollo del engagement, el Cliente deberá proporcionar al Proveedor **antes de la fecha de inicio**:

- [ ] **Carta de Autorización firmada** ("Authorization Letter" / "Get Out of Jail Free Card").
- [ ] **Diagrama de red actualizado** de la infraestructura en alcance.
- [ ] **Credenciales de prueba** según lo acordado en la sección 4.3.
- [ ] **Lista de contactos de emergencia** con disponibilidad 24/7 durante la ventana de pruebas.
- [ ] **Lista blanca (whitelist)** de las IPs de origen del Proveedor en el IDS/IPS (si aplica y se acuerda).
- [ ] **NDA firmado** (Acuerdo de No Divulgación unilateral).
- [ ] **Confirmación de backup** de sistemas críticos antes del inicio de pruebas.
- [ ] **Notificación interna** a los equipos de IT/SOC (si la prueba NO es de tipo "blind/ciega").

---

## 9. SUPUESTOS Y RESTRICCIONES

### 9.1. Supuestos
- El Cliente garantiza que tiene la autoridad legal para solicitar estas pruebas.
- Los sistemas en alcance estarán operativos y accesibles durante la ventana de pruebas.
- Cualquier cambio en la infraestructura durante las pruebas será comunicado al Proveedor inmediatamente.
- El Cliente cuenta con backups verificados de todos los sistemas en alcance.

### 9.2. Restricciones
- Las pruebas de **Denegación de Servicio (DoS/DDoS) están prohibidas**, salvo autorización explícita por escrito caso por caso.
- No se realizarán ataques de **fuerza bruta masivos** contra sistemas de producción.
- Los **datos reales de clientes** encontrados durante las pruebas no serán extraídos, almacenados localmente ni incluidos en los informes sin anonimización.
- El Proveedor no será responsable de interrupciones de servicio derivadas de la explotación autorizada de vulnerabilidades, siempre que se hayan seguido las RoE.

---

## 10. CONDICIONES ECONÓMICAS

### 10.1. Desglose de Costes

| Concepto                             | Días/Persona | Tarifa (€/día) | Total (€)     |
| ------------------------------------ | ------------ | -------------- | ------------- |
| Lead Pentester                       | 25           | 800 €          | 20.000 €      |
| Pentester Senior (web)               | 15           | 650 €          | 9.750 €       |
| Pentester Junior                     | 20           | 400 €          | 8.000 €       |
| Especialista en Ingeniería Social    | 3            | 700 €          | 2.100 €       |
| Re-test (post-remediación)           | 3            | 650 €          | 1.950 €       |
| **Subtotal**                         |              |                | **41.800 €**  |
| IVA (21%)                            |              |                | 8.778 €       |
| **TOTAL (IVA incluido)**             |              |                | **50.578 €**  |

### 10.2. Calendario de Pagos

| Hito                                     | % del Total | Importe   | Fecha de Pago         |
| ---------------------------------------- | ----------- | --------- | --------------------- |
| Firma del contrato / Kick-off            | 30%         | 15.173 €  | 03/02/2026            |
| Entrega del informe técnico              | 50%         | 25.289 €  | 10/03/2026            |
| Entrega del re-test + cierre del proyecto| 20%         | 10.116 €  | 15/04/2026            |

**Método de pago:** Transferencia bancaria a 30 días desde la emisión de factura.

---

## 11. GESTIÓN DE CAMBIOS (SCOPE CREEP)

Cualquier modificación al alcance definido en este SOW deberá:

1. Ser solicitada por escrito por cualquiera de las partes.
2. Ser evaluada por el Proveedor en términos de impacto en cronograma y coste.
3. Ser formalizada mediante un **Addendum al SOW** firmado por ambas partes antes de su ejecución.

> [!IMPORTANT]
> **El aumento de alcance no autorizado (scope creep) es una de las causas más comunes de
> fracaso en engagements de pentesting.** Todo cambio debe documentarse.

---

## 12. TERMINACIÓN Y CANCELACIÓN

- Cualquiera de las partes podrá terminar este SOW con **15 días naturales** de preaviso por escrito.
- En caso de cancelación por parte del Cliente después del inicio de las pruebas, se facturará el trabajo completado hasta la fecha más un 15% adicional en concepto de cancelación.
- En caso de **incumplimiento grave** de las RoE por parte del Proveedor, el Cliente podrá rescindir el contrato de forma inmediata sin penalización.

---

## 13. CONFIDENCIALIDAD Y PROTECCIÓN DE DATOS

- Este engagement está cubierto por el **NDA unilateral** firmado entre ambas partes (Ref: NDA-2026-NT-CS-001).
- El Proveedor se compromete a:
  - **Cifrar todos los datos** relacionados con el engagement (AES-256 en reposo, TLS 1.3 en tránsito).
  - **Destruir de forma segura** (DoD 5220.22-M o equivalente) todos los datos del Cliente en un plazo máximo de **90 días** tras la entrega final del proyecto.
  - **No subcontratar** ninguna parte del trabajo sin autorización previa por escrito del Cliente.
  - Utilizar **comunicaciones cifradas** (PGP/S-MIME para email, Signal para mensajería instantánea) para toda comunicación relacionada con el proyecto.

---

## 14. LIMITACIÓN DE RESPONSABILIDAD (DISCLAIMER)

> Las pruebas de penetración proporcionan una evaluación puntual de la seguridad y no
> garantizan que se identifiquen todas las vulnerabilidades existentes. Las amenazas de
> ciberseguridad evolucionan constantemente y nuevas vulnerabilidades se descubren a diario.
> El Proveedor no será responsable de vulnerabilidades no descubiertas durante el periodo
> de evaluación ni de brechas de seguridad que ocurran después de la entrega del informe.
>
> La responsabilidad total del Proveedor bajo este SOW no excederá el importe total del
> contrato.

---

## 15. DOCUMENTOS ASOCIADOS

| # | Documento                              | Referencia           | Estado     |
|---|----------------------------------------|----------------------|------------|
| 1 | Contrato Marco de Servicios (MSA)      | MSA-2026-NT-CS-001   | ✅ Firmado |
| 2 | Acuerdo de No Divulgación (NDA)        | NDA-2026-NT-CS-001   | ✅ Firmado |
| 3 | Carta de Autorización                  | AUTH-2026-NT-001     | ⏳ Pendiente |
| 4 | Rules of Engagement (RoE)              | ROE-2026-NT-CS-001   | ⏳ Pendiente |
| 5 | Acuerdo de Nivel de Servicio (SLA)     | SLA-2026-NT-CS-001   | ✅ Firmado |

---

## 16. FIRMAS Y ACEPTACIÓN

Este documento ha sido revisado y aceptado por las siguientes partes:

### Por el Cliente — NovaTech Solutions S.L.

| Campo        | Detalle                     |
|--------------|-----------------------------|
| **Nombre**   | Dña. María González López   |
| **Cargo**    | Directora de Tecnología (CTO) |
| **Firma**    | _________________________________ |
| **Fecha**    | ____/____/2026              |

### Por el Proveedor — CyberShield Consulting S.L.

| Campo        | Detalle                         |
|--------------|---------------------------------|
| **Nombre**   | D. Alejandro Ruiz Fernández     |
| **Cargo**    | Director de Servicios Ofensivos |
| **Firma**    | _________________________________ |
| **Fecha**    | ____/____/2026                  |

---

> **📘 Nota Educativa:** Fíjate en cómo este SOW cubre mucho más que el "qué vamos a hackear".
> Define responsabilidades, plazos, pagos, protección legal y entregables. Si alguna vez
> firmas uno de estos documentos, **léelo entero**. El alcance (sección 4) y la limitación de
> responsabilidad (sección 14) son las secciones más críticas para tu protección como pentester.
