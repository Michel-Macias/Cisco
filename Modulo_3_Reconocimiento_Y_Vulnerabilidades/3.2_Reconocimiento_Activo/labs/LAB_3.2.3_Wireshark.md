# 🧪 Laboratorio 3.2.3: Análisis de Tráfico con Wireshark y Tcpdump

## 🎯 Objetivos
- Capturar tráfico de red en tiempo real utilizando `tcpdump`.
- Analizar flujos de comunicación y protocolos mediante Wireshark.
- Identificar información sensible (DNS, HTTP) en capturas de paquetes.

---

## 👨‍💻 Escenario
Wireshark es la herramienta definitiva para el análisis de protocolos. Para un hacker ético, saber leer "entre líneas" en una captura de paquetes permite descubrir desde credenciales en texto plano hasta señales de un malware comunicándose con su servidor de Comando y Control (C2). En este laboratorio, aprenderemos a capturar tráfico de forma eficiente y a filtrarlo para encontrar inteligencia valiosa.

---

## 🚀 Fase 1: Captura de Tráfico con `tcpdump`

En muchos entornos (como servidores remotos), no disponemos de una interfaz gráfica. `tcpdump` es el estándar para capturar tráfico desde la CLI.

### Paso 1: Identificar la Interfaz
```bash
ifconfig # o 'ip addr'
```

### Paso 2: Ejecutar la Captura
Capturaremos el tráfico y lo guardaremos en un archivo `.pcap` para su posterior análisis.
```bash
# -i eth0: Interfaz, -s 0: Paquete completo, -w: Guardar en archivo
sudo tcpdump -i eth0 -s 0 -w sniff_traffic.pcap
```
*   **Acción:** Mientras `tcpdump` corre, abra un navegador y visite un sitio (ej. `google.com`). Luego detenga la captura con `CTRL+C`.

---

## 🔍 Fase 2: Análisis con Wireshark

### Paso 1: Carga de Datos
Abra el archivo generado:
```bash
wireshark sniff_traffic.pcap
```

### Paso 2: Análisis de DNS (Huella Digital)
El tráfico DNS revela qué dominios está consultando un usuario, lo que ayuda a perfilar sus hábitos.
- **Filtro:** Escriba `dns` en la barra de filtros.
- **Qué observar:** Busque los paquetes `Standard query`. Verá las URLs que se intentaron resolver.

### Paso 3: Análisis de Capas (Modelo OSI)
Seleccione cualquier paquete y observe el panel central:
1. **Frame:** Detalles de la capa física.
2. **Ethernet II:** Capa de Enlace (Direcciones MAC origen/destino).
3. **Internet Protocol (IP):** Capa de Red (Direcciones IP origen/destino).
4. **Transmission Control Protocol (TCP):** Capa de Transporte (Puertos).

---

## ⚡ Fase 3: Filtrado Avanzado

Para encontrar información específica entre miles de paquetes, los filtros son esenciales:
- `http.request.method == "POST"`: Para encontrar envíos de formularios (posibles passwords).
- `ip.addr == 10.6.6.23`: Todo el tráfico relacionado con un host específico.
- `tcp.flags.syn == 1 and tcp.flags.ack == 0`: Para detectar intentos de conexión (posibles escaneos).

---

## 🧠 Reflexión del Mentor
**¿Por qué Wireshark se considera una herramienta "pasiva"?**
> *Respuesta*: Porque Wireshark solo "escucha" y registra lo que ya está pasando por el cable o el aire. No inyecta paquetes ni interactúa con el flujo de datos. Un administrador de sistemas nunca sabrá que estás capturando su tráfico a menos que tengas acceso físico o lógico a su infraestructura de red (como un puerto SPAN/Mirror en un switch).

---
*Este laboratorio es una adaptación educativa del currículo oficial de Cisco para el curso de Ethical Hacker.*
