# 📖 Memoria Técnica: Laboratorio 3.2.3 - Análisis de Tráfico con Wireshark y Tcpdump

**Fecha:** 27 de febrero de 2026  
**Auditor:** USER (Didáctico por Antigravity)  
**Escenario:** Intercepción de tráfico hacia Metasploitable2 (`172.17.0.2`)  

---

## 🚀 Fase 1: Identificación y Captura
Se identificó la interfaz de red de Docker (`docker0`) mediante el comando `ip addr`. Posteriormente, se inició una captura de paquetes crudos utilizando `tcpdump` para registrar la actividad de red.

**Comando utilizado:**  
`sudo tcpdump -i docker0 -s 0 -w sniff_traffic.pcap`

![Identificación de interfaz y arranque de tcpdump](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/wireshark_fase1.png)

---

## 🔍 Fase 2: Generación de Tráfico de Auditoría
Se ejecutó un escaneo de Nmap contra los puertos 80 (HTTP) y 2121 (FTP) del objetivo para generar tráfico detectable. El objetivo respondió confirmando la presencia de **Apache 2.2.8** y **ProFTPD 1.3.1**.

![Resultado del escaneo nmap paralelo a la captura](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/wireshark_fase2.png)

---

## 🔬 Fase 3: Análisis Forense en Wireshark

### 3.1 Desglose del Modelo OSI
Al abrir el archivo `.pcap`, se analizaron las capas superiores de los paquetes:
- **Capa 2 (Ethernet):** Direcciones MAC del host y el contenedor.
- **Capa 3 (IP):** Verificación de las IPs `172.17.0.1` (origen) y `172.17.0.2` (destino).
- **Capa 4 (TCP):** Identificación de los puertos de destino (80 y 2121).

![Análisis de capas en Wireshark](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/wireshark_fase3.png)

### 3.2 Reconstrucción de Flujo (TCP Stream)
Se utilizó la función "Follow TCP Stream" para reconstruir la conversación en texto plano. Se logró visualizar el banner del servidor Apache, confirmando que la información de versión es enviada sin cifrado.

![Reconstrucción del banner HTTP Apache](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/wireshark_fase4.png)

---

## ⚡ Fase 4: Filtrado y Hallazgos Extra
Se aplicaron filtros de Wireshark para aislar el tráfico FTP en el puerto 2121, observando los intentos de escaneo y las respuestas del daemon ProFTPD.

![Filtrado de tráfico específico](file:///home/kali/.gemini/antigravity/brain/3d8f12c0-3d5b-44f2-9b91-d9bddb5efba9/wireshark_fase5.png)

---

## 🧠 Conclusión del Auditor
La captura pasiva mediante `tcpdump` combinada con el análisis en Wireshark demuestra que, en redes no conmutadas o mediante técnicas de envenenamiento/mirroring, un atacante puede extraer versiones exactas de servicios y datos sensibles. Implementar cifrado (TLS/SSL) es imperativo para ocultar estos banners y datos de aplicación.

**Fin de la serie de laboratorios de Reconocimiento Activo.**
