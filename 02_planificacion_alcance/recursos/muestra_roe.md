# ⚔️ Ejemplo: Rules of Engagement (RoE) - Reglas de Enfrentamiento

**Proyecto:** Auditoría GlobalTech Solutions 2026  
**Versión:** 1.0 - CONFIDENCIAL  

---

## 1. Contactos de Emergencia (Cadena de Comunicación)
En caso de interrupción del servicio, detección de intrusión externa real o hallazgo crítico de seguridad, se seguirá el siguiente orden:

1. **Contacto Técnico Cliente:** Michel Macias (+34 600 000 000) - 24/7 disponible.
2. **Líder de Proyecto Pentesting:** Antigravity (Canal Slack interno #auditoria-gt).
3. **Escalado IT:** Departamento de Infraestructura (NOC).

## 2. Técnicas y Herramientas Permitidas
- **Escaneo de Puertos:** Sí (Nmap, Masscan), priorizando el sigilo.
- **Explotación:** Sí, pero solo exploits verificados como "estables". Queda prohibido el uso de exploits que causen Kernel Panic o reinicio de servicios sin aviso previo.
- **Fuerza Bruta:** Sí, limitada a 5 intentos por cuenta/hora para evitar bloqueos de cuenta (Lockout Policy).
- **Ingeniería Social:** **No permitida** en esta fase del proyecto.

## 3. Manejo de Datos Sensibles
Si durante la auditoría se accede a bases de datos con información de carácter personal (PII) o bancaria:
- **NO** se descargarán copias de la base de datos completa.
- Se tomará una captura de pantalla de los primeros 5 registros con datos anonimizados para demostrar el acceso.
- Cualquier credencial de administrador encontrada será reportada inmediatamente y no será utilizada para persistencia a largo plazo.

## 4. Protocolo ante Compromiso (Efecto "Hacker Real")
Si el equipo de auditoría detecta que un tercero (un atacante real) ya ha comprometido un servidor:
1. Se detendrán todas las actividades en ese servidor inmediatamente.
2. Se notificará al contacto técnico del cliente en menos de 30 minutos.
3. Se colaborará con el equipo de Incident Response (IR) para preservar evidencias.

## 5. Pruebas de Intrusión vs. Pruebas de Denegación de Servicio
- El objetivo es **intrusión**, no saturación.
- El uso de herramientas de escaneo web (ZAP, Burp Suite) debe configurarse para no superar las 10 peticiones por segundo para no alertar al WAF de forma agresiva o degradar el servicio.

## 6. Evidencia y Documentación
Toda la evidencia será almacenada en un contenedor cifrado (AES-256) y transferida al cliente únicamente por canales seguros (VPN o OnionShare). Queda terminantemente prohibido subir capturas de pantalla de la infraestructura del cliente a nubes públicas o herramientas de OCR online.

---

**Nota:** El incumplimiento de estas reglas invalida la protección legal de la consultora y puede resultar en la rescisión inmediata del contrato.
