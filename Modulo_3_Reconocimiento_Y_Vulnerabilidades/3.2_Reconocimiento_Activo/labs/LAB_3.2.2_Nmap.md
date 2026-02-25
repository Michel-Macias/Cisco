# 🧪 Laboratorio 3.2.2: Enumeración Avanzada con Nmap

## 🎯 Objetivos
- Dominar las opciones de escaneo de Nmap para el descubrimiento de hosts.
- Realizar enumeración de servicios y detección de versiones de sistemas operativos.
- Utilizar scripts de Nmap (NSE) para identificar vulnerabilidades básicas.

---

## 👨‍💻 Escenario
Se ha detectado tráfico inusual hacia una máquina en la DMZ (`10.6.6.23`). Como parte del equipo de respuesta ante incidentes, su tarea es realizar un reconocimiento activo para mapear la superficie de ataque de este host y determinar qué servicios está exponiendo.

---

## 🚀 Fase 1: Descubrimiento de Red

### Paso 1: Escaneo de Red (Ping Sweep)
Antes de atacar un host específico, debemos confirmar qué máquinas están "vivas" en el segmento.
```bash
nmap -sn 10.6.6.0/24
```
*   **-sn:** Desactiva el escaneo de puertos. Solo realiza descubrimiento de hosts.

---

## 🔍 Fase 2: Escaneo de Puertos y Servicios

### Paso 1: Escaneo Rápido de Puertos Comunes
```bash
nmap 10.6.6.23
```

### Paso 2: Escaneo de Versiones y OS (Agresivo)
Para obtener detalles sobre qué software exacto corre en cada puerto:
```bash
# -sV: Versión de servicios, -O: Detección de OS, -v: Verbosidad
nmap -sV -O -v 10.6.6.23
```
*   **Por qué es importante:** Saber que un servidor corre `Apache 2.4.49` es mucho más útil que saber que simplemente corre `HTTP`. Las vulnerabilidades se asocian a versiones específicas.

---

## 🛠️ Fase 3: Enumeración Profunda

### 1. Escaneo de Puertos UDP
Muchos servicios críticos (DNS, SNMP, DHCP) corren sobre UDP y a veces son ignorados.
```bash
sudo nmap -sU --top-ports 20 10.6.6.23
```

### 2. Uso de Scripts (NSE)
Nmap Scripting Engine permite automatizar tareas complejas como la enumeración de usuarios en SMB o la detección de vulnerabilidades críticas.
```bash
# Enumerar información del protocolo SMB (puertos 139/445)
nmap --script smb-os-discovery 10.6.6.23
```

---

## 📑 Tabla de Referencia Rápida (Cheat Sheet)

| Comando | Función | Cuando usarlo |
| :--- | :--- | :--- |
| `-sS` | SYN Stealth Scan | El más común, rápido y relativamente discreto. |
| `-sT` | Connect Scan | Usado cuando no se tienen privilegios de root. |
| `-p-` | Escanear 65535 puertos | Para encontrar servicios en puertos no estándar. |
| `-Pn` | No realizar Ping | Cuando el host bloquea ICMP (parece caído pero no lo está). |
| `-A` | "All-in-one" | Combina detección de OS, Versiones, Scripts y Traceroute. |

---

## 🧠 Reflexión del Mentor
**¿Cuál es la diferencia entre un puerto "Closed" y uno "Filtered"?**
> *Respuesta*: Un puerto **Closed** responde con un paquete RST, indicando que la máquina está ahí pero no hay nada escuchando. Un puerto **Filtered** indica que Nmap no recibió ninguna respuesta; un Firewall o un IPS está descartando los paquetes silenciosamente. Identificar puertos filtrados es clave para entender las defensas perimetrales del objetivo.

---
*Este laboratorio es una adaptación educativa del currículo oficial de Cisco para el curso de Ethical Hacker.*
