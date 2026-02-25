# ⚔️ REGLAS DE ENFRENTAMIENTO (RoE - *Rules of Engagement*)

## Documento de Ejemplo para Estudio — Módulo 2

> [!NOTE]
> **Disclaimer:** Este documento es un ejemplo educativo creado para ilustrar la estructura
> y contenido de unas RoE profesionales en la industria del pentesting. Los nombres de
> empresas, direcciones IP, dominios y personas son completamente ficticios.
> Este documento es complementario al SOW con referencia PT-2026-0042.

---

## INFORMACIÓN DEL DOCUMENTO

| Campo                     | Detalle                                          |
| ------------------------- | ------------------------------------------------ |
| **ID del Documento**      | ROE-2026-NT-CS-001                               |
| **SOW Asociado**          | PT-2026-0042 (v1.2)                              |
| **Versión**               | v1.0                                             |
| **Clasificación**         | CONFIDENCIAL — SOLO PARTES AUTORIZADAS           |
| **Fecha de Emisión**      | 20 de enero de 2026                              |
| **Preparado por**         | CyberShield Consulting S.L.                      |
| **Aprobado por**          | NovaTech Solutions S.L.                          |

---

## 1. PROPÓSITO

Este documento establece las **condiciones operativas, restricciones y protocolos** bajo los cuales se ejecutará la prueba de penetración autorizada contra la infraestructura y aplicaciones de NovaTech Solutions S.L.

Las RoE son vinculantes para todo el equipo del Proveedor y su incumplimiento puede resultar en:
- Terminación inmediata del engagement.
- Consecuencias legales civiles y/o penales.
- Reclamación de daños y perjuicios.

> [!CAUTION]
> **Todo miembro del equipo de pentesting DEBE leer, comprender y firmar este documento
> antes de participar en cualquier actividad del engagement.**

---

## 2. VENTANA DE PRUEBAS (TESTING WINDOW)

### 2.1. Horario Autorizado

| Tipo de Prueba                        | Horario Permitido                    | Días                       |
| ------------------------------------- | ------------------------------------ | -------------------------- |
| **Escaneo de puertos y enumeración**  | 22:00 - 06:00 (CET)                 | Lunes a Viernes            |
| **Explotación activa (red)**          | 23:00 - 05:00 (CET)                 | Lunes a Jueves             |
| **Pruebas de aplicaciones web**       | 08:00 - 18:00 (CET)                 | Lunes a Viernes            |
| **Ingeniería social (phishing)**      | 09:00 - 14:00 (CET)                 | Solo Martes y Jueves       |
| **Pruebas WiFi (on-site)**            | 10:00 - 16:00 (CET)                 | Según agenda previa        |
| **Re-test**                           | 09:00 - 18:00 (CET)                 | Lunes a Viernes            |

### 2.2. Justificación del Horario

- Los **escaneos de red** se realizan en horario nocturno para minimizar el impacto en el rendimiento de los servicios de producción y reducir la probabilidad de falsos positivos en el SOC.
- Las **pruebas web** se realizan en horario laboral porque necesitan simular tráfico realista y el equipo del Cliente debe estar disponible para soporte.
- La **ingeniería social** se limita a horario de mañana para maximizar la tasa de interacción (los empleados suelen ser más receptivos por la mañana).

### 2.3. Fechas Bloqueadas (Blackout Dates)

Las pruebas **NO se ejecutarán** en las siguientes fechas:

| Fecha                    | Motivo                                              |
| ------------------------ | --------------------------------------------------- |
| 14 de febrero de 2026    | Campaña de marketing de San Valentín (pico de tráfico) |
| 20-21 de febrero de 2026 | Mantenimiento programado del data center             |
| Cualquier festivo nacional| Indisponibilidad del equipo de soporte del Cliente  |

---

## 3. TÉCNICAS PERMITIDAS Y PROHIBIDAS

### 3.1. Técnicas Permitidas ✅

| Categoría              | Técnicas / Herramientas                                              |
| ---------------------- | -------------------------------------------------------------------- |
| **Reconocimiento**     | OSINT (theHarvester, Maltego, Shodan, Google Dorks), DNS enum (dig, dnsenum, fierce) |
| **Escaneo**            | Nmap, Masscan (rate-limited a 500 pps máx.), Nessus, Nikto, WPScan  |
| **Explotación**        | Metasploit, manual exploitation, SQLMap, Burp Suite Pro              |
| **Post-explotación**   | Mimikatz (solo en memoria), BloodHound, Impacket, LinPEAS/WinPEAS   |
| **Cracking offline**   | Hashcat, John the Ripper (solo contra hashes ya extraídos)           |
| **Web**                | Burp Suite, OWASP ZAP, ffuf, dirb, SQLMap, XSStrike                 |
| **WiFi**               | Aircrack-ng suite, WiFite, Kismet (monitorización pasiva)            |
| **Ingeniería social**  | Phishing por email (GoPhish), pretexting telefónico (máx. 5 llamadas)|
| **Pivoting**           | SSH tunneling, chisel, ligolo-ng                                     |

### 3.2. Técnicas Prohibidas ❌

| Técnica Prohibida                          | Motivo                                                     |
| ------------------------------------------ | ---------------------------------------------------------- |
| **DoS / DDoS**                             | Riesgo inaceptable de interrupción de servicios de producción |
| **Ataques destructivos** (wiper, ransomware) | Violación del principio de "No Daño"                     |
| **Fuerza bruta online masiva**             | Riesgo de bloqueo de cuentas legítimas. Máx. 10 intentos/cuenta |
| **Explotación de 0-days**                  | Solo se permite el uso de exploits públicos y documentados |
| **Acceso físico no autorizado**            | Tailgating, lock picking — no están en el alcance de este engagement |
| **Ataques a la cadena de suministro**      | No se atacarán proveedores, socios o servicios de terceros |
| **Modificación de datos de producción**    | Los datos reales no deben ser alterados, eliminados ni exfiltrados |
| **Instalación de backdoors persistentes**  | Solo se permite persistencia temporal para demostración (máx. 4 horas) |
| **Ataques contra el SOC/SIEM**             | La infraestructura de monitorización está fuera de alcance |

### 3.3. Condiciones Especiales

- **Exploits inestables:** Si un exploit tiene riesgo conocido de causar un crash o denegación de servicio (ej. buffer overflow contra servicio de producción), se **reportará teóricamente** en el informe sin ejecutarlo, a menos que se obtenga autorización expresa por escrito para probarlo en una ventana de mantenimiento.
- **Escalada de privilegios a Domain Admin:** Se permite intentar la escalada hasta Domain Admin, pero una vez obtenida, se **detendrá inmediatamente** y se notificará al contacto técnico antes de continuar.
- **Datos sensibles:** Si se obtiene acceso a datos sensibles (PII, datos financieros, secretos comerciales), se documentará con una captura de pantalla parcial (redactada) como evidencia, pero **NO se extraerán ni almacenarán** los datos completos.

---

## 4. CADENA DE COMUNICACIÓN

### 4.1. Niveles de Comunicación

```
┌─────────────────────────────────────────────────────────────────────────┐
│                      CADENA DE COMUNICACIÓN                            │
│                                                                         │
│   NIVEL 1 (Operativo)                                                   │
│   Proveedor: Alejandro Ruiz ←→ Cliente: Pedro Álvarez (SysAdmin)      │
│   Canal: Email cifrado (PGP) / Signal                                   │
│   Uso: Coordinación diaria, dudas técnicas, ajustes menores             │
│                                                                         │
│   NIVEL 2 (Táctico / Incidentes)                                       │
│   Proveedor: Alejandro Ruiz ←→ Cliente: SOC 24/7                      │
│   Canal: Teléfono (+34 91 XXX XX 99) / Signal                          │
│   Uso: Incidentes operativos, hallazgos críticos, emergencias          │
│                                                                         │
│   NIVEL 3 (Estratégico / Escalamiento)                                  │
│   Proveedor: Dirección CyberShield ←→ Cliente: María González (CTO)   │
│   Canal: Reunión de emergencia / Email cifrado                          │
│   Uso: Decisiones de alto impacto, cambios de alcance, cancelación     │
│                                                                         │
│   NIVEL 4 (Legal)                                                       │
│   Proveedor: Dpto. Legal ←→ Cliente: Ana Beltrán (CISO/Legal)         │
│   Canal: Reunión formal / Email cifrado                                 │
│   Uso: Incidentes legales, violación de términos, litigios             │
└─────────────────────────────────────────────────────────────────────────┘
```

### 4.2. Protocolos de Comunicación

| Canal                | Herramienta     | Uso                                       | Cifrado    |
| -------------------- | --------------- | ----------------------------------------- | ---------- |
| **Email**            | ProtonMail / PGP | Informes, coordinación formal             | ✅ PGP/GPG |
| **Mensajería**       | Signal           | Coordinación rápida, alertas urgentes     | ✅ E2E     |
| **Transferencia de archivos** | SFTP (servidor del Proveedor) | Entrega de informes y evidencias | ✅ TLS 1.3 + SSH |
| **Reuniones**        | Presencial / Jitsi | Kick-off, presentaciones, emergencias  | ✅ E2E     |
| **Teléfono**         | Línea directa   | Solo emergencias y escalamientos          | ❌ No cifrado (asumir escucha) |

> [!WARNING]
> **NUNCA se transmitirán hallazgos de seguridad, credenciales o datos sensibles
> por canales no cifrados** (WhatsApp, SMS, email sin PGP, llamadas telefónicas
> convencionales, etc.).

### 4.3. Frecuencia de Informes de Progreso

| Tipo de Informe             | Frecuencia         | Destinatario           | Formato       |
| --------------------------- | ------------------- | --------------------- | ------------- |
| Status update (resumen diario) | Diario (al final de la jornada) | Pedro Álvarez | Email cifrado |
| Informe semanal de avance   | Viernes de cada semana | María González + Pedro | PDF cifrado   |
| Alerta de hallazgo crítico  | **Inmediato** (< 1 hora) | SOC + Pedro + María | Signal + Email |

---

## 5. PROTOCOLO DE NOTIFICACIÓN DE HALLAZGOS CRÍTICOS

Cuando el equipo del Proveedor descubra una vulnerabilidad clasificada como **Crítica (CVSS ≥ 9.0)** o que represente un riesgo inminente de compromiso:

### Procedimiento:

```
1. DETENER la explotación inmediatamente.
2. Documentar la evidencia (captura de pantalla, logs).
3. NOTIFICAR al contacto técnico (Pedro Álvarez) en menos de 1 HORA
   por Signal (confirmación de lectura obligatoria).
4. Si no hay respuesta en 30 minutos → Escalar al SOC (+34 91 XXX XX 99).
5. Si no hay respuesta del SOC en 15 minutos → Escalar a María González (CTO).
6. ESPERAR instrucciones antes de continuar las pruebas sobre el activo afectado.
7. Registrar la notificación en el log del engagement con timestamp.
```

### Ejemplos de hallazgos que requieren notificación inmediata:

- 🔴 Ejecución remota de código (RCE) sin autenticación.
- 🔴 Acceso no autenticado a bases de datos con PII.
- 🔴 Compromiso de credenciales de Domain Admin.
- 🔴 Evidencia de compromiso previo por un atacante real (APT/malware).
- 🔴 Vulnerabilidad no parcheada con exploit público activamente explotado (KEV).

> [!CAUTION]
> **Si se detecta evidencia de un atacante real activo en la red del Cliente**, se detendrán
> TODAS las pruebas de inmediato y se activará el protocolo de Nivel 2 (SOC) y Nivel 3
> (CTO). El Proveedor colaborará con el equipo de respuesta a incidentes del Cliente.

---

## 6. IDENTIFICACIÓN DEL TRÁFICO DE PRUEBAS

Para facilitar la diferenciación entre el tráfico del equipo de pentesting y el tráfico malicioso real:

### 6.1. IPs de Origen del Proveedor

| Tipo           | Dirección IP / Rango          | Ubicación                     |
| -------------- | ----------------------------- | ------------------------------ |
| VPN de salida primaria | `198.51.100.10`         | Servidor dedicado (Bilbao)     |
| VPN de salida secundaria | `198.51.100.11`       | Servidor dedicado (Madrid)     |
| Rango reservado | `198.51.100.10/30`           | 4 IPs                          |

### 6.2. Identificadores en User-Agent y Strings

- El equipo utilizará el siguiente **User-Agent personalizado** en todas las herramientas que lo permitan:
  ```
  CyberShield-PT-2026-0042/1.0 (Authorized Penetration Test)
  ```
- Las shells y payloads llevarán un **comentario identificativo**:
  ```
  # CYBERSHIELD-AUTHORIZED-PT-2026-0042
  ```

### 6.3. Coordinación con el SOC / Blue Team

| Parámetro                                           | Valor                                          |
| --------------------------------------------------- | ---------------------------------------------- |
| **¿Se ha notificado al Blue Team?**                 | Sí, parcialmente ("Purple Team" — saben que habrá pruebas, pero no el alcance exacto ni las fechas específicas) |
| **¿Se deben crear whitelists en el IDS/IPS?**       | Solo para los escaneos de puertos nocturnos. La explotación NO será whitelisted para evaluar la capacidad de detección. |
| **¿Los hallazgos del SOC cuentan como detección?**  | Sí, se documentarán en el informe como métricas de eficacia del Blue Team. |

---

## 7. MANEJO DE DATOS Y EVIDENCIAS

### 7.1. Clasificación de Datos

| Nivel            | Descripción                                  | Tratamiento                                 |
| ---------------- | -------------------------------------------- | ------------------------------------------- |
| **PÚBLICO**      | Info disponible en fuentes abiertas          | Sin restricciones especiales                |
| **INTERNO**      | Configuraciones, versiones de software       | Cifrar en reposo, incluir en informe        |
| **CONFIDENCIAL** | Credenciales, hashes, tokens de sesión       | Cifrar, anonimizar en informe, destruir tras entrega |
| **RESTRINGIDO**  | PII de clientes, datos financieros, secretos | **NO extraer.** Solo captura redactada como PoC |

### 7.2. Almacenamiento de Evidencias

| Requisito                              | Implementación                                     |
| -------------------------------------- | -------------------------------------------------- |
| Cifrado en reposo                      | LUKS (disco completo) + VeraCrypt (contenedor de proyecto) |
| Cifrado en tránsito                    | SFTP (SSH) / PGP para email                        |
| Acceso                                 | Solo miembros autorizados del equipo del Proveedor |
| Retención                              | Máximo 90 días tras entrega final                  |
| Destrucción                            | Borrado seguro (DoD 5220.22-M, 3 pasadas)          |
| Registro de acceso                     | Log de acceso al contenedor de evidencias          |

### 7.3. Equipos de Trabajo

| Requisito del equipo del pentester     | Estado                                              |
| -------------------------------------- | --------------------------------------------------- |
| Disco duro cifrado (LUKS/BitLocker)    | ✅ Obligatorio                                      |
| Sistema operativo dedicado al engagement | ✅ VM aislada (Kali Linux 2025.4)                 |
| Antivirus / EDR desactivado (en VM de trabajo) | ✅ Permitido solo en la VM de pentesting     |
| VPN corporativa del Proveedor          | ✅ Obligatoria para toda conexión al Cliente        |
| Backup cifrado del proyecto            | ✅ Diario, en servidor del Proveedor                |

---

## 8. PROTOCOLO DE INCIDENTES NO INTENCIONADOS

Si durante las pruebas se produce un **incidente no intencionado** (caída de servicio, corrupción de datos, etc.):

### Procedimiento Inmediato:

```
1. DETENER toda actividad de pruebas inmediatamente.
2. DOCUMENTAR lo ocurrido (timestamp, acción ejecutada, resultado observado).
3. NOTIFICAR al SOC del Cliente (+34 91 XXX XX 99) inmediatamente.
4. COLABORAR con el equipo del Cliente para la restauración del servicio.
5. Una vez resuelto y con autorización, evaluar si continuar las pruebas.
6. DOCUMENTAR el incidente en el informe final como "Incidente Operativo".
```

### Escenarios y Respuestas Previstas:

| Escenario                               | Respuesta                                           |
| ---------------------------------------- | --------------------------------------------------- |
| Caída de un servicio web                 | Notificar a Pedro Álvarez. Esperar restauración.    |
| Bloqueo masivo de cuentas de usuario     | Notificar al SOC. Proporcionar lista de cuentas.    |
| Crash de un servidor                     | Notificar al SOC. Proporcionar logs del exploit.    |
| Corrupción de base de datos              | Notificar al SOC + María González. Prioridad máxima.|
| Detección de brecha activa por terceros  | Detener todo. Activar protocolo de IR del Cliente.  |

---

## 9. CONSIDERACIONES LEGALES

### 9.1. Marco Legal Aplicable

- **Código Penal Español:** Artículos 197, 197 bis y 264 (delitos informáticos). La autorización documentada exime de responsabilidad penal.
- **RGPD (UE 2016/679):** Aplica para el tratamiento de cualquier dato personal encontrado durante las pruebas.
- **LSSI-CE:** Ley de Servicios de la Sociedad de la Información (España).
- **PCI DSS v4.0:** Marcos de cumplimiento aplicables al Cliente para procesamiento de pagos.

### 9.2. Protección del Pentester

El pentester está protegido legalmente siempre que:
- ✅ Exista una **Carta de Autorización firmada** por un representante legal del Cliente.
- ✅ Se respete estrictamente el **alcance** definido en el SOW.
- ✅ Se cumplan las **RoE** establecidas en este documento.
- ✅ Se actúe de **buena fe** y sin intención de causar daño.

> [!IMPORTANT]
> **La Carta de Autorización es tu "Get Out of Jail Free Card".** Sin ella, cualquier
> actividad de pentesting, por bien intencionada que sea, puede constituir un delito
> informático. SIEMPRE verifica que esté firmada antes de iniciar.

---

## 10. MÉTRICAS Y CRITERIOS DE ÉXITO

### 10.1. Métricas del Engagement

| Métrica                                      | Objetivo                          |
| -------------------------------------------- | --------------------------------- |
| Vulnerabilidades críticas (CVSS ≥ 9.0)       | Identificar el 100% posible      |
| Vulnerabilidades altas (CVSS 7.0-8.9)        | Identificar el 90%+ posible      |
| Tiempo medio de detección por Blue Team      | Medir y documentar               |
| Cobertura del alcance                        | 100% de los activos in-scope     |
| Incidentes operativos no intencionados       | Objetivo: 0                      |
| Cumplimiento de la ventana de pruebas        | 100%                              |

### 10.2. Criterios de Finalización

El engagement se considerará **completado** cuando:
1. Todas las fases del cronograma del SOW se hayan ejecutado.
2. Todos los entregables hayan sido aceptados por el Cliente.
3. La presentación de resultados se haya realizado.
4. El re-test (si aplica) se haya completado y documentado.
5. Todos los datos del Cliente hayan sido destruidos de forma segura (confirmación por escrito).

---

## 11. FIRMAS Y CONFORMIDAD

> Ambas partes confirman haber leído, comprendido y aceptado las Reglas de Enfrentamiento
> descritas en este documento. Cualquier violación de estas reglas por parte del Proveedor
> resultará en la terminación inmediata del engagement.

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
| **Cargo**    | Lead Pentester / Director de Proyecto |
| **Firma**    | _________________________________ |
| **Fecha**    | ____/____/2026                  |

### Equipo de Pentesting — Conformidad Individual

> Cada miembro del equipo debe firmar confirmando que ha leído las RoE:

| Nombre             | Rol                    | Firma                    | Fecha          |
| ------------------ | ---------------------- | ------------------------ | -------------- |
| Elena Martínez     | Pentester Senior (Web) | ________________________ | ____/____/2026 |
| Carlos Navarro     | Pentester Junior       | ________________________ | ____/____/2026 |
| Laura Sánchez      | Ing. Social Specialist | ________________________ | ____/____/2026 |

---

## ANEXO A: CHECKLIST PRE-ENGAGEMENT

Antes de iniciar cualquier actividad de pruebas, verificar:

- [ ] Carta de Autorización firmada y en posesión del equipo.
- [ ] SOW firmado por ambas partes.
- [ ] RoE firmadas por ambas partes y por todo el equipo.
- [ ] NDA firmado.
- [ ] Credenciales de prueba recibidas y verificadas.
- [ ] IPs de origen comunicadas al SOC del Cliente.
- [ ] VPN corporativa del Proveedor configurada y funcional.
- [ ] VM de trabajo aislada y preparada.
- [ ] Contenedor cifrado de evidencias creado.
- [ ] Canal de comunicación cifrado (Signal/PGP) establecido y verificado.
- [ ] Contactos de emergencia guardados en el teléfono.
- [ ] Calendario de blackout dates verificado.
- [ ] Backup de sistemas del Cliente confirmado por el contacto técnico.

---

> **📘 Nota Educativa:** Las RoE son el documento que te mantiene "del lado correcto de la ley"
> durante el engagement. Fíjate en varios puntos clave:
>
> 1. **Ventana de tiempo:** No puedes atacar cuando quieras. Los escaneos nocturnos minimizan
>    el impacto en producción.
> 2. **Técnicas prohibidas:** Aunque técnicamente puedas hacer un DoS, las RoE lo prohíben
>    explícitamente. Si lo haces, estás violando el contrato.
> 3. **Cadena de comunicación:** Si a las 3 AM tiras un servidor por accidente, sabes
>    exactamente a quién llamar y en qué orden.
> 4. **Hallazgos críticos:** No puedes sentarte sobre un RCE durante 3 días sin notificar.
>    Se notifica en menos de 1 hora.
> 5. **Identificación del tráfico:** El SOC puede distinguir tu tráfico del de un atacante
>    real gracias al User-Agent personalizado y las IPs conocidas.
> 6. **Manejo de datos:** Si encuentras 50,000 números de tarjetas de crédito, NO los descargas.
>    Tomas una captura redactada como prueba y punto.
