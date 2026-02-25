# 🐳 Entorno Docker: Laboratorio de Hacking y Pruebas
> **Módulo 99 - Centro de Operaciones y Prácticas**

Este repositorio contiene la infraestructura centralizada mediante contenedores para llevar a cabo los laboratorios de penetración del itinerario **Cisco Ethical Hacker**.

El entorno ha sido adaptado y optimizado teniendo en cuenta los recursos del sistema anfitrión (8GB RAM), permitiendo desplegar aplicaciones vulnerables de manera controlada y escalable.

---

## 🏗️ Estructura del Entorno

*   📁 `01_infraestructura/`: Archivos `docker-compose.yml`, configuraciones de red y Dockerfiles para levantar las aplicaciones vulnerables.
*   📁 `02_guias_laboratorio/`: Instrucciones paso a paso para abordar cada reto o aplicación desplegada.
*   📁 `03_informes_resultados/`: Plantillas y reportes generados tras comprometer los laboratorios.
*   📁 `04_scripts_utilidades/`: Scripts de automatización en Bash para levantar, pausar y destruir el entorno fácilmente.
*   📁 `05_evidencias_recursos/`: Capturas de pantalla, volcados de red y artefactos extraídos de los contenedores.
*   📁 `06_retos/`: Directorios específicos por reto si requieren código fuente o material adicional.

---

## 🚀 Despliegue Rápido (Modo Dios)

Para gestionar los laboratorios sin tener que escribir comandos de Docker largos, se ha incluido una utilidad centralizada en Bash.

### Módulo Actual: **Web Hacking (DVWA & Juice Shop)**
Las máquinas virtuales/contenedores configuradas actualmente exponen:
- **Puerto 80**: DVWA (Damn Vulnerable Web Application)
- **Puerto 3000**: OWASP Juice Shop

### Levantar el entorno:
```bash
./04_scripts_utilidades/gestionar_lab.sh start
```

### Detener el entorno (conserva datos):
```bash
./04_scripts_utilidades/gestionar_lab.sh stop
```

### Destruir el entorno (borra bases de datos):
```bash
./04_scripts_utilidades/gestionar_lab.sh clean
```

---

## ⚠️ Consideraciones de Rendimiento
Dado que el host tiene **~8 GB de Memoria RAM**, es vital:
1.  **No ejecutar todos los servicios a la vez** si se va a lanzar una herramienta de fuzzeo intensiva como BurpSuite o ZAP en paralelo desde el anfitrión.
2.  Al detener pruebas, usar `./gestionar_lab.sh stop` para liberar memoria inmediatamente.
3.  Los servicios están configurados con límites de memoria y reinicio en el `docker-compose.yml` para evitar OOM (Out Of Memory).

---

## ⚖️ Seguridad del Entorno
> **ATENCIÓN:** Los contenedores alojan aplicaciones **extremadamente vulnerables** por diseño (RCE, SQLi, etc.).
> - **Nunca** expongas estos contenedores a Internet (solo bindéalos a `127.0.0.1`).
> - Usa redes Bridge aisladas dentro de Docker.
