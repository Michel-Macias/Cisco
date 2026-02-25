::: {.article .64883b7c10c3402246b75e4f .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__inner
::: no-adaptive-scroll
<div>

::: {.article__header-wrapper .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__header
::: article__header-inner
::: article__title
::: {.js-heading .is-incomplete}
::: {#article-heading .js-heading-inner role="heading" aria-level="2"}
[ Incompleto  Práctica de laboratorio - Rastreo de redes con
Wireshark]{.aria-label}
:::
:::

::: {.article__title-inner tabindex="0" role="heading" aria-level="2"}
[Incompleto ]{.accessibility-completion-indicator} Práctica de
laboratorio - Rastreo de redes con Wireshark
:::
:::
:::
:::
:::

::: {.block__container style=""}
::: {.64883b8410c3402246b75ef3 .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b8410c3402246b75ef3"}
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
::: {.component .text .64883bab10c3402246b7620d .is-full .is-complete socialgoodpulse-id="64883bab10c3402246b7620d"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Objetivos

En esta práctica de laboratorio, utilizará la utilidad de Linux
**tcpdump** para capturar y guardar el tráfico de red. Luego utilizará
Wireshark para investigar la captura de tráfico.

-   Prepare el host para capturar el tráfico de red.
-   Capture y guarde el tráfico de red.
-   Ver y analizar la captura de paquetes.
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

::: {.64883b8710c3402246b75f29 .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b8710c3402246b75f29"}
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
::: {.component .text .64883bab10c3402246b7620e .is-full .is-complete socialgoodpulse-id="64883bab10c3402246b7620e"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Trasfondo / Escenario

Wireshark es una utilidad de captura de paquetes de red que pueden
utilizar los administradores de red para solucionar problemas de red.
También se puede utilizar para espiar las comunicaciones de red para
recopilar pasivamente información sobre usuarios y servicios. Wireshark
se considera una herramienta pasiva porque no crea tráfico en la red.

## Recursos necesarios

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

::: {.64883b8910c3402246b75f52 .block .remove-bottom-padding .remove-top-padding socialgoodpulse-id="64883b8910c3402246b75f52"}
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
::: {.component .text .64883bab10c3402246b7620f .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bab10c3402246b7620f"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Instrucciones

## Parte 1: Preparar el host para capturar el tráfico de red.

### **Paso 1: Iniciar la máquina virtual e iniciar sesión**

a.  Inicie la máquina virtual de la estación de trabajo Kali. Utilicen
    las siguientes credenciales de usuario:

        Username: kali

        Password: kali

b.  Inicie una sesión de terminal haciendo clic en el icono de terminal
    en la barra de menús.

### **Paso 2: Verificar el entorno.**

a.  Verifique el directorio de usuarios que se usará para almacenar el
    tráfico capturado. Para mostrar el directorio actual, use el comando
    **pwd** para mostrar la ruta completa al directorio de trabajo
    actual.

        ┌──(kali㉿Kali)-[~]

        └─$ pwd
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

::: {.64883b8b10c3402246b75f77 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b8b10c3402246b75f77"}
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
::: {.component .opentextbox .64883bab10c3402246b76210 .is-full socialgoodpulse-id="64883bab10c3402246b76210"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bab10c3402246b76210"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Registre la ubicación del directorio.
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
generalmente /home/
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

::: {.64883b8d10c3402246b75f9d .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b8d10c3402246b75f9d"}
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
::: {.component .text .64883bab10c3402246b76211 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bab10c3402246b76211"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  Determine la dirección IP de la interfaz Ethernet de Kali con el
    comando \[ **ifconfig**. La interfaz ethernet generalmente se
    denomina **eth0**.

        ┌──(kali㉿Kali)-[~]

        └─$  ifconfig
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

::: {.64883b9010c3402246b75fcc .block .remove-bottom-padding .remove-top-padding socialgoodpulse-id="64883b9010c3402246b75fcc"}
::: block__inner
::: {.block__header-wrapper .remove-bottom-padding .remove-top-padding}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: component
::: {.component__inner .openTextBox__inner}
::: {.component .opentextbox .64883bab10c3402246b76212 .is-full socialgoodpulse-id="64883bab10c3402246b76212"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bab10c3402246b76212"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Registre la dirección IP y la dirección MAC de la interfaz de red
Ethernet. Esta será la dirección de origen de los paquetes que se
originan en la máquina Kali.
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar.
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

::: {.64883b9010c3402246b75fdd .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9010c3402246b75fdd"}
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
::: {.component .text .64883bab10c3402246b76213 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bab10c3402246b76213"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
c.  Determine la puerta de enlace predeterminada asignada al host Kali
    mediante el comando **ip route**.

        ┌──(kali㉿Kali)-[~]

        └─$ ip route
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

::: {.64883b9210c3402246b75ff5 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9210c3402246b75ff5"}
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
::: {.component .opentextbox .64883bac10c3402246b76214 .is-full socialgoodpulse-id="64883bac10c3402246b76214"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76214"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Registre la dirección IP de la puerta de enlace predeterminada. La
puerta de enlace predeterminada responde a las solicitudes ARP de
direcciones IP de destino ubicadas fuera de la red de origen.
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar.
:::

::: btn__container
Mostrar respuesta

Ocultar respuesta
:::

::: openTextBox__postText
Nota: La dirección IP de la puerta de enlace predeterminada debe estar
en la misma subred IP que la dirección de la interfaz Ethernet.
:::
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9310c3402246b76009 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9310c3402246b76009"}
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
::: {.component .text .64883bac10c3402246b76215 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bac10c3402246b76215"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
d.  Determine la dirección del servidor DNS predeterminado configurado
    mostrando el contenido del archivo **/etc/resolv.conf**. Puede ver
    el archivo con el comando **cat** .

        $ cat /etc/resolv.conf

 
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

::: {.64883b9410c3402246b76018 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9410c3402246b76018"}
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
::: {.component .opentextbox .64883bac10c3402246b76216 .is-full socialgoodpulse-id="64883bac10c3402246b76216"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76216"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
Registre la dirección IP del servidor DNS predeterminado configurado. La
dirección IP del servidor DNS será la dirección de destino de los
paquetes de consulta estándar y la dirección de origen de los paquetes
de respuesta DNS.
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar.
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

::: {.64883b9410c3402246b76027 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9410c3402246b76027"}
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
::: {.component .text .64883bac10c3402246b76217 .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bac10c3402246b76217"}
::: {.component__header-wrapper .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Parte 2: Capturar y guardar el tráfico de red.

En esta parte utilizarán **tcpdump** para capturar el contenido del
tráfico HTTP. Utilizarán opciones de comandos para guardar el tráfico en
un archivo de captura de paquetes (pcap). Estos registros se pueden
analizar posteriormente con diferentes aplicaciones que leen
archivos pcap, incluida Wireshark.

**Paso 1: Abrir un terminal e iniciar tcpdump**

a.  Abra una aplicación del terminal e introduzca el comando
    **ifconfig**.

        ┌──(kali㉿Kali)-[~]

        └─$ ifconfig

b.  En la salida **ifconfig**, busque el nombre de la interfaz que
    corresponde al adaptador Ethernet (generalmente eth0). Haga clic con
    el botón derecho en el nombre de la interfaz y seleccione **Copy
    Selection** (Copiar selección).

c.  Ingrese el comando **sudo tcpdump** como se muestra. Reemplace el
    texto **\<*interface*\>** con el nombre de la interfaz que copió en
    el paso anterior. Este comando requiere acceso de usuario root, así
    que introduzca **kali** como contraseña si se le solicita.

        ┌──(kali㉿Kali)-[~]

        └─$ sudo tcpdump -i eth0 -s 0 -w packetdump.pcap

    La opción de comando **-i** le permite especificar la interfaz. Si
    no se la especifica, tcpdump capturará todo el tráfico en todas las
    interfaces.

    La opción de comando **-s** especifica la longitud de la instantánea
    correspondiente a cada paquete. Al establecer esta opción en 0, se
    establece el valor predeterminado de 262144.

    La opción de comando **-w** se utiliza para escribir el resultado
    del comando **tcpdump** en un archivo. Si se agrega la extensión
    **.pcap**, se garantiza que los sistemas operativos y las
    aplicaciones podrán leer el archivo. Todo el tráfico registrado se
    imprimirá al archivo **httpsdump.pcap**, en el directorio de inicio
    del usuario.

**Paso 2: Generar tráfico de red mediante un navegador web.**

a.  Para capturar una solicitud y una respuesta HTTP, abra un navegador
    web en el escritorio de Kali. Vaya a **Google.com**. No inicie
    sesión ni busque.

b.  Abra una segunda pestaña en el navegador, ingrese **netacad.com** en
    la barra de inicio. Una vez que aparezca la página, haga clic en el
    icono de usuario en la parte superior derecha de la página. Inicie
    sesión con su información de inicio de sesión de netacad.

c.  Regrese a la ventana de terminal que ejecuta la utilidad **tcpdump**
    e ingrese **CTRL-C** para completar la captura de paquetes.

d.  La utilidad tcpdump guardó la salida en un archivo denominado
    **packetdump.pcap**. Este archivo debe guardarse en el directorio de
    inicio predeterminado. Verifique que el archivo exista en el
    directorio mediante el comando **ls**.

        ┌──(kali㉿Kali)-[~]

        └─$ ls packetdump.pcap

        packetdump.pcap
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

::: {.64883b9510c3402246b76036 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9510c3402246b76036"}
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
::: {.component .text .64883bac10c3402246b76225 .is-full socialgoodpulse-id="64883bac10c3402246b76225"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Parte 3: Ver y analizar la captura de paquetes.

En esta parte, usará Wireshark para analizar el archivo de captura de
paquetes que creó en la parte 2 de esta práctica de laboratorio.

**Paso 1: Abra la aplicación Wireshark para ver la captura de
paquetes.**

a.  Utilice Wireshark para ver los paquetes capturados. Inicie la
    aplicación gráfica Wireshark escribiendo **wireshark** en el
    indicador de la CLI.

        ┌──(kali㉿Kali)-[~]

        └─$ wireshark

    La aplicación Wireshark debería abrirse en una ventana diferente.
    Expanda la ventana de Wireshark a pantalla completa.

b.  Utilice la opción de menú **File -\> Open** e introduzca
    **packetdump.pcap** en el campo Nombre de archivo. Haga clic en
    **Open** (Abrir). Debe abrirse una pantalla que muestre el contenido
    del archivo **packetdump.pcap**.

**Paso 2: Analizar el tráfico DNS.**

Cuando se escribe la URL de un sitio web en el navegador, la PC realiza
una consulta de DNS a la dirección IP del servidor DNS. La observación
de las consultas y respuestas del DNS proporciona los nombres (URL) y
las direcciones IP de los sitios que visita un usuario. Conocer los
sitios web que los usuarios visitan comúnmente puede ser valioso al
formular ataques de ingeniería social.

a.  Filtre el tráfico capturado para mostrar solo las consultas y
    respuestas de DNS. Introduzca **dns** en el campo Filtro de la
    pantalla principal de Wireshark. Observará que, además del sitio web
    **netacad** que solicitó, se muestran otras búsquedas de DNS.
    Corresponden a enlaces contenidos en las páginas de inicio de
    netacad y Google.
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

::: {.64883b9610c3402246b76046 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9610c3402246b76046"}
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
::: {.component .opentextbox .64883bac10c3402246b76218 .is-full socialgoodpulse-id="64883bac10c3402246b76218"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76218"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Cuáles son algunos de los sitios web que se enumeran en las consultas
estándar de DNS?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas variarán, pero deben incluir sitios de medios sociales,
sitios de análisis de Google y otros sitios de Cisco.
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

::: {.64883b9710c3402246b76055 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9710c3402246b76055"}
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
::: {.component .text .64883bac10c3402246b76219 .is-full socialgoodpulse-id="64883bac10c3402246b76219"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  Haga clic en el icono de búsqueda y busque el nombre de host
    **netacad**.com. Seleccione **String** en el cuadro desplegable e
    ingrese **netacad** en el cuadro de búsqueda.
c.  Seleccione la primera consulta estándar para el sitio web
    **netacad.com**. Expanda el panel de detalles de la consulta debajo
    de la lista de paquetes para ver el contenido del paquete de
    consulta.
d.  Expanda la información de **Ethernet II** para mostrar los datos del
    encabezado de capa 2 contenidos en el paquete. La dirección MAC de
    origen es la MAC de la interfaz del dispositivo de envío, en este
    caso la VM Kali, y la dirección MAC de destino es la MAC de la
    puerta de enlace predeterminada, ya que el servidor DNS no está en
    la misma red de capa 2.
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

::: {.64883b9810c3402246b76064 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9810c3402246b76064"}
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
::: {.component .opentextbox .64883bac10c3402246b7621a .is-full socialgoodpulse-id="64883bac10c3402246b7621a"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b7621a"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿La dirección MAC de origen coincide con la dirección que registró en la
parte 1?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Sí
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

::: {.64883b9810c3402246b76072 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9810c3402246b76072"}
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
::: {.component .text .64883bac10c3402246b7621b .is-full socialgoodpulse-id="64883bac10c3402246b7621b"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
e.  Expanda la sección **Domain Name System (query)** para ver los
    detalles de lo que se envía al servidor DNS. También indica la línea
    que contiene el paquete de respuesta que se recibió en respuesta a
    la consulta. Haga doble clic en el enlace a la respuesta. Se
    muestran los detalles del paquete de respuesta a la consulta
    estándar.
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

::: {.64883b9910c3402246b76082 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9910c3402246b76082"}
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
::: {.component .opentextbox .64883bac10c3402246b7621c .is-full socialgoodpulse-id="64883bac10c3402246b7621c"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b7621c"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Qué direcciones IP están asociadas con la URL netacad.com?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar, por ejemplo, 13.33.21.125, 13.33.21.5,
13.33.21.122, 13.33.21.30
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

::: {.64883b9a10c3402246b7608f .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9a10c3402246b7608f"}
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
::: {.component .text .64883bac10c3402246b7621d .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bac10c3402246b7621d"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
f.  Cierre Wireshark para volver al indicador de la CLI.

**Paso 3: Analizar una sesión HTTP**

En este paso, capturará y analizará una solicitud y una respuesta web.
Utilizará Wireshark para capturar el tráfico y analizar los mensajes
intercambiados entre el servidor web y el cliente. El servidor del sitio
web es un servidor de VM que se ejecuta en un contenedor de Docker en el
host de Kali Linux.

a.  Utilice **ifconfig** para determinar qué interfaz de la VM Kali
    Linux está configurada en la red 10.6.6.0/24.

        ┌──(kali㉿Kali)-[~]

        └─$ ifconfig
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

::: {.64883b9a10c3402246b7609c .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9a10c3402246b7609c"}
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
::: {.component .opentextbox .64883bac10c3402246b7621e .is-full socialgoodpulse-id="64883bac10c3402246b7621e"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b7621e"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Cuál es el nombre de la interfaz conectada a la red 10.6.6.0/24?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar según la configuración. En la VM de Kali,
es br-ee5c01518209
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

::: {.64883b9b10c3402246b760ab .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9b10c3402246b760ab"}
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
::: {.component .opentextbox .64883bac10c3402246b76226 .is-full socialgoodpulse-id="64883bac10c3402246b76226"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76226"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Cuál es la dirección IP asignada a esa interfaz?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
10.6.6.1
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

::: {.64883b9c10c3402246b760b8 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9c10c3402246b760b8"}
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
::: {.component .text .64883bac10c3402246b7621f .is-full socialgoodpulse-id="64883bac10c3402246b7621f"}
::: component__header-wrapper
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
b.  Abra Wireshark escribiendo **wireshark** en la línea de comandos.
    Wireshark se abrirá en una nueva ventana, expandirá la ventana a
    pantalla completa. En el centro de la pantalla principal de
    Wireshark habrá una lista de nombres de interfaz para capturar el
    tráfico. Haga doble clic en el nombre de la interfaz que coincida
    con el nombre de la interfaz que descubrió en el paso 2a.

c.  Abra una ventana del navegador e ingrese la dirección IP 10.6.6.13
    en la barra de inicio. Aparece una pantalla de inicio de sesión para
    el servidor web DVWA. Escriba **admin** tanto como nombre de usuario
    y la **contraseña**.

        Username: admin

        Password: password

d.  Cuando aparezca la página principal de DVWA, haga clic en el botón
    **Instructions** en la parte superior del menú en el lado izquierdo
    de la pantalla. Cuando aparezca la página de instrucciones, cierre
    la ventana del navegador.

e.  Regrese a la ventana de Wireshark. Detenga la captura con el **icono
    cuadrado rojo** en la barra de menús. El servidor web DVWA utiliza
    HTTP, no HTTPs. Utilice el **icono de búsqueda** para encontrar la
    cadena **POST** en los paquetes capturados. Los mensajes POST
    transfieren datos del formulario del cliente al servidor, en este
    caso la información de inicio de sesión.

f.  Haga doble clic en el primer paquete POST para ver los detalles en
    una ventana separada. Expanda la sección titulada **HTML Form URL
    Encoded**:
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

::: {.64883b9d10c3402246b760c4 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9d10c3402246b760c4"}
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
::: {.component .opentextbox .64883bac10c3402246b76220 .is-full socialgoodpulse-id="64883bac10c3402246b76220"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76220"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Qué información contiene esta sección?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Esta sección contiene el nombre de usuario y la contraseña ingresados
por el usuario. También se muestra un user_token.
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

::: {.64883b9d10c3402246b760d1 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9d10c3402246b760d1"}
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
::: {.component .text .64883bac10c3402246b76221 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bac10c3402246b76221"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
g.  Las cookies se utilizan para diversos fines. Con mayor frecuencia,
    se utilizan para guardar información sobre la sesión de un usuario.
    Las cookies pueden ser secuestradas y utilizadas en ataques de
    secuestro de sesiones. La cookie inicial para una sesión se envía
    desde el servidor web al cliente con el valor **Set-Cookie** en una
    respuesta HTTP. Utilice el icono de búsqueda para encontrar la
    cadena **302 Found** en el panel de paquetes. Haga doble clic en el
    primer paquete encontrado y expanda la sección **Hypertext Transport
    Protocol**.
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

::: {.64883b9e10c3402246b760dc .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9e10c3402246b760dc"}
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
::: {.component .opentextbox .64883bac10c3402246b76222 .is-full socialgoodpulse-id="64883bac10c3402246b76222"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76222"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿Qué valor se establece en la cookie que se envía desde el servidor web
al cliente Kali?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
PHPSESSID
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

::: {.64883b9e10c3402246b760e5 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9e10c3402246b760e5"}
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
::: {.component .text .64883bac10c3402246b76223 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bac10c3402246b76223"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
h.  Examine el siguiente paquete **GET** que se envía desde el navegador
    del cliente Kali después de recibir la información de la cookie.
    Expanda la sección **Hypertext Transport Protocol**. Busque los
    valores de cookie que se envían en el paquete.

 
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

::: {.64883b9f10c3402246b760ee .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9f10c3402246b760ee"}
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
::: {.component .opentextbox .64883bac10c3402246b76224 .is-full socialgoodpulse-id="64883bac10c3402246b76224"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76224"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
¿El PHPSESSID que se envía de vuelta al servidor en la solicitud GET es
el mismo que el enviado desde el servidor en la respuesta anterior?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Sí.
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

::: {.64883b9f10c3402246b760f5 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9f10c3402246b760f5"}
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
::: {.component .text .64883bac10c3402246b76227 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bac10c3402246b76227"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
i.  Cierre Wireshark. Tendrá la opción de guardar el archivo .pcap que
    contiene la captura o salir sin guardar. El archivo .pcap se
    guardará en el directorio de trabajo actual a menos que se
    especifique lo contrario.

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

::: {.64883ba010c3402246b760fe .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883ba010c3402246b760fe"}
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
::: {.component .opentextbox .64883bac10c3402246b76228 .is-full socialgoodpulse-id="64883bac10c3402246b76228"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76228"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
1.En esta práctica de laboratorio, tuvo la oportunidad de familiarizarse
con la captura de paquetes tanto en la utilidad tcpdump como en la
aplicación Wireshark. ¿Cuáles son los beneficios de utilizar las
utilidades de captura de paquetes al realizar un reconocimiento pasivo
en un objetivo potencial?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Los beneficios incluyen poder monitorear y
recopilar el tráfico sin ser detectados. Las capturas de paquetes se
pueden guardar y analizar en una fecha posterior. La información sobre
los sistemas de destino, incluidos los sitios web visitados y los
valores de las cookies, se puede recopilar sin interacción directa con
los sistemas.
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

::: {.64883ba010c3402246b76106 .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883ba010c3402246b76106"}
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
::: {.component .opentextbox .64883bac10c3402246b76229 .is-full socialgoodpulse-id="64883bac10c3402246b76229"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883bac10c3402246b76229"}
::: component__header-wrapper
::: {.component__header .openTextBox__header}
::: {.component__header-inner .openTextBox__header-inner}
:::
:::
:::
:::
:::

::: {.component__widget .openTextBox__widget .question-container}
::: openTextBox__preText
2.¿Qué información se puede recopilar mediante la captura de paquetes?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Las respuestas pueden incluir: direcciones
IP, protocolos, direcciones MAC, servidores DNS, datos enviados hacia y
desde diversas aplicaciones, tráfico de enrutadores y conmutadores,
identificación de puertas de enlace
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
