# 🧪 Laboratorio 3.2.0: Guía Maestra de Reconocimiento Activo

## 🎯 Objetivos de Aprendizaje
- Interactuar directamente con sistemas objetivo para mapear superficies de ataque.
- Utilizar herramientas de escaneo masivo y precisión (Masscan, Nmap).
- Implementar técnicas de evasión de Firewalls e IDS/IPS.
- Realizar enumeración profunda de servicios críticos (SMB, HTTP).

---

## 👨‍💻 Escenario
A diferencia del reconocimiento pasivo, el **reconocimiento activo** implica "tocar" el objetivo. Cada paquete enviado puede ser registrado por un SOC (Security Operations Center). Como auditores, nuestra meta es ser tan precisos y eficientes como sea posible, extrayendo el máximo de información con el mínimo de ruido necesario, o bien, simulando ataques ruidosos para probar las capacidades de detección del cliente.

---

## 🚀 Parte 1: Descubrimiento Masivo y de Precisión

### 1.1 Escaneo de Alta Velocidad (Masscan)
Masscan es ideal para perímetros extensos. Puede escanear el Internet completo en minutos si se tiene el ancho de banda necesario.
```bash
# Escanear puertos web en una subred /24 a una tasa de 10k paquetes/seg
sudo masscan -p80,443 192.168.1.0/24 --rate=10000
```

### 1.2 Escaneo Detallado (Nmap)
Una vez identificados los hosts "vivos", pasamos a Nmap para un análisis quirúrgico.
```bash
# Escaneo de todos los puertos con detección de servicios y SO
nmap -p- -sV -O -v <target_ip>
```

---

## 🛡️ Parte 2: Evasión de Defensas (Firewall & IDS)

Los sistemas de defensa modernos bloquean escaneos obvios. Debemos "moldear" nuestro tráfico.

### Técnicas de Sigilo:
- **Fragmentación (`-f`):** Divide las cabeceras TCP para que los IDS no puedan compararlas con firmas conocidas.
- **Señuelos (`-D`):** Envía escaneos desde múltiples IPs falsas junto con la tuya para camuflar el origen real.
- **Timing (`-T<0-5>`):** Use `-T2` (Polite) o `-T1` (Sneaky) para evitar disparar alertas por umbral de velocidad.

```bash
# Escaneo fragmentado con señuelos y timing sigiloso
sudo nmap -f -D RND:10 -T2 <target_ip>
```

---

## 🔍 Parte 3: Enumeración de Servicios Críticos

Identificar un puerto abierto es solo el principio. Debemos saber *qué* hay dentro.

### 3.1 Protocolo SMB (Puertos 139, 445)
Es el vector favorito para movimientos laterales y escalada de privilegios.
```bash
# Enumeración completa con enum4linux-ng
enum4linux-ng -A <target_ip>

# Listar recursos compartidos de forma anónima
smbclient -L \\\\<target_ip> -N
```

### 3.2 Servidores Web (Puertos 80, 443)
```bash
# Escaneo de vulnerabilidades y configuraciones por defecto
nikto -h http://<target_ip>
```

---

## 🏗️ Parte 4: Ingeniería de Paquetes con Scapy

Cuando las herramientas estándar fallan, forjamos nuestros propios paquetes.
```python
# Abrir entorno de forjado
sudo scapy

# Crear un paquete TCP SYN personalizado con un payload específico
>>> pkt = IP(dst="10.6.6.23")/TCP(dport=80, flags="S")/"GET / HTTP/1.1\r\n\r\n"
>>> send(pkt)
```

---

## 🧠 Reflexión del Mentor
**¿Cuál es el mayor riesgo del Reconocimiento Activo?**
> *Respuesta*: El **bloqueo preventivo**. Un escaneo mal configurado puede hacer que tu IP de auditoría sea baneada automáticamente por el Firewall perimetral, impidiéndote continuar con las fases de explotación. Siempre comienza de lo más sigiloso a lo más ruidoso.

---
*Este manual consolida las técnicas de interacción directa del Módulo 3 - Sección 3.2.*