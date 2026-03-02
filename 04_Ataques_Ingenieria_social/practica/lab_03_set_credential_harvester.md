# 🎯 LAB 03: SET Credential Harvester - Clonación y Captura de Credenciales

> **Módulo 04 - Cisco Ethical Hacker | Dificultad: ⭐⭐⭐ Media**

---

## 🎯 Objetivos de Aprendizaje
- Clonar un sitio web corporativo para capturar credenciales.
- Entender el flujo completo de un ataque de *Credential Harvesting*.
- Analizar las credenciales capturadas y comprender el impacto.
- Identificar las señales de alerta que delatan un sitio clonado.

---

## 🐳 Infraestructura Docker

**📁 Ubicación:** `04_Ataques_Ingenieria_social/infraestructura/lab_set_credential_harvester/`

### Arquitectura del Lab

```
┌─────────────────────────────────────────────────┐
│            Red: 172.31.0.0/24                   │
│                                                 │
│  ┌──────────────────┐   ┌──────────────────┐   │
│  │  🔴 ATACANTE     │   │  🟢 SITIO REAL   │   │
│  │  Kali + SET      │   │  Pixel Paradise  │   │
│  │  172.31.0.10     │   │  172.31.0.20     │   │
│  │  :8888 (clonado) │   │  :8082 (legítimo)│   │
│  └──────────────────┘   └──────────────────┘   │
│                                                 │
│  ┌──────────────────────────────────────────┐   │
│  │  👤 VÍCTIMA (tu navegador en el host)    │   │
│  │  Accede al sitio clonado sin saberlo     │   │
│  └──────────────────────────────────────────┘   │
└─────────────────────────────────────────────────┘
```

### Despliegue
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_set_credential_harvester/
docker compose up -d
```

### Verificación
```bash
# El sitio legítimo debe estar accesible:
curl -s http://localhost:8082 | head -5

# Acceder al atacante:
docker exec -it lab_set_atacante bash
```

---

## 👨‍💻 Escenario

Eres un pentester contratado por **Pixel Paradise Inc.** para evaluar la resistencia de sus empleados ante ataques de phishing. Tu objetivo es clonar el portal corporativo y demostrar que un atacante podría capturar credenciales sin que los empleados se den cuenta.

**Reglas de Engagement (RoE):**
- Solo clonar el portal interno de Pixel Paradise.
- No acceder a sistemas reales con las credenciales capturadas.
- Documentar todo para el informe ejecutivo.

---

## 🚀 Fase 1: Reconocimiento del Objetivo

### Paso 1: Inspeccionar el sitio legítimo
Abre tu navegador y visita el sitio real:
```
http://localhost:8082
```

**Documenta:**
- [ ] ¿Qué campos tiene el formulario de login?
- [ ] ¿Usa HTTPS? (Pista: no, y eso es un problema)
- [ ] ¿Tiene algún captcha o 2FA visible?

### Paso 2: Analizar el HTML del sitio
```bash
# Desde el host o el contenedor atacante:
curl -s http://172.31.0.20 | grep -i "form\|input\|action"
```

> **💡 Insight del pentester:** Si el formulario envía datos a `action="#"` o `action=""`, es más fácil de clonar porque no depends de endpoints específicos del backend.

---

## 🚀 Fase 2: Ataque - Credential Harvester con SET

### Paso 1: Accede al contenedor atacante
```bash
docker exec -it lab_set_atacante bash
```

### Paso 2: Lanza Social-Engineer Toolkit
```bash
setoolkit
```

### Paso 3: Navega por el menú de SET
Sigue esta secuencia **exacta**:

```
1) Social-Engineering Attacks
  ↓
2) Website Attack Vectors
  ↓
3) Credential Harvester Attack Method
  ↓
2) Site Cloner
```

### Paso 4: Configuración del ataque
Cuando SET te pida los datos:

1. **IP for the POST back (Harvester):**
   ```
   172.31.0.10
   ```
   > Esta es la IP de tu contenedor atacante dentro de la red Docker.

2. **URL to clone:**
   ```
   http://172.31.0.20
   ```
   > Esta es la IP del sitio Pixel Paradise dentro de la red.

3. SET clonará el sitio y levantará un servidor Apache en el puerto **80** de tu contenedor.

### Paso 5: Verificar que el sitio clonado funciona
Desde tu navegador en el host, accede a:
```
http://localhost:8888
```

> **¿Ves el portal de Pixel Paradise?** Si sí, el ataque está en marcha. 🎣

---

## 🚀 Fase 3: Captura de Credenciales

### Paso 1: Simula ser la víctima
En una pestaña separada del navegador (o modo incógnito), accede al **sitio clonado**:
```
http://localhost:8888
```

### Paso 2: Introduce credenciales de prueba
Rellena el formulario con datos ficticios:
- **Usuario:** `omar.sanchez@pixelparadise.com`
- **Contraseña:** `MiContraseñaSegura123!`

Haz clic en **Entrar**.

### Paso 3: Verifica la captura en SET
Vuelve a la terminal del atacante. Deberías ver algo como:
```
[*] WE GOT A HIT! Printing the output:
PARAM: username=omar.sanchez%40pixelparadise.com
PARAM: password=MiContrase%C3%B1aSegura123%21
[*] HARVESTER HIT! File written to /root/.set/reports/
```

### Paso 4: Revisar el reporte
```bash
cat /root/.set/reports/*.xml 2>/dev/null || cat /root/.set/reports/*.html 2>/dev/null
```

---

## 🚀 Fase 4: Análisis y Documentación

### Comparación: Sitio Real vs. Clonado

| Aspecto | Sitio Real (:8082) | Sitio Clonado (:8888) |
|:---|:---|:---|
| URL | `http://localhost:8082` | `http://localhost:8888` |
| Certificado SSL | ❌ No tiene | ❌ No tiene |
| Formulario idéntico | ✅ | ✅ |
| POST de credenciales | → `#` (mismo sitio) | → Atacante |
| Diferencias visuales | — | Ninguna aparente |

### Señales de Alerta para la Víctima
1. **URL diferente** → el dominio no coincide con el real.
2. **Sin HTTPS** → no hay candado en la barra de navegación.
3. **Redirección sospechosa** → después de "loguearse", puede redirigir a otro sitio.

---

## 🧠 Reflexión del Mentor

**¿Cómo protegerías a la empresa contra este ataque?**

> **Respuesta:**
> 1. **HTTPS obligatorio** con HSTS → impide que el sitio clonado se parezca al real.
> 2. **2FA/MFA** → aunque capturen la contraseña, no pueden entrar sin el segundo factor.
> 3. **Formación continua** → los empleados deben verificar SIEMPRE la URL antes de introducir credenciales.
> 4. **Monitorización DNS** → detectar dominios similares registrados recientemente (typosquatting).
> 5. **Políticas SPF/DKIM/DMARC** → impedir el envío de emails desde dominios suplantados.

---

## 🛡️ Checklist de Verificación

- [ ] ¿He clonado el sitio correctamente con SET?
- [ ] ¿He capturado credenciales de prueba?
- [ ] ¿He identificado las diferencias entre el sitio real y el clonado?
- [ ] ¿He documentado las contramedidas recomendadas?
- [ ] ¿He incluido este hallazgo en mi informe de auditoría?

---

## 🧹 Limpieza
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_set_credential_harvester/
docker compose down
```

---

> [!IMPORTANT]
> **Recordatorio Legal:** La clonación de sitios web y la captura de credenciales sin autorización es un delito. Este lab solo debe realizarse en entornos controlados y con RoE firmado.

---
*Módulo 04 - Cisco Ethical Hacker*
