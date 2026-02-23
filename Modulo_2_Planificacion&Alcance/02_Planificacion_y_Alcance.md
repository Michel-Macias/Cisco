# Módulo 2: Planificación y Alcance (Scoping) de un Pentest

Antes de lanzar un solo paquete en la red o ejecutar Nmap, la fase más crítica de cualquier auditoría de seguridad es la **Planificación**. Un pentest mal planificado puede terminar en sistemas de producción caídos, problemas legales o incumplimiento de normativas.

Este módulo (que se alinea perfectamente con la fase "Pre-engagement Interactions" de la metodología PTES) se divide en tres pilares fundamentales:

---

## 1. Conceptos de GRC (Governance, Risk, and Compliance)

El pentesting no es solo un ejercicio técnico; responde a necesidades de negocio. La triada **GRC** dicta *por qué* y *cómo* se hace la prueba:

- **Gobernanza (Governance):** Son las políticas y directrices de la alta dirección. Define las reglas internas de la empresa corporativa (ej. "Todo software nuevo debe pasar un pentest antes de salir a producción").
- **Riesgo (Risk):** El pentest ayuda a identificar vulnerabilidades para calcular el riesgo real de la compañía. El director de seguridad (CISO) usará nuestros hallazgos para decidir si aceptan, mitigan o transfieren el riesgo. 
- **Cumplimiento (Compliance):** A menudo, las empresas nos contratan *obligadas* por la ley o estándares de la industria (ej. PCI-DSS exige pentests anuales para procesar tarjetas de crédito, ISO 27001, RGPD, HIPAA, etc.). El cumplimiento define en gran medida el alcance obligatorio.

---

## 2. El Alcance (Scoping) y las Reglas de Enfrentamiento (RoE)

El alcance es la frontera exacta entre el "hacking ético" y el "delito informático". Define milimétricamente qué se puede tocar y, más importante aún, **qué NO se puede tocar**.

### 2.1. Definiendo el Alcance (Scope)
Un documento de alcance debe contener:
- **Activos permitidos (In-Scope):** Direcciones IP exactas (ej. `192.168.1.10 - 192.168.1.50`), dominios o subdominios específicos (`api.empresa.com`).
- **Activos prohibidos (Out-of-Scope):** IPs, servidores de producción críticos, dispositivos médicos, sistemas SCADA, o infraestructuras de terceros (ej. no puedes hacer pentest a la red de AWS sin permiso si el cliente usa SaaS compartidos de cierta forma, aunque hoy en día AWS es más flexible, la regla aplica para servicios de terceros).
- **Tipos de prueba:** ¿Caja Blanca, Gris o Negra? ¿Pruebas desde internet (Externo) o desde dentro de la oficina (Interno)?

### 2.2. Rules of Engagement (RoE - Reglas de Enfrentamiento)
Es el "contrato de combate". Establece:
- **Ventana de tiempo:** ¿Podemos atacar de madrugada o solo en horario laboral?
- **Técnicas permitidas:** ¿Podemos hacer Ingeniería Social a los empleados? ¿Podemos hacer ataques masivos de Denegación de Servicio (DoS/DDoS) o están estrictamente prohibidos?
- **Vectores de comunicación:** ¿A quién llamamos a las 3 AM si tiramos un clúster de bases de datos por accidente?

> [!WARNING]
> **Regla de oro del Pentester:** NUNCA asumas el alcance. Si una subred no está en el documento firmado, no la escaneas bajo ninguna circunstancia. Si lo haces, pierdes la protección legal.

---

## 3. Código de Conducta y Profesionalismo

Un hacker ético tiene acceso a la información más confidencial de una empresa (datos de clientes, correos de directivos, contraseñas, secretos comerciales). El código de conducta garantiza que esta simetría de poder no se explote.

Los principios básicos que exige Cisco (y certificadoras como EC-Council u Offensive Security) son:
1. **Autorización previa:** Jamás acceder a un sistema sin consentimiento firmado (Carta de Autorización / "Get out of jail free card").
2. **Confidencialidad rigurosa:** Proteger la información encontrada como si fuera tuya. Firmar y respetar los NDA (Non-Disclosure Agreements).
3. **No daño (Integridad y Disponibilidad):** Nuestras herramientas pueden ser destructivas (ej. exploits inestables). Nuestro objetivo final es ayudar al cliente a mejorar, no romper su red. Si hay dudas sobre un exploit en producción, no se lanza, se reporta teóricamente.
4. **Respeto a los límites (Alcance):** Mantenerse siempre dentro de las restricciones de IP, horas y metodologías pactadas.

---
**Nota del Mentor:** M1txel, fíjate en cómo este Módulo 2 ya no habla de "cómo hacer un nmap", sino de cómo protegerte legalmente y entender el negocio. Si alguna vez firmas un contrato de pentest, el documento de alcance (SOW - *Statement of Work*) y las Reglas de Enfrentamiento (RoE) son tus escudos.
