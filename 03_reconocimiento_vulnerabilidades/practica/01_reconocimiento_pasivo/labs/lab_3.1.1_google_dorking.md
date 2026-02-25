# Laboratorio 3.1.1: Búsquedas Avanzadas (Google Dorking)

## 🎯 Objetivos
- Utilizar operadores de búsqueda de Google para filtrar resultados.
- Realizar reconocimiento pasivo sobre objetivos específicos.
- Explorar la base de datos de dorks de Google (GHDB).
- Utilizar la Wayback Machine para obtener información histórica.

## 📝 Escenario
El reconocimiento pasivo es una fase crítica del pentesting donde se recolecta información sin interactuar directamente con el objetivo. Google Dorking permite encontrar archivos expuestos, paneles de administración y vulnerabilidades mediante operadores avanzados.

---

## 🛠️ Parte 1: Operadores de Búsqueda de Google

### Operadores Básicos y Pasos
1. **`site:`**: Limita los resultados a un dominio específico.
   - Ejemplo: `site:cisco.com`
2. **`filetype:`**: Busca extensiones de archivo específicas.
   - Ejemplo: `site:example.com filetype:pdf`
3. **`intitle:`**: Busca palabras en el título de la página.
   - Ejemplo: `ethical hacker intitle:certification`
4. **`inurl:`**: Busca palabras dentro de la URL.
   - Ejemplo: `ethical hacker inurl:login`
5. **`allintext:`**: Busca términos específicos solo en el cuerpo del texto.
   - Ejemplo: `allintext:"password list" filetype:txt`

### 💡 Ejercicio de Reconocimiento Pasivo
- **Tarea**: Buscar paneles de administración en un dominio objetivo.
- **Comando**: `site:objetivo.com inurl:admin`
- **Reflexión**: ¿Qué información revela? A menudo expone rutas de CMS (wp-admin), paneles de login o versiones de software.

---

## 🔍 Parte 2: Google Hacking Database (GHDB)

La **GHDB** (mantenida por Exploit-DB) es un repositorio de "dorks" listos para usar que identifican fallos de configuración y archivos sensibles.

### Dorks Interesantes para Probar:
- **`allinurl:tsweb/default.htm`**: Encuentra servidores con servicios de Terminal Server expuestos (Remote Desktop Web Connection).
- **`db_pass` en categorías de contraseñas**: Encuentra archivos de configuración de bases de datos que contienen credenciales en texto plano.

---

## ⏳ Parte 3: Wayback Machine (web.archive.org)

Wayback Machine es un archivo digital de la World Wide Web. Es vital para un hacker o pentester porque:
1. **Información Antigua**: Puede revelar nombres de empleados, correos o tecnologías que ya no están en la web actual pero que fueron indexadas.
2. **Reducción de Detección**: No interactúas con los servidores actuales del objetivo, sino con una copia estática del pasado.

### Técnicas Avanzadas en Wayback:
- **Mapa del Sitio**: Visualiza la evolución de la complejidad del sitio.
- **Cambios (Changes)**: Compara dos versiones para ver qué parches se aplicaron o qué información se eliminó.
- **Búsqueda de archivos `.bak`, `.old`, `.zip`**: Muy efectivo para encontrar copias de seguridad olvidadas en subdirectorios profundos.

---

## 🧠 Pregunta de Reflexión del Mentor
**¿Por qué el reconocimiento pasivo es tan importante para un Pentesting eficaz?**
> *Respuesta*: Porque permite identificar vectores de ataque (como archivos olvidados o paneles expuestos) sin que el equipo de seguridad del objetivo (Blue Team) detecte actividad sospechosa en sus logs. Es el arte de recolectar inteligencia "por debajo del radar".

---
*Documentación generada para el Módulo 3 - Sección 3.1*
