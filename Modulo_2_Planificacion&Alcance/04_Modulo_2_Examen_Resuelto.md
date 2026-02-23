# 🎓 Examen de Certificación - Módulo 2: Planificación y Alcance de Pentesting

Este documento presenta la resolución detallada del examen del Módulo 2, incluyendo aclaraciones técnicas del mentor sobre los conceptos donde hubo fallos para asegurar una comprensión total de cara a la certificación real.

**Puntuación obtenida:** 76% (Aprobado)

---

## 🏛️ GRC (Gobierno, Riesgo y Cumplimiento)

### 1. Sector Salud y Privacidad (HIPAA)
*   **Pregunta:** ¿Qué regulación de EE. UU. debe comprender un contratista antes de evaluar una clínica de salud?
*   **Respuesta:** **HIPAA** (Health Insurance Portability and Accountability Act).
*   **Clave:** Estándares para proteger información de salud electrónica individual (ePHI).

### 2. Cloud Computing Gubernamental (FedRAMP)
*   **Pregunta:** ¿Qué regulación sigue una oficina del IRS al mover servicios a la nube?
*   **Respuesta:** **FedRAMP**.
*   **Clave:** Enfoque estandarizado para la seguridad de servicios cloud en el gobierno de EE. UU.

### 3. Privacidad Internacional (GDPR)
*   **Pregunta:** Universidad de EE. UU. ofreciendo cursos en Francia/Alemania.
*   **Respuesta:** **GDPR** (General Data Protection Regulation).
*   **Clave:** Aunque la entidad sea de EE. UU., si trata datos de ciudadanos europeos, el GDPR es de obligado cumplimiento.

### 4. Sector Financiero (GLBA)
*   **Pregunta:** ¿Quién aplica la regla de privacidad de la Ley Gramm-Leach-Bliley?
*   **Respuesta:** **FTC** (Federal Trade Commission).

---

## 💳 Estándares de Tarjetas de Pago (PCI DSS)

### 🚨 ACLARACIÓN DEL MENTOR: Aplicabilidad de PCI DSS
*   **Pregunta Fallada:** ¿Qué determina la aplicación de los requisitos de PCI DSS?
*   **Tu respuesta original:** Proveedor de escaneo aprobado.
*   **Respuesta Correcta:** **Número de Cuenta Principal (PAN)**.
*   **Explicación:** PCI DSS solo se aplica si el **PAN** (el número de la tarjeta) se almacena, procesa o transmite. Si el PAN no está presente en tu infraestructura, PCI DSS generalmente no te aplica. Un "proveedor de escaneo" es solo una herramienta para validar el cumplimiento, no el factor que define si debes cumplirlo.

### 8. Datos de Autenticación Sensibles
*   **Pregunta:** Ejemplos de datos que requieren cumplimiento PCI DSS.
*   **Respuestas:** 
    1. **CAV2 / CVC2 / CVV2 / CID** (Códigos de seguridad).
    2. **Datos de la banda magnética completa** o chip.
*   **Nota:** El nombre del titular o la fecha de expiración son datos del titular, pero no "datos de autenticación sensibles" (que nunca deben almacenarse tras la autorización).

---

## 📄 Documentación Legal y Contractual

### 🎯 ACLARACIÓN DEL MENTOR: SOW vs SLA
*   **Pregunta Fallada:** Documento que especifica expectativas/restricciones (calidad, plazos, costo).
*   **Tu respuesta original:** SOW (Statement of Work).
*   **Respuesta Correcta:** **SLA (Service Level Agreement)**.
*   **Explicación:** 
    *   El **SOW** es descriptivo: dice *qué* vas a hacer (alcance, ubicación, entregables).
    *   El **SLA** es métrico: dice *cómo de bien/rápido* debes hacerlo (niveles de servicio, tiempos de respuesta, penalizaciones por incumplir plazos).

### 13. Tipos de NDA (Non-Disclosure Agreement)
*   **Pregunta:** La empresa solo quiere que el consultor guarde el secreto a ella.
*   **Respuesta:** **NDA Unilateral**.
*   **Clave:** "Unilateral" significa que solo una parte (el consultor) se compromete a no divulgar la información de la otra.

### 15. Exención de Responsabilidad (Disclaimer)
*   **Pregunta:** Sección donde se indica que los hallazgos no garantizan seguridad total.
*   **Respuesta:** **Renuncia de responsabilidad (Disclaimer)**.

---

## 🏗️ Planificación Técnica y APIs

### 🌐 ACLARACIÓN DEL MENTOR: GraphQL vs WSDL/WADL
*   **Pregunta Fallada:** Lenguaje de consulta para API y ejecución en tiempo de ejecución.
*   **Tu respuesta original:** WADL.
*   **Respuesta Correcta:** **GraphQL**.
*   **Explicación:** 
    *   **WADL/WSDL:** Son formatos basados en **XML** para describir servicios web tradicionales (SOAP/REST).
    *   **GraphQL:** Es un lenguaje de consulta moderno (JSON-like) que permite pedir exactamente los datos necesarios. Es un "tiempo de ejecución" del lado del servidor.

### 21. El temido "Scope Creep" (Aumento del Alcance)
*   **🚨 ACLARACIÓN DEL MENTOR:** ¿Qué causa el aumento descontrolado del alcance?
*   **Tu respuesta original:** Falta de diagramas.
*   **Respuesta Correcta:** **Identificación ineficaz de elementos técnicos/no técnicos requeridos**.
*   **Explicación:** El "Scope Creep" ocurre por mala gestión. Si al principio no defines bien qué necesitas para testear (ej. no pediste acceso a la nube y luego ves que es necesario), el proyecto empieza a crecer de forma descontrolada fuera del contrato inicial.

---

## 🛡️ Protocolos de Comunicación Segura

### 23. Intercambio Seguro de Información
*   **🚨 ACLARACIÓN DEL MENTOR:** Protocolos para correos electrónicos seguros.
*   **Tu respuesta original:** SFTP / HTTPS.
*   **Respuesta Correcta:** **PGP y S/MIME**.
*   **Explicación:** 
    *   **PGP / S/MIME:** Cifran el **contenido** del correo (End-to-End).
    *   **SFTP / HTTPS / SCP:** Cifran el **canal** de transporte de archivos o web, pero no el mensaje de correo en sí una vez llega al servidor. Para que un correo sea "seguro" de buzón a buzón, usamos PGP o S/MIME.

---

## 🌑 Tipos de Entorno

### 24. Prueba en Entorno Desconocido (Black Box)
*   **Definición:** El consultor recibe información muy limitada (ej. solo el dominio o IP). Simula la perspectiva de un atacante externo real sin conocimientos previos.

---
**Nota del Mentor:** Has tenido un par de fallos con los acrónimos de documentos legales (SOW vs SLA) y protocolos de correo. Es muy común. Quédate con esto: **SOW = Trabajo (Qué)**, **SLA = Servicio (Nivel/Calidad)**. ¡Vamos a por el Módulo 3!
