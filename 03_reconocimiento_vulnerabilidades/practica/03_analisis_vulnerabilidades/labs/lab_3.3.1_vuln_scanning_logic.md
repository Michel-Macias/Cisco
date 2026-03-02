# 🧪 Laboratorio 3.3.1: Metodología y Lógica del Escaneo

## 🎯 Objetivos de Aprendizaje
- Planificar una estrategia de escaneo de vulnerabilidades.
- Identificar y mitigar riesgos en sistemas frágiles.
- Configurar parámetros de rendimiento para evitar saturar redes.

---

## 🐳 Infraestructura Docker

Este laboratorio cuenta con un entorno Docker dedicado que simula una planta industrial con dispositivos heterogéneos.

**📁 Ubicación:** `03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/`

### Despliegue Rápido
```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose up -d
docker exec -it lab331_atacante sh
```

### Topología de Red (172.30.0.0/24)
| Dispositivo | IP | Tipo | Fragilidad |
|:---|:---|:---|:---|
| Servidor Linux (Apache/SSH/MySQL) | `172.30.0.10` | Robusto | Baja |
| Servidor Windows (Samba/SMB) | `172.30.0.11` | Robusto | Baja |
| Impresora HP LaserJet 4250 | `172.30.0.20` | **Frágil** | 🔴 Alta |
| PLC Siemens S7-300 | `172.30.0.21` | **Frágil** | 🔴 Muy Alta |
| Firewall Edge (rate-limiting) | `172.30.0.254` | Intermedio | 🟡 Media |
| Estación Atacante (Nmap) | `172.30.0.100` | — | — |

> 📖 **Documentación completa del entorno:** Consulta el [README de la infraestructura](../../infraestructura/lab_3.3.1_vuln_scanning/README.md) para el mapa de red, inventario detallado y ejercicios adicionales.

---

## 👨‍💻 Escenario
Te han asignado la auditoría de una planta industrial que utiliza una mezcla de servidores modernos (Linux/Windows), impresoras de red y dispositivos IoT antiguos (PLCs). La red es crítica y no puede permitirse caídas de servicio.

---

## 🚀 Fase 1: Identificación de la Topología
Antes de lanzar el escáner, debes decidir dónde ubicarlo.

### Paso 1: Descubrir los hosts de la red
```bash
# Desde lab331_atacante:
nmap -sn 172.30.0.0/24
```

### Paso 2: Verificar tu posición en la red
```bash
# ¿Estás en el mismo segmento que los objetivos?
ip addr show
# ¿Hay un firewall entre tú y los objetivos?
traceroute 172.30.0.10
```

🔍 **Análisis**: 
Si colocas el escáner detrás de un firewall de baja potencia:
1. El firewall puede bloquear los paquetes del escáner interpretándolos como un ataque.
2. El firewall puede sobrecalentarse o colapsar procesando las miles de conexiones por segundo.
3. Los resultados del escaneo serán incompletos.

**Prueba práctica → Efecto del firewall:**
```bash
# Escaneo rápido: el firewall con rate-limiting dropeará paquetes
nmap -T4 -p 1-1000 172.30.0.10

# Escaneo lento: los resultados serán más fiables
nmap -T2 --scan-delay 200ms -p 1-1000 172.30.0.10
```
> Compara la cantidad de puertos "filtered" en ambos resultados.

**Regla de Oro**: Escanea siempre desde el mismo segmento de red o asegúrate de que los dispositivos intermedios soportan la carga.

---

## 🚀 Fase 2: Gestión de Sistemas Frágiles
Los dispositivos IoT e impresoras suelen tener "stacks" de red débiles.

### Paso 1: Experimenta con escaneos agresivos vs. sigilosos

#### 🔴 Escaneo AGRESIVO al PLC (demuestra el peligro)
```bash
# ⚠️ Esto es lo que NUNCA debes hacer en una red OT real
nmap -T5 -A -p- 172.30.0.21
```
> **Observa:** El PLC tiene solo 24 MB de RAM. Monitoriza su estado:
> ```bash
> # En otra terminal del host:
> docker stats lab331_plc_iot --no-stream
> ```

#### 🟢 Escaneo SIGILOSO al PLC (la forma correcta)
```bash
nmap -T1 -sV --version-light -p 80,102,502 172.30.0.21
```

### Paso 2: Crear una lista de exclusión
```bash
# Dispositivos que NO deben escanearse agresivamente
echo "172.30.0.20" > /tmp/excluir.txt
echo "172.30.0.21" >> /tmp/excluir.txt

# Escanear solo los servidores robustos
nmap -sV --excludefile /tmp/excluir.txt 172.30.0.0/24
```

⚡ **Acción**: 
- **Exclusión**: Añade las IPs de impresoras y PLCs a la lista de exclusión si no es estrictamente necesario escanearlos.
- **Escaneo Suave**: Si debes escanearlos, utiliza plantillas de "Fragile Devices" o reduce la agresividad (`-T1` en Nmap o reduciendo hilos en Nessus).

---

## 🚀 Fase 3: Optimización del Rendimiento
El ancho de banda es un recurso limitado.

### Paso 1: Limitar la concurrencia
```bash
# Máximo 2 hosts simultáneos, 10 sondas por host
nmap -sV --max-hostgroup 2 --max-parallelism 10 172.30.0.0/24
```

### Paso 2: Ajustar timeouts para redes lentas
```bash
# Timeout extendido para no perder hosts que tardan en responder
nmap -sV --host-timeout 300s --max-retries 2 172.30.0.10-11
```

### Ajustes Recomendados:
- **Reducción de Hilos**: Limita la cantidad de hosts escaneados simultáneamente.
- **Ajuste de Consultas**: Si la red es lenta, aumenta el tiempo de espera (timeout) para evitar que el escáner asuma que un puerto está cerrado cuando simplemente la respuesta tarda en llegar.

---

## 🧠 Reflexión del Mentor
**¿Qué harías si un cliente te pide escanear toda su red de producción a mediodía en un día laborable?**
> *Respuesta*: Debería advertirle sobre el riesgo de denegación de servicio (DoS) involuntario. Lo profesional es pactar una "ventana de mantenimiento" fuera del horario comercial o empezar con un escaneo extremadamente sigiloso y lento para monitorizar el impacto.

---

## 🛡️ Lista de Verificación Pre-Escaneo
1. [ ] ¿Tengo autorización por escrito (RoE)?
2. [ ] ¿He identificado los dispositivos críticos/frágiles?
3. [ ] ¿He configurado el escáner para no saturar el ancho de banda?
4. [ ] ¿El escáner está ubicado en un punto óptimo de la red?

---

## 🧹 Limpieza del Entorno
```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose down
```

---
*Este manual es una adaptación educativa para el curso de Cisco Ethical Hacker.*
