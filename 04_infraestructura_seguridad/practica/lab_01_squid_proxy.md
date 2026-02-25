# 🛠️ LAB 01: Implementación de Proxy Squid en Linux

## Objetivos
*   Instalar y configurar el servidor proxy Squid.
*   Implementar listas de control de acceso (ACL) para filtrado de contenido.
*   Configurar autenticación básica de usuarios.
*   Monitorear el tráfico de red en tiempo real.

---

## 💻 Escenario
Eres el Administrador de Sistemas de una empresa que quiere mejorar el rendimiento de la red y bloquear el acceso a sitios que consumen mucho ancho de banda (como redes sociales) durante el horario laboral.

---

## 🚀 Paso 1: Instalación de Squid

En un sistema basado en Debian/Ubuntu (como tu Kali):
```bash
sudo apt update
sudo apt install squid -y
```

Verifica que el servicio esté corriendo:
```bash
sudo systemctl status squid
```

---

## ⚙️ Paso 2: Configuración de Reglas de Acceso (ACL)

El archivo de configuración principal está en `/etc/squid/squid.conf`. Siempre haz un backup antes de editar:
```bash
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.bak
```

### 2.1 Bloquear sitios específicos
Edita el archivo (`sudo nano /etc/squid/squid.conf`) y añade estas líneas **antes** de la regla `http_access deny all`:

```squid
# Definir sitios bloqueados
acl sitios_prohibidos dstdomain .facebook.com .instagram.com .tiktok.com

# Aplicar la restricción
http_access deny sitios_prohibidos
```

### 2.2 Permitir solo tu red local
```squid
acl mi_red_local src 192.168.1.0/24
http_access allow mi_red_local
```

---

## 🔐 Paso 3: Configuración de Autenticación (Opcional)

Si quieres que los empleados tengan que introducir su usuario y contraseña:

1.  Instala las utilidades de Apache: `sudo apt install apache2-utils`
2.  Crea el archivo de contraseñas: `sudo htpasswd -c /etc/squid/passwd usuario1`
3.  Añade la lógica al `squid.conf`:
```squid
auth_param basic program /usr/lib/squid/basic_ncsa_auth /etc/squid/passwd
auth_param basic realm Proxy de la Empresa
acl usuarios_autenticados proxy_auth REQUIRED
http_access allow usuarios_autenticados
```

---

## 📊 Paso 4: Monitoreo y Verificación

Reinicia el servicio para aplicar cambios:
```bash
sudo systemctl restart squid
```

Para ver quién está navegando y a dónde en tiempo real:
```bash
tail -f /var/log/squid/access.log
```

---

## 💡 Reflexión Técnica
El uso de un proxy mejora el rendimiento gracias a la **Caché**. Si un usuario descarga una actualización de Windows, el proxy la guarda. Cuando el segundo usuario la pide, se entrega desde el servidor local a velocidad de LAN, ahorrando ancho de banda de internet.

---
> **Reto:** Configura Squid en el puerto `8080` en lugar del predeterminado `3128`. ¿Qué línea del archivo de configuración debes cambiar?
