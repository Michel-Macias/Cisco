# 🕵️ LAB 02: Análisis de Incidentes - Caso "Custom Guitars"

## Escenario del Incidente
Una empresa de guitarras personalizadas ha sufrido una brecha de datos. Un cliente informa que los datos de su tarjeta de crédito están a la venta en la Dark Web.

---

## 🔍 Fase 1: Análisis Forense Inicial
De acuerdo con la investigación, los hechos son:
1.  **Vector de Entrada:** Un proveedor de maquinaria (tornos CNC) tiene una conexión permanente a la red de la empresa para monitoreo técnico.
2.  **Vulnerabilidad:** El proveedor tenía una seguridad débil. Los atacantes saltaron desde la red del proveedor a la red de la tienda.
3.  **Movimiento Lateral:** Los atacantes localizaron el servidor de pagos.
4.  **Explotación:** Usaron una cuenta con contraseña débil para acceder a la base de datos de clientes.
5.  **Exfiltración:** Encontraron un archivo `.txt` con los datos de tarjetas sin cifrar y lo subieron a su servidor.

---

## 🛠️ Fase 2: Identificación de Fallos (Gap Analysis)

| Punto del Ataque | Fallo Detectado |
| :--- | :--- |
| **Acceso del Proveedor** | Falta de segmentación. El proveedor no debería "ver" la red de pagos. |
| **Acceso al Servidor** | Política de contraseñas nula y falta de MFA (Multi-Factor Auth). |
| **Base de Datos** | Datos sensibles guardados en texto plano (sin cifrado). |
| **Detección** | Ningún sistema alertó de la subida de un archivo sospechoso (falta de DLP). |

---

## 🛡️ Fase 3: Plan de Mitigación Post-Incidente

### 1. Segmentación de Red (VLANs)
Configura la red para que la maquinaria industrial esté en una **VLAN aislada** sin contacto con la zona de datos financieros.
*   *Técnica:* Implementar ACLs en el Core Switch.

### 2. Control de Terceros
Exigir a los proveedores el uso de **VPN con MFA** para cualquier mantenimiento remoto.

### 3. Cifrado de Datos (Encryption at Rest)
Los datos de tarjetas de crédito **NUNCA** deben estar en texto plano. Se debe usar cifrado fuerte (AES) y cumplir con el estándar **PCI-DSS**.

### 4. Implementación de un WAF/IDS
Instalar un sistema que detecte intentos de acceso a la base de datos y bloquee IPs sospechosas automáticamente.

---

## ✍️ Ejercicio para el Estudiante
Redacta un breve informe (3 puntos) sobre qué pasos darías en las primeras 24 horas después de descubrir este incidente para contener la brecha.

---
> **Moraleja del caso:** El perímetro no es solo tu firewall, también lo es la conexión de cada uno de tus proveedores.
