# Guía y Laboratorios: Reconocimiento Activo

## Introducción
El reconocimiento activo implica la interacción directa con la superficie de ataque de un objetivo. Esto deja rastros (registros en logs, alertas) en los sistemas del objetivo, a diferencia del reconocimiento pasivo. En esta fase, los evaluadores de penetración envían paquetes a los hosts y analizan las respuestas para mapear las redes, descubrir hosts en vivo, identificar puertos abiertos, enumerar servicios y detectar posibles vulnerabilidades.

## Parte 1: Escaneo de Puertos y Descubrimiento de Hosts
El escaneo de puertos permite determinar el estado de varios puertos (Abierto, Cerrado o Filtrado). 

### Paso 1: Escaneo Básico y Activo con Nmap
Nmap es la herramienta estándar de la industria para el descubrimiento de hosts y escaneo de puertos.
**Comandos útiles (Nmap):**
```bash
# Escaneo básico de todos los puertos TCP:
nmap -p- <target_ip>

# Escaneo agresivo (identificación de OS, versiones, scripts por defecto y traceroute):
nmap -A -T4 <target_ip>

# Descubrimiento de hosts en una subred sin escanear puertos (Ping Sweep):
nmap -sn 192.168.1.0/24
```

### Paso 2: Escaneo Ultrarrápido con Masscan
Masscan es capaz de escanear volúmenes enormes de red transmitiendo millones de paquetes por segundo.
**Comandos útiles (Masscan):**
```bash
# Escanear una subred completa en puertos web específicos de forma sumamente rápida:
masscan -p80,8000-8100 10.0.0.0/8 --rate=10000

# Escanear todos los puertos TCP y UDP en un objetivo específico:
masscan -p1-65535,U:1-65535 <target_ip> --rate=1000
```

## Parte 2: Evasión de Filtros y Firewalls en el Escaneo
Al escanear desde el exterior, los firewalls y los sistemas IDS/IPS inspeccionarán el tráfico de escaneo. Se pueden utilizar técnicas para alterar la firma de los paquetes para saltarse o inferir las reglas del firewall.

### Paso 1: Técnicas de evasión con Nmap
Se emplean opciones especiales para engañar a los equipos de defensa o evitar bloqueos de IDS automatizados.
**Comandos útiles:**
```bash
# Escaneo de puerto TCP ACK (usado a menudo para inferir reglas de firewall):
nmap -sA <target_ip>

# Fragmentación de paquetes (divide la cabecera del paquete en pequeños fragmentos para evadir IDS):
nmap -f <target_ip>
# Modificación personalizada del tamaño máximo de la unidad de transmisión (MTU):
nmap --mtu 24 <target_ip>

# Spoofing (falsificación) de dirección IP de origen y dirección MAC física:
nmap -S <ip_falsa> -e eth0 -Pn <target_ip>
nmap --spoof-mac 00:11:22:33:44:55 <target_ip>
```

## Parte 3: Enumeración de Sistemas y Servicios
Una vez identificados puertos abiertos, el siguiente paso es la enumeración: extraer versiones concretas, nombres de usuario, recursos compartidos o banners del sistema operativo.

### Paso 1: Enumeración de SMB (Samba/Windows)
Si encontramos los puertos 445/139 abiertos, utilizamos herramientas de enumeración especializadas en el protocolo de la red de Windows.
**Comandos útiles:**
```bash
# Enumeración exhaustiva de recursos y cuentas locales con enum4linux:
enum4linux -a <target_ip>
# Su alternativa moderna basada en Python:
enum4linux-ng.py -As <target_ip>

# Interacción y visualización de recursos compartidos directamente con cliente SMB:
smbclient -L \\\\<target_ip> -N
```

### Paso 2: Enumeración de Aplicaciones Web
Cuando descubrimos aplicaciones web expuestas en puertos HTTP/HTTPS, consultamos carpetas por defecto y vulnerabilidades web básicas.
**Comandos útiles:**
```bash
# Forzar búsqueda de directorios comunes mediante el script especializado de Nmap:
nmap -sV --script=http-enum -p 80,443 <target_ip>

# Análisis rápido de vulnerabilidades en el servidor web usando Nikto (genera ruido evidente):
nikto -h <target_ip>
```

## Parte 4: Exploración Interactiva y Elaboración de Paquetes
Con el propósito de determinar cómo responden los sistemas anfitriones a paquetes corruptos o poco comunes, se procede a su forjado manual.

### Paso 1: Creación de Paquetes Personalizados con Scapy
Scapy es un potente framework de generación, manipulación y análisis de paquetes de red. Debe ser ejecutado con permisos elevados para inyectar paquetes.
**Interacción y comandos útiles desde consola:**
```python
# Lanzar Scapy en la terminal de forma interactiva:
sudo scapy

# Explorar los múltiples campos modificables de capas y protocolos (ej. TCP o DNS):
>>> ls(TCP)
>>> ls(DNS)

# Forjar íntegramente de forma interactiva un paquete ICMP básico alterando el payload:
>>> send(IP(dst="192.168.88.251")/ICMP()/"malicious_payload")

# Crear paquetes de tipo TCP SYN y enviarlos almacenando la respuesta en variables (Escaneo en crudo):
>>> ans, unans = sr(IP(dst='192.168.88.251')/TCP(dport=445,flags='S'))
```

## Parte 5: Rastreo e Inspección de Paquetes en Local
Ocasionalmente, el reconocimiento implica situarse estratégicamente en una red de prueba o infiltrada para capturar ("sniffing") lo que viaja en texto plano en la red (ej: Telnet, HTTP, FTP).

### Paso 1: Captura de tráfico (Sniffing)
Las herramientas por excelencia para esta recolección pacífica son tcpdump, tshark o la interfaz Wireshark.
**Comandos útiles:**
```bash
# Capturar la interfaz entera de forma ininterrumpida guardando todo el tráfico en un .pcap con tcpdump:
sudo tcpdump -i eth0 -s 0 -w packetdump.pcap

# Utilizar tshark (versión basada en CLI de Wireshark) para filtrar y capturar apuntando a un host:
sudo tshark host 192.168.78.142

# Estudiar, diseccionar y analizar gráficamente el archivo .pcap:
wireshark packetdump.pcap
```

## Notas de Progreso y Hallazgos
- [x] Estudio y compresión fundamental de las opciones de reconocimiento dinámico y activo.
- [ ] Ejecutar los comandos de escaneo en la topología designada como objetivo.
- [ ] Investigar la integración de escaneo masivo con scripts en Python utilizando Nmap y Scapy.
- [ ] Mantener constancia en evidencias tomadas con capturas de trafico .pcap frente a cada interacción en los exámenes de penetración.