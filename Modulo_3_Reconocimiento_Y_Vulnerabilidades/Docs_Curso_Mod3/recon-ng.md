Seleccione cada uno de los siguientes pasos para ver un ejemplo de ejecución de Recon-ng en Kali Linux.

expand\_less  
Paso 1\. iniciar Recon-ng.  
Paso 1\. iniciar Recon-ng.

Para comenzar a usar Recon-ng, simplemente ejecute recon-ng desde una nueva ventana de terminal. El ejemplo 3-11 muestra el comando y el menú inicial con el que comienza el reconocimiento.

Ejemplo 3-11 \- Iniciando reconocimiento

 |--\[omar@websploit\]--\[\~\]  
 |--- $ recon-ng   
 \[\*\] Version check disabled.  
   
     \_/\_/\_/    \_/\_/\_/\_/    \_/\_/\_/    \_/\_/\_/    \_/      \_/            \_/      \_/    \_/\_/\_/  
    \_/    \_/  \_/        \_/        \_/      \_/  \_/\_/    \_/            \_/\_/    \_/  \_/         
   \_/\_/\_/    \_/\_/\_/    \_/        \_/      \_/  \_/  \_/  \_/  \_/\_/\_/\_/  \_/  \_/  \_/  \_/  \_/\_/\_/  
  \_/    \_/  \_/        \_/        \_/      \_/  \_/    \_/\_/            \_/    \_/\_/  \_/      \_/   
 \_/    \_/  \_/\_/\_/\_/    \_/\_/\_/    \_/\_/\_/    \_/      \_/            \_/      \_/    \_/\_/\_/      
   
   
                                           /\\  
                                          / \\\\ /\\  
     Sponsored by...               /\\  /\\/  \\\\V  \\/\\  
                                  / \\\\/ // \\\\\\\\\\ \\\\ \\/\\  
                                 // // BLACK HILLS \\/ \\\\  
                                www.blackhillsinfosec.com  
   
                   \_\_\_\_   \_\_\_\_   \_\_\_\_   \_\_\_\_ \_\_\_\_\_ \_  \_\_\_\_   \_\_\_\_  \_\_\_\_  
                  |\_\_\_\_\] | \_\_\_/ |\_\_\_\_| |       |   | |\_\_\_\_  |\_\_\_\_ |  
                  |      |   \\\_ |    | |\_\_\_\_   |   |  \_\_\_\_| |\_\_\_\_ |\_\_\_\_  
                                    www.practisec.com  
   
                       \[recon-ng v5.1.2, Tim Tomes (@lanmaster53)\]            
   
 \[4\] Recon modules  
 \[1\] Discovery modules  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 2\. Ver los comandos disponibles.  
Paso 2\. Ver los comandos disponibles.

Para tener una idea de los comandos disponibles en la herramienta de línea de comandos Recon-ng, simplemente escriba help y presione Intro. El ejemplo muestra la salida del comando help.

Ejemplo 3-12 \- Cpmando help de Recon-ng

 \[recon-ng\]\[default\] \> help  
 Commands (type \[help|?\] ):  
 \---------------------------------  
 back           Exits the current context  
 dashboard      Displays a summary of activity  
 db             Interfaces with the workspace's database  
 exit           Exits the framework  
 help           Displays this menu  
 index          Creates a module index (dev only)  
 keys           Manages third party resource credentials  
 marketplace    Interfaces with the module marketplace  
 modules        Interfaces with installed modules  
 options        Manages the current context options  
 pdb            Starts a Python Debugger session (dev only)  
 script         Records and executes command scripts  
 shell          Executes shell commands  
 show           Shows various framework items  
 snapshots      Manages workspace snapshots  
 spool          Spools output to a file  
 workspaces     Manages workspaces  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 3\. Busque módulos disponibles.  
Paso 3\. Busque módulos disponibles.

Antes de comenzar a recopilar información con la herramienta de reconocimiento, debe comprender qué módulos están disponibles. (Puede ver en la pantalla inicial del ejemplo 3-11 la cantidad actual de módulos que están instalados en Recon-ng.) Recon-ng incluye un “mercado” donde puede buscar módulos disponibles para instalar. Puede utilizar el comando marketplace search para buscar todos los módulos disponibles en Recon-ng, como se muestra en el ejemplo 3-13.

Desplace el resultado del ejemplo 3-13 hacia la derecha para ver las columnas D y K . La letra D indica que el módulo tiene dependencias. La letra K indica que se necesita una clave de API para utilizar los recursos utilizados en un módulo en particular. Por ejemplo, el módulo con la ruta recon/companies-contacts/censys\_email\_address tiene dependencias y necesita una clave API para consultar la base de datos de Censys. (Censys es un recurso muy popular para consultar datos OSINT).

Ejemplo 3-13: Búsqueda en el mercado de Recon-ng

  \[recon-ng\]\[default\] \> marketplace search  
   
   \+---------------------------------------------------------------------------------------------------+  
   |                        Path                        | Version |     Status    |  Updated   | D | K |  
   \+---------------------------------------------------------------------------------------------------+  
   | discovery/info\_disclosure/cache\_snoop              | 1.1     | not installed | 2020-10-13 |   |   |  
   | discovery/info\_disclosure/interesting\_files        | 1.2     | not installed | 2021-10-04 |   |   |  
   | exploitation/injection/command\_injector            | 1.0     | not installed | 2019-06-24 |   |   |  
   | exploitation/injection/xpath\_bruter                | 1.2     | not installed | 2019-10-08 |   |   |  
   | import/csv\_file                                    | 1.1     | not installed | 2019-08-09 |   |   |  
   | import/list                                        | 1.1     | not installed | 2019-06-24 |   |   |  
   | import/masscan                                     | 1.0     | not installed | 2020-04-07 |   |   |  
   | import/nmap                                        | 1.1     | not installed | 2020-10-06 |   |   |  
   | recon/companies-contacts/bing\_linkedin\_cache       | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/companies-contacts/censys\_email\_address      | 2.0     | not installed | 2021-05-11 | \* | \* |  
   | recon/companies-contacts/pen                       | 1.1     | not installed | 2019-10-15 |   |   |  
   | recon/companies-domains/censys\_subdomains          | 2.0     | not installed | 2021-05-10 | \* | \* |  
   | recon/companies-domains/pen                        | 1.1     | not installed | 2019-10-15 |   |   |  
   | recon/companies-domains/viewdns\_reverse\_whois      | 1.1     | not installed | 2021-08-24 |   |   |  
   | recon/companies-domains/whoxy\_dns                  | 1.1     | not installed | 2020-06-17 |   | \* |  
   | recon/companies-hosts/censys\_org                   | 2.0     | not installed | 2021-05-11 | \* | \* |  
 \<output omitted\>  
   | reporting/csv                                      | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/html                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/json                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/list                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/proxifier                                | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/pushpin                                  | 1.0     | not installed | 2019-06-24 |   | \* |  
   | reporting/xlsx                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/xml                                      | 1.1     | not installed | 2019-06-24 |   |   |  
   \+---------------------------------------------------------------------------------------------------+  
   
   D \= Has dependencies. See info for details.  
   K \= Requires keys. See info for details.  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 4\. Actualice el mercado.  
Paso 4\. Actualice el mercado.

Puede actualizar los datos sobre los módulos disponibles mediante el comando marketplace refresh, como se muestra en el ejemplo 3-14.

Ejemplo 3-14 \- Actualización de los datos de Marketplace de Recon-ng

 \[recon-ng\]\[default\] \> marketplace refresh  
 \[\*\] Marketplace index refreshed.   
 \[recon-ng\]\[default\] \>

expand\_less  
Paso 5\. Busque en el mercado.  
Paso 5\. Busque en el mercado.

Realicemos una búsqueda rápida para encontrar diferentes subdominios de uno de mis dominios (h4cker.org). Podemos usar el módulo bing\_domain\_web para intentar encontrar cualquier subdominio que aproveche el motor de búsqueda de Bing. Puede realizar una búsqueda por palabra clave para cualquier módulo con el comando marketplace search \<palabra clave\>, como se muestra en el ejemplo 3-15.

Ejemplo 3-15 \- Búsqueda de palabras clave en Marketplace

 \[recon-ng\]\[default\] \> marketplace search bing  
 \[\*\] Searching module index for 'bing'...  
   
   \+-----------------------------------------------------------------------------------------------+  
   |                      Path                      | Version |     Status    |  Updated   | D | K |  
   \+-----------------------------------------------------------------------------------------------+  
   | recon/companies-contacts/bing\_linkedin\_cache   | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/domains-hosts/bing\_domain\_api            | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/domains-hosts/bing\_domain\_web            | 1.1     | installed     | 2019-07-04 |   |   |  
   | recon/hosts-hosts/bing\_ip                      | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/profiles-contacts/bing\_linkedin\_contacts | 1.2     | not installed | 2021-08-24 |   | \* |  
   \+-----------------------------------------------------------------------------------------------+  
   
   D \= Has dependencies. See info for details.  
   K \= Requires keys. See info for details.  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 6\. Instalar un módulo.  
Paso 6\. Instalar un módulo.

Varios resultados coincidieron con la palabra clave de bing. Sin embargo, el que nos interesa es recon/domains-hosts/bing\_domain\_web. Puede instalar el módulo mediante el comando marketplace install, como se muestra en el ejemplo 3-16.

Ejemplo 3-16 \- Instalación de un módulo de Recon-ng

 \[recon-ng\]\[default\] \> marketplace install recon/domains-hosts/bing\_domain\_web  
 \[\*\] Module installed: recon/domains-hosts/bing\_domain\_web  
 \[\*\] Reloading modules...  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 7\. Mostrar los módulos instalados.  
Paso 7\. Mostrar los módulos instalados.

Puede utilizar el comando module search (como se muestra en el ejemplo 3-17) para mostrar todos los módulos que se han instalado en Recon-ng.

Ejemplo 3-17 \- Reconocimiento de módulos instalados

 \[recon-ng\]\[default\] \> modules search  
   Discovery  
   \---------  
     discovery/info\_disclosure/interesting\_files  
   Recon  
   \-----  
     recon/domains-hosts/bing\_domain\_web  
     recon/domains-hosts/brute\_hosts  
     recon/domains-hosts/certificate\_transparency  
     recon/domains-hosts/netcraft  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 8\. Cargar un módulo.  
Paso 8\. Cargar un módulo.

Para cargar el módulo que desea utilizar, utilice el comando module load. En el ejemplo 3-18, se carga el módulo bing\_domain\_web. Observe que la solicitud cambió para incluir el nombre del módulo cargado. Después de cargar el módulo, puede mostrar las opciones del módulo mediante el comando info.

Ejemplo 3-18 \- Carga de un módulo instalado en Recon-ng

 \[recon-ng\]\[default\] \> modules load recon/domains-hosts/bing\_domain\_web  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> info  
       Name: Bing Hostname Enumerator  
     Author: Tim Tomes (@lanmaster53)  
    Version: 1.1  
   
 Description:  
   Harvests hosts from Bing.com by using the 'site' search operator. Updates the 'hosts'   
   table with the results.  
  Options:  
   Name    Current Value  Required  Description  
   \------  \-------------  \--------  \-----------  
   SOURCE  h4cker.org  yes      source of input (see 'info' for details)  
   
 Source Options:  
   default     SELECT DISTINCT domain FROM domains WHERE domain IS NOT NULL  
   \<string\>    string representing a single input  
   \<path\>      path to a file containing a list of inputs  
   query \<sql\> database query returning one column of inputs  
   
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \>

expand\_less  
Paso 9\. Cambiar la fuente.  
Paso 9\. Cambiar la fuente.

Puede cambiar la fuente (el dominio que se utilizará para encontrar sus subdominios) mediante el comando options set SOURCE, como se muestra en el ejemplo 3-19. Una vez establecido el dominio de origen, puede escribir run para ejecutar la consulta. Las líneas resaltadas muestran que se encontraron cuatro subdominios con el módulo bing\_domain\_web.

Ejemplo 3-19 \- Configuración del dominio de origen y ejecución de la consulta

 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> options set SOURCE h4cker.org  
 SOURCE \=\> h4cker.org  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> run  
 \----------  
 H4CKER.ORG  
 \----------  
 \[\*\] URL: https://www.bing.com/search?first=0\&q=domain%3Ah4cker.org  
 \[\*\] Country: None  
 \[\*\] Host: bootcamp.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: webapps.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: lpb.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: malicious.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Sleeping to avoid lockout...  
 \[\*\] URL:  
 https://www.bing.com/search?first=0\&q=domain%3Ah4cker.org+-domain%3Abootcamp.h4cker.  
 org+-domain%3Awebapps.h4cker.org+-domain%3Alpb.h4cker.org+-domain%3Amalicious.h4cker.org  
   
 \-------  
 SUMMARY  
 \-------  
 \[\*\] 4 total (0 new) hosts found.  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \>Seleccione cada uno de los siguientes pasos para ver un ejemplo de ejecución de Recon-ng en Kali Linux.

expand\_less  
Paso 1\. iniciar Recon-ng.  
Paso 1\. iniciar Recon-ng.

Para comenzar a usar Recon-ng, simplemente ejecute recon-ng desde una nueva ventana de terminal. El ejemplo 3-11 muestra el comando y el menú inicial con el que comienza el reconocimiento.

Ejemplo 3-11 \- Iniciando reconocimiento

 |--\[omar@websploit\]--\[\~\]  
 |--- $ recon-ng   
 \[\*\] Version check disabled.  
   
     \_/\_/\_/    \_/\_/\_/\_/    \_/\_/\_/    \_/\_/\_/    \_/      \_/            \_/      \_/    \_/\_/\_/  
    \_/    \_/  \_/        \_/        \_/      \_/  \_/\_/    \_/            \_/\_/    \_/  \_/         
   \_/\_/\_/    \_/\_/\_/    \_/        \_/      \_/  \_/  \_/  \_/  \_/\_/\_/\_/  \_/  \_/  \_/  \_/  \_/\_/\_/  
  \_/    \_/  \_/        \_/        \_/      \_/  \_/    \_/\_/            \_/    \_/\_/  \_/      \_/   
 \_/    \_/  \_/\_/\_/\_/    \_/\_/\_/    \_/\_/\_/    \_/      \_/            \_/      \_/    \_/\_/\_/      
   
   
                                           /\\  
                                          / \\\\ /\\  
     Sponsored by...               /\\  /\\/  \\\\V  \\/\\  
                                  / \\\\/ // \\\\\\\\\\ \\\\ \\/\\  
                                 // // BLACK HILLS \\/ \\\\  
                                www.blackhillsinfosec.com  
   
                   \_\_\_\_   \_\_\_\_   \_\_\_\_   \_\_\_\_ \_\_\_\_\_ \_  \_\_\_\_   \_\_\_\_  \_\_\_\_  
                  |\_\_\_\_\] | \_\_\_/ |\_\_\_\_| |       |   | |\_\_\_\_  |\_\_\_\_ |  
                  |      |   \\\_ |    | |\_\_\_\_   |   |  \_\_\_\_| |\_\_\_\_ |\_\_\_\_  
                                    www.practisec.com  
   
                       \[recon-ng v5.1.2, Tim Tomes (@lanmaster53)\]            
   
 \[4\] Recon modules  
 \[1\] Discovery modules  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 2\. Ver los comandos disponibles.  
Paso 2\. Ver los comandos disponibles.

Para tener una idea de los comandos disponibles en la herramienta de línea de comandos Recon-ng, simplemente escriba help y presione Intro. El ejemplo muestra la salida del comando help.

Ejemplo 3-12 \- Cpmando help de Recon-ng

 \[recon-ng\]\[default\] \> help  
 Commands (type \[help|?\] ):  
 \---------------------------------  
 back           Exits the current context  
 dashboard      Displays a summary of activity  
 db             Interfaces with the workspace's database  
 exit           Exits the framework  
 help           Displays this menu  
 index          Creates a module index (dev only)  
 keys           Manages third party resource credentials  
 marketplace    Interfaces with the module marketplace  
 modules        Interfaces with installed modules  
 options        Manages the current context options  
 pdb            Starts a Python Debugger session (dev only)  
 script         Records and executes command scripts  
 shell          Executes shell commands  
 show           Shows various framework items  
 snapshots      Manages workspace snapshots  
 spool          Spools output to a file  
 workspaces     Manages workspaces  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 3\. Busque módulos disponibles.  
Paso 3\. Busque módulos disponibles.

Antes de comenzar a recopilar información con la herramienta de reconocimiento, debe comprender qué módulos están disponibles. (Puede ver en la pantalla inicial del ejemplo 3-11 la cantidad actual de módulos que están instalados en Recon-ng.) Recon-ng incluye un “mercado” donde puede buscar módulos disponibles para instalar. Puede utilizar el comando marketplace search para buscar todos los módulos disponibles en Recon-ng, como se muestra en el ejemplo 3-13.

Desplace el resultado del ejemplo 3-13 hacia la derecha para ver las columnas D y K . La letra D indica que el módulo tiene dependencias. La letra K indica que se necesita una clave de API para utilizar los recursos utilizados en un módulo en particular. Por ejemplo, el módulo con la ruta recon/companies-contacts/censys\_email\_address tiene dependencias y necesita una clave API para consultar la base de datos de Censys. (Censys es un recurso muy popular para consultar datos OSINT).

Ejemplo 3-13: Búsqueda en el mercado de Recon-ng

  \[recon-ng\]\[default\] \> marketplace search  
   
   \+---------------------------------------------------------------------------------------------------+  
   |                        Path                        | Version |     Status    |  Updated   | D | K |  
   \+---------------------------------------------------------------------------------------------------+  
   | discovery/info\_disclosure/cache\_snoop              | 1.1     | not installed | 2020-10-13 |   |   |  
   | discovery/info\_disclosure/interesting\_files        | 1.2     | not installed | 2021-10-04 |   |   |  
   | exploitation/injection/command\_injector            | 1.0     | not installed | 2019-06-24 |   |   |  
   | exploitation/injection/xpath\_bruter                | 1.2     | not installed | 2019-10-08 |   |   |  
   | import/csv\_file                                    | 1.1     | not installed | 2019-08-09 |   |   |  
   | import/list                                        | 1.1     | not installed | 2019-06-24 |   |   |  
   | import/masscan                                     | 1.0     | not installed | 2020-04-07 |   |   |  
   | import/nmap                                        | 1.1     | not installed | 2020-10-06 |   |   |  
   | recon/companies-contacts/bing\_linkedin\_cache       | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/companies-contacts/censys\_email\_address      | 2.0     | not installed | 2021-05-11 | \* | \* |  
   | recon/companies-contacts/pen                       | 1.1     | not installed | 2019-10-15 |   |   |  
   | recon/companies-domains/censys\_subdomains          | 2.0     | not installed | 2021-05-10 | \* | \* |  
   | recon/companies-domains/pen                        | 1.1     | not installed | 2019-10-15 |   |   |  
   | recon/companies-domains/viewdns\_reverse\_whois      | 1.1     | not installed | 2021-08-24 |   |   |  
   | recon/companies-domains/whoxy\_dns                  | 1.1     | not installed | 2020-06-17 |   | \* |  
   | recon/companies-hosts/censys\_org                   | 2.0     | not installed | 2021-05-11 | \* | \* |  
 \<output omitted\>  
   | reporting/csv                                      | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/html                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/json                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/list                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/proxifier                                | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/pushpin                                  | 1.0     | not installed | 2019-06-24 |   | \* |  
   | reporting/xlsx                                     | 1.0     | not installed | 2019-06-24 |   |   |  
   | reporting/xml                                      | 1.1     | not installed | 2019-06-24 |   |   |  
   \+---------------------------------------------------------------------------------------------------+  
   
   D \= Has dependencies. See info for details.  
   K \= Requires keys. See info for details.  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 4\. Actualice el mercado.  
Paso 4\. Actualice el mercado.

Puede actualizar los datos sobre los módulos disponibles mediante el comando marketplace refresh, como se muestra en el ejemplo 3-14.

Ejemplo 3-14 \- Actualización de los datos de Marketplace de Recon-ng

 \[recon-ng\]\[default\] \> marketplace refresh  
 \[\*\] Marketplace index refreshed.   
 \[recon-ng\]\[default\] \>

expand\_less  
Paso 5\. Busque en el mercado.  
Paso 5\. Busque en el mercado.

Realicemos una búsqueda rápida para encontrar diferentes subdominios de uno de mis dominios (h4cker.org). Podemos usar el módulo bing\_domain\_web para intentar encontrar cualquier subdominio que aproveche el motor de búsqueda de Bing. Puede realizar una búsqueda por palabra clave para cualquier módulo con el comando marketplace search \<palabra clave\>, como se muestra en el ejemplo 3-15.

Ejemplo 3-15 \- Búsqueda de palabras clave en Marketplace

 \[recon-ng\]\[default\] \> marketplace search bing  
 \[\*\] Searching module index for 'bing'...  
   
   \+-----------------------------------------------------------------------------------------------+  
   |                      Path                      | Version |     Status    |  Updated   | D | K |  
   \+-----------------------------------------------------------------------------------------------+  
   | recon/companies-contacts/bing\_linkedin\_cache   | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/domains-hosts/bing\_domain\_api            | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/domains-hosts/bing\_domain\_web            | 1.1     | installed     | 2019-07-04 |   |   |  
   | recon/hosts-hosts/bing\_ip                      | 1.0     | not installed | 2019-06-24 |   | \* |  
   | recon/profiles-contacts/bing\_linkedin\_contacts | 1.2     | not installed | 2021-08-24 |   | \* |  
   \+-----------------------------------------------------------------------------------------------+  
   
   D \= Has dependencies. See info for details.  
   K \= Requires keys. See info for details.  
   
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 6\. Instalar un módulo.  
Paso 6\. Instalar un módulo.

Varios resultados coincidieron con la palabra clave de bing. Sin embargo, el que nos interesa es recon/domains-hosts/bing\_domain\_web. Puede instalar el módulo mediante el comando marketplace install, como se muestra en el ejemplo 3-16.

Ejemplo 3-16 \- Instalación de un módulo de Recon-ng

 \[recon-ng\]\[default\] \> marketplace install recon/domains-hosts/bing\_domain\_web  
 \[\*\] Module installed: recon/domains-hosts/bing\_domain\_web  
 \[\*\] Reloading modules...  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 7\. Mostrar los módulos instalados.  
Paso 7\. Mostrar los módulos instalados.

Puede utilizar el comando module search (como se muestra en el ejemplo 3-17) para mostrar todos los módulos que se han instalado en Recon-ng.

Ejemplo 3-17 \- Reconocimiento de módulos instalados

 \[recon-ng\]\[default\] \> modules search  
   Discovery  
   \---------  
     discovery/info\_disclosure/interesting\_files  
   Recon  
   \-----  
     recon/domains-hosts/bing\_domain\_web  
     recon/domains-hosts/brute\_hosts  
     recon/domains-hosts/certificate\_transparency  
     recon/domains-hosts/netcraft  
 \[recon-ng\]\[default\] \> 

expand\_less  
Paso 8\. Cargar un módulo.  
Paso 8\. Cargar un módulo.

Para cargar el módulo que desea utilizar, utilice el comando module load. En el ejemplo 3-18, se carga el módulo bing\_domain\_web. Observe que la solicitud cambió para incluir el nombre del módulo cargado. Después de cargar el módulo, puede mostrar las opciones del módulo mediante el comando info.

Ejemplo 3-18 \- Carga de un módulo instalado en Recon-ng

 \[recon-ng\]\[default\] \> modules load recon/domains-hosts/bing\_domain\_web  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> info  
       Name: Bing Hostname Enumerator  
     Author: Tim Tomes (@lanmaster53)  
    Version: 1.1  
   
 Description:  
   Harvests hosts from Bing.com by using the 'site' search operator. Updates the 'hosts'   
   table with the results.  
  Options:  
   Name    Current Value  Required  Description  
   \------  \-------------  \--------  \-----------  
   SOURCE  h4cker.org  yes      source of input (see 'info' for details)  
   
 Source Options:  
   default     SELECT DISTINCT domain FROM domains WHERE domain IS NOT NULL  
   \<string\>    string representing a single input  
   \<path\>      path to a file containing a list of inputs  
   query \<sql\> database query returning one column of inputs  
   
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \>

expand\_less  
Paso 9\. Cambiar la fuente.  
Paso 9\. Cambiar la fuente.

Puede cambiar la fuente (el dominio que se utilizará para encontrar sus subdominios) mediante el comando options set SOURCE, como se muestra en el ejemplo 3-19. Una vez establecido el dominio de origen, puede escribir run para ejecutar la consulta. Las líneas resaltadas muestran que se encontraron cuatro subdominios con el módulo bing\_domain\_web.

Ejemplo 3-19 \- Configuración del dominio de origen y ejecución de la consulta

 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> options set SOURCE h4cker.org  
 SOURCE \=\> h4cker.org  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> run  
 \----------  
 H4CKER.ORG  
 \----------  
 \[\*\] URL: https://www.bing.com/search?first=0\&q=domain%3Ah4cker.org  
 \[\*\] Country: None  
 \[\*\] Host: bootcamp.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: webapps.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: lpb.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Country: None  
 \[\*\] Host: malicious.h4cker.org  
 \[\*\] Ip\_Address: None  
 \[\*\] Latitude: None  
 \[\*\] Longitude: None  
 \[\*\] Notes: None  
 \[\*\] Region: None  
 \[\*\] \--------------------------------------------------  
 \[\*\] Sleeping to avoid lockout...  
 \[\*\] URL:  
 https://www.bing.com/search?first=0\&q=domain%3Ah4cker.org+-domain%3Abootcamp.h4cker.  
 org+-domain%3Awebapps.h4cker.org+-domain%3Alpb.h4cker.org+-domain%3Amalicious.h4cker.org  
   
 \-------  
 SUMMARY  
 \-------  
 \[\*\] 4 total (0 new) hosts found.  
 \[recon-ng\]\[default\]\[bing\_domain\_web\] \> 