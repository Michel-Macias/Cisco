::: {.article .64883b7c10c3402246b75e55 .background-color-white .remove-padding-top .remove-padding-bottom .is-complete}
::: article__inner
::: no-adaptive-scroll
<div>

::: {.article__header-wrapper .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__header
::: article__header-inner
::: article__title
::: {.js-heading .is-complete}
::: {#article-heading .js-heading-inner role="heading" aria-level="2"}
[ Completo  Práctica de laboratorio - Enumeración con Nmap]{.aria-label}
:::
:::

::: {.article__title-inner tabindex="0" role="heading" aria-level="2"}
[Completo ]{.accessibility-completion-indicator} Práctica de
laboratorio - Enumeración con Nmap
:::
:::
:::
:::
:::

::: {.block__container style=""}
::: {.64883b8910c3402246b75f46 .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b8910c3402246b75f46"}
::: block__inner
::: {.block__header-wrapper .remove-bottom-padding .remove-top-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.component .dynamic-graphic .64883bbb10c3402246b763a1 .is-full .is-complete socialgoodpulse-id="64883bbb10c3402246b763a1"}
::: component__header-container
::: component__header-wrapper
::: {.component__header .dynamic-graphic__header}
::: {.component__header-inner .dynamic-graphic__header-inner}
::: component__content
::: {.component__body .dynamic-graphic__body tabindex="0"}
::: {.component__body-inner .dynamic-graphic__body-inner}
# **Topología**
:::
:::
:::
:::
:::
:::
:::

::: component__widget
::: {#a11y_description-b66648b0-de2b-11ed-84d2-5bacc0f572bd .a11y_description .screen-reader-hide aria-live="polite"}
:::

::: {#b66648b0-de2b-11ed-84d2-5bacc0f572bd .dynamic-graphic-container .b66648b0-de2b-11ed-84d2-5bacc0f572bd tabindex="0" role="figure" aria-labelledby="a11y_description-b66648b0-de2b-11ed-84d2-5bacc0f572bd"}
::: {.dynamic-graphic-display dir="ltr"}
::: {.overlay .removed role="presentation" aria-hidden="true"}
:::

::: dynamic-graphic-content
::: primary-image-wrapper
:::

::: {.dynamic-text dir="ltr"}
::: {#text1 .dynamic-text-item .text1}
Virtual LAN
:::

::: {#text2 .dynamic-text-item .text2}
10.6.6.0/24
:::

::: {#text3 .dynamic-text-item .text3}
10.6.6.11
:::

::: {#text4 .dynamic-text-item .text4}
10.6.6.12
:::

::: {#text5 .dynamic-text-item .text5}
10.6.6.13
:::

::: {#text6 .dynamic-text-item .text6}
10.6.6.14
:::

::: {#text7 .dynamic-text-item .text7}
10.6.6.23
:::

::: {#text8 .dynamic-text-item .text8}
172.17.0.2
:::

::: {#text9 .dynamic-text-item .text9}
Virtual LAN
:::

::: {#text10 .dynamic-text-item .text10}
172.17.0.0/24
:::

::: {#text11 .dynamic-text-item .text11}
DMZ
:::

::: {#text12 .dynamic-text-item .text12}
172.17.0.1
:::

::: {#text13 .dynamic-text-item .text13}
10.6.6.1
:::

::: {#text14 .dynamic-text-item .text14}
Virtual Switch/Router
:::

::: {#text15 .dynamic-text-item .text15}
Assigned by DHCP
:::

::: {#text16 .dynamic-text-item .text16}
Corporate Network
:::

::: {#text17 .dynamic-text-item .text17}
Internet
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

::: {.64883b8a10c3402246b75f67 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b8a10c3402246b75f67"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b76351 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76351"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Objetivos

Nmap es una potente herramienta de código abierto para la asignación y
el descubrimiento de redes. En esta práctica de laboratorio, utilizará
Nmap como parte de su estrategia de reconocimiento activa.

-   Investigar Nmap
-   Realizar escaneos básicos de Nmap

# Trasfondo / Escenario

Una captura de Wireshark muestra una actividad inusual en una máquina en
la red DMZ 10.6.6.0. Se le ha pedido que realice un reconocimiento
activo en la máquina para determinar qué servicios puede ofrecer y si
hay aplicaciones vulnerables que podrían presentar problemas de
seguridad. La dirección IP de la computadora sospechosa es 10.6.6.23.
Tiene acceso a un sistema Kali Linux en la red 10.6.6.0.

# Recursos necesarios

-   Kali VM personalizada para el curso de Ethical Hacker
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

::: {.64883b8c10c3402246b75f80 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b8c10c3402246b75f80"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883baf10c3402246b76265 .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b76265"}
::: {.component__header-wrapper .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Instrucciones

## Parte 1: Investigue Nmap {#parte-1-investigue-nmap style="margin-left:0in"}

### Paso 1: Inicie sesión en Kali Linux y verifique el entorno. {#paso-1-inicie-sesión-en-kali-linux-y-verifique-el-entorno. style="margin-left:0in"}

a.  Inicie sesión en el sistema Kali con el nombre de usuario **kali** y
    la contraseña **kali***.* Se le presenta el escritorio Kali.
b.  Abran una ventana del terminal.
c.  Verifique que Kali tenga una interfaz en la red 10.6.6.0/24 mediante
    el comando **ifconfig**.
d.  Utilice el comando **nmap -V** para verificar que Nmap esté
    instalado y para mostrar la versión de Nmap. Debería obtener una
    salida similar a la que se muestra a continuación.

``` {style="margin-left: 35px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 35px;"}
└─$ nmap -V
```

``` {style="margin-left: 35px;"}
Nmap version 7.93 ( https://nmap.org )
```

``` {style="margin-left: 35px;"}
Platform: x86_64-pc-linux-gnu
```

``` {style="margin-left: 35px;"}
Compiled with: liblua-5.3.6 openssl-3.0.7 libssh2-1.10.0 libz-1.2.11 libpcre-8.39 nmap-libpcap-1.7.3 nmap-libdnet-1.12 ipv6
```

``` {style="margin-left: 35px;"}
Compiled without:
```

``` {style="margin-left: 35px;"}
Available nsock engines: epoll poll select
```
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

::: {.64883b8e10c3402246b75fb0 .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b8e10c3402246b75fb0"}
::: block__inner
::: {.block__header-wrapper .remove-bottom-padding .remove-top-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b76352 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76352"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Investigue las opciones y funciones de Nmap

a.  El uso del comando **nmap** sin especificar ninguna opción ni
    destino devuelve una lista de las opciones de Nmap más utilizadas.
    Para acceder al sistema de ayuda de Nmap, utilice el comando **nmap
    -h**.[** **]{.CMDChar}La salida de ayuda se divide en secciones
    según el tipo de detección que admite la opción.
b.  La página del manual de Nmap proporciona información adicional. Para
    acceder a la página del manual, introduzca el comando **man nmap**.
    Para salir de las páginas del manual, presione **q** para salir y
    volver al indicador del terminal.

Utilice la página del manual de Nmap para completar la tabla.
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

::: {.64883b9010c3402246b75fcf .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b9010c3402246b75fcf"}
::: block__inner
::: {.block__header-wrapper .remove-bottom-padding .remove-top-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.opentabletextbox-inner .component__inner}
::: {.component .opentabletextbox .64883bae10c3402246b7624f .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b7624f"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b7624f"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .openTableTextBox__header}
::: {.component__header-inner .openTableTextBox__header-inner}
::: component__content
::: {.component__body .openTableTextBox__body tabindex="0"}
::: {.component__body-inner .openTableTextBox__body-inner}
**Opciones comunes de Nmap**
:::
:::
:::
:::
:::
:::
:::
:::

::: {.component__widget .opentabletextBox__widget .question-container}
::: openTableTextBox__preText
:::

::: {.opentabletextbox-container .openTableTextBox__table-container}
+-----------------------------------+-----------------------------------+
| Opción                            | Descripción                       |
+===================================+===================================+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -A                                | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -O                                | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -p                                | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -sF                               | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -sn                               | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -sS                               | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -sT                               | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -sV                               | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -T \<0-5\>                        | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| -v                                | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | ::: ope                           |
|                                   | nTableTextBox__textArea-container |
| \--open                           | Área de Respuesta                 |
|                                   | :::                               |
| </div>                            | :::                               |
| :::                               |                                   |
+-----------------------------------+-----------------------------------+
:::

::: {.openTableTextBox__answerText .answergray .openTableTextBox__table-container .is-full .hide}
+-----------------------------------+-----------------------------------+
| Opción                            | Descripción                       |
+===================================+===================================+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -A                                | Escaneo agresivo que permite la   |
|                                   | detección del sistema operativo,  |
| </div>                            | detección de versiones, escaneo   |
| :::                               | de scripts (guiones) y traceroute |
|                                   | (rastreo de rutas)                |
|                                   |                                   |
|                                   | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -O                                | Permite la detección del SO       |
|                                   |                                   |
| </div>                            | </div>                            |
| :::                               | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -p                                | Permite escanear puertos o rangos |
|                                   | de puertos específicos            |
| </div>                            |                                   |
| :::                               | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -sF                               | Realiza un escaneo TCP FIN        |
|                                   |                                   |
| </div>                            | </div>                            |
| :::                               | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -sn                               | Realiza un escaneo de detección   |
|                                   | de host                           |
| </div>                            |                                   |
| :::                               | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -sS                               | Realiza escaneo TCP SYN           |
|                                   |                                   |
| </div>                            | </div>                            |
| :::                               | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -sT                               | Realiza un escaneo de TCP Connect |
|                                   |                                   |
| </div>                            | </div>                            |
| :::                               | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -sV                               | Sondeos de puertos abiertos para  |
|                                   | determinar información de         |
| </div>                            | servicio / versión                |
| :::                               |                                   |
|                                   | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -T \<0-5\>                        | Establece la duración del         |
|                                   | escaneo. Los números más altos    |
| </div>                            | producen resultados más           |
| :::                               | rápidamente. Los escaneos más     |
|                                   | lentos eluden mejor la detección. |
|                                   |                                   |
|                                   | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| -v                                | Aumenta el nivel de detalle de la |
|                                   | salida.                           |
| </div>                            |                                   |
| :::                               | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
| ::: ope                           | ::: ope                           |
| nTableTextBox__textArea-container | nTableTextBox__textArea-container |
| <div>                             | <div>                             |
|                                   |                                   |
| \--open                           | Solo reporta puertos abiertos (o  |
|                                   | posiblemente abiertos)            |
| </div>                            |                                   |
| :::                               | </div>                            |
|                                   | :::                               |
+-----------------------------------+-----------------------------------+
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

::: {.64883b9110c3402246b75fe0 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9110c3402246b75fe0"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b76354 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76354"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 2: Realizar escaneo básico de Nmap {#parte-2-realizar-escaneo-básico-de-nmap style="margin-left:0in"}

### Paso 1: Iniciar un escaneo básico de Nmap de la computadora de destino. {#paso-1-iniciar-un-escaneo-básico-de-nmap-de-la-computadora-de-destino. style="margin-left:0in"}

a.  Para escanear rápidamente la DMZ en busca de hosts activos, puede
    realizar un escaneo de descubrimiento. En un escaneo de detección,
    el host de escaneo envía una solicitud de eco (ping) de ICMP, un TCP
    SYN al puerto 443, un TCP ACK al puerto 80 y una solicitud de marca
    de tiempo de ICMP. Una respuesta a cualquiera de las solicitudes
    indica que el host está activo y la pila de protocolos IP en el
    host. Ingrese el siguiente comando para escanear la red DMZ:

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap -sn 10.6.6.0/24
```
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

::: {.64883b9210c3402246b75ffd .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9210c3402246b75ffd"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb810c3402246b76353 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76353"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb810c3402246b76353"}
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
¿Cuántos hosts activos se encuentran en la red DMZ?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar según el entorno. En este entorno virtual
personalizado, hay 6, incluido el host Linux de Kali.
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

::: {.64883b9310c3402246b7600a .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9310c3402246b7600a"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b76355 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76355"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  El host 10.6.6.23 se identificó como sospechoso en una captura de
    Wireshark y es necesario realizar un reconocimiento adicional para
    descubrir más sobre la computadora y sus servicios. Utilice el
    comando **nmap** para ejecutar un escaneo predeterminado en el host
    de destino.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap 10.6.6.23 
```
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

::: {.64883b9410c3402246b76021 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9410c3402246b76021"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb810c3402246b76357 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76357"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb810c3402246b76357"}
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
¿Qué puertos se enumeran como abiertos en el host de destino
(10.6.6.23)?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Los puertos abiertos enumerados son: 21, 22, 53, 80, 139 y 445.
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

::: {.64883b9510c3402246b76029 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9510c3402246b76029"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b76359 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76359"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
De manera predeterminada, Nmap realiza un escaneo de conexión de los
1000 puertos TCP más comunes. Esto utiliza el software de red del
sistema operativo para establecer una conexión TCP completa. Este tipo
de escaneo crea una gran cantidad de tráfico de red y aumenta la
probabilidad de detección por parte de los servicios de detección de
intrusiones. También puede especificar un escaneo de conexión TCP
mediante la opción de comando **nmap -sT**.
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

::: {.64883b9610c3402246b7603f .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9610c3402246b7603f"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.table-inner .component__inner}
::: {.component .table .64883bb810c3402246b76358 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b76358"}
::: component__header-container
::: {.table .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb810c3402246b76358"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .table__header}
::: {.component__header-inner .table__header-inner}
::: component__content
::: {.component__body .table__body tabindex="0"}
::: {.component__body-inner .table__body-inner}
La salida del escaneo de conexión incluye los códigos de estado que se
muestran en la tabla:
:::
:::
:::
:::
:::
:::
:::
:::

::: {.component__widget .table__widget}
  ---------- ----------------------------------------------------------------------- -- ---------------------------------------------------------------- -- --
  Estado     Respuesta recibida                                                         Interpretación                                                      
  Abierta    SYN/ACK de TCP                                                             Hay un servicio a la escucha en el puerto identificado.             
  Cerrado    TCP RST                                                                    No hay ningún servicio a la escucha en el puerto identificado.      
  Filtrado   No hay respuesta o se recibió un mensaje de destino ICMP inaccesible.      El puerto está siendo filtrado por un cortafuegos.                  
  ---------- ----------------------------------------------------------------------- -- ---------------------------------------------------------------- -- --
:::
:::

<div>

</div>
:::
:::
:::
:::
:::

::: {.64883b9610c3402246b76048 .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9610c3402246b76048"}
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
::: {.component .text .64883bb810c3402246b7635a .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b7635a"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
c.  La opción **-O** se puede utilizar para determinar más información
    sobre el sistema operativo que se ejecuta en el host de destino.
    Algunas opciones de Nmap requieren permisos adicionales y deben
    ejecutarse como **root** o con el comando **sudo**. Para encontrar
    información del sistema operativo en el host de destino, utilice el
    comando **nmap -O**. Introduzca la contraseña **kali** cuando se le
    solicite.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ sudo nmap -O 10.6.6.23
```
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

::: {.64883b9710c3402246b7605d .block .remove-top-padding .remove-bottom-padding .is-complete socialgoodpulse-id="64883b9710c3402246b7605d"}
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
::: {.component .opentextbox .64883bb810c3402246b7635b .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b7635b"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb810c3402246b7635b"}
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
¿Qué sistema operativo ejecuta el host de destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El sistema operativo en el host es Linux 4.15 - 5.8 al momento de la
redacción.
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

::: {.64883b9810c3402246b76066 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9810c3402246b76066"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb810c3402246b7635c .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883bb810c3402246b7635c"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Obtenga información adicional sobre el host y los servicios. {#paso-2-obtenga-información-adicional-sobre-el-host-y-los-servicios. style="margin-left:0in"}

a.  Para proporcionar información adicional sobre el equipo de destino,
    es posible combinar diferentes opciones en una sola línea de
    comando. El comando anterior identificó varios puertos
    potencialmente abiertos en el host 10.6.6.23. Puede utilizar **-v**,
    **-p**y **-sV** para encontrar información adicional sobre los
    servicios que se ejecutan en los puertos abiertos. Este comando
    proporciona información sobre el servicio FTP que se ejecuta en el
    puerto 21 del destino en modo detallado, con la sincronización
    establecida en rápido (**-T4**):

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap -v -p21 -sV -T4 10.6.6.23
```
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

::: {.64883b9910c3402246b7607b .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9910c3402246b7607b"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b7635d .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b7635d"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b7635d"}
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
¿Qué descubrió sobre el tipo y la versión de servidor FTP que se ejecuta
en el host?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El comando enumera la versión de FTP que se ejecuta en la computadora
como vsftpd 3.0.3.
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

::: {.64883b9910c3402246b76083 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9910c3402246b76083"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883baf10c3402246b76266 .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b76266"}
::: {.component__header-wrapper .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  La opción **-A** ejecuta la detección del sistema operativo, la
    detección de la versión, el escaneo de scripts y el traceroute. El
    escaneo **-A** puede ser muy intrusivo y, por lo tanto, será
    detectado por muchos sistemas IDS, así que asegúrese de tener
    permiso antes de intentar realizar este escaneo fuera del entorno
    del laboratorio. Para recopilar más información sobre el servicio
    FTP, ingrese el comando **nmap -p21 -sV -A 10.6.6.23**.

A continuación se muestra un ejemplo detallado de la salida de este
comando:

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap -p21 -sV -A 10.6.6.23
```

 

``` {style="margin-left: 40px;"}
Starting Nmap 7.93 ( https://nmap.org ) at 2023-03-16 22:36 UTC
```

``` {style="margin-left: 40px;"}
Nmap scan report for 10.6.6.23
```

``` {style="margin-left: 40px;"}
Host is up (0.00044s latency).
```

 

``` {style="margin-left: 40px;"}
PORT   STATE SERVICE VERSION
```

``` {style="margin-left: 40px;"}
21/tcp open  ftp     vsftpd 3.0.3
```

``` {style="margin-left: 40px;"}
| ftp-syst:
```

``` {style="margin-left: 40px;"}
|   STAT:
```

``` {style="margin-left: 40px;"}
| FTP server status:
```

``` {style="margin-left: 40px;"}
|      Connected to 10.6.6.1
```

``` {style="margin-left: 40px;"}
|      Logged in as ftp
```

``` {style="margin-left: 40px;"}
|      TYPE: ASCII
```

``` {style="margin-left: 40px;"}
|      No session bandwidth limit
```

``` {style="margin-left: 40px;"}
|      Session timeout in seconds is 300
```

``` {style="margin-left: 40px;"}
|      Control connection is plain text
```

``` {style="margin-left: 40px;"}
|      Data connections will be plain text
```

``` {style="margin-left: 40px;"}
|      At session startup, client count was 3
```

``` {style="margin-left: 40px;"}
|      vsFTPd 3.0.3 - secure, fast, stable
```

``` {style="margin-left: 40px;"}
|_End of status
```

``` {style="margin-left: 40px;"}
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
```

``` {style="margin-left: 40px;"}
| -rw-r--r--    1 0        0              16 Aug 13  2021 file1.txt
```

``` {style="margin-left: 40px;"}
| -rw-r--r--    1 0        0              16 Aug 13  2021 file2.txt
```

``` {style="margin-left: 40px;"}
| -rw-r--r--    1 0        0              29 Aug 13  2021 file3.txt
```

``` {style="margin-left: 40px;"}
|_-rw-r--r--    1 0        0              26 Aug 13  2021 supersecretfile.txt
```

``` {style="margin-left: 40px;"}
Service Info: OS: Unix
```

 

``` {style="margin-left: 40px;"}
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
```

``` {style="margin-left: 40px;"}
Nmap done: 1 IP address (1 host up) scanned in 0.63 seconds
```
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

::: {.64883b9a10c3402246b76091 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9a10c3402246b76091"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b7635e .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b7635e"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
c.  Examine el resultado del comando **nmap -A**. Observe que el
    resultado indica que se realizó una conexión entre el sistema Kali
    Linux y el servicio FTP de destino.
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

::: {.64883b9b10c3402246b760a4 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9b10c3402246b760a4"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b7635f .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b7635f"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b7635f"}
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
¿A cuántos archivos del servidor FTP se puede acceder a través de esta
conexión?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Hay cuatro archivos de texto accesibles.
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

::: {.64883b9b10c3402246b760ac .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9b10c3402246b760ac"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76251 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76251"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76251"}
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
¿Qué debilidad en la configuración del servidor FTP permitió que el
sistema Kali Linux iniciara sesión en el servidor FTP?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El servidor FTP está configurado para permitir inicios de sesión
anónimos.
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

::: {.64883b9c10c3402246b760bb .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9c10c3402246b760bb"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883baf10c3402246b76267 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b76267"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 3: Investigue los servicios para pymes con secuencias de comandos {#paso-3-investigue-los-servicios-para-pymes-con-secuencias-de-comandos style="margin-left:0in"}

El protocolo Server Message Block (SMB) es un protocolo de uso
compartido de archivos de red admitido en computadoras con Windows y por
SAMBA en Linux. SMB permite que las aplicaciones lean y escriban
archivos o soliciten servicios a través de una red. Se puede acceder a
recursos compartidos públicos abiertos o dispositivos compartidos, como
servidores de impresión en una red, a través de SMB.

a.  El escaneo anterior de puertos abiertos en el equipo de destino
    indica que los puertos SMB 139 y 445 están abiertos. Encuentre más
    información sobre estos puertos mediante las opciones de comando
    **-A** y **-p**. La opción **-A** ejecuta varias funciones, incluida
    la ejecución de los guiones predeterminados. Especifique más de un
    puerto para escanear enumerándolos por separado con una coma entre
    ellos.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap -A -p139,445 10.6.6.23
```

``` {style="margin-left: 40px;"}
Starting Nmap 7.93 ( https://nmap.org ) at 2023-03-01 22:47 UTC
```

``` {style="margin-left: 40px;"}
Nmap scan report for 10.6.6.23
```

``` {style="margin-left: 40px;"}
Host is up (0.00014s latency).
```

 

``` {style="margin-left: 40px;"}
PORT    STATE SERVICE     VERSION
```

``` {style="margin-left: 40px;"}
139/tcp open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
```

``` {style="margin-left: 40px;"}
445/tcp open  netbios-ssn Samba smbd 4.9.5-Debian (workgroup: WORKGROUP)
```

``` {style="margin-left: 40px;"}
Service Info: Host: 868CF29B394C
```

 

``` {style="margin-left: 40px;"}
Host script results:
```

``` {style="margin-left: 40px;"}
| smb2-time:
```

``` {style="margin-left: 40px;"}
|   date: 2023-03-01T22:47:38
```

``` {style="margin-left: 40px;"}
|_  start_date: N/A
```

``` {style="margin-left: 40px;"}
| smb-security-mode:
```

``` {style="margin-left: 40px;"}
|   account_used: <blank>
```

``` {style="margin-left: 40px;"}
|   authentication_level: user
```

``` {style="margin-left: 40px;"}
|   challenge_response: supported
```

``` {style="margin-left: 40px;"}
|_  message_signing: disabled (dangerous, but default)
```

``` {style="margin-left: 40px;"}
| smb-os-discovery:
```

``` {style="margin-left: 40px;"}
|   OS: Windows 6.1 (Samba 4.9.5-Debian)
```

``` {style="margin-left: 40px;"}
|   Computer name: 868cf29b394c
```

``` {style="margin-left: 40px;"}
|   NetBIOS computer name: 868CF29B394C
```

``` {style="margin-left: 40px;"}
|   Domain name: 
```

``` {style="margin-left: 40px;"}
|   FQDN: 868cf29b394c
```

``` {style="margin-left: 40px;"}
|_  System time: 2023-03-01T22:47:35+00:00
```

``` {style="margin-left: 40px;"}
| smb2-security-mode:
```

``` {style="margin-left: 40px;"}
|   311:
```

``` {style="margin-left: 40px;"}
|_    Message signing enabled but not required
```

``` {style="margin-left: 40px;"}
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
```

 

``` {style="margin-left: 40px;"}
Nmap done: 1 IP address (1 host up) scanned in 22.05 seconds
```
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

::: {.64883b9d10c3402246b760c6 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9d10c3402246b760c6"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b76360 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76360"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  Examine la información devuelta por el escaneo de Nmap. A partir de
    esta información, se puede determinar que el equipo de destino es
    miembro del grupo de trabajo predeterminado, denominado WORKGROUP, y
    que SMB es compatible con este host a través de SAMBA en Linux.
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

::: {.64883b9e10c3402246b760d6 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9e10c3402246b760d6"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b76361 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76361"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76361"}
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
¿Cuál es el nombre de equipo NetBIOS asignado al host de destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Por ejemplo, el nombre del equipo NetBIOS
podría ser GRAVEMIND\\x00.
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

::: {.64883b9e10c3402246b760dd .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9e10c3402246b760dd"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b76362 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76362"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
c.  Nmap contiene el potente motor de secuencias de comandos de Nmap
    (NSE), que permite la programación de varias opciones de Nmap y
    acciones condicionales que se tomarán como resultado de las
    respuestas. NSE tiene secuencias de comandos integradas que enumeran
    los usuarios, los grupos y los recursos compartidos de la red. [Uno
    de los guiones más utilizados para la detección de pymes es el guion
    **smb-enum-users.nse**. U]{.normaltextrun}se el guion de Nmap NSE
    con el comando:

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ nmap --script smb-enum-users.nse -p139,445 10.6.6.23
```
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

::: {.64883b9f10c3402246b760e9 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9f10c3402246b760e9"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b76363 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76363"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76363"}
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
¿El guion descubrió algún nombre de usuario de SMB en el host de
destino? Si es así, ¿cuántos?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Dos usuario, arbiter and masterchief.
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

::: {.64883b9f10c3402246b760ef .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9f10c3402246b760ef"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883baf10c3402246b76268 .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b76268"}
:::
:::
:::
:::
:::
:::

::: {.64883b9f10c3402246b760f6 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b9f10c3402246b760f6"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b76364 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76364"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
e.  Examine la salida creada por el guion **smb-enum-comparte**. En el
    resultado, los nombres de recursos compartidos que terminan con un
    carácter "\$" representan recursos compartidos ocultos que incluyen
    recursos compartidos del sistema y administrativos.
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

::: {.64883ba010c3402246b76102 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba010c3402246b76102"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b76365 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76365"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76365"}
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
¿Cuántos recursos compartidos ocultos se descubrieron en el host de
destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
2
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

::: {.64883ba010c3402246b76108 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba010c3402246b76108"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b76250 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b76250"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b76250"}
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
¿Qué riesgo de seguridad grave se descubre en este resultado de guion?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Acceso anónimo: READ/WRITE.
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

::: {.64883ba010c3402246b7610c .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba010c3402246b7610c"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b76366 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76366"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
Hay guiones preprogramados que pueden proporcionar capacidades
adicionales de detección de SMB si hay una cuenta de usuario autorizada
disponible. Tómese su tiempo e investigue algunos de los scripts
(guiones) de NSE que enumeran los sistemas Windows y SAMBA.
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

::: {.64883ba110c3402246b76113 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba110c3402246b76113"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.text-inner .component__inner}
::: component__header-container
::: {.component .text .64883bb910c3402246b76367 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76367"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Preguntas de reflexión
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

::: {.64883ba110c3402246b76118 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba110c3402246b76118"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bb910c3402246b76368 .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76368"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76368"}
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
1\. Nmap es una potente herramienta para la detección de redes. Piense
en las formas en que Nmap puede detectar y enumerar las computadoras que
utilizó en esta práctica de laboratorio. ¿Cómo pueden los técnicos de
redes internas utilizar Nmap para realizar un inventario y proteger las
computadoras locales? ¿Cómo pueden los agentes maliciosos utilizar estas
mismas herramientas para realizar un reconocimiento antes de un ataque?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Los escaneos de Nmap se pueden utilizar
para identificar dispositivos activos en una red. Los escaneos básicos
descubrirán puertos abiertos y servicios que pueden necesitar
protección. El acceso anónimo a archivos FTP o recursos compartidos de
red se puede detectar y corregir o limitar. Los agentes maliciosos
pueden utilizar estas mismas funciones para encontrar equipos que sean
vulnerables a los ataques.
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

::: {.64883ba110c3402246b7611c .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883ba110c3402246b7611c"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bae10c3402246b7624d .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883bae10c3402246b7624d"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bae10c3402246b7624d"}
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
2\. Si tuviera la tarea de crear un informe sobre el estado del host de
destino (10.6.6.23), ¿qué riesgos de seguridad graves incluiría en su
informe?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. En el informe se incluirán versiones
vulnerables de servicios, recursos compartidos abiertos, acceso anónimo
a FTP y servicios innecesarios o inseguros.
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
