# 📖 Guía Inicial del Laboratorio (Web Hacking)

Esta guía documenta rápida y procedimentalmente el vector de ataque principal para iniciar las pruebas en el entorno **Cisco Ethical Hacker (Módulo 99)**.

## 1. Acceso a DVWA (Damn Vulnerable Web App)
DVWA es una app clásica en PHP/MySQL para probar vulnerabilidades comunes de OWASP.

- **URL:** [http://127.0.0.1:80](http://127.0.0.1:80)
- **Credenciales por defecto:** `admin` / `password`
- **Primer Paso (IMPORTANTE):** 
  Al entrar por primera vez, serás redirigido a `setup.php`. Debes hacer clic en el botón **"Create / Reset Database"** para inicializar la base de datos MySQL subyacente. Luego de esto, inicia sesión.

### Modalidades de Dificultad
A la izquierda tendrás el tab "DVWA Security". Puedes alternar entre 4 niveles:
- **Low:** Sin protecciones. Ideal para validar conceptos básicos de inyección.
- **Medium:** Sanitización ligera (e.g. `mysql_real_escape_string` parcial). Exige bypass visual o de encoding.
- **High:** Exige saltos de lógica potentes.
- **Impossible:** Código securizado. Útil para revisión de código (White Box) como estándar "Blue Team".

---

## 2. Acceso a OWASP Juice Shop
Juice Shop es una aplicación moderna (Node.js/Angular) mucho más cercana a lo que te encontrarás en auditorías reales modernas (SPA - Single Page Application).

- **URL:** [http://127.0.0.1:3000](http://127.0.0.1:3000)
- **Credenciales:** Para empezar, debes atacar el panel de Login mediante SQL Injection para saltar el login del Admin o registrar tu propio usuario (para vectores IDOR).
- **Flujo de Trabajo:** La aplicación cuenta con un *Score Board* (Tabla de Puntuaciones) oculto. ¡Encontrarlo es tu primer reto!

### Reto Inicial: Encontrar el Score Board
*Pista:* Inspecciona los comentarios en el código fuente de JS o revisa el mapa de rutas web de un escaneo con dirb/gobuster o ZAP proxy.

---

> **Nota:** Todos los datos recopilados (diccionarios, hashes extraídos o capturas de payload exitosos) deben almacenarse en el directorio `05_evidencias_recursos/` para tu informe final.
