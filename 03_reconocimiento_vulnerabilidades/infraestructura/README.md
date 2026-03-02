# 🐳 Infraestructura Docker - Módulo 03

> Entornos Docker para los laboratorios prácticos del módulo de Reconocimiento y Vulnerabilidades.

---

## 📦 Entornos Disponibles

### 1. Servidor DNS (Lab 3.1.2)
Servidor BIND9 para practicar consultas DNS.

```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.1.2_dns_recon/
docker compose up -d
# Uso: nslookup target.local 127.0.0.1
```

| Servicio | Puerto | Imagen |
|:---|:---|:---|
| DNS (BIND9) | `53/tcp`, `53/udp` | `ubuntu/bind9:latest` |

---

### 2. Red Industrial - Lab 3.3.1 (Escaneo de Vulnerabilidades)
Simula una planta industrial con dispositivos heterogéneos para practicar la metodología de escaneo.

```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/lab_3.3.1_vuln_scanning/
docker compose up -d
docker exec -it lab331_atacante sh
```

📖 **[Documentación completa](./lab_3.3.1_vuln_scanning/README.md)**

| Dispositivo | IP | Puertos |
|:---|:---|:---|
| Servidor Linux | `172.30.0.10` | SSH(22), HTTP(80), MySQL(3306) |
| Servidor Windows (Samba) | `172.30.0.11` | SMB(139, 445) |
| Impresora HP | `172.30.0.20` | HTTP(80), JetDirect(9100) |
| PLC Siemens S7-300 | `172.30.0.21` | HTTP(80), Modbus(502), S7comm(102) |
| Firewall Edge | `172.30.0.254` | HTTP(8080) |
| Atacante (Nmap) | `172.30.0.100` | — |

---

## 🧹 Limpieza Global
Para detener todos los entornos de este módulo:
```bash
cd 03_reconocimiento_vulnerabilidades/infraestructura/
docker compose down
cd lab_3.3.1_vuln_scanning/ && docker compose down
```

---
*Módulo 03 - Cisco Ethical Hacker*
