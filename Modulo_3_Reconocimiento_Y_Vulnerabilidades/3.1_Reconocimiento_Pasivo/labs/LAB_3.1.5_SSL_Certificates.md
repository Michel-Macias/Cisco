::: {.article .64883b7c10c3402246b75e53 .background-color-white .remove-padding-top .remove-padding-bottom .is-complete}
::: article__inner
::: no-adaptive-scroll
<div>

::: {.article__header-wrapper .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__header
::: article__header-inner
::: article__title
::: {.js-heading .is-complete}
::: {#article-heading .js-heading-inner role="heading" aria-level="2"}
[ Completo  Práctica de laboratorio - Búsqueda de información a partir
de certificados SSL]{.aria-label}
:::
:::

::: {.article__title-inner tabindex="0" role="heading" aria-level="2"}
[Completo ]{.accessibility-completion-indicator} Práctica de
laboratorio - Búsqueda de información a partir de certificados SSL
:::
:::
:::
:::
:::

::: {.block__container style=""}
::: {.64883b8510c3402246b75f00 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b8510c3402246b75f00"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762f5 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762f5"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Objetivos

-   Ver información de certificados en hosts
-   Acceder a la información detallada del certificado
-   Usar herramientas de escaneo de SSL en Kali
-   Usar las herramientas de Kali para recopilar información del
    certificado

# Trasfondo / Escenario

Los certificados SSL / TLS proporcionan dos amplias funciones. En primer
lugar, proporcionan una forma de que las personas que acceden a él
puedan validar la propiedad de un sitio web. En segundo lugar,
proporcionan un medio por el cual se cifra la comunicación entre un
cliente y un servidor para que no pueda ser leída o alterada por partes
no autorizadas. También proporcionan la información necesaria para que
un navegador cree una conexión segura y cifrada a un sitio web a través
del protocolo HTTPS. Los certificados se utilizan detrás de escena
cuando los usuarios navegan por Internet. En la mayoría de los casos,
los usuarios no saben que están en uso. Los usuarios los detectan si
falta un certificado, está desactualizado o está mal configurado.

La información del certificado se puede ver localmente para un sitio web
que se muestra actualmente en un navegador haciendo clic en el icono de
candado junto a la URL en el navegador. Los certificados también se
almacenan localmente para las propias autoridades de certificación. Hay
varias formas de verlos. El formato de la información del certificado de
clave pública lo especifica el estándar X.509.

Los hackers éticos pueden utilizar la información de los certificados
públicos en la fase de reconocimiento de las pruebas de penetración. La
información del certificado puede revelar detalles sobre una
organización, incluidos nombres de dominio y subdominio, fechas de
emisión y vencimiento y claves públicas de certificados. Además, ciertas
versiones de software, como OpenSSL, tienen vulnerabilidades ampliamente
conocidas que pueden aprovecharse, incluida la vulnerabilidad al error
Heartbleed. Además, es posible que algunos certificados utilicen
algoritmos de cifrado débiles.

# Recursos necesarios

-   Kali VM personalizada para el curso de Ethical Hacker
-   Acceso a Internet
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b8810c3402246b75f32 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b8810c3402246b75f32"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb410c3402246b762f4 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb410c3402246b762f4"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Instrucciones

## Parte 1: Ver información del certificado en hosts {#parte-1-ver-información-del-certificado-en-hosts style="margin-left:0in"}

Algunos certificados SSL se almacenan localmente en hosts de red. Estos
certificados permiten una comunicación segura entre un host y un
servidor a través de una cadena de certificados. Un host almacena
certificados intermedios y raíz como parte del proceso de autenticación
SSL.

### Paso 1: Vea los certificados del sitio desde un navegador. {#paso-1-vea-los-certificados-del-sitio-desde-un-navegador. style="margin-left:0in"}

a.  Navegue hasta [netacad.com.](http://netacad.com){target="_blank"}
b.  En la mayoría de los navegadores, aparece un icono de candado junto
    a la URL del sitio que se muestra actualmente. Haga clic en el icono
    del candado y explore las configuraciones disponibles.
c.  La mayoría de los navegadores tienen un administrador de
    certificados que permite ver los detalles de los certificados para
    sitios web o los certificados raíz para las autoridades de
    certificación. Vea la información del certificado mientras navega,
    usa el candado o abre la información del certificado desde la
    configuración de seguridad del navegador.
d.  Mire los detalles del certificado Cisco netacad y responda las
    siguientes preguntas.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b8a10c3402246b75f60 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b8a10c3402246b75f60"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb510c3402246b762f6 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762f6"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb510c3402246b762f6"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Para qué dominio se emitió el certificado? ¿Qué organización lo emitió?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
socialgoodplatform.com. Fue emitido por IdenTrust.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b8b10c3402246b75f7d .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b8b10c3402246b75f7d"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76244 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76244"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76244"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Vea el certificado. ¿Cuándo caducará?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. En el momento de redactar este curso, el
certificado caduca el 6 de enero de 2024.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b8d10c3402246b75fa0 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b8d10c3402246b75fa0"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bad10c3402246b76242 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bad10c3402246b76242"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bad10c3402246b76242"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Cuál es el algoritmo de cifrado de firmas de certificados?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. En el momento de redactar este curso, el
algoritmo de cifrado es SHA-256 con cifrado RSA.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9010c3402246b75fd3 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9010c3402246b75fd3"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762f7 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762f7"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Vea los certificados almacenados en el sistema operativo. {#paso-2-vea-los-certificados-almacenados-en-el-sistema-operativo. style="margin-left:0in"}

a.  Microsoft Windows tiene una aplicación de administración de
    seguridad que forma parte de Microsoft Management Console. Ingrese
    **certmgr.msc** en el cuadro de búsqueda y presione Intro para
    abrirlo.

En Kali, puede encontrar los certificados almacenados en la carpeta
/usr/share/ca-certificates/mozilla. Haga clic con el botón derecho en un
certificado y seleccione **Open With "ViewFile"** para acceder a la
información de un certificado.

b.  Acceda a la información sobre certificados raíz e intermedios de
    confianza en Windows seleccionando las carpetas de certificados
    correspondientes en la aplicación de administración.

En Kali, acceda a la carpeta de certificados y use **ls -l \| grep
root** para enumerar los archivos de certificados raíz, o busque la
palabra **root** en la ventana del administrador de archivos.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9110c3402246b75fdf .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9110c3402246b75fdf"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76246 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76246"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76246"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Los nombres de los archivos de certificado raíz hacen referencia a la
autoridad de certificación que los otorgó. ¿Cuáles son las tres
autoridades de certificación más comunes en su equipo? Investíguelas en
internet. ¿Cuál es el costo de un certificado SSL básico de un solo
dominio durante un año?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Al momento de escribir este curso, el
precio de GobalSign es de \$ 249 USD / año. De Digicert son \$ 274,55.
De GoDaddy, un certificado autoadministrado cuesta \$ 99 y un
certificado administrado es de \$ 249,98.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9210c3402246b75ff8 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9210c3402246b75ff8"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762f8 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762f8"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 2: Acceda a información detallada del certificado en línea {#parte-2-acceda-a-información-detallada-del-certificado-en-línea style="margin-left:0in"}

La transparencia de certificados (CT) es un marco abierto para
monitorear y auditar la emisión de certificados SSL / TLS. CT requiere
que todas las autoridades de certificación (CA) de confianza pública
registren todos los certificados emitidos en registros auditables, a
prueba de manipulaciones y disponibles públicamente. Estos registros se
pueden monitorear para detectar cualquier emisión fraudulenta o
maliciosa de certificados SSL / TLS, incluidos los certificados emitidos
para dominios que el atacante no controla.

En OSINT, los registros de CT se pueden utilizar para recopilar
información sobre los certificados SSL / TLS utilizados por una
organización o un dominio específico. Al analizar los registros de TC,
los analistas pueden identificar las emisiones de certificados y sus
dominios asociados, así como cualquier anomalía o irregularidad en la
emisión de certificados. Los registros de TC también se pueden usar para
monitorear cualquier emisión no autorizada de certificados SSL / TLS, lo
que podría indicar una posible violación de la seguridad.

Se puede acceder a los registros de CT a través de varios servidores de
registros de CT y API. También hay varias herramientas de monitoreo de
TC disponibles, como CertSpotter y Censys, que pueden ayudar a
automatizar el proceso de monitoreo de registros de TC para dominios
específicos o certificados SSL / TLS.

a.  Abra un navegador y navegue a
    **[https://crt.sh.](https://crt.sh){target="_blank"}**
b.  Ingrese la URL de netacad en el cuadro de búsqueda y haga clic en
    **Search**.
c.  La tabla resultante enumera información completa de los certificados
    emitidos a netacad.com y subdominios relacionados. La lista se
    remonta a 2019. crt.sh proporciona ID para los certificados, pero
    estos ID son relevantes solo para crt.sh. Hacer clic en una ID lo
    lleva a los detalles del certificado disponibles.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9310c3402246b7600e .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9310c3402246b7600e"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb510c3402246b762f9 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762f9"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb510c3402246b762f9"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Tenga en cuenta que crt.sh revela varios subdominios que no son
conocidos por los usuarios normales de netacad. Anote los nombres de los
subdominios. ¿Quién cree que deben utilizar estos subdominios? Explique.
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Con nombres que comienzan con dev y stage, parece que estos subdominios
están diseñados para desarrolladores que trabajan en el sitio web de
netacad.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9410c3402246b76019 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9410c3402246b76019"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76245 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76245"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76245"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Qué otro dominio está asociado con el dominio netacad según la
información de crt.sh?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
socialgoodplatform.com
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9410c3402246b76028 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9410c3402246b76028"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76247 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76247"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76247"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Busque crt.sh en el dominio afiliado a netacad.com. ¿Qué observación
general puede hacer sobre los dominios revelados en esta búsqueda? ¿Qué
implica esto sobre la red?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Hay muchos subdominios para socialgoodplatform.com. Más que netacad.
Tiene una gran superficie de ataque.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9510c3402246b76039 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9510c3402246b76039"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762fa .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762fa"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 3: Usar las herramientas de escaneo de SSL en Kali {#parte-3-usar-las-herramientas-de-escaneo-de-ssl-en-kali style="margin-left:0in"}

### Paso 1: Investigar las herramientas de Kali {#paso-1-investigar-las-herramientas-de-kali style="margin-left:0in"}

a.  Iniciar la máquina Kali virtual e iniciar sesión
b.  Inicie una sesión de terminal.
c.  Kali incluye varias herramientas relacionadas con SSL. Haga clic en
    el icono de programas de Kali y busque el término **ssl**.
d.  Utilice la referencia de herramientas de Kali para completar la
    tabla a continuación para las cinco herramientas de SSL incluidas
    con su distribución de Kali.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9610c3402246b7604b .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9610c3402246b7604b"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.opentabletextbox-inner .component__inner}
::: {.component .opentabletextbox .64883bb510c3402246b762fb .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762fb"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb510c3402246b762fb"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTableTextBox__header}
::: {.component__header-inner .openTableTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .opentabletextBox__widget .question-container}
::: openTableTextBox__preText
:::

::: {.opentabletextbox-container .openTableTextBox__table-container}
+-----------------------+-----------------------+-----------------------+
| Herramienta           | Descripción           | Reconocimiento,       |
|                       |                       | explotación o         |
|                       |                       | utilidad              |
+=======================+=======================+=======================+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| sslscan               | Consulta los          | Reconocimiento        |
|                       | servicios SSL para    |                       |
| </div>                | determinar qué        | </div>                |
| :::                   | cifrados se admiten   | :::                   |
|                       |                       |                       |
|                       | </div>                |                       |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| Área de Respuesta     | Área de Respuesta     | Área de Respuesta     |
| :::                   | :::                   | :::                   |
| :::                   | :::                   | :::                   |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| Área de Respuesta     | Área de Respuesta     | Área de Respuesta     |
| :::                   | :::                   | :::                   |
| :::                   | :::                   | :::                   |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| Área de Respuesta     | Área de Respuesta     | Área de Respuesta     |
| :::                   | :::                   | :::                   |
| :::                   | :::                   | :::                   |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| Área de Respuesta     | Área de Respuesta     | Área de Respuesta     |
| :::                   | :::                   | :::                   |
| :::                   | :::                   | :::                   |
+-----------------------+-----------------------+-----------------------+
:::

::: {.openTableTextBox__answerText .answergray .openTableTextBox__table-container .is-full .hide}
+-----------------------+-----------------------+-----------------------+
| Herramienta           | Descripción           | Reconocimiento,       |
|                       |                       | explotación o         |
|                       |                       | utilidad              |
+=======================+=======================+=======================+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| sslscan               | Consulta los          | Reconocimiento        |
|                       | servicios SSL para    |                       |
| </div>                | determinar qué        | </div>                |
| :::                   | cifrados se admiten   | :::                   |
|                       |                       |                       |
|                       | </div>                |                       |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| ssldump               | Analiza y decodifica  | Explotación           |
|                       | el tráfico SSL        |                       |
| </div>                |                       | </div>                |
| :::                   | </div>                | :::                   |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| sslh                  | Ejecuta varios        | Utilidad              |
|                       | servicios en el       |                       |
| </div>                | puerto 443            | </div>                |
| :::                   |                       | :::                   |
|                       | </div>                |                       |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| sslsplit              | Habilita los ataques  | Explotación           |
|                       | MitM en conexiones de |                       |
| </div>                | red cifradas con SSL  | </div>                |
| :::                   |                       | :::                   |
|                       | </div>                |                       |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
| ::: openTableTextBo   | ::: openTableTextBo   | ::: openTableTextBo   |
| x__textArea-container | x__textArea-container | x__textArea-container |
| <div>                 | <div>                 | <div>                 |
|                       |                       |                       |
| sslyze                | Analiza la            | Reconocimiento        |
|                       | configuración de SSL  |                       |
| </div>                | de un servidor        | </div>                |
| :::                   | conectándose a él     | :::                   |
|                       |                       |                       |
|                       | </div>                |                       |
|                       | :::                   |                       |
+-----------------------+-----------------------+-----------------------+
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::

::: openTableTextBox__postText
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9710c3402246b7605b .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9710c3402246b7605b"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762fc .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762fc"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 4: Usar las herramientas de Kali para recopilar información del certificado

Como sabe, **sslscan** es una herramienta de reconocimiento de Kali que
recopila información sobre los certificados SSL asociados con los
dominios. Es una utilidad de línea de comandos. Usaremos **sslscan**
para recopilar información sobre certificados y usaremos otra utilidad,
llamada **aha**, para enviar los resultados a un archivo HTML.

### Paso 1: Instale aha.

La aplicación **aha** crea un archivo HTML estándar que captura la
salida de los comandos del terminal en archivos HTML estándar. Aha
captura cualquier código de color y formato básico de la salida del
comando. También tiene opciones de línea de comandos que le permiten
especificar su propio formato, como el color de fondo, las hojas de
estilo para aplicar y el ajuste de palabras, entre otras
configuraciones.

a.  Actualice la información de su paquete de apto con el comando **apt
    update**. Esto requiere privilegios de root.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ sudo apt update
```

b.  Instale aha con el comando **sudo apt install -y aha**. La opción -y
    supone que **sí** son las respuestas a todas las solicitudes y que
    se puede ejecutar de forma no interactiva. En este caso, está dando
    permiso para instalar aha.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9810c3402246b76065 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9810c3402246b76065"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762fd .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762fd"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Ejecute sslscan y guarde el resultado en un archivo HTML.

a.  Desde la línea de comandos de un terminal, ejecute el comando para
    ejecutar **sslscan** con el objetivo netacad.com.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ sslscan netacad.com
```

Después de una breve demora, debería ver que los resultados del escaneo
comienzan a aparecer en la ventana de terminal. La salida está
codificada por colores para facilitar la interpretación de la gravedad
de los problemas detectados. El significado de la codificación de
colores es el siguiente:

-   Texto de fondo rojo: cifrado NULO. No se utilizó cifrado.
-   Rojo: cifrado roto (menor o igual a 40 bits), protocolo vulnerable o
    roto como SSLv2 o SSLv3 o algoritmo de firma de certificados roto
    como MD5.
-   Amarillo: cifrado débil (menor o igual a 56 bits) o algoritmo de
    firma débil, como SHA-1.
-   Violeta: cifrado anónimo, como ADH o AECDH.

b.  Si bien sslscan ofrece opciones para generar resultados en formatos
    de archivo de texto o XML, aha proporciona la legibilidad de HTML y
    la preservación de la codificación de colores. Para usar aha,
    canalice la salida del comando sslscan a aha y luego redirija la
    salida de aha a un archivo HTML.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ sslscan netacad.com | aha > sfa_cert.html
```

sslscan guardará el archivo en el directorio de inicio de Kali como lo
indica el indicador. Puede agregar una ruta al nombre del archivo o
ejecutar el terminal desde un directorio de destino para guardarlo en
otro lugar.

c.  Busque el archivo HTML y ábralo con Firefox. La salida debe ser
    similar a la del terminal, excepto que el fondo es blanco. La
    codificación de colores original debe estar intacta.
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9910c3402246b76079 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9910c3402246b76079"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb510c3402246b762ff .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762ff"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Pregunta de reflexión
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9a10c3402246b76096 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9a10c3402246b76096"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-bottom-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb510c3402246b762fe .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb510c3402246b762fe"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb510c3402246b762fe"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Compare el resultado de las herramientas utilizadas en esta práctica de
laboratorio. ¿Qué herramienta parece brindar la información más útil?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Crt.sh es, con mucho, el más detallado. Busca subdominios que otras
herramientas no vieron.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::
:::
:::
:::
:::
:::
:::
:::
:::

</div>
:::
:::
:::

::: openTextBoxController__button-container
Mostrar todas las respuestas

Ocultar todas las respuestas

Borrar mis respuestas
:::

------------------------------------------------------------------------

::: {.post-text tabindex="0"}
© 2017 - 2023 Cisco and/or its affiliates. All rights reserved. Cisco
Public
:::
