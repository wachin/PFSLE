## Ejecutando script bash en nnn con Ctrl + O escribiendo bash

Estoy usando en linux en la terminal el administrador de archivos nnn (es un administrador de archivos de línea de comandos

**Instalar nnn**

```
sudo apt install nnn
```

**Nota:** nnn también se puede usar en Android con Termux.

Y quiero que ejecute unos archivos .sh los cuales son unos scripts que tengo, para ejecutarlos hago lo siguiente, primero ejecuto en la terminal nnn y se abre y allí busco el script sh, ejemplo:

script.sh  

y en nnn me pongo encima del **script.sh** y aplasto **Ctrl + O** y me pregunta: "**open with**" y yo escribo: "b**ash**" y doy enter y me pregunta: **"c" li "g"ui?** y le pongo **c** y se ejecuta allí, todo bien. Pero yo quiero que se ejecute con menos pasos

## Creando un plugin para nnn para ejecutar script bash

Primero instalar todos los plugins de nnn, ponga en la terminal:

```bash
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
```

estas mismas instrucciones están en (puede verlas allí o directamente desde allí seguirlas):

https://github.com/jarun/nnn/tree/master/plugins#installation

## Plugin execonbash

Para que `nnn` ejecute con menos pasos los scripts `.sh` con `bash` al presionar Enter, debemos crear el plugin y configurar un atajo de acción en el archivo de configuración de `nnn`. los siguientes son los pasos:

1. **Crear el archivo de configuración de nnn**: Si no tienes un archivo de configuración personalizado para `nnn`, créalo en tu directorio home:

   ```bash
   nano ~/.config/nnn/plugins/execonbash
   ```

2. **Añadir el script para ejecutar archivos `.sh`**: Copia y pega el siguiente contenido en el archivo:

   ```bash
   #!/bin/bash

   # Si el archivo tiene la extensión .sh, ejecútalo con bash
   if [[ "$1" == *.sh ]]; then
       bash "$1"
   fi
   ```

   Guarda y cierra el archivo.

3. **Dar permisos de ejecución**:

   ```bash
   chmod +x ~/.config/nnn/plugins/execonbash
   ```

4. **Configurar `bash` para usar los plugins**:
En el tutotial en:

https://github.com/jarun/nnn/tree/master/plugins#configuration

pone un ejemplo para habilitar varios scripts:

```
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'
```

**Nota**: Si ustedes usan zsh u otro deberán añadirlo a su archivo de configuración para que sea permanente la configuración.

pero yo no voy a usar todos esos sino solo los siguientes incluyendo el que hemos creado, pongamos en la terminal y ejecutar:

```
export NNN_PLUG='f:finder;o:execonbash;p:launch;v:imgview'
```

y cerrar cualquier instancia de nnn y volver a abrir en una terminal nnn y escribir:

;

en mi caso para hacer eso tengo que presionar:

Shift derecho + ;

entonces deberá aparecer abajo a la izquierda de nnn lo siguiente:

keys: f o p v

esto significa que están habilitadas esas teclas para los plugins:

f finder

o execonbash

p launch

v imgview

5. **Añadir permanentemente las configuraciones de los plugins en bash**
Debemos de añadir al archivo:

.bashrc

**Nota**: Si ustedes usan zsh u otro deberán añadirlo a su archivo de configuración para que sea permanente la configuración.


la linea:

export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'

cerrar sesión y volver a entrar.

6. **Usar nuestro plugin**: Ahora, cuando estés en `nnn` y te posiciones sobre un script `.sh`, simplemente presiona `;` y la tecla `o` y el script se ejecutará automáticamente con `bash`.





