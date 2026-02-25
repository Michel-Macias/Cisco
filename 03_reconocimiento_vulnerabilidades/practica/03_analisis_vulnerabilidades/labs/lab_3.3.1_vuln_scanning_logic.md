# 🧪 Laboratorio 3.3.1: Metodología y Lógica del Escaneo

## 🎯 Objetivos de Aprendizaje
- Planificar una estrategia de escaneo de vulnerabilidades.
- Identificar y mitigar riesgos en sistemas frágiles.
- Configurar parámetros de rendimiento para evitar saturar redes.

---

## 👨‍💻 Escenario
Te han asignado la auditoría de una planta industrial que utiliza una mezcla de servidores modernos (Linux/Windows), impresoras de red y dispositivos IoT antiguos (PLCs). La red es crítica y no puede permitirse caídas de servicio.

---

## 🚀 Fase 1: Identificación de la Topología
Antes de lanzar el escáner, debes decidir dónde ubicarlo.

🔍 **Análisis**: 
Si colocas el escáner detrás de un firewall de baja potencia:
1. El firewall puede bloquear los paquetes del escáner interpretándolos como un ataque.
2. El firewall puede sobrecalentarse o colapsar procesando las miles de conexiones por segundo.
3. Los resultados del escaneo serán incompletos.

**Regla de Oro**: Escanea siempre desde el mismo segmento de red o asegúrate de que los dispositivos intermedios soportan la carga.

---

## 🚀 Fase 2: Gestión de Sistemas Frágiles
Los dispositivos IoT e impresoras suelen tener "stacks" de red débiles.

⚡ **Acción**: 
- **Exclusión**: Añade las IPs de impresoras y PLCs a la lista de exclusión si no es estrictamente necesario escanearlos.
- **Escaneo Suave**: Si debes escanearlos, utiliza plantillas de "Fragile Devices" o reduce la agresividad (`-T1` en Nmap o reduciendo hilos en Nessus).

---

## 🚀 Fase 3: Optimización del Rendimiento
El ancho de banda es un recurso limitado.

### Ajustes Recomendados:
- **Reducción de Hilos**: Limita la cantidad de hosts escaneados simultáneamente.
- **Ajuste de Consultas**: Si la red es lenta, aumenta el tiempo de espera (timeout) para evitar que el escáner asuma que un puerto está cerrado cuando simplemente la respuesta tarda en llegar.

---

## 🧠 Reflexión del Mentor
**¿Qué harías si un cliente te pide escanear toda su red de producción a mediodía en un día laborable?**
> *Respuesta*: Debería advertirle sobre el riesgo de denegación de servicio (DoS) involuntario. Lo profesional es pactar una "ventana de mantenimiento" fuera del horario comercial o empezar con un escaneo extremadamente sigiloso y lento para monitorizar el impacto.

---

## 🛡️ Lista de Verificación Pre-Escaneo
1. [ ] ¿Tengo autorización por escrito (RoE)?
2. [ ] ¿He identificado los dispositivos críticos/frágiles?
3. [ ] ¿He configurado el escáner para no saturar el ancho de banda?
4. [ ] ¿El escáner está ubicado en un punto óptimo de la red?

---
*Este manual es una adaptación educativa para el curso de Cisco Ethical Hacker.*
