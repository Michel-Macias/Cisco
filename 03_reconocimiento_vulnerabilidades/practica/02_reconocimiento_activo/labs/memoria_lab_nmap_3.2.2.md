# 📖 Memoria Técnica: Laboratorio 3.2.2 - Enumeración Avanzada con Nmap

**Fecha:** 27 de febrero de 2026  
**Auditor:** USER (Didáctico por Antigravity)  
**Objetivo:** Metasploitable2 (Docker Container)  
**IP Target:** `172.17.0.2`  

---

## 🚀 Fase 1: Descubrimiento de Host
Se realizó una verificación inicial mediante un "Ping Sweep" para confirmar la disponibilidad del contenedor Metasploitable2 en la red interna de Docker.

**Resultado:**  
- El host está activo (`Host is up`) con una latencia mínima (0.000005s), típica de entornos virtualizados locales.

![Confirmación de Host Up](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/nmap_fase1.png)

---

## 🔍 Fase 2: Escaneo de Puertos y Versiones (TCP)
Se ejecutó un escaneo agresivo (`-sV -O`) para identificar no solo los puertos abiertos, sino el software exacto y el Sistema Operativo subyacente.

**Hallazgos Principales:**  
- **SSH (22):** OpenSSH 4.7p1 (Debian).
- **SMTP (25):** Postfix smtpd.
- **Samba (139/445):** Samba smbd 3.X - 4.X.
- **MySQL (3306):** MySQL 5.0.51a-3ubuntu5 (Altamente vulnerable).
- **PostgreSQL (5432):** PostgreSQL 8.3.0.

**Detección de SO:**  
- Identificado como **Linux 4.15 - 5.19** (Kernel del host de Docker).

![Detección de Servicios y OS](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/nmap_fase2.png)

---

## 🛠️ Fase 3: Enumeración con Scripts (NSE)
Se utilizó el motor de scripts de Nmap (`--script smb-os-discovery`) para profundizar en el servicio Samba identificado anteriormente.

**Información Extraída:**  
- **OS:** Unix (Samba 3.0.20-Debian).
- **Nombre del equipo:** 79e6743a6c5c (ID del contenedor).
- **Vulnerabilidad Potencial:** La versión 3.0.20 es vulnerable al exploit crítico **Username Map Script (CVE-2007-2447)**.

![Resultados del Script NSE SMB](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/nmap_fase3.png)

---

## 🌑 Fase 4: Escaneo de Servicios UDP
Se realizó un rastreo de los 20 puertos UDP más comunes (`-sU`) para identificar servicios que suelen pasar desapercibidos.

**Servicios Identificados:**  
- **DNS (53):** Estado `open|filtered`.
- **NetBIOS-NS (137):** Estado **OPEN**. Confirmación adicional de la actividad de Samba.
- **UPnP (1900):** Estado `open|filtered`.

![Escaneo de puertos UDP](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/nmap_fase4.png)

---

## 🧠 Conclusión del Auditor
Metasploitable2 presenta una superficie de ataque masiva y obsoleta. Los hallazgos en **MySQL 5.0** y **Samba 3.0.20** representan vectores de entrada inmediata mediante exploits públicos. Se recomienda segmentar estos servicios y actualizar a versiones con soporte activo.

**Próximo Paso:** [Lab 3.2.3: Análisis de Tráfico con Wireshark](file:///home/kali/Escritorio/REPOS_cIBER/Cisco/03_reconocimiento_vulnerabilidades/practica/02_reconocimiento_activo/labs/lab_3.2.3_wireshark.md)
