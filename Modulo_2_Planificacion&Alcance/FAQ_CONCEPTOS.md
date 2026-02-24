# ❓ FAQ: Conceptos Clave del Tema 2 (Planificación y Alcance)

En esta sección aclaramos los términos "burocráticos" que son vitales para cualquier proyecto de ciberseguridad ofensiva.

---

### 1. ¿Cuál es la diferencia real entre SOW y RoE?
Es la duda más común. Quédate con esto:
*   **SOW (Statement of Work):** Es el contrato a nivel de **negocio**. Dice cuántas horas vas a trabajar, qué vas a entregar (el informe) y cuánto vas a cobrar.
*   **RoE (Rules of Engagement):** Es el documento **técnico**. Dice qué IPs puedes atacar, si puedes usar fuerza bruta contra contraseñas y a quién llamar si tiras un servidor a las 3 de la mañana.

### 2. ¿Qué pasa si encuentro algo fuera del alcance (Out of Scope)?
**Regla de oro:** No lo toques. Si ves una puerta abierta en un servidor que no está en el contrato, informa inmediatamente al cliente por los canales oficiales establecidos en el RoE, pero no intentes entrar. Si lo haces, estás cometiendo un delito, aunque sea con buena intención.

### 3. ¿Qué es el "Scope Creep" y cómo evitarlo?
Es cuando el cliente empieza a pedir "un poquito más" una vez empezado el proyecto (ej: "ya que estás, mira también esta otra web").
*   **Peligro:** Desgasta tus recursos y aumenta tu responsabilidad legal sobre activos no protegidos por el contrato inicial.
*   **Solución:** Referirse siempre al SOW y, si es necesario, redactar un anexo o nueva oferta.

### 4. ¿Por qué el NDA es irrenunciable?
Como Pentester, vas a ver los "trapos sucios" de la empresa (contraseñas en texto plano, archivos confidenciales, debilidades críticas). El NDA asegura al cliente que esa información no saldrá de ahí. Sin un NDA firmado, ninguna empresa seria te dejará tocar su red.

---

### 🛠️ Quick Cheat Sheet: Contactos y Emergencias
| Término | Propósito |
| :--- | :--- |
| **Puntual de Contacto (POC)** | La persona del cliente que sabe que estás atacando y puede validar si una caída es culpa tuya o no. |
| **Ventana de Ejecución** | Horario permitido para ataques (ej: sólo de 22:00 a 06:00 para no interrumpir el trabajo). |
| **Whitelisting** | Pedir al cliente que ponga tu IP en "lista blanca" para evitar que el SOC te bloquee automáticamente y puedas terminar las pruebas. |

---
*¿Tienes más dudas? Revisa los ejemplos reales de SOW y RoE en la carpeta `/resources/`.*
