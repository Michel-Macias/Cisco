# 🎓 4.0 Introducción

---

*Desplace para empezar*

### 4.0.1 ¿Por qué debería tomar este módulo?

**Soluciones de seguridad Protego**

Nuestro trabajo como hackers éticos es evaluar la vulnerabilidad al ataque cibernético que existe en la organización, las redes, los activos digitales y las aplicaciones de nuestros clientes. Para ello, a menudo utilizamos herramientas y métodos que están disponibles para los delincuentes.

Para hacerse pasar por hackers de manera eficaz, debemos estar familiarizados con las tácticas, las técnicas y los procedimientos de los hackers, incluidas las herramientas que utilizan. Aprenderá sobre diferentes tipos de ataques cibernéticos y utilizará herramientas de hackers para realizar ataques simulados. Kali tiene algunas herramientas increíbles. ¡Esto será divertido!

![AlexV4_pose01.png][image1]

Los ataques cibernéticos y las vulnerabilidades son cada vez más frecuentes. Debe comprender las tácticas de los actores de amenazas para imitarlas y convertirse en un mejor evaluador de penetración. Este módulo cubre los tipos más comunes de ataques y vulnerabilidades. Comienza describiendo los ataques contra el eslabón más débil, que es el elemento humano. Estos ataques se denominan *ataques de ingeniería social*. 

La ingeniería social ha sido el vector de ataque inicial de muchas violaciones y compromisos en los últimos años. En este módulo, aprenderá sobre varios ataques de ingeniería social, como suplantación de identidad (phishing), vishing, pharming, spear phishing, caza de ballenas y otros. También aprenderá técnicas de ingeniería social, como la elicitación, el interrogatorio y la suplantación, así como diferentes técnicas de motivación (o *métodos de influencia*). También aprenderá qué es la navegación interna y cómo los atacantes han utilizado el truco de "caída de clave USB" para engañar a los usuarios para que instalen malware y comprometan sus sistemas.

### 4.0.2 ¿Qué Aprenderé en este Módulo?

*   **Título del módulo:** Ataques de Ingeniería Social
*   **Objetivo:** Explique cómo tienen éxito los ataques de ingeniería social.

![][image2]

---

# 🕵️ 4.1 Pretextos para un acercamiento y suplantación de identidad

*Desplace para empezar*

### 4.1.1 Descripción General

**Soluciones de seguridad Protego**

Estoy seguro de que está familiarizado con la idea de que las personas son el eslabón más débil de la ciberseguridad. Desafortunadamente, es relativamente fácil engañar a los empleados fingiendo ser un individuo conocido y de confianza o usando una historia falsa. Las personas cederán una sorprendente cantidad de información privilegiada o descargarán malware que puede causar grandes daños. A veces, solo se necesita un clic para descargar malware que puede afectar a toda una organización y causar grandes pérdidas.

En Protego, si el alcance de nuestro compromiso lo permite, realizamos ataques de ingeniería social para evaluar el nivel de conocimiento de la ciberseguridad de los empleados de nuestros clientes. A veces, utilizaremos los resultados de esos ataques para penetrar más en la red a fin de ilustrar a nuestro cliente la gravedad de las vulnerabilidades. Para la mitigación, recomendamos una capacitación integral de concientización sobre la ciberseguridad y pruebas periódicas de la concientización de los empleados a través de ataques de ingeniería social simulados.

![AlexV4_pose02.png][image3]

La influencia, el interrogatorio y la suplantación son componentes clave de la ingeniería social. 

*   **La elicitación:** es el acto de obtener conocimiento o información de las personas. En la mayoría de los casos, un atacante obtiene información de una víctima sin solicitar directamente esa información en particular.
*   **Interrogatorio:** La forma en que un atacante interroga a una víctima e interactúa con ella es crucial para el éxito de una campaña de ingeniería social. Un interrogador puede hacer buenas preguntas abiertas para conocer los puntos de vista, los valores y los objetivos de una persona. El interrogador puede usar cualquier información revelada por el objetivo para continuar reuniendo información adicional u obtener información de otra víctima.

También es posible que un interrogador utilice preguntas cerradas para tener más control de la conversación y dirigirla o detenerla. Hacer demasiadas preguntas puede hacer que la víctima cierre la interacción y hacer muy pocas preguntas puede parecer incómodo. Los interrogadores de ingeniería social exitosos utilizan un enfoque restringido en su interrogatorio para obtener la mayor cantidad de información posible de la víctima.

**Los interrogadores prestan mucha atención a lo siguiente:**
*   La postura o el lenguaje corporal de la víctima
*   El color de la piel de la víctima, como el color de la cara que se pone pálido o rojo
*   La dirección de la cabeza y los ojos de la víctima
*   Movimiento de manos y pies de la víctima
*   Las expresiones de la boca y los labios de la víctima
*   El tono y la velocidad de la voz de la víctima, así como los cambios en la voz
*   Las palabras de la víctima, incluida su longitud, la cantidad de sílabas, las disfunciones y las pausas

Con **pretexto** o **suplantación**, un atacante se presenta como otra persona para obtener acceso a la información. En algunos casos, puede ser muy simple, como pretender rápidamente ser otra persona dentro de una organización; en otros casos, puede implicar la creación de una identidad completamente nueva y luego usar esa identidad para manipular la recepción de información. Los ingenieros sociales pueden usar pretextos para hacerse pasar por personas en ciertos trabajos y roles, incluso si no tienen experiencia en esos trabajos o roles.

Por ejemplo, un ingeniero social puede hacerse pasar por una persona de entrega de Amazon, UPS o FedEx o incluso un mensajero en bicicleta o mensajería con un mensaje importante para alguien de la organización. Como otro ejemplo, alguien puede hacerse pasar por un trabajador de soporte de TI y proporcionar ayuda no solicitada a un usuario. Hacerse pasar por personal de TI puede ser muy eficaz porque si le preguntas a alguien si tiene un problema técnico, es muy probable que la víctima lo piense y diga algo como: "Sí, de hecho, ayer le sucedió a mi computadora". Hacerse pasar por personal de TI puede otorgar a un atacante acceso físico a los sistemas de una organización. 

Un atacante que tiene acceso físico puede usar una memoria USB que contiene scripts personalizados para poner en riesgo una computadora en segundos. 

*   **Pharming o suplantación de DNS:** es un tipo de ataque de suplantación en el que un actor de amenazas redirige a una víctima de un sitio web o recurso válido a uno malicioso que podría aparecer como un sitio válido para el usuario. A partir de ahí, se intenta extraer información confidencial del usuario o instalar malware en el sistema de la víctima. El pharming se puede realizar modificando el archivo de host en el sistema de la víctima, mediante el envenenamiento del DNS o aprovechando una vulnerabilidad en un servidor DNS. 

La Figura 4-1 ilustra cómo funciona el pharming.

**Pasos ilustrados en la Figura 4-1:**
1.  **Paso 1:** El usuario (Omar) visita un sitio web legítimo y hace clic en un enlace legítimo.
2.  **Paso 2:** El sistema de Omar se ve comprometido, el archivo de host se modifica y se redirige a Omar a un sitio malicioso que parece legítimo. (Esto también se puede lograr comprometiendo un servidor DNS o falsificando una respuesta de DNS).
3.  **Paso 3:** El malware se descarga e instala en el sistema de Omar.

Un ataque similar al pharming se denomina **publicidad maliciosa**. La publicidad maliciosa implica la incorporación de anuncios maliciosos en sitios web de confianza. Los usuarios que hacen clic en estos anuncios son redirigidos sin darse cuenta a sitios que alojan malware.

### *Figura 4-1* - Ejemplo de pharming
[ 123 ]
*   Legitimate website
*   Malicious website (looks legitimate)
*   Downloads malware
*   User: Omar (victim)

> [!TIP]
> **CONSEJO:** Para ayudar a evitar ataques de pharming, es importante mantener el software actualizado y ejecutar comprobaciones antimalware periódicas. También debe cambiar las contraseñas predeterminadas en los dispositivos de infraestructura de red (incluido el enrutador de su hogar). Por supuesto, también debe conocer los sitios web que visita y tener cuidado al abrir correos electrónicos.

![AlexV4_pose04.png][image4]

---

# 💻 4.2 Ataques de Ingeniería social

*Desplace para empezar*

### 4.2.1 Descripción General

**Soluciones de seguridad Protego**

Es importante que estemos familiarizados con una amplia gama de ataques de ingeniería social. También es importante que sigamos las fuentes de información de ciberseguridad para conocer los ataques que se utilizan actualmente. Por ejemplo, Protego monitorea las cuentas de correo electrónico de honeypot para rastrear cómo cambian las tácticas de suplantación de identidad (phishing). Durante un tiempo vimos correos electrónicos que anunciaban ofertas y descuentos falsos en minoristas populares. Más tarde, aparecieron correos electrónicos que contenían notificaciones falsas de que el destinatario había ganado premios u otras recompensas. Ahora recibimos correos electrónicos que dicen que el destinatario está sujeto a algún tipo de retiro del mercado. Hacer clic en enlaces o archivos adjuntos en estos correos electrónicos a menudo conduce a descargas de malware, incluido ransomware. Los intentos de suplantación de identidad (phishing) son extremadamente comunes. A veces vemos que varios correos electrónicos de suplantación de identidad (phishing) llegan al servidor por día. Un día vimos cinco. Además, cambian constantemente.

Nuestra profesión requiere que estemos siempre actualizados sobre las amenazas emergentes. 

![AlexV4_pose02.png][image5]

Un ataque de ingeniería social aprovecha el eslabón más débil de una organización, que es el usuario humano. Si un atacante puede lograr que un usuario revele información, es mucho más fácil para el atacante causar daño que utilizando algún otro método de reconocimiento. La ingeniería social se puede lograr a través del correo electrónico o la dirección incorrecta de páginas web y se puede solicitar al usuario que haga clic en algo para que el atacante obtenga información. La ingeniería social también puede realizarse en persona por un interno o una entidad externa o por teléfono.

Un ejemplo principal son los atacantes que aprovechan el comportamiento normal de los usuarios. Supongamos que es un profesional de seguridad a cargo de los cortafuegos de red y otros equipos de infraestructura de seguridad de su empresa. Un atacante podría publicar una oferta de trabajo para un puesto muy lucrativo y hacerlo muy atractivo para usted, la víctima. Supongamos que la descripción del trabajo enumera beneficios y compensaciones mucho más allá de lo que gana en su empresa. Decide postularse para el puesto. El delincuente (atacante) programa una entrevista con usted. Debido a que es probable que “muestre” sus habilidades y trabajo, el atacante puede lograr que le explique cómo ha configurado los cortafuegos y otros dispositivos de infraestructura de red para su empresa. Puede divulgar información sobre los cortafuegos utilizados en su red, cómo los ha configurado, cómo se diseñaron, etc. Esto le daría al atacante mucho conocimiento sobre la organización sin requerir que el atacante realice ningún tipo de escaneo o reconocimiento en la red.

### 4.2.2 Suplantación de identidad de correo electrónico (Phishing)

Con la **suplantación de identidad (phishing)**, un atacante presenta a un usuario un enlace o un archivo adjunto que parece un recurso válido y confiable. Cuando el usuario hace clic en él, se le solicita que revele información confidencial, como su nombre de usuario y contraseña. El ejemplo 4-1 muestra un ejemplo de correo electrónico de suplantación de identidad (phishing).

#### *Ejemplo 4-1* - Ejemplo de correo electrónico de suplantación de identidad (phishing)

*   **Asunto:** CONFIRMACIÓN DE PAGO
*   **Mensaje:** Estimado señor, hemos descubierto que nuestro departamento de contabilidad se demora ocasionalmente en realizar los pagos completos a nuestros proveedores... El propósito de esta carta es confirmar si se ha realizado o no el pago de los suministros adjuntos recibidos. Por favor, confirme la recepción y avísenos.
*   **Attachment:** SD_085_085_pdf.xz / SD_085_085_pdf.exe
*   **MD5 Checksum:** 0x8CB6D923E48B51A1CB3B080A0D43589D

#### Suplantación de identidad focalizada (Spear Phishing)

**Spear phishing** es un intento de suplantación de identidad dirigido construido de una manera muy específica y dirigido directamente a grupos específicos de personas o empresas. El atacante estudia a la víctima y la organización de la víctima para poder hacer que los correos electrónicos parezcan legítimos y tal vez hacer que parezcan provenir de usuarios confiables dentro de la empresa.

#### *Ejemplo 4-2* - Ejemplo de correo electrónico de Spear Phishing

*   **De:** Chris Cleveland
*   **Para:** Omar Santos
*   **Asunto:** Por favor revise el capítulo 3 para mí y envíeme sus comentarios antes de las 2:00 p. m.
*   **Mensaje:** Estimado Omar, lea atentamente el documento adjunto. Saludos, Chris.
*   **Attachment:** chapter.zip
*   **MD5 Checksum:** 0x61D60EA55AC14444291AA1F911F3B1BE

#### Whaling (Caza de ballenas)

**Whaling o caza de ballenas**, que es similar a la suplantación de identidad (phishing) y la suplantación de identidad dirigido (spear phishing), es un ataque dirigido a ejecutivos de negocios de alto perfil y personas clave en una empresa. Los correos electrónicos y las páginas de los atacantes de la caza de ballenas tienen un aspecto más oficial o serio, diseñados para parecerse a los correos electrónicos comerciales críticos.

### 4.2.3 Suplantación de identidad de llamadas telefónicas (Vishing)

**Vishing** (abreviatura de *Suplantación de identidad de llamadas telefónicas o voz*), es un ataque de ingeniería social que se lleva a cabo en una conversación telefónica. El atacante persuade al usuario para que revele información personal y financiera privada o información sobre otra persona o empresa.

### 4.2.4 Suplantación de identidad del servicio de mensajes cortos (Smishing)

Campañas de suplantación de identidad que utilizan mensajes de texto (SMS) para enviar malware o enlaces maliciosos a dispositivos móviles. Ejemplo: estafas de bitcoins.

### 4.2.5 Abandono de USB

Involucra dejar memorias USB desatendidas o colocarlas en ubicaciones estratégicas. Los usuarios las insertan en sus sistemas por curiosidad o para devolverlas, resultando en la instalación de malware.

### 4.2.6 Ataques al bebedero (Watering Hole)

Un **ataque de bebedero** es un ataque dirigido que se produce cuando un atacante perfila sitios web a los que accede la víctima prevista. Luego, el atacante escanea esos sitios web en busca de posibles vulnerabilidades y los inyecta con código malicioso (JavaScript).

---

### 📝 Práctica - Ataque de pivote

Durante las entrevistas y encuestas iniciales a los empleados de Pixel Paradise, descubrimos que ya habían experimentado todos los siguientes ataques de ingeniería social. **¿Cuál es un ataque de pivote?**

*   [x] Uno de los sitios web de la comunidad de fanáticos de Pixel Paradise se vio comprometido por un atacante que inyectó código JavaScript para redirigir a los miembros de la comunidad a un sitio que contenía código malicioso.
*   [ ] Los empleados de Pixel Paradise han estado recibiendo correos electrónicos de una fuente supuestamente confiable con enlaces y archivos adjuntos.
*   [ ] Una recepcionista recibió una llamada de un atacante que intentaba persuadirlos de que revelaran información sobre Elizabeth deGray, la CEO.
*   [ ] Los empleados informaron haber recibido correos electrónicos, supuestamente del director de tecnología, William A. Hurst, que parecían legítimos.

`[ Enviar ]` `[ Mostrar retroalimentación ]`

### 🧩 Práctica - Clasificación de Ataques

Haga coincidir la descripción del ataque de ingeniería social con el tipo de ataque.

| Descripción | Tipo de Ataque |
| :--- | :--- |
| Protego recibió una alerta del sitio web de noticias... | **Bebedero** |
| Un asistente administrativo informó haber recibido un correo electrónico... | **Suplantación de identidad (Phishing)** |
| El director de tecnología informó que el filtro de spam bloqueaba correos falsificados... | **Suplantación de identidad de correo electrónico** |
| Varios empleados recibieron mensajes de texto con ofertas de bitcoin... | **Smishing** |
| El VP de Finanzas recibió una encuesta falsa con malware... | **Caza de ballenas** |
| Un empleado recibió una llamada reclamando un reembolso falso... | **Vishing** |
| Un empleado encontró una unidad USB en una feria... | **Abandono de USB** |

---

# 🚧 4.3 Ataques físicos

*Desplace para empezar*

### 4.3.1 Descripción General

**Soluciones de seguridad Protego**

A menudo se pasa por alto la seguridad física. Un cliente puede tener la infraestructura de ciberseguridad más elaborada, pero si un actor de amenazas puede ingresar físicamente a una instalación y obtener acceso a la red o los sistemas, la infraestructura de seguridad se vuelve ineficaz.

![AlexV4_pose02.png][image6]

Como evaluador de penetración o equipo rojo, es posible que se le pida que simule lo que un actor de amenazas o delincuente del mundo real puede comprometer la seguridad física de una organización para obtener acceso a la infraestructura, los edificios, los sistemas y los empleados.

### 4.3.2 Intrusión por seguimiento

*   **Piggybacking (Acceso por acompañamiento):** Una persona no autorizada acompaña a una persona autorizada para ingresar a un área restringida, generalmente con el **consentimiento** de la persona.
*   **Tailgating (Intrusión por seguimiento):** Es esencialmente lo mismo, pero ocurre **sin el consentimiento** de la persona autorizada.

**Mitigación:** Uso de vestíbulos de control de acceso (mantraps), biometría, torniquetes y guardias de seguridad.

![AlexV4_pose04.png][image7]

### 4.3.3 Búsqueda en la basura (Dumpster diving)

Búsqueda de información privada en contenedores de basura y reciclaje. Los atacantes buscan papel, discos duros o medios extraíbles.
**Mitigación:** Almacenamiento seguro y trituración/incineración de documentos.

### 4.3.4 Vigilancia por encima del hombro (Shoulder surfing)

Obtener PII, contraseñas y datos confidenciales mirando por encima del hombro de la víctima o usando binoculares/micro-cámaras.
**Mitigación:** Filtros de pantalla y capacitación de usuarios.

### 4.3.5 Clonación de credenciales

Uso de hardware/software especializado para clonar tarjetas de acceso RFID. Los atacantes a menudo obtienen el diseño de las tarjetas de fotos en redes sociales.

> [!TIP]
> **CONSEJO:** Evite publicar fotos de sus tarjetas de identificación corporativas en Twitter, Instagram o LinkedIn.

![AlexV4_pose04.png][image8]

---

### 🧩 Práctica - Ataques Físicos

| Descripción | Tipo de Ataque |
| :--- | :--- |
| Clona una tarjeta de acceso | **Clonación de credenciales** |
| Entra con el consentimiento del autorizado | **Piggybacking** |
| Busca información en contenedores | **Dumpster diving** |
| Mira el teclado mientras escribes | **Shoulder surfing** |
| Entra sin el consentimiento del autorizado | **Tailgating** |

---

# 🛠️ 4.4 Herramientas de ingeniería social

*Desplace para empezar*

### 4.4.1 Descripción general

**Soluciones de seguridad Protego**

Existen excelentes kits de herramientas en Kali Linux, como el **Social-Engineer Toolkit (SET)** y el **Browser Exploitation Framework (BeEF)**.

![AlexV4_pose02.png][image9]

### 4.4.2 Kit de herramientas para ingenieros sociales (SET)

Desarrollado por David Kennedy. Permite lanzar numerosos ataques de ingeniería social e integrarse con Metasploit. (Ver guía detallada en la carpeta de práctica).

![][image10]

### 4.4.3 Marco de explotación del navegador (BeEF)

Herramienta que manipula a los usuarios aprovechando vulnerabilidades XSS. Permite:
*   Robar cookies y tokens de sesión.
*   Enviar notificaciones falsas al navegador.

![][image20]

### 4.4.5 Herramientas de suplantación de llamadas

Permiten cambiar el identificador de llamadas (Caller ID) en un teléfono:
*   **SpoofApp:** App para iOS/Android.
*   **SpoofCard:** Falsifica números y cambia la voz/ruido de fondo.
*   **Asterisk:** Herramienta VoIP legítima que puede usarse para suplantación de ID.

---

# 🧠 4.5 Métodos de influencia

*Desplace para empezar*

### 4.5.1 Descripción general

La clave es comprender el comportamiento humano. ¿Qué motiva a las personas a actuar?

![AlexV4_pose02.png][image26]

*   **Autoridad:** Mostrar confianza y poder (legal u organizativo).
*   **Escasez y Urgencia:** Crear presión temporal ("Su cuenta se cerrará en 2 minutos").
*   **Prueba Social:** Indicar que otros ya lo hicieron ("Todos sus colegas han firmado").
*   **Semejanza:** Ser agradable y aprovechar la empatía.
*   **Miedo:** Obligar a actuar para evitar una consecuencia desagradable.

---

# 🏁 4.6 Resumen y Preguntas de Reflexión

![AlexV4_pose01.png][image27]

La ingeniería social es a menudo el vector inicial de las mayores brechas de seguridad. No importa cuán fuerte sea el firewall si el humano entrega la llave.

### 📝 Auto-evaluación rápida:

1.  **¿Qué es el Pharming?** Redirección maliciosa mediante envenenamiento de DNS o archivos host.
2.  **¿Qué es el Spear Phishing?** Phishing dirigido a un objetivo específico tras una investigación previa.
3.  **¿Cuál es la función de BeEF?** Explotar vulnerabilidades XSS para controlar el navegador de la víctima.

---
*Fin del material del Módulo 04*

[image1]: <DATA_ORIGINAL_OCULTA>
[image2]: <DATA_ORIGINAL_OCULTA>
...