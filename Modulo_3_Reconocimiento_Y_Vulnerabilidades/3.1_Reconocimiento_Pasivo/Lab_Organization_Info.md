# Lab: Conociendo más sobre la organización (Reconocimiento Pasivo)

## Introducción
Este laboratorio se enfoca en el reconocimiento pasivo, específicamente en la identificación de brechas de seguridad en correos electrónicos y el análisis de metadatos en archivos públicos.

---

## Parte 1: Información sobre violaciones de correo electrónico

### Paso 1: Investigación de Brechas Online
Determinar si una dirección de correo o un dominio ha sido comprometido es vital para un pentester. 
**Recursos recomendados:**
- [haveibeenpwned.com](https://haveibeenpwned.com)
- [breachdirectory.com](https://breachdirectory.com)

**Actividad:** Consulta un dominio de prueba o uno que conozcas para verificar si existen fugas de credenciales.

### Paso 2: Uso de EmailHarvester
`EmailHarvester` es una herramienta de línea de comandos para recolectar correos electrónicos de un dominio.

**Comandos útiles:**
```bash
# Instalación si no está presente
sudo apt install emailharvester

# Ejecución básica
emailharvester -d <dominio>

# Guardar resultados
emailharvester -d <dominio> -s resultados.txt
```

### Paso 3: Análisis con SpiderFoot
SpiderFoot es una herramienta de automatización de OSINT masiva.

**Ejecución:**
```bash
spiderfoot -l 127.0.0.1:5001
```
Luego, accede a `http://127.0.0.1:5001` en tu navegador para configurar un nuevo escaneo.

---

## Parte 2: Análisis de Metadatos de Archivos

### Paso 1: Uso de ExifTool
Los metadatos pueden revelar autores, software utilizado, fechas de creación e incluso coordenadas GPS.

**Comandos básicos:**
```bash
# Ver todos los metadatos de un archivo
exiftool archivo.jpg

# Listar tipos de archivos soportados
exiftool -listf

# Guardar metadatos en un CSV para análisis masivo
exiftool -csv > metadatos.csv <directorio>
```

### Paso 2: Recolección con GHDB (Google Hacking Database)
Utiliza dorks de Google para encontrar archivos interesantes (PDF, DOCX, JPG) de una organización objetivo para luego analizarlos.

---

## Notas de Progreso y Hallazgos
*Espacio reservado para tus hallazgos durante la práctica.*
