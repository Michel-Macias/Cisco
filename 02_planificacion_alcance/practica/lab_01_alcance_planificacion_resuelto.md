# Resolución Práctica de Laboratorio: Alcance y Planificación Previos al Compromiso (Nexus Plaza)

Este documento centraliza las respuestas correctas extraídas del ejercicio de simulación de entrevista con el CEO y el Director de TI de Nexus Plaza, orientado a definir el Alcance (Scope) y las Reglas de Enfrentamiento (RoE) de un pentest.

## Parte 1: Determine el alcance del compromiso

**1. ¿Cuáles son las mayores preocupaciones de seguridad del cliente?**
Que los sistemas de inventario y envío puedan estar sujetos a ataques de ransomware y que la empresa no pueda cumplir con los pedidos de manera oportuna.

**2. ¿Qué clústeres de servidores, rangos de direcciones de red o aplicaciones específicos deben probarse?**
Los servidores de los clústeres de operaciones y logística. Rangos de direcciones IP 172.26.0.0/21 y 172.27.0.0/21. Las aplicaciones de Microsoft SQL Server.

**3. ¿Qué clústeres de servidores, rangos de direcciones de red o aplicaciones específicos NO deben probarse explícitamente?**
Los clústeres de servidores de administración y soporte de Amazon, y los rangos de direcciones IP de la LAN.

**4. ¿La prueba se realizará en un entorno de producción en vivo o en un entorno de prueba?**
La mayoría de las pruebas se realizarán en sistemas de producción. Solo se realizarán pruebas intrusivas de SQL Server en sistemas de desarrollo.

**5. ¿La prueba de penetración incluirá pruebas de red internas? Si es así, ¿cómo se obtendrá el acceso?**
Sí, el acceso se proporcionará a través de una VLAN aislada en la red interna.

**6. ¿Los sistemas de cliente / usuario final se incluyen en el alcance?**
No, los sistemas de usuario final del cliente no están en el alcance.

**7. ¿Probar el acceso inalámbrico es parte de este compromiso?**
No, el acceso inalámbrico está fuera del alcance.

**8. ¿Los servicios web están incluidos en el alcance de las pruebas?**
No, los servicios web no están incluidos en el alcance de las pruebas.

**9. ¿Los empleados conocen las pruebas y el plazo en que se realizarán?**
No, solo los administradores y el personal de TI seleccionados conocen la prueba y el plazo (Prueba de tipo "Caja Negra" o Doble Ciego parcial para evaluar la respuesta a incidentes / SOC).

**10. ¿Dónde se encuentra físicamente el centro de datos del cliente?**
El centro de datos está ubicado en Houston.

---

## Parte 2: Determine las reglas del compromiso (Rules of Engagement - RoE)

| Reglas de los elementos del compromiso | Valor / Acuerdo |
| :--- | :--- |
| **Prueba de línea de tiempo** | Comience en dos semanas, informe final entregado en 60 días. |
| **Ubicación de la prueba** | Instalaciones físicas de Houston (VLAN aislada). |
| **Ventanas de tiempo para la prueba** | *Pruebas no invasivas:* Horario comercial.<br>*Pruebas invasivas (Ej. DoS):* Durante el horario de mantenimiento (2 a 6 a. m. de viernes a domingo). |
| **Método de comunicación preferido** | Informes de avance semanales o teleconferencias. |
| **Controles de seguridad que podrían bloquear las pruebas** | Existen Firewalls e IDS (Sistemas de Detección de Intrusos) implementados en la red. |
| **Manejo de datos sensibles** | Protección avalada mediante Acuerdo de Confidencialidad (NDA) firmado. |
| **Direcciones IP/Redes de origen del equipo atacante** | Las pruebas se originarán desde la VLAN interna asignada dentro del departamento de TI. |
| **Tipos de pruebas permitidas o no permitidas** | - Pruebas en general: limitadas a servidores de operaciones y logística.<br>- Pruebas de SQL (Inyección, etc.): limitadas al entorno de desarrollo temporal.<br>- Ingeniería social: permitida, pero **estrictamente limitada** a las direcciones de correo proporcionadas por el cliente.<br>- Ataques disruptivos (DoS): Permitidos solo en ventana de mantenimiento. |
| **Contactos del cliente (Escalado de incidentes)** | Gerente de almacén, Director de TI y Gerente de operaciones. |

---
**Nota del Mentor:** Este documento es el reflejo escrito de un *Statement of Work (SOW)* real. Fijate cómo todo ataque disruptivo se mueve a horas de madrugada y cómo la base de datos SQL de producción es intocable (se audita una copia espejo en desarrollo). Esta es la realidad absoluta de un pentester profesional: el negocio manda sobre el hackeo.
