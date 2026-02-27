# 📖 Memoria Técnica: Laboratorio 3.2.1 - Manipulación de Paquetes con Scapy

**Fecha:** 27 de febrero de 2026  
**Auditor:** USER (Didáctico por Antigravity)  
**Herramientas:** Scapy 2.7.0.1, Python 3.12  

---

## 🚀 Fase 1: Iniciación y Estructura de Capas
En esta fase se exploró la capacidad de Scapy para desglosar protocolos. Se verificó el encabezado IP por defecto, identificando campos clave como TTL (64) y las direcciones de bucle local (127.0.0.1).

![Exploración de cabecera IP](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/scapy_fase1.png)

---

## 🔍 Fase 2: Rastreo de Tráfico (Sniffing)
Se realizó una captura en tiempo real de 5 paquetes. Se identificó tráfico **HTTPS (TCP 443)** hacia la IP `34.54.84.110`. 

**Hallazgo Técnico:**  
- Los paquetes capturados presentaban el flag `PA` (Push-Ack), indicando transferencia de datos de aplicación.  
- La capa `Raw` contenía el payload cifrado TLS, inaccesible mediante análisis pasivo simple.

![Resumen de captura y detalle de paquete TCP](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/scapy_fase2.png)

---

## ⚡ Fase 3: Forjado de Paquetes ICMP
Se ensambló manualmente un paquete **Echo Request** apilando las capas `IP` e `ICMP`. El paquete fue enviado al servidor DNS de Google (`8.8.8.8`).

**Resultado:**  
- El servidor respondió con un `echo-reply` (Tipo 0).  
- El TTL de respuesta (112) sugiere un salto de aproximadamente 16 nodos desde el origen.

![Respuesta ICMP de Google](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/scapy_fase3.png)

---

## 💥 Fase 4: Reconocimiento Activo (SYN Scan)
Se ejecutó un escaneo de puertos sigiloso (Stealth Scan) sobre el puerto 80 de `scanme.nmap.org`.

**Proceso:**  
1. Envío de paquete `IP/TCP` con flag `S` (SYN).  
2. Recepción de flag `SA` (SYN-ACK), confirmando que el puerto está **ABIERTO**.  
3. Envío de flag `R` (RST) para cerrar la conexión sin completar el handshake (evasión de logs).

![Escaneo SYN y Flags SA](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/scapy_fase4.png)

---

## 🧠 Conclusión del Laboratorio
El uso de Scapy ha permitido validar la teoría de protocolos de red mediante la práctica directa. A diferencia de herramientas de escaneo automático, Scapy permite la personalización bit a bit de la trama, lo que resulta fundamental para la evasión de IDS/IPS y el análisis forense de protocolos.

**Próximo Paso:** [Lab 3.2.2: Escaneo Avanzado con Nmap](file:///home/kali/Escritorio/REPOS_cIBER/Cisco/03_reconocimiento_vulnerabilidades/practica/02_reconocimiento_activo/labs/lab_3.2.2_nmap.md)
