# 🏗️ Infraestructura del Laboratorio 3.3.1: Metodología y Lógica del Escaneo

> **Módulo 03 - Reconocimiento y Vulnerabilidades | Cisco Ethical Hacker**

Este entorno Docker simula una **planta industrial** con dispositivos heterogéneos para practicar la planificación estratégica de un escaneo de vulnerabilidades.

---

## 🎯 Objetivo del Escenario

Aprender a **planificar antes de escanear**. No se trata de lanzar Nmap a ciegas, sino de:

1. **Identificar la topología** y decidir dónde ubicar el escáner.
2. **Clasificar los dispositivos** en robustos vs. frágiles.
3. **Ajustar los parámetros** de rendimiento para no tumbar la red.
4. **Verificar** que tienes autorización (RoE) antes de tocar nada.

---

## 🗺️ Mapa de Red

```
┌──────────────────────────────────────────────────────────────────┐
│                   Red Industrial: 172.30.0.0/24                  │
│                                                                  │
│  ┌─────────────────┐   ┌─────────────────┐                      │
│  │  Servidor Linux  │   │ Servidor Windows │                     │
│  │   172.30.0.10    │   │   172.30.0.11    │                     │
│  │  SSH(22) HTTP(80)│   │   SMB(445/139)   │                     │
│  │  MySQL(3306)     │   │   NetBIOS        │                     │
│  └─────────────────┘   └─────────────────┘                      │
│                                                                  │
│  ╔═══════════════════════════════════════════╗                   │
│  ║   ⚠️  ZONA DE DISPOSITIVOS FRÁGILES  ⚠️   ║                   │
│  ╠═══════════════════════════════════════════╣                   │
│  ║  ┌──────────────┐   ┌──────────────┐     ║                   │
│  ║  │ Impresora HP │   │  PLC Siemens │     ║                   │
│  ║  │ 172.30.0.20  │   │ 172.30.0.21  │     ║                   │
│  ║  │ HTTP JetDir. │   │ Modbus S7comm│     ║                   │
│  ║  │ 32MB RAM     │   │ 24MB RAM     │     ║                   │
│  ║  └──────────────┘   └──────────────┘     ║                   │
│  ╚═══════════════════════════════════════════╝                   │
│                                                                  │
│  ┌─────────────────────────────────┐                            │
│  │  🔥 Firewall Edge (Low-Power)   │                            │
│  │  172.30.0.254  :8080            │                            │
│  │  Rate Limit: 20 SYN/sec        │                            │
│  │  Exceso → DROP silencioso       │                            │
│  └─────────────────────────────────┘                            │
│                                                                  │
│  ┌─────────────────────────────────┐                            │
│  │  💻 Estación Atacante (Nmap)    │                            │
│  │  172.30.0.100                   │                            │
│  └─────────────────────────────────┘                            │
└──────────────────────────────────────────────────────────────────┘
```

---

## 📦 Inventario de Contenedores

| Contenedor | IP | Rol | Puertos | Recursos |
|:---|:---|:---|:---|:---|
| `lab331_servidor_linux` | `172.30.0.10` | Servidor web + SSH + DB | 22, 80, 3306 | 384 MB RAM |
| `lab331_servidor_windows` | `172.30.0.11` | File server (Samba/SMB) | 139, 445 | 128 MB RAM |
| `lab331_impresora_red` | `172.30.0.20` | Impresora HP (JetDirect) | 80, 9100 | **32 MB RAM** |
| `lab331_plc_iot` | `172.30.0.21` | PLC Siemens S7-300 | 80, 102, 502 | **24 MB RAM** |
| `lab331_firewall` | `172.30.0.254` | Firewall con rate-limiting | 8080 | **32 MB RAM** |
| `lab331_atacante` | `172.30.0.100` | Estación de auditoría (Nmap) | — | 256 MB RAM |

> **Nota:** Los dispositivos frágiles tienen memoria y CPU deliberadamente limitadas para simular el comportamiento real de dispositivos IoT/OT.

---

## 🚀 Despliegue

### Requisitos Previos
- Docker y Docker Compose instalados.
- ~1 GB de RAM libre para todos los contenedores.

### 1. Levantar el entorno
```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose up -d
```

### 2. Verificar que todos los contenedores están corriendo
```bash
docker compose ps
```
Deberías ver **6 contenedores** en estado `running`.

### 3. Acceder a la estación atacante
```bash
docker exec -it lab331_atacante sh
```

### 4. Verificar conectividad desde el atacante
```bash
# Ping a todos los hosts
for ip in 10 11 20 21 254; do
  echo -n "172.30.0.$ip -> "
  ping -c 1 -W 1 172.30.0.$ip > /dev/null 2>&1 && echo "UP" || echo "DOWN"
done
```

---

## 🧪 Ejercicios del Laboratorio

### Fase 1: Identificación de la Topología

**Objetivo:** Descubrir todos los hosts de la red antes de escanear.

```bash
# Desde lab331_atacante:
# Descubrimiento de hosts (sin escaneo de puertos)
nmap -sn 172.30.0.0/24
```

**Pregunta clave:** ¿Dónde estás ubicado en la red? ¿Hay algún firewall entre tú y los objetivos?

```bash
# Verificar si hay rate-limiting (observa si los paquetes se dropean)
nmap -sS --scan-delay 0 -p 80 172.30.0.254
```

---

### Fase 2: Gestión de Sistemas Frágiles

**Objetivo:** Demostrar el impacto de un escaneo agresivo vs. uno sigiloso en dispositivos frágiles.

#### 🔴 Experimento A: Escaneo AGRESIVO al PLC (observa el impacto)
```bash
# ¡CUIDADO! Esto simula lo que NO debes hacer en producción
nmap -T5 -A -p- 172.30.0.21
```
> Observa: con solo 24 MB de RAM y 5% de CPU, el contenedor puede volverse extremadamente lento o dejar de responder.

#### 🟢 Experimento B: Escaneo SIGILOSO al PLC
```bash
# Esto es lo correcto para dispositivos frágiles
nmap -T1 -sV --version-light -p 80,102,502 172.30.0.21
```

#### Comparación de resultados:
```bash
# Verifica el estado del PLC después del escaneo agresivo
docker stats lab331_plc_iot --no-stream

# Verifica que la web del PLC sigue respondiendo
wget -qO- http://172.30.0.21 2>/dev/null | head -5
```

#### Lista de exclusión (buena práctica):
```bash
# Crear un archivo de exclusión para dispositivos frágiles
echo "172.30.0.20" > /tmp/excluir.txt
echo "172.30.0.21" >> /tmp/excluir.txt

# Escanear toda la red EXCLUYENDO los frágiles
nmap -sV --excludefile /tmp/excluir.txt 172.30.0.0/24
```

---

### Fase 3: Optimización del Rendimiento

**Objetivo:** Ajustar el rendimiento del escáner para no saturar la red.

#### Escaneo con hilos limitados:
```bash
# Máximo 2 hosts simultáneos, 10 sondas por host
nmap -sV --max-hostgroup 2 --max-parallelism 10 172.30.0.0/24
```

#### Escaneo con timeout extendido (redes lentas):
```bash
# Timeout alto para redes inestables
nmap -sV --host-timeout 300s --max-retries 2 172.30.0.10-11
```

#### Efecto del firewall con rate-limiting:
```bash
# Escaneo rápido → muchos puertos aparecerán como "filtered"
nmap -T4 -p- 172.30.0.10

# Escaneo lento → resultados más fiables
nmap -T2 --scan-delay 200ms -p- 172.30.0.10
```

---

### Fase 4: Verificación Pre-Escaneo (Checklist)

Antes de iniciar cualquier escaneo real, completa esta lista:

- [ ] ✅ ¿Tengo autorización por escrito (RoE)?
- [ ] 🗺️ ¿He identificado los dispositivos críticos/frágiles?  
  → IPs de la impresora (`172.30.0.20`) y PLC (`172.30.0.21`)
- [ ] ⚡ ¿He configurado el escáner para no saturar el ancho de banda?  
  → Usar `-T2` o `--max-parallelism`
- [ ] 📍 ¿El escáner está ubicado en un punto óptimo de la red?  
  → Mismo segmento, sin firewall intermedio
- [ ] 🕐 ¿Es una ventana de mantenimiento adecuada?  
  → Nunca en horario de producción

---

## 📊 Resultados Esperados

| Test | Resultado Esperado |
|:---|:---|
| `nmap -sn 172.30.0.0/24` | 5 hosts descubiertos (10, 11, 20, 21, 254) |
| `nmap -T5 -A -p- 172.30.0.21` | Escaneo lento/incompleto, PLC estresado |
| `nmap -T1 -sV 172.30.0.21` | Resultados limpios sin impacto |
| `nmap -T4 -p- 172.30.0.10` (detrás del FW) | Puertos "filtered" por rate-limiting |
| `nmap -T2 --scan-delay 200ms 172.30.0.10` | Resultados completos y fiables |
| Escaneo con `--excludefile` | Solo escanea servidores, ignora IoT |

---

## 🧹 Limpieza

Para detener y eliminar todos los contenedores del lab:
```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose down
```

Para eliminar también las redes creadas:
```bash
docker compose down --remove-orphans
docker network prune -f
```

---

## ⚠️ Advertencias de Seguridad

> **IMPORTANTE:** Este entorno está diseñado **exclusivamente para aprendizaje**.
> - Todos los contenedores están aislados en una red bridge Docker.
> - No expongas ningún puerto al exterior.
> - Los dispositivos simulados NO son réplicas exactas del firmware real.
> - En un entorno OT/ICS real, **nunca escanees sin autorización formal** y siempre consulta con el equipo de ingeniería de planta.

---

*Laboratorio del Módulo 03 - Cisco Ethical Hacker*
