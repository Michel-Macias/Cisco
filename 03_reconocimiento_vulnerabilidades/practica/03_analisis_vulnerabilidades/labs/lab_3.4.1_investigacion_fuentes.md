# 🧪 Laboratorio 3.4.1: Investigación de Fuentes de Vulnerabilidades

## 🎯 Objetivos de Aprendizaje
- Investigar vulnerabilidades específicas utilizando bases de datos públicas (CVE, NIST, MITRE).
- Comprender la diferencia entre **CVE**, **CWE** y **CVSS**.
- Analizar el impacto de una vulnerabilidad según su puntuación de severidad.

---

## 👨‍💻 Escenario
Como analista de seguridad de **Protego**, has recibido un informe preliminar con varias vulnerabilidades detectadas en la infraestructura del cliente. Tu tarea no es solo confirmar que existen, sino investigar su origen, impacto y posibles soluciones utilizando las fuentes de inteligencia de amenazas abiertas (OSINT).

---

## 🚀 Fase 1: Investigación de Identificadores CVE
El identificador **CVE (Common Vulnerabilities and Exposures)** es el estándar para nombrar vulnerabilidades.

### Paso 1: El caso CVE-2019-6111
Busca información sobre la vulnerabilidad **CVE-2019-6111** en la base de datos de [NVD (NIST)](https://nvd.nist.gov/).

🔍 **Análisis**: 
1. ¿Qué software se ve afectado?
2. ¿Qué tipo de ataque permite (RCE, MITM, DoS)?
3. ¿Cuál es su puntuación CVSS base?

---

## 🚀 Fase 2: Clasificación con CWE
**CWE (Common Weakness Enumeration)** describe la "debilidad" lógica que permite la vulnerabilidad.

### Paso 1: Relación CVE-CWE
Para el **CVE-2019-6111**, identifica su **CWE** asociado.
> *Nota: Generalmente se encuentra en la sección "Weakness Enumeration" de la ficha de NVD.*

---

## 🚀 Fase 3: Evaluación de Impacto con CVSS
El **CVSS (Common Vulnerability Scoring System)** proporciona una puntuación numérica del 0 al 10.

### Paso 1: Análisis de Métricas
Observa el vector CVSS (ej: `AV:N/AC:M/Au:N/C:P/I:P/A:P`).
- **AV (Attack Vector)**: ¿Es explotable remotamente (`N`) o requiere acceso físico (`P`)?
- **C/I/A**: ¿Qué impacto tiene en la Confidencialidad, Integridad y Disponibilidad?

---

## 🧠 Reflexión del Mentor
**¿Por qué es vital verificar el CVE antes de proponer una remediación al cliente?**
> *Respuesta*: Porque los escáneres a veces cometen errores de detección. Consultar la fuente oficial nos confirma si la versión específica del cliente realmente tiene esa debilidad y nos proporciona los parches oficiales o "workarounds" validados por la industria.

---

## 📝 Verificación de Habilidades
*Responde a estas preguntas basándote en tu investigación:*

1. **¿Qué es un resumen de la vulnerabilidad CVE-2019-6111?**
   - [ ] Omisión de restricciones de acceso de OpenSSH.
   - [ ] Vulnerabilidad de tipo "hombre-en-el-medio" (MITM).
   - [x] Recorrido de ruta (Path Traversal) en clientes scp.
   - [ ] Encriptación SSL débil.

2. **¿Cuál es la diferencia clave entre CVE y CWE?**
   > *Respuesta*: CVE es una instancia específica de una vulnerabilidad en un producto concreto; CWE es el tipo de error o debilidad general que causa esa vulnerabilidad.

---
*Este laboratorio es una adaptación educativa para el curso de Cisco Ethical Hacker.*
