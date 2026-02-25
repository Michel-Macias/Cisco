# 🧪 Laboratorio 3.2.1: Elaboración de Paquetes con Scapy

## 🎯 Objetivos
- Investigar las capacidades de Scapy para la manipulación de paquetes.
- Filtrar y rastrear tráfico de red en tiempo real.
- Crear y enviar paquetes personalizados (ICMP y TCP SYN) para reconocimiento.

---

## 👨‍💻 Escenario
Scapy es la "navaja suiza" del networking en Python. Permite a un auditor de seguridad forjar paquetes campo por campo, lo que es esencial para evadir sistemas de detección simple o probar cómo responde una red ante cabeceras malformadas o inesperadas.

---

## 🚀 Fase 1: Iniciación en Scapy

### Paso 1: Acceso con Privilegios
Para manipular interfaces de red y enviar paquetes crudos, Scapy requiere permisos de root.
```bash
sudo scapy
```

### Paso 2: Exploración de Protocolos
Dentro del intérprete de Scapy (>>>), puede listar todos los protocolos soportados:
```python
ls()
```
Para ver los campos específicos de un encabezado (ej. IP):
```python
ls(IP)
```
*   **Campos clave de IP:** `src` (origen), `dst` (destino), `ttl` (tiempo de vida), `proto` (protocolo de capa superior).

---

## 🔍 Fase 2: Sniffing (Rastreo de Tráfico)

Scapy puede actuar como un analizador de tráfico.
```python
# Capturar 5 paquetes y mostrarlos
pkts = sniff(count=5)
pkts.summary()

# Mostrar detalles del primer paquete capturado
pkts[0].show()
```

---

## ⚡ Fase 3: Creación de Paquetes ICMP (Ping Personalizado)

Vamos a forjar un paquete Echo Request manualmente.

### 1. Definir las capas
```python
capa_ip = IP(dst="8.8.8.8")
capa_icmp = ICMP()
```

### 2. Ensamblar y enviar
En Scapy, las capas se apilan usando el operador `/`.
```python
paquete = capa_ip / capa_icmp
respuesta = sr1(paquete) # sr1: enviar y esperar 1 respuesta

if respuesta:
    respuesta.show()
```

---

## 💥 Fase 4: Escaneo TCP Stealth (SYN Scan)

Un escaneo SYN es "semi-abierto" porque no completa el saludo de 3 vías, lo que a veces evita ser registrado por aplicaciones.

### Crear un paquete SYN manual:
```python
# dst: objetivo, dport: puerto destino, flags: "S" para SYN
syn_pkt = IP(dst="scanme.nmap.org") / TCP(dport=80, flags="S")
respuesta = sr1(syn_pkt)

if respuesta and respuesta.haslayer(TCP):
    if respuesta.getlayer(TCP).flags == 0x12: # 0x12 es SYN-ACK
        print("Puerto ABIERTO")
        # Enviar un RST para cerrar la conexión limpiamente
        send(IP(dst="scanme.nmap.org") / TCP(dport=80, flags="R"))
    elif respuesta.getlayer(TCP).flags == 0x14: # 0x14 es RST-ACK
        print("Puerto CERRADO")
```

---

## 🧠 Reflexión del Mentor
**¿Por qué usar Scapy si Nmap ya hace escaneos SYN de forma automática?**
> *Respuesta*: Porque Scapy te da el control total. Puedes cambiar el TTL para mapear distancias, modificar el ID de fragmentación para probar firewalls, o incluso crear protocolos propietarios. Nmap es un escáner; Scapy es un laboratorio de ingeniería de protocolos.

---
*Este laboratorio es una adaptación educativa del currículo oficial de Cisco para el curso de Ethical Hacker.*
