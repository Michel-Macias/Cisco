# 📑 Cheat Sheet: Ingeniería Social (Referencia Rápida)

> **Módulo 04: Cisco Ethical Hacker**

---

## 🎭 1. Vectores de Ataque Comunes

| Tipo | Descripción | Método |
| :--- | :--- | :--- |
| **Phishing** | Suplantación masiva vía email | Enlaces/adjuntos maliciosos |
| **Spear Phishing** | Phishing dirigido (investigación previa) | Contenido personalizado |
| **Whaling** | Dirigido a directivos (CEOs, CFOs) | Asuntos serios/legales |
| **Vishing** | Phishing por voz (teléfono) | Ingeniería social telefónica |
| **Smishing** | Phishing por SMS | Enlaces cortos fraudulentos |
| **Pharming** | Redirección de tráfico legítimo | Envenenamiento de DNS/host |
| **Watering Hole** | Inyectar sitios web que la víctima visita | Inyección XSS/JavaScript |
| **USB Drop** | Dejar memorias USB en sitios públicos | Cargas útiles (autorun) |

---

## 🏗️ 2. Fases de un Ataque de Ingeniería Social

1.  **Investigación (Reconnaissance):** Recolección de OSINT (LinkedIn, Company website).
2.  **Hook (Gancho):** Establecer confianza inicial o crear urgencia.
3.  **Play (Ataque):** Ejecución del vector (vía llamada, email o físico).
4.  **Exit (Salida):** Cerrar la interacción sin sospechas, eliminando rastros.

---

## 🚧 3. Ataques Físicos

*   **Piggybacking:** Entrar con ayuda/permiso (voluntario).
*   **Tailgating:** Entrar detrás de alguien sin su permiso (involuntario).
*   **Dumpster Diving:** Buscar información en la basura (recibos, documentos).
*   **Shoulder Surfing:** Mirar el teclado o pantalla por encima del hombro.
*   **Credential Cloning:** Copiar tarjetas RFID/RF con hardware (Proxmark, Flipper Zero).

---

## 🧠 4. Factores de Influencia (Motivaciones)

*   **Autoridad:** Simular ser un jefe o un policía.
*   **Urgencia:** "Su cuenta será borrada en 20 minutos".
*   **Escasez:** "Solo quedan 2 accesos de invitado".
*   **Prueba Social:** "Todos los de contabilidad ya han actualizado".
*   **Liking (Simpatía):** Crear una conexión personal rápida.
*   **Miedo (Fear):** Evitar consecuencias negativas ("Vas a perder tu trabajo si no haces esto").

---

## 🛡️ 5. Herramientas Clave en Kali

*   **setoolkit:** Automatización de phishing, clonación de sitios y Spear-Phishing.
*   **beef-xss:** Control total del navegador víctima mediante hooks.
*   **social-engineer-toolkit:** El nombre completo del comando de SET.

---

> [!TIP]
> **Defensa principal:** Concientización del usuario + Autenticación Multi-Factor (MFA).

---
*Cisco Ethical Hacker - Cheat Sheet de Referencia*
@m1txel - 2026
