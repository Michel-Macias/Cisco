# 🏗️ Infraestructura: Lab SET Credential Harvester

## 🚀 Despliegue
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_set_credential_harvester/
docker compose up -d
```

## 📦 Contenedores

| Contenedor | IP | Rol | Puerto Host |
|:---|:---|:---|:---|
| `lab_set_target` | `172.31.0.20` | Sitio legítimo (Pixel Paradise) | `localhost:8082` |
| `lab_set_atacante` | `172.31.0.10` | Kali + SET | `localhost:8888` (sitio clonado) |

## 🧪 Flujo del Lab
1. Visita el sitio legítimo: `http://localhost:8082`
2. Conecta al atacante: `docker exec -it lab_set_atacante bash`
3. Lanza SET: `setoolkit`
4. Clona el sitio y captura credenciales en `http://localhost:8888`

## 🧹 Limpieza
```bash
docker compose down
```

---
*Módulo 04 - Cisco Ethical Hacker*
