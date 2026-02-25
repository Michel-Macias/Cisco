# 🧪 Laboratorio 3.1.5: Inteligencia a partir de Certificados SSL/TLS

## 🎯 Objetivos
- Ver y analizar información de certificados SSL desde un navegador.
- Utilizar registros de Transparencia de Certificados (CT) para descubrir subdominios.
- Emplear herramientas de Kali Linux (`sslscan`, `sslyze`) para auditar la seguridad del cifrado.

---

## 👨‍💻 Escenario
Los certificados SSL/TLS no solo sirven para cifrar la comunicación; son una mina de oro para el reconocimiento pasivo. Un certificado a menudo contiene una lista de todos los subdominios para los que es válido (SAN - Subject Alternative Names), revelando infraestructuras de desarrollo, pruebas o administración que no son visibles de otro modo.

---

## 🚀 Fase 1: Análisis desde el Navegador

### Paso 1: Inspección de Certificados
Localice el icono del candado en la barra de direcciones de su navegador (ej: `google.com` o `netacad.com`).
1. Haga clic en el candado -> **La conexión es segura** -> **El certificado es válido**.
2. Inspeccione los campos:
   - **Common Name (CN):** El dominio principal.
   - **Subject Alternative Names (SAN):** Aquí es donde suelen aparecer otros subdominios de la organización.
   - **Validez:** ¿Cuándo caduca? Un certificado caducado es una oportunidad para ataques de denegación de servicio o suplantación.

---

## 🔍 Fase 2: Transparencia de Certificados (CT) con `crt.sh`

La transparencia de certificados obliga a las autoridades (CA) a registrar cada certificado emitido en un log público.
1. Visite [crt.sh](https://crt.sh).
2. Busque un dominio (ej: `cisco.com`).
3. **Análisis de Resultados:**
   - Observe los subdominios que comienzan por `dev-`, `test-`, o `staging-`. Estos suelen tener menos medidas de seguridad que los de producción.
   - Identifique dominios afiliados o infraestructuras compartidas.

---

## 🛠️ Fase 3: Auditoría Técnica con Kali Linux

### 1. `sslscan`
Permite identificar rápidamente qué versiones de protocolo (TLS 1.0, 1.1, 1.2, 1.3) y qué algoritmos de cifrado acepta un servidor.
```bash
sslscan google.com
```
*   **Qué buscar:** Algoritmos débiles (RC4, DES-CBC, MD5) o protocolos obsoletos (SSLv2, SSLv3).

### 2. `sslyze`
Una herramienta más detallada para analizar vulnerabilidades específicas como Heartbleed o fallos en el intercambio de llaves.
```bash
sslyze --regular google.com
```

---

## 🧠 Reflexión del Mentor
**¿Por qué un Pentester profesional siempre revisa los certificados SSL en la fase pasiva?**
> *Respuesta*: Porque los certificados son "firmas" oficiales. Si una empresa registra `vpn-global.empresa.com`, nos está dando la dirección exacta de su puerta de entrada. Si el certificado de `desarrollo.empresa.com` usa un algoritmo débil, sabemos que ese servidor es un punto de entrada potencial mucho más vulnerable que el servidor principal.

---
*Este laboratorio es una adaptación educativa del currículo oficial de Cisco para el curso de Ethical Hacker.*
