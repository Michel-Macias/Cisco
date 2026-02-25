::: {.article .64883b7c10c3402246b75e56 .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__inner
::: no-adaptive-scroll
<div>

::: {.article__header-wrapper .background-color-white .remove-padding-top .remove-padding-bottom}
::: article__header
::: article__header-inner
::: article__title
::: {.js-heading .is-incomplete}
::: {#article-heading .js-heading-inner role="heading" aria-level="2"}
[ Incompleto  Práctica de laboratorio - Elaboración de paquetes con
Scapy]{.aria-label}
:::
:::

::: {.article__title-inner tabindex="0" role="heading" aria-level="2"}
[Incompleto ]{.accessibility-completion-indicator} Práctica de
laboratorio - Elaboración de paquetes con Scapy
:::
:::
:::
:::
:::

::: {.block__container style=""}
::: {.64883b8410c3402246b75ef8 .block .remove-bottom-padding .remove-top-padding .is-complete socialgoodpulse-id="64883b8410c3402246b75ef8"}
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
::: {.component .text .64883baf10c3402246b7626d .remove-top-padding .remove-padding-bottom .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b7626d"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Objetivos

En esta práctica de laboratorio, usará Scapy, una herramienta de
manipulación de paquetes basada en Python, para crear paquetes
personalizados. Estos paquetes personalizados se utilizarán para
realizar el reconocimiento en un sistema de destino.

-   Parte 1: Investigar la herramienta Scapy.
-   Parte 2: Usar Scapy para rastrear el tráfico de red.
-   Parte 3: Crear y enviar un paquete ICMP.
-   Parte 4: Crear y enviar paquetes TCP SYN.

# Trasfondo / Escenario

Los evaluadores de penetración y los hackers éticos a menudo usan
paquetes especialmente diseñados para descubrir o aprovechar las
vulnerabilidades en la infraestructura y los sistemas de los clientes.
Ha utilizado Nmap para escanear y analizar vulnerabilidades en una
computadora conectada a la red local.

En esta práctica de laboratorio, realizará más reconocimientos en la
misma computadora mediante paquetes ICMP y TCP personalizados.

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

::: {.64883b8910c3402246b75f44 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b8910c3402246b75f44"}
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
::: {.component .text .64883bb910c3402246b76369 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full .is-complete socialgoodpulse-id="64883bb910c3402246b76369"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
# Instrucciones

## Parte 1: Investigar la herramienta Scapy. {#parte-1-investigar-la-herramienta-scapy. style="margin-left:0in"}

Scapy es una herramienta multiusos escrita originalmente por Philippe
Biondi. En esta parte, cargará la herramienta Scapy y explorará algunas
de sus capacidades. Herramientas como Scapy solo deben usarse para
escanear o comunicarse con máquinas que posee o tiene permiso por
escrito para acceder.

### Paso 1: Investigue la documentación y los recursos de Scapy. {#paso-1-investigue-la-documentación-y-los-recursos-de-scapy. style="margin-left:0in"}

Scapy se puede ejecutar de forma interactiva desde el shell de Python o
se puede incorporar a los programas de Python mediante la importación
del módulo python-scapy. La herramienta Scapy tiene una extensa
documentación en línea en
[https://scapy.readthedocs.io/en/latest/introduction.html](https://scapy.readthedocs.io/en/latest/introduction.html){target="_blank"}.
Este Kali Linux personalizado se distribuye con Python y Scapy
preinstalados.

a.  Inicie la VM de Kali e inicie sesión.
b.  Abra el navegador Firefox y vaya a
    [[https://scapy.readthedocs.io/en/latest/introduction.html](https://scapy.readthedocs.io/en/latest/introduction.html){target="_blank"}]{style="word-wrap: break-word"}.
    Lea la página de introducción escrita por el creador de Scapy,
    Philippe Biondi.
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

::: {.64883b8a10c3402246b75f59 .block .remove-top-padding .remove-padding-bottom .is-complete socialgoodpulse-id="64883b8a10c3402246b75f59"}
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
::: {.component .opentextbox .64883baf10c3402246b7626e .is-full .is-complete socialgoodpulse-id="64883baf10c3402246b7626e"}
::: component__header-container
::: {.opentabletextbox socialgoodpulse-id="64883baf10c3402246b7626e"}
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
¿Cómo describe el autor las capacidades de Scapy en el primer párrafo de
la página?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
"Scapy es un programa Python que permite al usuario enviar, rastrear,
diseccionar y falsificar paquetes de red Esta capacidad permite la
construcción de herramientas que pueden sondear, escanear o atacar
redes\".
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

::: {.64883b8c10c3402246b75f8b .block .remove-bottom-padding .remove-top-padding socialgoodpulse-id="64883b8c10c3402246b75f8b"}
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
::: {.component .text .64883bb910c3402246b7636a .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bb910c3402246b7636a"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Use el modo de comando interactivo de Scapy. {#paso-2-use-el-modo-de-comando-interactivo-de-scapy. style="margin-left:0in"}

Ingrese el comando **scapy** en una ventana de terminal para cargar el
intérprete de Python. Al usar este comando, el intérprete se ejecuta con
las clases y los objetos de Scapy [pre-cargados. Ingresará los comandos
de Scapy de forma interactiva y recibirá el resultado. Los comandos de
Scapy también se pueden incrustar en un guion de
Python.]{style="color:#202124"}

a.  Los comandos para crear y enviar paquetes requieren privilegios de
    root para ejecutarse. Utilice el comando **sudo su** para obtener
    privilegios de root antes de iniciar Scapy. Si se le solicita una
    contraseña, ingrese **kali**.

``` {style="margin-left:40px"}
┌──(kali㉿kali)-[~]
```

``` {style="margin-left:40px"}
└─$ sudo su
```

``` {style="margin-left:40px"}
[sudo] password for kali:
```

``` {style="margin-left:40px"}
┌──(root㉿kali)-[/home/kali]
```

``` {style="margin-left:40px"}
└─#
```

b.  Cargue la herramienta Scapy con el comando **scapy**. El intérprete
    interactivo de Python cargará y presentará una imagen de pantalla
    similar a la que se muestra.

``` {style="margin-left:40px"}
┌──(root㉿kali)-[/home/kali]
```

``` {style="margin-left:40px"}
└─# scapy
```

::: {style="overflow: auto;"}
``` {style="margin-left:40px"}
INFO: Can't import PyX. Won't be able to use psdump() or pdfdump().         
```

``` {style="margin-left: 40px;"}
 
```

``` {style="margin-left:40px"}
                     aSPY//YASa      
```

``` {style="margin-left:40px"}
             apyyyyCY//////////YCa       |
```

``` {style="margin-left:40px"}
            sY//////YSpcs  scpCY//Pp     | Welcome to Scapy
```

``` {style="margin-left:40px"}
 ayp ayyyyyyySCP//Pp           syY//C    | Version 2.5.0
```

``` {style="margin-left:40px"}
 AYAsAYYYYYYYY///Ps              cY//S   |
```

``` {style="margin-left:40px"}
         pCCCCY//p          cSSps y//Y   | https://github.com/secdev/scapy
```

``` {style="margin-left:40px"}
         SPPPP///a          pP///AC//Y   |
```

``` {style="margin-left:40px"}
              A//A            cyP////C   | Have fun!
```

``` {style="margin-left:40px"}
              p///Ac            sC///a   |
```

``` {style="margin-left:40px"}
              P////YCpc           A//A   | What is dead may never die!
```

``` {style="margin-left:40px"}
       scccccp///pSP///p          p//Y   |                     -- Python 2
```

``` {style="margin-left:40px"}
      sY/////////y  caa           S//P   |
```

``` {style="margin-left:40px"}
       cayCyayP//Ya              pY/Ya
```

``` {style="margin-left:40px"}
        sY/PsY////YCc          aC//Yp
```

``` {style="margin-left:40px"}
         sc  sccaCY//PCypaapyCP//YSs 
```

``` {style="margin-left:40px"}
                  spCPY//////YPSps   
```

``` {style="margin-left:40px"}
                       ccaacs        
```

``` {style="margin-left:40px"}
                                       using IPython 8.5.0
```
:::

``` {style="margin-left:40px"}
>>> 
```

c.  En el indicador \>\>\> dentro del shell Scapy, ingrese la función
    **ls()** para enumerar todos los formatos y protocolos
    predeterminados disponibles incluidos con la herramienta. La lista
    es bastante extensa y ocupará varias pantallas.

``` {style="margin-left:40px"}
>>> ls()
```

TFTP es un protocolo utilizado para enviar y recibir archivos en un
segmento de LAN. Se usa comúnmente para realizar copias de respaldo de
archivos de configuración en dispositivos de red. Desplácese hacia
arriba para ver los formatos de paquetes TFTP disponibles.
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

::: {.64883b8d10c3402246b75fa3 .block .remove-bottom-padding .remove-top-padding socialgoodpulse-id="64883b8d10c3402246b75fa3"}
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
::: {.component .opentextbox .64883baf10c3402246b7626f .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883baf10c3402246b7626f"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883baf10c3402246b7626f"}
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
¿Cuántos tipos de formatos de paquetes TFTP se enumeran?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
9
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

::: {.64883b9010c3402246b75fd4 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9010c3402246b75fd4"}
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
::: {.component .text .64883bb910c3402246b7636b .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b7636b"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 3: Examine los campos en un encabezado de paquete IPv4. {#paso-3-examine-los-campos-en-un-encabezado-de-paquete-ipv4. style="margin-left:0in"}

a.  [Es importante comprender la estructura]{.AnswerGray}[ de un paquete
    IP antes de crear y enviar paquetes personalizados a través de la
    red. Cada paquete IP tiene un encabezado asociado que proporciona
    información sobre la estructura del paquete. Revise esta información
    antes de continuar con la práctica de laboratorio.]{.AnswerGray}

**Campos del Encabezado del Paquete IPv4**

Los valores binarios de cada campo identifican diversos parámetros de
configuración del paquete IP. Los diagramas de encabezado del protocolo,
que se leen de izquierda a derecha y de arriba hacia abajo, proporcionan
una representación visual de consulta al analizar los campos de
protocolo. El diagrama de encabezado del protocolo IP en la ilustración
identifica los campos de un paquete IPv4.
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

::: {.64883b9110c3402246b75fe7 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9110c3402246b75fe7"}
::: block__inner
::: {.block__header-wrapper .remove-top-padding .remove-padding-bottom}
::: block__header
::: block__header-inner
:::
:::
:::

::: component__container
::: {.component .dynamic-graphic .64883bbb10c3402246b763a0 .is-full socialgoodpulse-id="64883bbb10c3402246b763a0"}
::: component__header-container
::: component__header-wrapper
::: {.component__header .dynamic-graphic__header}
::: {.component__header-inner .dynamic-graphic__header-inner}
::: {.component__title .dynamic-graphic__title}
::: {.js-heading .is-incomplete}
::: {#component-heading .js-heading-inner role="heading" aria-level="4"}
[ Incompleto  Campos del encabezado de paquetes IPv4]{.aria-label}
:::
:::

::: {.component__title-inner .dynamic-graphic__title-inner tabindex="0" role="heading" aria-level="4"}
[Incompleto ]{.accessibility-completion-indicator} Campos del encabezado
de paquetes IPv4
:::
:::
:::
:::
:::
:::

::: component__widget
::: {#a11y_description-2e0b6d90-1c25-11ea-a010-eb2108469056 .a11y_description .screen-reader-hide aria-live="polite"}
nombres y longitud de bits de los campos en un encabezado de paquete
IPv4
:::

::: {#2e0b6d90-1c25-11ea-a010-eb2108469056 .dynamic-graphic-container .2e0b6d90-1c25-11ea-a010-eb2108469056 tabindex="0" role="figure" aria-labelledby="a11y_description-2e0b6d90-1c25-11ea-a010-eb2108469056"}
::: {.dynamic-graphic-display dir="ltr"}
::: {.overlay .removed role="presentation" aria-hidden="true"}
:::

::: dynamic-graphic-content
::: primary-image-wrapper
:::

::: {.dynamic-text dir="ltr"}
::: {#ID_txt01 .dynamic-text-item .ID_txt01}
Byte 1
:::

::: {#ID_txt02 .dynamic-text-item .ID_txt02}
Byte 2
:::

::: {#ID_txt03 .dynamic-text-item .ID_txt03}
Byte 3
:::

::: {#ID_txt04 .dynamic-text-item .ID_txt04}
Byte 4
:::

::: {#ID_txt05 .dynamic-text-item .ID_txt05}
Versión
:::

::: {#ID_txt06 .dynamic-text-item .ID_txt06}
Longitud del encabe-\
zado de Internet
:::

::: {#ID_txt07 .dynamic-text-item .ID_txt07}
Módem
:::

::: {#ID_txt08 .dynamic-text-item .ID_txt08}
DSCP
:::

::: {#ID_txt09 .dynamic-text-item .ID_txt09}
ECN
:::

::: {#ID_txt10 .dynamic-text-item .ID_txt10}
Longitud total
:::

::: {#ID_txt14 .dynamic-text-item .ID_txt14}
Identificación
:::

::: {#ID_txt15 .dynamic-text-item .ID_txt15}
Señalador
:::

::: {#ID_txt16 .dynamic-text-item .ID_txt16}
Desplazamiento de fragmentos
:::

::: {#ID_txt17 .dynamic-text-item .ID_txt17}
Tiempo de duración
:::

::: {#ID_txt18 .dynamic-text-item .ID_txt18}
Protocolo
:::

::: {#ID_txt19 .dynamic-text-item .ID_txt19}
Suma de comprobación del encabezado
:::

::: {#ID_txt20 .dynamic-text-item .ID_txt20}
Dirección IP de origen
:::

::: {#ID_txt11 .dynamic-text-item .ID_txt11}
Dirección IP de destino
:::

::: {#ID_txt12 .dynamic-text-item .ID_txt12}
\...
:::

::: {#ID_txt13 .dynamic-text-item .ID_txt13}
20 bytes
:::
:::
:::
:::

::: caption
Los campos significativos en el encabezado IPv4 incluyen lo siguiente:

-   \<strong\>Versión - \</strong\> Contiene un valor binario de 4 bits
    establecido en 0100 que identifica esto como un paquete IPv4.
-   \<strong\>Servicios diferenciados o DiffServ (DS) \</strong\>- Este
    campo, formalmente conocido como Tipo de servicio (ToS), es un campo
    de 8 bits que se utiliza para determinar la prioridad de cada
    paquete. Los seis bits más significativos del campo DiffServ son los
    bits de punto de código de servicios diferenciados (DSCP) y los dos
    últimos bits son los bits de notificación de congestión explícita
    (ECN).
-   \<strong\>Suma de comprobación de encabezado - \</strong\> Se
    utiliza para detectar daños en el encabezado IPv4.
-   \<strong\>Tiempo de duración (Time to Live,TTL) - \</strong\>TTL
    contiene un valor binario de 8 bits que se utiliza para limitar la
    vida útil de un paquete. El dispositivo de origen del paquete IPv4
    establece el valor TTL inicial. Se reduce en uno cada vez que el
    paquete es procesado por un router. Si el campo TTL llega a cero, el
    router descarta el paquete y envía a la dirección IP de origen un
    mensaje de tiempo superado del protocolo de mensajes de control de
    Internet (ICMP). Debido a que el router disminuye el TTL de cada
    paquete, el router también debe volver a calcular la suma de
    comprobación del encabezado.
-   \<strong\>Protocolo - \</strong\> Este campo se utiliza para
    identificar el protocolo del siguiente nivel. Este valor binario de
    8 bits indica el tipo de carga de datos que lleva el paquete, lo que
    permite que la capa de red transmita los datos al protocolo de la
    capa superior apropiado. ICMP (1), TCP (6) y UDP (17) son algunos
    valores comunes.
-   \<strong\>Dirección IPv4 de origen - \</strong\> Contiene un valor
    binario de 32 bits que representa la dirección IPv4 de origen del
    paquete. La dirección IPv4 de origen es siempre una dirección
    unicast.
-   \<strong\>Dirección IPv4 de destino - \</strong\> Contiene un valor
    binario de 32 bits que representa la dirección IPv4 de destino del
    paquete. La dirección IPv4 de destino es una dirección unicast,
    multicast o de difusión.
:::
:::
:::
:::
:::
:::
:::

::: {.64883b9310c3402246b76011 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9310c3402246b76011"}
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
::: {.component .text .64883bb910c3402246b7636f .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bb910c3402246b7636f"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
Los campos significativos en el encabezado IPv4 incluyen lo siguiente:

**Versión: **contiene un valor binario de 4 bits establecido en 0100 que
lo identifica como un paquete IPv4.

**Servicios diferenciados o DiffServ (DS):** este campo, antes conocido
como Tipo de servicio (ToS), es un campo de 8 bits que se utiliza para
determinar la prioridad de cada paquete. Los seis bits más
significativos del campo DiffServ son los bits de punto de código de
servicios diferenciados (DSCP) y los dos últimos bits son los bits de
notificación de congestión explícita (ECN).

**Tiempo de Vida (Time to Live, TTL): ** El TTL contiene un valor
binario de 8 bits que se utiliza para limitar la vida útil de un
paquete. El dispositivo de origen del paquete establece el valor TTL
inicial. Se reduce en uno cada vez que el paquete es procesado por un
enrutador. Si el campo TTL llega a cero, el enrutador descarta el
paquete y envía a la dirección IP de origen un mensaje de tiempo
superado del protocolo de mensajes de control de Internet (ICMP). Debido
a que el enrutador disminuye el TTL de cada paquete, el enrutador
también debe volver a calcular la Suma de Comprobación del Encabezado.

**Protocolo: ** Este campo se utiliza para identificar el protocolo del
siguiente nivel. Este valor binario de 8 bits indica el tipo de carga de
datos que lleva el paquete, lo que permite que la capa de red transmita
los datos al protocolo de capa superior apropiado. ICMP (1), TCP (6) y
UDP (17) son algunos valores comunes.

**Suma de comprobación de encabezado: ** Se utiliza para detectar daños
en el encabezado IPv4.

**Dirección IPv4 de Origen:** Contiene un valor binario de 32 bits que
representa la dirección IPv4 de origen del paquete. La dirección IPv4 de
origen siempre es una dirección de unidifusión.

**Dirección IPv4 de Destino: **Contiene un valor binario de 32 bits que
representa la dirección IPv4 de destino del paquete. La dirección IPv4
de destino es una dirección unicast, multicast o de difusión.

b.  La función **ls()** también se puede utilizar para enumerar los
    detalles de los campos y las opciones disponibles en cada encabezado
    de protocolo. La sintaxis para usar una función en Scapy es
    [***nombre_función(argumentos).***
    ]{style="word-wrap: break-word"}Utilice la función **ls(IP)** para
    enumerar los campos disponibles en un encabezado de paquete IP.

``` {style="margin-left: 40px;"}
>>> ls(IP)
```

::: {style="overflow: auto;"}
``` {style="margin-left: 40px;"}
version    : BitField  (4 bits)                  = ('4')
```

``` {style="margin-left: 40px;"}
ihl        : BitField  (4 bits)                  = ('None')
```

``` {style="margin-left: 40px;"}
tos        : XByteField                          = ('0')
```

``` {style="margin-left: 40px;"}
len        : ShortField                          = ('None')
```

``` {style="margin-left: 40px;"}
id         : ShortField                          = ('1')
```

``` {style="margin-left: 40px;"}
flags      : FlagsField                          = ('<Flag 0 ()>')
```

``` {style="margin-left: 40px;"}
frag       : BitField  (13 bits)                 = ('0')
```

``` {style="margin-left: 40px;"}
ttl        : ByteField                           = ('64')
```

``` {style="margin-left: 40px;"}
proto      : ByteEnumField                       = ('0')
```

``` {style="margin-left: 40px;"}
chksum     : XShortField                         = ('None')
```

``` {style="margin-left: 40px;"}
src        : SourceIPField                       = ('None')
```

``` {style="margin-left: 40px;"}
dst        : DestIPField                         = ('None')
```

``` {style="margin-left: 40px;"}
options    : PacketListField                     = ('[]')
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
:::

::: {.64883b9410c3402246b7601c .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9410c3402246b7601c"}
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
::: {.component .opentextbox .64883baf10c3402246b7626b .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883baf10c3402246b7626b"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883baf10c3402246b7626b"}
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
Compare los campos en el detalle de IP en Scapy con el encabezado del
paquete descrito en el Paso 3a. ¿Existen diferencias entre ambos?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El campo DiffServe aún se identifica como TOS (Tipo de servicio) y se
agrega un campo Opciones.
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

::: {.64883b9510c3402246b7602b .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9510c3402246b7602b"}
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
::: {.component .opentextbox .64883baf10c3402246b76269 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883baf10c3402246b76269"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883baf10c3402246b76269"}
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
¿Qué campo cree que cambiaría para crear un paquete que generaría una
respuesta a una máquina de destino, en lugar de la máquina que realmente
envió el paquete?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El campo de dirección IPv4 (SRC) de origen.
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

::: {.64883b9510c3402246b7603b .block .remove-top-padding .remove-bottom-padding socialgoodpulse-id="64883b9510c3402246b7603b"}
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
::: {.component .text .64883baf10c3402246b76270 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883baf10c3402246b76270"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 2: Usar Scapy para rastrear el tráfico de red {#parte-2-usar-scapy-para-rastrear-el-tráfico-de-red style="margin-left:0in"}

Scapy se puede usar para capturar y mostrar el tráfico de red, de manera
similar a una recopilación de paquetes tcpdump o tshark.

### Paso 1: Utilice la función sniff(). {#paso-1-utilice-la-función-sniff. style="margin-left:0in"}

a.  Utilice la función **sniff ()** para recopilar el tráfico mediante
    la interfaz eth0 predeterminada de su VM. Inicie la captura con la
    función **sniff ()** sin especificar ningún argumento.

``` {style="margin-left:40px"}
>>> sniff()
```

b.  Abra una segunda ventana de terminal y haga **ping** a una dirección
    de Internet, como **www.cisco.com**. Recuerde especificar el conteo
    con el argumento **-c**.

``` {style="margin-left: 40px;"}
┌──(kali㉿kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ ping -c 5 www.cisco.com
```

c.  Regrese a la ventana de terminal que ejecuta la herramienta Scapy.
    Presione **CTRL-C** para detener la captura. Debe recibir una salida
    similar a la siguiente:

``` {style="margin-left:40px"}
^C<Sniffed: TCP:75 UDP:42 ICMP:32 Other:2>
```

d.  Vea el tráfico capturado mediante la función **summary()**. **A =
    \_** asigna la variable **a** para contener la salida de la función
    **sniff()**. El guion bajo (\_) en Python se usa para contener
    temporalmente el resultado de la última función ejecutada.

``` {style="margin-left: 40px;"}
>>> a=_
```

``` {style="margin-left: 40px;"}
>>> a.summary()
```

El resultado de este comando puede ser extenso, según las aplicaciones
que se ejecutan en la red.
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

::: {.64883b9610c3402246b76049 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9610c3402246b76049"}
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
::: {.component .text .64883baf10c3402246b76271 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883baf10c3402246b76271"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2:  Capture y guarde el tráfico en una interfaz específica. {#paso-2-capture-y-guarde-el-tráfico-en-una-interfaz-específica. style="margin-left:0in"}

En este paso, capturará el tráfico hacia y desde un dispositivo
conectado a una red virtual en su VM Kali Linux.

a.  Abran una nueva ventana del terminal. Utilice el comando
    **ifconfig** para determinar el nombre de la interfaz a la que se
    asigna la dirección IP **10.6.6.1**. Esta es la dirección de puerta
    de enlace predeterminada para una de las redes virtuales que se
    ejecutan dentro de Kali. Tenga en cuenta el nombre de la interfaz.
b.  Regrese a la ventana de terminal que ejecuta la herramienta Scapy.
    Utilice la sintaxis **sniff(iface = \"***nombre de la
    interfaz***\")** para comenzar la captura en la interfaz virtual
    **br-internal**.

``` {style="margin-left:40px"}
>>> sniff(iface="br-internal")
```

c.  Abra Firefox y vaya a la URL **http://10.6.6.23/**. Cuando se abra
    la página de inicio de Gravemind, regrese a la ventana de terminal
    que ejecuta la herramienta Scapy. Presione **CTRL-C**. Debe recibir
    una salida similar a la siguiente:

``` {style="margin-left:40px"}
^C<Sniffed: TCP:112 UDP:0 ICMP:0 Other:2>
```

d.  Vea el tráfico capturado como lo hizo en el Paso 1d.

``` {style="margin-left: 40px;"}
>>> a=_
```

``` {style="margin-left: 40px;"}
>>> a.summary()
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

::: {.64883b9710c3402246b76058 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9710c3402246b76058"}
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
::: {.component .text .64883bb910c3402246b76370 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bb910c3402246b76370"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 3: Examine los paquetes recopilados. {#paso-3-examine-los-paquetes-recopilados. style="margin-left:0in"}

En este paso, filtrará el tráfico recopilado para incluir solo el
tráfico ICMP, limitará la cantidad de paquetes que se recopilarán y verá
los detalles de los paquetes individuales.

a.  Use la ID de interfaz asociada con 10.6.6.1 (br-internal) para
    capturar diez paquetes ICMP enviados y recibidos en la red virtual
    interna. La sintaxis es **sniff(iface=\"***interface name***\",
    filter = "***protocol***\", count =** *integer***)**.

``` {style="margin-left:40px"}
>>> sniff(iface="br-internal",filter = “icmp",count = 10)
```

b.  Abra una segunda ventana de terminal y haga ping al host en
    10.6.6.23.

``` {style="margin-left: 40px;"}
┌──(kali㉿Kali)-[~]
```

``` {style="margin-left: 40px;"}
└─$ ping –c 10 10.6.6.23
```

c.  Regrese a la ventana de terminal que ejecuta la herramienta Scapy.
    La captura se detuvo automáticamente cuando se enviaron o recibieron
    10 paquetes. Vea el tráfico capturado con números de línea mediante
    la función **nsummar ()**.

``` {style="margin-left: 40px;"}
>>>  a=_ 
```

``` {style="margin-left: 40px;"}
>>>  a.nsummary()
```

El resumen solo debe contener 10 líneas porque el recuento de capturas
es igual a 10.
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

::: {.64883b9810c3402246b7606c .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9810c3402246b7606c"}
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
::: {.component .opentextbox .64883bb910c3402246b76371 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b76371"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76371"}
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
¿Qué tráfico se muestra en el resultado de la función nsummary()?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Una serie de cinco solicitudes de eco de ICMP y cinco respuestas de eco
de ICMP.
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

::: {.64883b9810c3402246b76075 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9810c3402246b76075"}
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
::: {.component .text .64883bb910c3402246b76372 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b76372"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
d.  Para ver los detalles sobre un paquete específico de la serie,
    consulte el número de línea azul del paquete. No incluya los ceros a
    la izquierda.

``` {style="margin-left: 40px;"}
>>> a[2]
```

La salida detallada muestra las capas de información sobre las unidades
de datos de protocolo (PDU) que conforman el paquete. Los nombres de las
capas de protocolo aparecen en rojo en la salida. Examine las
direcciones de origen (src) y de destino (dst), así como la parte de
datos sin procesar (load=) del paquete recopilado.
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

::: {.64883b9910c3402246b76088 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9910c3402246b76088"}
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
::: {.component .opentextbox .64883bb910c3402246b76373 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b76373"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76373"}
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
¿Por qué hay dos conjuntos de campos de origen y de destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El primer conjunto son las direcciones MAC de la capa de enlace de datos
hexadecimales de los adaptadores Ethernet y de origen. El segundo
conjunto son las direcciones IP de origen y destino de la capa de red
del paquete.
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

::: {.64883b9a10c3402246b76093 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9a10c3402246b76093"}
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
::: {.component .text .64883baf10c3402246b7626c .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883baf10c3402246b7626c"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
e.  Utilice la función **wrpcap ()** para guardar los datos capturados
    en un archivo pcap que Wireshark y otras aplicaciones pueden abrir.
    La sintaxis es **wrpcap ("***nombre de archivo*.*Pcap*\", *nombre de
    variable***),** en este ejemplo, la variable que almacenó la salida
    es "**a**".

``` {style="margin-left: 40px;"}
>>> wrpcap(“capture1.pcap", a)
```

f.  El archivo .pcap se escribirá en el directorio de usuarios
    predeterminado. Utilice una ventana de terminal diferente para
    verificar la ubicación del archivo **capture1.pcap** con el comando
    **ls** de Linux.
g.  Abra la captura en Wireshark para ver el contenido del archivo.
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

::: {.64883b9b10c3402246b7609f .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9b10c3402246b7609f"}
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
::: {.component .text .64883bb910c3402246b76374 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bb910c3402246b76374"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 3: Crear y enviar un paquete ICMP. {#parte-3-crear-y-enviar-un-paquete-icmp. style="margin-left:0in"}

ICMP es un protocolo diseñado para enviar mensajes de control entre
dispositivos de red para diversos fines. Hay muchos tipos de paquetes
ICMP, siendo echo-request y echo-reply los más familiares para los
técnicos de TI. Para ver una lista de los tipos de mensajes que se
pueden enviar y recibir mediante ICMP, vaya a
[https://www.iana.org/assignments/icmp-paraámetros/icmp-paraámetros.xhtml](https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml){target="_blank"}**.**

### Paso 1: use el modo interactivo para crear y enviar un paquete ICMP personalizado. {#paso-1-use-el-modo-interactivo-para-crear-y-enviar-un-paquete-icmp-personalizado. style="margin-left:0in"}

a.  En una ventana de terminal de Scapy, ingrese el comando para
    rastrear el tráfico de la interfaz conectada a la red 10.6.6.0/24.

``` {style="margin-left:40px"}
>>> sniff(iface="br-internal")
```

b.  Abra otra ventana de terminal, introduzca **sudo su** para realizar
    la creación de paquetes como raiz. Inicie una segunda instancia de
    Scapy. Ingrese la función **send**() para enviar un paquete a
    10.6.6.23 con una carga útil de ICMP modificada.

``` {style="margin-left:40px"}
┌──(kali㉿kali)-[~]
```

``` {style="margin-left:40px"}
└─$ sudo su
```

``` {style="margin-left:40px"}
[sudo] password for kali:
```

``` {style="margin-left:40px"}
┌──(root㉿kali)-[/home/kali]
```

``` {style="margin-left:40px"}
└─# scapy
```

``` {style="margin-left:40px"}
 
```

``` {style="margin-left:40px"}
>>> send(IP(dst="10.6.6.23")/ICMP()/"This is a test")
```

``` {style="margin-left:40px"}
 
```

``` {style="margin-left:40px"}
Response
```

``` {style="margin-left:40px"}
Sent 1 packet
```

c.  Regrese a la primera ventana de terminal y presione **CTRL-C**.
    Debería recibir una respuesta similar a ésta:

``` {style="margin-left:40px"}
^C<Sniffed: TCP:0 UDP:0 ICMP:2 Other:0>
```

d.  Ingrese el comando de resumen para mostrar el resumen con los
    números de paquete.

``` {style="margin-left:40px"}
>>> a=_
```

``` {style="margin-left:40px"}
>>> a.nsummary()
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

::: {.64883b9b10c3402246b760b0 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9b10c3402246b760b0"}
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
::: {.component .opentextbox .64883bb910c3402246b76375 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b76375"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bb910c3402246b76375"}
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
¿Qué tipo de paquetes se muestran en el resultado de resumen?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas pueden variar. Solicitud de eco, respuesta de eco, ARP,
respuesta ARP
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

::: {.64883b9c10c3402246b760bc .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9c10c3402246b760bc"}
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
::: {.component .text .64883bb910c3402246b76376 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bb910c3402246b76376"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### [Paso 2: ]{.AnswerGray}[Vea y compare el contenido del paquete ICMP.]{.AnswerGray} {#paso-2-vea-y-compare-el-contenido-del-paquete-icmp. style="margin-left:0in"}

Utilice los números de paquete para ver los paquetes de solicitud de eco
y respuesta de eco de ICMP. Compare esos paquetes con los que examinó en
la Parte 2, Paso 3.

``` {style="margin-left:40px"}
>>> a[packet number]
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

::: {.64883b9d10c3402246b760ca .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9d10c3402246b760ca"}
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
::: {.component .opentextbox .64883bba10c3402246b76377 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bba10c3402246b76377"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bba10c3402246b76377"}
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
¿Qué diferencia hay entre la conversación de paquetes ICMP original y la
conversación de paquetes ICMP personalizada?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
La parte de datos sin procesar cambió a \"This is a test\"
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

::: {.64883b9e10c3402246b760d3 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9e10c3402246b760d3"}
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
::: {.component .text .64883baf10c3402246b76272 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883baf10c3402246b76272"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
## Parte 4: Crear y enviar un paquete TCP SYN. {#parte-4-crear-y-enviar-un-paquete-tcp-syn. style="margin-left:0in"}

En esta parte, utilizará Scapy para determinar si el puerto 445, un
puerto compartido de unidad de Microsoft Windows, está abierto en el
sistema de destino en 10.6.6.23.

### Paso 1: Inicie la captura de paquetes en la interfaz interna. {#paso-1-inicie-la-captura-de-paquetes-en-la-interfaz-interna. style="margin-left:0in"}

a.  En la ventana de terminal Scapy original, comience una captura de
    paquetes en la interfaz interna conectada a la red 10.6.6.0/24.
    Utilice el nombre de la interfaz que obtuvo anteriormente.
b.  Navegue hasta la segunda ventana de terminal. Cree y envíe un
    paquete TCP SYN con el comando que se muestra.

``` {style="margin-left: 40px;"}
>>> send(IP(dst="10.6.6.23")/TCP(dport=445, flags="S"))
```

``` {style="margin-left: 40px;"}
1 packet sent
```

Este comando envió un paquete IP al host con la dirección IP 10.6.6.23.
El paquete se direcciona al puerto TCP 445 y tiene el indicador S (SYN)
activado.

c.  Cierre la ventana de la terminal.
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

::: {.64883b9e10c3402246b760de .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9e10c3402246b760de"}
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
::: {.component .text .64883bba10c3402246b76378 .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text .is-full socialgoodpulse-id="64883bba10c3402246b76378"}
::: {.component__header-wrapper .remove-top-padding .remove-padding-bottom .packetTracer_wrap_text}
::: {.component__header .text__header}
::: {.component__header-inner .text__header-inner}
::: component__content
::: {.component__body .text__body tabindex="0"}
::: {.component__body-inner .text__body-inner}
### Paso 2: Revise los paquetes capturados. {#paso-2-revise-los-paquetes-capturados. style="margin-left:0in"}

a.  En la ventana de terminal Scapy original, detenga la captura de
    paquetes presionando **CTRL-C**. El resultado debe ser similar al
    que se muestra a continuación.

``` {style="margin-left: 40px;"}
^C<Sniffed: TCP:3 UDP:0 ICMP:0 Other:0>
```

b.  Vea los paquetes TCP capturados mediante la función **nsummary()**.
    Muestre el detalle del paquete TCP que se devolvió desde el equipo
    de destino en 10.6.6.23.

``` {style="margin-left: 40px;"}
>>> a[packet number]
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

::: {.64883b9f10c3402246b760ea .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9f10c3402246b760ea"}
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
::: {.component .opentextbox .64883bba10c3402246b76379 .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bba10c3402246b76379"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bba10c3402246b76379"}
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
¿Qué indica el indicador SA en el paquete devuelto desde 10.6.6.23?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
El indicador SA significa SYN-ACK. Significa que el puerto 445 está
abierto en la computadora de destino, porque reconoció el paquete SYN.
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

::: {.64883b9f10c3402246b760f0 .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9f10c3402246b760f0"}
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
::: {.component .text .64883bba10c3402246b7637b .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bba10c3402246b7637b"}
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

::: {.64883b9f10c3402246b760fa .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883b9f10c3402246b760fa"}
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
::: {.component .opentextbox .64883bba10c3402246b7637a .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883bba10c3402246b7637a"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883bba10c3402246b7637a"}
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
1\. ¿Cómo se pueden utilizar varios paquetes TCP SYN para realizar un
reconocimiento pasivo en un host de destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Las respuestas variarán, pero al enviar paquetes SYN y recibir un
SYN-ACK en respuesta, indica que el servicio está operativo y el puerto
está en modo de escucha. La elaboración de paquetes para diferentes
puertos TCP indicará qué puertos están activos.
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

::: {.64883ba010c3402246b760ff .block .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883ba010c3402246b760ff"}
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
::: {.component .opentextbox .64883baf10c3402246b7626a .remove-top-padding .remove-padding-bottom .is-full socialgoodpulse-id="64883baf10c3402246b7626a"}
::: component__header-container
::: {.opentabletextbox .remove-top-padding .remove-padding-bottom socialgoodpulse-id="64883baf10c3402246b7626a"}
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
2\. ¿Cómo podría la creación de un paquete de solicitud de eco ICMP con
una dirección de origen falsificada crear un ataque de denegación de
servicio contra un host de destino?
:::

::: openTextBox__textArea-container
Área de Respuesta
:::

::: {.openTextBox__answerText .answergray .hide tabindex="0"}
Enviar miles de paquetes a diferentes hosts con la misma dirección de
origen falsificada hará que todos los paquetes de respuesta de eco se
envíen al host de destino. Esto dará lugar a un ataque distribuido de
denegación de servicio.
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
