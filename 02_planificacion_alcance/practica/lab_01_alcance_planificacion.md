# 🧪 Práctica de laboratorio: Alcance y planificación previos al compromiso

## Objetivos
- Determinar el alcance de una prueba de penetración basada en las necesidades y la infraestructura del cliente.
- Identificar los sistemas y redes incluidos y excluidos del alcance.
- Definir la metodología y las limitaciones de la prueba (producción vs. desarrollo, ataques disruptivos, etc.).

---

## Topología de Red
La infraestructura del cliente se divide en varias zonas:
- **LAN:** Red local interna.
- **DMZ:** Zona Desmilitarizada (servidores públicos).
- **Data Center:** Servidores core (Administración, Amazon Support, Operaciones, Logística, SQL Server).
- **Zonas de Negocio:** Finance, Customer Service, Shipping, IT, Warehouse, Admin.

---

## Tablas de Direccionamiento

### Centro de Datos
| Servidores | VLAN | Dirección IP | Red / Máscara |
| :--- | :--- | :--- | :--- |
| Administración | 2 - 5 | 172.24.1.0/24 | 255.255.255.192 |
| Soporte de Amazon| 10 - 25 | 172.25.0.0/16 | 255.255.252.0 |
| Operaciones | 50 - 55 | 172.26.0.0/21 | 255.255.255.0 |
| Logística | 80 – 85 | 172.27.0.0/21 | 255.255.255.0 |
| Administración Core| 100 - 110| 172.30.0.0/16 | Varios |

### LAN
| Departamento | VLAN | Dirección IP | Máscara de subred |
| :--- | :--- | :--- | :--- |
| Administración | 10 | 172.16.1.0/24 | 255.255.255.0 |
| Finanzas | 20 | 172.16.2.0/24 | 255.255.255.0 |
| TI | 30 | 172.16.3.0/24 | 255.255.255.0 |
| ... | ... | ... | ... |

---

## Cuestionario de Alcance y Planificación

### 1. ¿Cuáles son las mayores preocupaciones de seguridad del cliente?
> **Respuesta:** Que los sistemas de inventario y envío puedan estar sujetos a ataques de ransomware y que la empresa no podrá cumplir con los pedidos de manera oportuna.

### 2. ¿Qué clústeres de servidores, rangos de direcciones de red o aplicaciones específicos deben probarse?
> **Respuesta:** Los servidores de los clústeres de operaciones y logística. Rangos de direcciones IP 172.26.0.0/21 y 172.27.0.0/21. Las aplicaciones de Microsoft SQL Server.

### 3. ¿Qué clústeres de servidores, rangos de direcciones de red o aplicaciones específicos NO deben probarse explícitamente?
> **Respuesta:** Los clústeres de servidores de administración y soporte de Amazon, y los rangos de direcciones IP de la LAN.

### 4. ¿La prueba se realizará en un entorno de producción en vivo o en un entorno de prueba?
> **Respuesta:** La mayoría de las pruebas se realizarán en sistemas de producción. Solo se realizarán pruebas intrusivas de SQL Server en sistemas de desarrollo.

### 5. ¿La prueba de penetración incluirá pruebas de red internas? Si es así, ¿cómo se obtendrá el acceso?
> **Respuesta:** Sí, el acceso se proporcionará a través de una VLAN aislada en la red interna.

### 6. ¿Los sistemas de cliente / usuario final se incluyen en el alcance?
> **Respuesta:** No, los sistemas de usuario final del cliente no están en el alcance.

### 7. ¿Está permitida la ingeniería social? Si es así, ¿es limitado?
> **Respuesta:** Sí, está permitido, pero se limita a una lista específica de direcciones de correo electrónico.

### 8. ¿Se permiten la denegación de servicio y otros ataques disruptivos?
> **Respuesta:** Sí, se pueden intentar ataques disruptivos durante un intervalo de tiempo programado durante los períodos de mantenimiento normales.

### 9. ¿Existen dispositivos que puedan afectar los resultados de una prueba de penetración?
> **Respuesta:** Sí, existen dispositivos de seguridad, incluidos cortafuegos y sistemas IDS.

### 10. ¿Probar el acceso inalámbrico es parte de este compromiso?
> **Respuesta:** No, el acceso inalámbrico está fuera del alcance.

### 11. ¿Los servicios web están incluidos en el alcance de las pruebas?
> **Respuesta:** No, los servicios web no están incluidos en el alcance de las pruebas.

---
*Este documento es una adaptación profesional de la práctica de laboratorio original de Cisco para el curso de Ethical Hacker.*
