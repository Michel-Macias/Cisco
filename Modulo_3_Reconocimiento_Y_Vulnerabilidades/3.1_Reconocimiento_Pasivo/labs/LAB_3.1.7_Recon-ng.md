# Guía de Laboratorio: Reconocimiento con Recon-ng

## Introducción
Recon-ng es un framework de reconocimiento web (OSINT) escrito en Python. Su interfaz es similar a Metasploit, lo que facilita su uso para quienes están familiarizados con herramientas de pentesting. Este laboratorio guía al estudiante a través del flujo de trabajo básico, desde la instalación de módulos hasta la ejecución de un escaneo de subdominios.

---

## Objetivos del Aprendizaje
- Familiarizarse con la interfaz de línea de comandos (CLI) de Recon-ng.
- Aprender a gestionar el mercado de módulos (marketplace).
- Configurar y ejecutar un módulo de recolección de información.

---

## Paso 1: Iniciación del Framework
Para comenzar, abra una terminal en Kali Linux y ejecute el comando principal.

```bash
recon-ng
```

### Análisis del Entorno
Al iniciar, verá un banner similar al siguiente, indicando la versión y el número de módulos cargados por defecto.

```text
    _/_/_/    _/_/_/_/    _/_/_/    _/_/_/    _/      _/            _/      _/    _/_/_/  
   _/    _/  _/        _/        _/      _/  _/_/    _/            _/_/    _/  _/         
  _/_/_/    _/_/_/    _/        _/      _/  _/  _/  _/  _/_/_/_/  _/  _/  _/  _/  _/_/_/  
 _/    _/  _/        _/        _/      _/  _/    _/_/            _/    _/_/  _/      _/   
_/    _/  _/_/_/_/    _/_/_/    _/_/_/    _/      _/            _/      _/    _/_/_/      

                     [recon-ng v5.1.2, Tim Tomes (@lanmaster53)]            

 [4] Recon modules  
 [1] Discovery modules  

[recon-ng][default] > 
```

---

## Paso 2: Exploración de Comandos
El comando `help` es fundamental para entender las capacidades del framework.

| Comando | Descripción |
| :--- | :--- |
| `back` | Sale del contexto actual. |
| `dashboard` | Muestra un resumen de la actividad y base de datos. |
| `db` | Interfaz con la base de datos del workspace. |
| `keys` | Gestiona credenciales de APIs de terceros. |
| `marketplace` | Permite buscar e instalar nuevos módulos. |
| `modules` | Permite cargar y gestionar módulos instalados. |
| `workspaces` | Gestiona entornos de trabajo aislados. |

---

## Paso 3: Gestión del Marketplace
Recon-ng es modular. Muchos módulos no vienen instalados por defecto para mantener el framework ligero.

### Buscar Módulos
Para listar todos los módulos disponibles en la nube:
```bash
[recon-ng][default] > marketplace search
```

> **Nota técnica:** En el resultado, la columna **D** indica dependencia de librerías externas y la columna **K** indica que el módulo requiere una **API Key** para funcionar (ej. Censys, Shodan).

### Actualizar el Índice
Es recomendable refrescar el mercado antes de buscar nuevos módulos:
```bash
[recon-ng][default] > marketplace refresh
```

---

## Paso 4: Instalación y Carga de un Módulo
En este ejemplo, utilizaremos el motor de búsqueda **Bing** para encontrar subdominios de un objetivo.

### 1. Buscar el módulo
```bash
[recon-ng][default] > marketplace search bing
```

### 2. Instalar el módulo deseado
```bash
[recon-ng][default] > marketplace install recon/domains-hosts/bing_domain_web
```

### 3. Cargar el módulo al contexto actual
```bash
[recon-ng][default] > modules load recon/domains-hosts/bing_domain_web
[recon-ng][default][bing_domain_web] > 
```

---

## Paso 5: Configuración y Ejecución
Una vez cargado el módulo, debemos definir el objetivo (SOURCE) y lanzar el escaneo.

### Inspeccionar Opciones
```bash
[recon-ng][default][bing_domain_web] > info
```
Esto mostrará los parámetros requeridos. El parámetro `SOURCE` es crítico.

### Establecer el Objetivo
Configuraremos el dominio `h4cker.org` como fuente de información:
```bash
[recon-ng][default][bing_domain_web] > options set SOURCE h4cker.org
```

### Ejecutar el Escaneo
```bash
[recon-ng][default][bing_domain_web] > run
```

### Resultado Esperado
El módulo consultará a Bing y extraerá los nombres de host detectados, guardándolos automáticamente en la base de datos del workspace:
```text
[*] Host: bootcamp.h4cker.org  
[*] Host: webapps.h4cker.org  
[*] Host: lpb.h4cker.org  
[*] Host: malicious.h4cker.org  

-------  
SUMMARY  
-------  
[*] 4 total (0 new) hosts found.
```

---

---

## 🧠 Reflexión del Mentor
**¿Por qué usar Recon-ng en lugar de simples comandos de consola?**
> *Respuesta*: Por la **gestión de datos**. Recon-ng no es solo un recolector; es un gestor de base de datos. Cada host que encuentra Bing, cada IP que resuelve Google, y cada contacto que extrae LinkedIn se guarda en tablas relacionales. Esto te permite, al final del día, generar un informe completo consolidando fuentes dispares en un único lugar sin tener que copiar y pegar manualmente.

---

## 📑 Resumen de Flujo de Trabajo (Cheat Sheet)

| Comando | Función |
| :--- | :--- |
| `workspaces create <nombre>` | Crear un entorno aislado para un cliente/proyecto. |
| `marketplace install <modulo>` | Descargar el módulo desde el repositorio oficial. |
| `modules load <modulo>` | Cargar el módulo seleccionado para su uso. |
| `options set SOURCE <objetivo>` | Definir el dominio o IP sobre el cual actuar. |
| `run` | Iniciar la ejecución del módulo. |
| `show hosts` | Visualizar todos los subdominios descubiertos en el workspace. |

---
*Este laboratorio es una adaptación educativa del currículo oficial de Cisco para el curso de Ethical Hacker.*